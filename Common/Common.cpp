/* 
 * File:   Common.cpp
 * Author: wouter
 * 
 * Created on June 7, 2011, 11:22 PM
 */

#include "Common.h"
#include "GLee.h"
#include <GL/glu.h>
#include <iostream>

Common::Common()
{
}

Common::~Common()
{
}

void Common::push2DProjection()
{
	GLint viewport[4];
	glGetIntegerv(GL_VIEWPORT, viewport);

	glMatrixMode(GL_PROJECTION);
	glPushMatrix();
	glLoadIdentity();

	glOrtho(-(viewport[2]/2.0f), (viewport[2]/2.0f), -(viewport[3]/2.0f), (viewport[3]/2.0f), -4000.0f, 4000.0f);

	glMatrixMode(GL_MODELVIEW);
	glPushMatrix();
	glLoadIdentity();
}

void Common::push3DProjection()
{
	GLint viewport[4];
	glGetIntegerv(GL_VIEWPORT, viewport);

	glMatrixMode(GL_PROJECTION);
	glPushMatrix();
	glLoadIdentity();

	gluPerspective(45.0f, (GLfloat)viewport[2] / (GLfloat)viewport[3], 0.1f, 4000.0f);

	glMatrixMode(GL_MODELVIEW);
	glPushMatrix();
	glLoadIdentity();
}

void Common::popProjection()
{
	glMatrixMode(GL_PROJECTION);
	glPopMatrix();
	glMatrixMode(GL_MODELVIEW);
	glPopMatrix();
}

void Common::getColorFromIndex(int index, unsigned char color[3])
{
	for (int i = 0; i < 3; i++)
		color[i] = (index >> (i * 8));
}

void Common::glColorFromIndex(int index)
{
	unsigned char color[3];
	Common::getColorFromIndex(index, color);
	glColor3ubv(color);
}

int Common::getIndexFromColor(unsigned char color[3])
{
	return color[2] << 16 | color[1] << 8 | color[0];
}

int Common::getIndexFromPixelAt(int x, int y)
{
	GLubyte color[3];
	glReadBuffer(GL_BACK);
	glReadPixels(x, y, 1, 1, GL_RGB, GL_UNSIGNED_BYTE, (void *)color);
	return Common::getIndexFromColor(color);
}


void Common::renderBoundingBox(const BoundingVolume& bb)
{
	glBegin(GL_LINES);
	// bottom
	glVertex3f(bb.mins().x(), bb.mins().y(), bb.mins().z());
	glVertex3f(bb.maxs().x(), bb.mins().y(), bb.mins().z());

	glVertex3f(bb.maxs().x(), bb.mins().y(), bb.mins().z());
	glVertex3f(bb.maxs().x(), bb.maxs().y(), bb.mins().z());

	glVertex3f(bb.maxs().x(), bb.maxs().y(), bb.mins().z());
	glVertex3f(bb.mins().x(), bb.maxs().y(), bb.mins().z());

	glVertex3f(bb.mins().x(), bb.maxs().y(), bb.mins().z());
	glVertex3f(bb.mins().x(), bb.mins().y(), bb.mins().z());

	// top
	glVertex3f(bb.mins().x(), bb.maxs().y(), bb.maxs().z());
	glVertex3f(bb.maxs().x(), bb.maxs().y(), bb.maxs().z());

	glVertex3f(bb.maxs().x(), bb.maxs().y(), bb.maxs().z());
	glVertex3f(bb.maxs().x(), bb.mins().y(), bb.maxs().z());

	glVertex3f(bb.maxs().x(), bb.mins().y(), bb.maxs().z());
	glVertex3f(bb.mins().x(), bb.mins().y(), bb.maxs().z());

	glVertex3f(bb.mins().x(), bb.mins().y(), bb.maxs().z());
	glVertex3f(bb.mins().x(), bb.maxs().y(), bb.maxs().z());

	//sides
	glVertex3f(bb.mins().x(), bb.maxs().y(), bb.mins().z());
	glVertex3f(bb.mins().x(), bb.maxs().y(), bb.maxs().z());

	glVertex3f(bb.maxs().x(), bb.maxs().y(), bb.mins().z());
	glVertex3f(bb.maxs().x(), bb.maxs().y(), bb.maxs().z());

	glVertex3f(bb.maxs().x(), bb.mins().y(), bb.mins().z());
	glVertex3f(bb.maxs().x(), bb.mins().y(), bb.maxs().z());

	glVertex3f(bb.mins().x(), bb.mins().y(), bb.mins().z());
	glVertex3f(bb.mins().x(), bb.mins().y(), bb.maxs().z());
	glEnd();
}