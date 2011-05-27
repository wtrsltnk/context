#include "Matrix4x4.h"
#include <math.h>
#include <iostream>
#include <GL/gl.h>

Matrix4x4::Matrix4x4()
{
	for (int i = 0; i < 4; i++)
		for (int j = 0; j < 4; j++)
			if (i == j)
				this->m[i][j] = 1.0f;
			else
				this->m[i][j] = 0.0f;
}

Matrix4x4::Matrix4x4(const Matrix4x4& matrix)
{
	for (int i = 0; i < 4; i++)
		for (int j = 0; j < 4; j++)
			this->m[i][j] = matrix.m[i][j];
}

Matrix4x4::Matrix4x4(float (*matrix)[4])
{
	for (int i = 0; i < 4; i++)
		for (int j = 0; j < 4; j++)
			this->m[i][j] = matrix[i][j];
}

Matrix4x4::~Matrix4x4()
{
}

const Vector3 Matrix4x4::forwardVector() const
{
    return Vector3(this->m[0][2], this->m[1][2], this->m[2][2]);
}

const Vector3 Matrix4x4::leftVector() const
{
    return Vector3(this->m[0][0], this->m[1][0], this->m[2][0]);
}

const Vector3 Matrix4x4::upVector() const
{
    return Vector3(this->m[0][1], this->m[1][1], this->m[2][1]);
}

Matrix4x4& Matrix4x4::operator = (const Matrix4x4& other)
{
	for (int i = 0; i < 4; i++)
		for (int j = 0; j < 4; j++)
			this->m[i][j] = other.m[i][j];
	
	return (*this);
}

Matrix4x4 Matrix4x4::operator * (const Matrix4x4& second)
{
	Matrix4x4 out;

	for(int i = 0; i < 4; i++)
	{
		for(int j = 0; j < 4; j++)
		{
			out.m[i][j] = 0.0f;
			for(int k = 0; k < 4; k++)
			{
				out.m[i][j] += this->m[i][k] * second.m[k][j];
			}
		}
	}
	return out;
}

Matrix4x4 Matrix4x4::rotateMatrixX(float angle)
{
	Matrix4x4 out;

    float cosAngle = cosf(angle);
    float sinAngle = sinf(angle);

    out.m[1][1] =  cosAngle;
    out.m[2][1] = -sinAngle;
    out.m[1][2] =  sinAngle;
    out.m[2][2] =  cosAngle;

	return out;
}

Matrix4x4 Matrix4x4::rotateMatrixY(float angle)
{
	Matrix4x4 out;

    float cosAngle = cosf(angle);
    float sinAngle = sinf(angle);

    out.m[0][0] =  cosAngle;
    out.m[2][0] =  sinAngle;
    out.m[0][2] = -sinAngle;
    out.m[2][2] =  cosAngle;

	return out;
}

Matrix4x4 Matrix4x4::rotateMatrixZ(float angle)
{
	Matrix4x4 out;

    float cosAngle = cosf(angle);
    float sinAngle = sinf(angle);

    out.m[0][0] =  cosAngle;
    out.m[1][0] = -sinAngle;
    out.m[0][1] =  sinAngle;
    out.m[1][1] =  cosAngle;

	return out;
}

Matrix4x4 Matrix4x4::translateMatrix(float x, float y, float z)
{
	Matrix4x4 out;

	out.m[3][0] = x;
	out.m[3][1] = y;
	out.m[3][2] = z;
	
	return out;
}

void Matrix4x4::loadIdentity()
{
	for (int i = 0; i < 4; i++)
		for (int j = 0; j < 4; j++)
			if (i == j)
				this->m[i][j] = 1.0f;
			else
				this->m[i][j] = 0.0f;
}

void Matrix4x4::glMultiply() const
{
	glMultMatrixf(&this->m[0][0]);
}

void Matrix4x4::print() const
{
	for (int i = 0; i < 4; i++)
	{
		for (int j = 0; j < 4; j++)
		{
			std::cout << this->m[i][j] << "\t";
		}
		std::cout << std::endl;
	}
	std::cout << std::endl;
}
