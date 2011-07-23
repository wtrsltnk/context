#include "Hl1BspLoader.h"
#include "Hl1BspData.h"
#include "indexarray.h"
#include "lightmap.h"
#include <Vector3.h>
#include <GLee.h>
#include <stdio.h>
#include <iostream>

Hl1BspLoader::Hl1BspLoader()
{
}

Hl1BspLoader::~Hl1BspLoader()
{
}

bool Hl1BspLoader::loadBsp(Hl1BspData* data, IStaticManager* mngr)
{
	if (data != 0 && data->isLoaded() == false)
		return false;

	glActiveTextureARB(GL_TEXTURE0);
	this->loadTextures(data, mngr);

	glActiveTextureARB(GL_TEXTURE1);
	this->loadFaces(data, mngr);

	return true;
}

bool Hl1BspLoader::loadFaces(Hl1BspData* data, IStaticManager* mngr)
{
	tFace* faces = new tFace[data->faceCount];
	IndexArray<tVertex> vertices;

	for (int f = 0; f < data->faceCount; f++)
	{
		HL1::tBSPFace& inFace = data->faces[f];
		HL1::tBSPPlane& bspPlane = data->planes[inFace.planeIndex];
		HL1::tBSPTexInfo& texInfo = data->texinfos[inFace.texinfo];
		HL1::tBSPTexInfo& bspTexInfo = data->texinfos[inFace.texinfo];
		HL1::tBSPMipTexHeader* bspMiptex = data->getMiptex(bspTexInfo.miptexIndex);
		tFace* outFace = &faces[f];

		if (inFace.edgeCount == 3) outFace->mode = GL_TRIANGLES;
		if (inFace.edgeCount == 4) outFace->mode = GL_QUADS;
		if (inFace.edgeCount >= 5) outFace->mode = GL_POLYGON;

		outFace->firstVertex = vertices.current();
		outFace->vertexCount = inFace.edgeCount;
		outFace->texture = mngr->getTexture(bspTexInfo.miptexIndex);
		outFace->flags = bspTexInfo.flags;
		outFace->plane = Plane(bspPlane.distance, bspPlane.normal);
		if (inFace.side == 1) outFace->plane.invert();

        float min[2], max[2];
		
		glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
		// Calculate and grab the lightmap buffer
        CalcSurfaceExtents(&inFace, min, max, data);
        outFace->lightmap = ComputeLightmap(&inFace, min, max, data);

		// Create a vertex list for this face
		for (int e = 0; e < inFace.edgeCount; e++)
		{
			tVertex v = { 0 };

			int edgeIndex = data->surfedges[inFace.firstEdge + e];
			if (edgeIndex < 0)
			{
				edgeIndex = -edgeIndex;
				HL1::tBSPEdge* edge = &data->edges[edgeIndex];
				v.position[0] = data->vertices[edge->vertex[1]].point[0];
				v.position[1] = data->vertices[edge->vertex[1]].point[1];
				v.position[2] = data->vertices[edge->vertex[1]].point[2];
			}
			else
			{
				HL1::tBSPEdge* edge = &data->edges[edgeIndex];
				v.position[0] = data->vertices[edge->vertex[0]].point[0];
				v.position[1] = data->vertices[edge->vertex[0]].point[1];
				v.position[2] = data->vertices[edge->vertex[0]].point[2];
			}

			// Calculate the texture texcoords
			Vector3 vec(v.position);
            float s = vec.dotProduct(Vector3(texInfo.vecs[0])) + texInfo.vecs[0][3];
            float t = vec.dotProduct(Vector3(texInfo.vecs[1])) + texInfo.vecs[1][3];
            v.texcoord[0][0] = s / float(bspMiptex->width);
            v.texcoord[0][1] = t / float(bspMiptex->height);

			// Calculate the lightmap texcoords
			v.texcoord[1][0] = ((float(outFace->lightmap->mWidth) / 2.0f) + (s - ((min[0] + max[0]) / 2.0f)) / 16.0f) / float(outFace->lightmap->mWidth);
			v.texcoord[1][1] = ((float(outFace->lightmap->mHeight) / 2.0f) + (t - ((min[1] + max[1]) / 2.0f)) / 16.0f) / float(outFace->lightmap->mHeight);

			vertices.add(&v);
		}
	}
	mngr->setVertices(vertices.current(), vertices);
	mngr->setFaces(data->faceCount, faces);

	// Don't forget to clean up
	delete []faces;
	return true;
}

bool Hl1BspLoader::loadTextures(Hl1BspData* data, IStaticManager* mngr)
{
	int* miptexTable = (int*)data->textureData;
			// miptexTable[0] is het aantal offset integers die volgen, dus ook het
			// aantal miptexes in deze texdata

	int textureCount = miptexTable[0];
	Texture* textures = new Texture[textureCount];
	
	for (int t = 1; t <= textureCount; t++)
	{
		HL1::tBSPMipTexHeader* miptex = (HL1::tBSPMipTexHeader*)(&data->textureData[miptexTable[t]]);

		textures[t-1].setName(miptex->name);
		if (miptex->offsets[0] != 0)
			// Parse the miptex data
			this->loadMiptex(&textures[t-1], data->textureData + miptexTable[t]);
		else
			// For now, use dummy texture
			textures[t-1].setChecker(miptex->width, miptex->height);

		// Upload texture
		textures[t-1].upload();
	}
	mngr->setTextures(textureCount, textures);
	return true;
}

bool Hl1BspLoader::loadMiptex(Texture* texture, unsigned char* data)
{
	HL1::tBSPMipTexHeader* miptex = (HL1::tBSPMipTexHeader*)data;
	int s = miptex->width * miptex->height;
	int bpp = 4;
	int paletteOffset = miptex->offsets[0] + s + (s/4) + (s/16) + (s/64) + 2;

	// Get the miptex data and palette
	unsigned char* source = data + miptex->offsets[0];
	unsigned char* palette = data + paletteOffset;

	// Initialize the destination buffer
	unsigned char* destination = new unsigned char[s * bpp];

	// Fill the destination buffer
	int j = 0;
	for (int i = 0; i < s; i++)
	{
		unsigned char r, g, b, a;
		r = palette[source[i]*3];
		g = palette[source[i]*3+1];
		b = palette[source[i]*3+2];
		a = 255;

		// Do we need a transparent pixel
		if (texture->mName[0] == '{' && source[i] == 255)
			r = g = b = a = 0;

		destination[j++] = r;
		destination[j++] = g;
		destination[j++] = b;
		destination[j++] = a;
	}
	texture->setData(miptex->width, miptex->height, bpp, destination);
	delete []destination;

	return texture;
}
