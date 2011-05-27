/* 
 * File:   ContextTest.cpp
 * Author: wouter
 * 
 * Created on May 26, 2011, 3:12 PM
 */

#include "ContextTest.h"
#include <GLee.h>
#include <GL/glu.h>

ContextTest::ContextTest()
{
}

ContextTest::~ContextTest()
{
}

bool ContextTest::onInitializeGl()
{
	this->mShader = new DefaultShader();
	
	return true;
}

void ContextTest::onIdle(const GameTime* gameTime)
{
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	
//	glLoadIdentity();
//	this->mModelview.glMultiply();
	
	this->mShader->use();
	this->mShader->setProjectionMatrix(this->mProjection);
	this->mShader->setModelviewMatrix(this->mModelview);
	
	glBegin(GL_TRIANGLES);
	glVertex3f(0.0f, 0.0f, -10.0f);
	glVertex3f(0.0f, 5.0f, -10.0f);
	glVertex3f(5.0f, 5.0f, -10.0f);
	glEnd();
}

void ContextTest::onResize(int w, int h)
{
	if (h == 0) h = 1;
	float aspect = 1.0f * (float(w)/float(h));

	this->mProjection.setPerspective(90, aspect, 1, 3000.0f);
	
	glMatrixMode(GL_PROJECTION);
//	glLoadIdentity();
	
//	this->mProjection.glMultiply();

	glMatrixMode(GL_MODELVIEW);
//	glLoadIdentity();
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
