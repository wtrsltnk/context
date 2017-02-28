/* 
 * File:   Common.cpp
 * Author: wouter
 * 
 * Created on June 7, 2011, 11:22 PM
 */

#include "Common.h"
#include "Camera.h"
#include <GL/glextl.h>
#include <GL/glu.h>
#include <iostream>
#include <sstream>

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
	glColor4ub(color[0], color[1], color[2], 255);
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

int Common::selectObject(float* projection, float* modelview, int mousex, int mousey, void* objects, int count, ptr2RenderObjectFunction renderObjectFunction)
{
	glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	
	glMatrixMode(GL_PROJECTION);
	glLoadMatrixf(projection);
	glMatrixMode(GL_MODELVIEW);
	glLoadMatrixf(modelview);

	glDisable(GL_TEXTURE_2D);
	glEnable(GL_DEPTH_TEST);
	
	for (int i = 0; i < count; i++)
	{
		Common::glColorFromIndex(i);
		renderObjectFunction(objects, i);
	}
	
	int index = Common::getIndexFromPixelAt(mousex, mousey);
	if (index >= 0 && index < count)
		return index;

	return -1;
}

void Common::renderBoundingBox(const BoundingVolume& bb)
{
	glBegin(GL_LINES);
	// bottom
    glVertex3f(bb.mins().x, bb.mins().y, bb.mins().z);
    glVertex3f(bb.maxs().x, bb.mins().y, bb.mins().z);

    glVertex3f(bb.maxs().x, bb.mins().y, bb.mins().z);
    glVertex3f(bb.maxs().x, bb.maxs().y, bb.mins().z);

    glVertex3f(bb.maxs().x, bb.maxs().y, bb.mins().z);
    glVertex3f(bb.mins().x, bb.maxs().y, bb.mins().z);

    glVertex3f(bb.mins().x, bb.maxs().y, bb.mins().z);
    glVertex3f(bb.mins().x, bb.mins().y, bb.mins().z);

    // top
    glVertex3f(bb.mins().x, bb.maxs().y, bb.maxs().z);
    glVertex3f(bb.maxs().x, bb.maxs().y, bb.maxs().z);

    glVertex3f(bb.maxs().x, bb.maxs().y, bb.maxs().z);
    glVertex3f(bb.maxs().x, bb.mins().y, bb.maxs().z);

    glVertex3f(bb.maxs().x, bb.mins().y, bb.maxs().z);
    glVertex3f(bb.mins().x, bb.mins().y, bb.maxs().z);

    glVertex3f(bb.mins().x, bb.mins().y, bb.maxs().z);
    glVertex3f(bb.mins().x, bb.maxs().y, bb.maxs().z);

	//sides
    glVertex3f(bb.mins().x, bb.maxs().y, bb.mins().z);
    glVertex3f(bb.mins().x, bb.maxs().y, bb.maxs().z);

    glVertex3f(bb.maxs().x, bb.maxs().y, bb.mins().z);
    glVertex3f(bb.maxs().x, bb.maxs().y, bb.maxs().z);

    glVertex3f(bb.maxs().x, bb.mins().y, bb.mins().z);
    glVertex3f(bb.maxs().x, bb.mins().y, bb.maxs().z);

    glVertex3f(bb.mins().x, bb.mins().y, bb.mins().z);
    glVertex3f(bb.mins().x, bb.mins().y, bb.maxs().z);
	glEnd();
}

void Common::renderAxis()
{
	// Axis
	glBegin(GL_LINES);
	glColor3f(1.0f, 0.0f, 0.0f);
	glVertex3f(10.0f, 0.0f, 0.0f);
	glVertex3f(0.0f, 0.0f, 0.0f);
	
	glColor3f(0.0f, 1.0f, 0.0f);
	glVertex3f(0.0f, 10.0f, 0.0f);
	glVertex3f(0.0f, 0.0f, 0.0f);
	
	glColor3f(0.0f, 0.0f, 1.0f);
	glVertex3f(0.0f, 0.0f, 10.0f);
	glVertex3f(0.0f, 0.0f, 0.0f);
	glEnd();
}

/*
 * From stackoverflow.com:
 *		http://stackoverflow.com/questions/236129/how-to-split-a-string-in-c#4689579
 */
void Common::explode(std::vector<std::string>& lst, const std::string& input, const std::string& separators, bool remove_empty)
{
    std::ostringstream word;
    for (size_t n = 0; n < input.size(); ++n)
    {
        if (std::string::npos == separators.find(input[n]))
            word << input[n];
        else
        {
            if (!word.str().empty() || !remove_empty)
                lst.push_back(word.str());
            word.str("");
        }
    }
    if (!word.str().empty() || !remove_empty)
        lst.push_back(word.str());
}

std::string Common::implode(const std::vector<std::string>& lst, const std::string& glue)
{
	std::string output;
	
	for (size_t i = 0; i != lst.size()-1; i++)
		output += lst[i] + glue;
	output += lst[lst.size()-1];
	
	return output;
}
