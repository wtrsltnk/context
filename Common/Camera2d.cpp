/* 
 * File:   Camera2d.cpp
 * Author: wouter
 * 
 * Created on June 24, 2011, 12:12 PM
 */

#include "Camera2d.h"
#include "GLee.h"
#include <iostream>

Camera2d::Camera2d()
{
}

Camera2d::~Camera2d()
{
}

void Camera2d::update()
{
	GLint viewport[4];
	glGetIntegerv(GL_VIEWPORT, viewport);

	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();

	glOrtho(-(viewport[2]/2.0f), (viewport[2]/2.0f), -(viewport[3]/2.0f), (viewport[3]/2.0f), -4000.0f, 4000.0f);

	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();
	
	std::cout << this->mPosition[0] << " " << this->mPosition[1] << " " << this->mPosition[2] << std::endl;
	
	switch (this->mAxis)
	{
		case 0:	// X-Axis
		{
			glTranslatef(this->mPosition[0], this->mPosition[1], this->mPosition[2]);
			glRotatef(-90, 0, 0, 1);
			glRotatef(-90, 0, 1, 0);
			break;
		}
		case 1:	// Y-Axis
		{
			glTranslatef(this->mPosition[0], this->mPosition[1], this->mPosition[2]);
			glRotatef(-90, 1, 0, 0);
			break;
		}
		case 2:	// Z-Axis
		{
			glTranslatef(this->mPosition[0], this->mPosition[1], this->mPosition[2]);
			break;
		}
	}
}

void Camera2d::setPosition(const float mPosition[3])
{
	this->setPosition(this->mPosition[0], this->mPosition[1], this->mPosition[2]);
}

void Camera2d::setPosition(float x, float y, float z)
{
	if (x != 0 || y != 0 || z != 0) this->mIsChanged = true;

	this->mPosition = Vector3(x, y, z);
}

Vector3& Camera2d::position()
{
	return this->mPosition;
}

void Camera2d::move(float forward, float left, float up)
{
	setPosition(this->mPosition.x()+forward, this->mPosition.y()+left, this->mPosition.z()+up);
}

bool Camera2d::isChanged()
{
	bool tmp = this->mIsChanged;

	this->mIsChanged = false;
	
	return tmp;
}

