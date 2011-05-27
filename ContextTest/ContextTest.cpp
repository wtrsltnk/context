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

unsigned int vboid[2];
bool ContextTest::onInitializeGl()
{
	GLfloat vertices[] = {
		0.0f, 0.0f, -10.0f,
		0.0f, 5.0f, -10.0f,
		5.0f, 5.0f, -10.0f
	};
	GLuint indices[] = {
		0, 1, 2
	};
	this->mShader = new DefaultShader();
	
	if (GLEE_ARB_vertex_buffer_object)
	{
		glGenBuffersARB(2, vboid);
		
		glBindBufferARB(GL_ARRAY_BUFFER_ARB, vboid[0]);
		glBufferDataARB(GL_ARRAY_BUFFER_ARB, sizeof(vertices), vertices, GL_STATIC_DRAW_ARB);
		
		glBindBufferARB(GL_ELEMENT_ARRAY_BUFFER_ARB, vboid[1]);
		glBufferDataARB(GL_ELEMENT_ARRAY_BUFFER_ARB, sizeof(indices), indices, GL_STATIC_DRAW_ARB);
	}
	return true;
}

void ContextTest::onIdle(const GameTime* gameTime)
{
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	
	this->mShader->use();
	this->mShader->setProjectionMatrix(this->mProjection);
	this->mShader->setModelviewMatrix(this->mModelview);
	
	if (GLEE_ARB_vertex_buffer_object)
	{
		glBindBufferARB(GL_ARRAY_BUFFER_ARB, vboid[0]);
		glBindBufferARB(GL_ELEMENT_ARRAY_BUFFER_ARB, vboid[1]);

		glEnableClientState(GL_VERTEX_ARRAY);
		glVertexPointer(3, GL_FLOAT, 0, 0);

		glDrawElements(GL_TRIANGLES, 3, GL_UNSIGNED_INT, 0);

		glDisableClientState(GL_VERTEX_ARRAY);

		glBindBufferARB(GL_ARRAY_BUFFER_ARB, 0);
		glBindBufferARB(GL_ELEMENT_ARRAY_BUFFER_ARB, 0);
	}
	else
	{
		GLfloat vertices[] ={
			0.0f, 0.0f, -10.0f,
			0.0f, 5.0f, -10.0f,
			5.0f, 5.0f, -10.0f
		};
		glEnableClientState(GL_VERTEX_ARRAY);
		glVertexPointer(3, GL_FLOAT, sizeof(GL_FLOAT) * 3, &vertices);

		glDrawArrays(GL_TRIANGLES, 0, 3);
	}
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
