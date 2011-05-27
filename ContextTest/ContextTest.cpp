/* 
 * File:   ContextTest.cpp
 * Author: wouter
 * 
 * Created on May 26, 2011, 3:12 PM
 */

#include "ContextTest.h"
#include <GLee.h>

ContextTest::ContextTest()
	: mShader(0)
{
}

ContextTest::~ContextTest()
{
	if (this->mShader != 0)
		delete this->mShader;
}

bool ContextTest::onInitializeGl()
{
	this->mShader = new DefaultShader();
	
	return true;
}

void ContextTest::onIdle(const GameTime* gameTime)
{
	GLfloat vertices[] ={
		0.0f, 0.0f, -10.0f,
		0.0f, 5.0f, -10.0f,
		5.0f, 5.0f, -10.0f
	};
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	
	this->mShader->use();
	this->mShader->setProjectionMatrix(this->mProjection);
	this->mShader->setModelviewMatrix(this->mModelview);
	
	glEnableClientState(GL_VERTEX_ARRAY);
	glVertexPointer(3, GL_FLOAT, sizeof(GL_FLOAT) * 3, &vertices);

	glDrawArrays(GL_TRIANGLES, 0, 3);
}

void ContextTest::onResize(int w, int h)
{
	if (h == 0) h = 1;
	float aspect = 1.0f * (float(w)/float(h));

	this->mProjection.setPerspective(90, aspect, 1, 3000.0f);
}

void ContextTest::onKeyDown(Key::Code key)
{
	float amount = 0.1f;
	if (KeyboardState::currentState().isKeyPressed(Key::LShift))
		amount = -amount;
	if (key == Key::M)
		this->mModelview.move(amount, 0, 0);
	if (key == Key::R)
		this->mModelview.rotate(amount, 0, 0);
	if (key == Key::W)
		this->mModelview.moveForward(1);
	if (key == Key::S)
		this->mModelview.moveForward(-1);
	if (key == Key::A)
		this->mModelview.moveLeft(1);
	if (key == Key::D)
		this->mModelview.moveLeft(-1);
}
