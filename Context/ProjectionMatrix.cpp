#include "ProjectionMatrix.h"
#include <math.h>

/*
 * This code is 'borrowed' from http://nopper.tv/opengl.html
 */

ProjectionMatrix::ProjectionMatrix()
{
}

ProjectionMatrix::~ProjectionMatrix()
{
}

void ProjectionMatrix::setPerspective(float fov, float aspect, float near, float far)
{
	float xmin, xmax, ymin, ymax;

	ymax = near * tanf(fov * M_PI / 360.0f);
	ymin = -ymax;
	xmin = ymin * aspect;
	xmax = ymax * aspect;

	this->setFrustum(xmin, xmax, ymin, ymax, near, far);
}

void ProjectionMatrix::setFrustum(float left, float right, float bottom, float top, float near, float far)
{
	this->m[0][0] = 2.0f * near / (right - left);
	this->m[0][1] = 0.0f;
	this->m[0][2] = 0.0f;
	this->m[0][3] = 0.0f;
	this->m[1][0] = 0.0f;
	this->m[1][1] = 2.0f * near / (top - bottom);
	this->m[1][2] = 0.0f;
	this->m[1][3] = 0.0f;
	this->m[2][0] = (right + left) / (right - left);
	this->m[2][1] = (top + bottom) / (top - bottom);
	this->m[2][2] = -(far + near) / (far - near);
	this->m[2][3] = -1.0f;
	this->m[3][0] = 0.0f;
	this->m[3][1] = 0.0f;
	this->m[3][2] = -(2.0f * far * near) / (far - near);
	this->m[3][3] = 0.0f;
}

void ProjectionMatrix::setOrthographic(float left, float right, float bottom, float top, float near, float far)
{
	this->m[0][0] = 2.0f / (right - left);
	this->m[0][1] = 0.0f;
	this->m[0][2] = 0.0f;
	this->m[0][3] = 0.0f;
	this->m[1][0] = 0.0f;
	this->m[1][1] = 2.0f / (top - bottom);
	this->m[1][2] = 0.0f;
	this->m[1][3] = 0.0f;
	this->m[2][0] = 0.0f;
	this->m[2][1] = 0.0f;
	this->m[2][2] = -2.0f / (far - near);
	this->m[2][3] = 0.0f;
	this->m[3][0] = -(right + left) / (right - left);
	this->m[3][1] = -(top + bottom) / (top - bottom);
	this->m[3][2] = -(far + near) / (far - near);
	this->m[3][3] = 1.0f;
}
