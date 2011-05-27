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

void ContextTest::onIdle(const GameTime* gameTime)
{
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	
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
	glLoadIdentity();
	
	this->mProjection.glMultiply();

	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();
}
