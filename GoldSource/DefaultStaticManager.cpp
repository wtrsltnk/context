#include "DefaultStaticManager.h"
#include <Camera.h>
#include <Texture.h>
#include <GLee.h>

#include <string.h>
#include <stdio.h>
#include <vector>

DefaultStaticManager::DefaultStaticManager()
	: mVertexCount(0), mVertices(0), mFaceCount(0), mFaces(0), mModelCount(0), mModels(0), mTextureCount(0), mTextures(0)
{
}

DefaultStaticManager::~DefaultStaticManager()
{
	this->cleanup();
}

void DefaultStaticManager::cleanup()
{
	if (this->mVertices != 0)
		delete []this->mVertices;
	this->mVertices = 0;
	this->mVertexCount = 0;

	if (this->mFaces != 0)
	{
		for (int i = 0; i < this->mFaceCount; i++)
			delete this->mFaces[i].lightmap;
		delete []this->mFaces;
	}
	this->mFaces = 0;
	this->mFaceCount = 0;

	if (this->mTextures != 0)
		delete []this->mTextures;
	this->mTextures = 0;
	this->mTextureCount = 0;
}

void DefaultStaticManager::setVertices(int count, tVertex* vertices)
{
	// Copy the given vertices to a new array of vertices
	if (this->mVertices != 0)
		delete []this->mVertices;
	this->mVertices = new tVertex[count];
	memcpy(this->mVertices, vertices, sizeof(tVertex) * count);
	this->mVertexCount = count;
}

void DefaultStaticManager::setFaces(int count, tFace* faces)
{
	// Copy the given faces to a new array of faces
	if (this->mFaces != 0)
		delete []this->mFaces;
	this->mFaces = new tFace[count];
	memcpy(this->mFaces, faces, sizeof(tFace) * count);
	this->mFaceCount = count;
}

void DefaultStaticManager::setModels(int count, tModel* models)
{
	// Copy the given faces to a new array of faces
	if (this->mModels != 0)
		delete []this->mModels;
	this->mModels = new tModel[count];
	memcpy(this->mModels, models, sizeof(tModel) * count);
	this->mModelCount = count;
}

void DefaultStaticManager::setTextures(int count, Texture* textures)
{
	this->mTextures = textures;
	this->mTextureCount = count;
}

Texture* DefaultStaticManager::getTexture(int index)
{
	return &this->mTextures[index];
}

int DefaultStaticManager::updateRenderSet(Camera* camera)
{
	this->mRenderFaces.clear();
	
	// We need to recalc the camera position, since bsp's have a different orientation
	Vector3 cameraPosition(-camera->position().x(),
			camera->position().z(),
			-camera->position().y());

	for (int f = 0; f < this->mFaceCount; f++)
	{
		if (this->testFace(this->mFaces[f], cameraPosition))
			this->mRenderFaces.insert(f);
	}
	return this->mRenderFaces.size();
}

void DefaultStaticManager::renderFaces()
{
	glPushMatrix();
	glRotatef(-90, 1, 0, 0);
	
	glEnableClientState(GL_VERTEX_ARRAY);
    glVertexPointer(3, GL_FLOAT, sizeof(tVertex), &this->mVertices[0].position[0]);

	glClientActiveTextureARB(GL_TEXTURE0);
    glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    glTexCoordPointer(2, GL_FLOAT, sizeof(tVertex), &this->mVertices[0].texcoord[0][0]);

	glClientActiveTextureARB(GL_TEXTURE1);
    glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    glTexCoordPointer(2, GL_FLOAT, sizeof(tVertex), &this->mVertices[0].texcoord[1][0]);

	for (RenderSet::const_iterator itr = this->mRenderFaces.begin(); itr != this->mRenderFaces.end(); ++itr)
		this->renderFace(*itr);

	glPopMatrix();
}

void DefaultStaticManager::renderFace(int index)
{
	tFace& face = this->mFaces[index];

	if (face.texture != 0)
	{
		glActiveTextureARB(GL_TEXTURE0);
		glEnable(GL_TEXTURE_2D);
		face.texture->use();
	}

	if (face.lightmap != 0)
	{
		glActiveTextureARB(GL_TEXTURE1);
		glEnable(GL_TEXTURE_2D);
		face.lightmap->use();
	}

	glDrawArrays(face.mode, face.firstVertex, face.vertexCount);
}

bool DefaultStaticManager::testFace(const tFace& face, const Vector3& cameraPosition)
{
	if (face.flags == 1)
		return false;

	float distance = cameraPosition.dotProduct(face.plane.normal()) - face.plane.mDistance;
	if (distance < 0)
		return false;

	// ToDo : add more tests here to make sure not everything is rendered every frame

	return true;
}
