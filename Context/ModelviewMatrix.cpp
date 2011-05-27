/* 
 * File:   ModelviewMatrix.cpp
 * Author: wouter
 * 
 * Created on May 27, 2011, 10:06 AM
 */

#include "ModelviewMatrix.h"

ModelviewMatrix::ModelviewMatrix()
{
}

ModelviewMatrix::ModelviewMatrix(const Matrix4x4& matrix)
{
	for (int i = 0; i < 4; i++)
		for (int j = 0; j < 4; j++)
			this->m[i][j] = matrix.m[i][j];
}

ModelviewMatrix::~ModelviewMatrix()
{
}

void ModelviewMatrix::rotate(float x, float y, float z)
{
	(*this) = (*this) * (Matrix4x4::rotateMatrixZ(z) * Matrix4x4::rotateMatrixY(y) * Matrix4x4::rotateMatrixX(x));
}

void ModelviewMatrix::move(float x, float y, float z)
{
	this->m[3][0] += x;
	this->m[3][1] += y;
	this->m[3][2] += z;
}

void ModelviewMatrix::moveForward(float amount)
{
	Vector3 v = this->forwardVector() * amount;
	this->move(v.x(), v.y(), v.z());
}

void ModelviewMatrix::moveLeft(float amount)
{
	Vector3 v = this->leftVector() * amount;
	this->move(v.x(), v.y(), v.z());
}

void ModelviewMatrix::moveUp(float amount)
{
	Vector3 v = this->upVector() * amount;
	this->move(v.x(), v.y(), v.z());
}
