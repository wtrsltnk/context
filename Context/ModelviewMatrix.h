/* 
 * File:   ModelviewMatrix.h
 * Author: wouter
 *
 * Created on May 27, 2011, 10:06 AM
 */

#ifndef MODELVIEWMATRIX_H
#define	MODELVIEWMATRIX_H

#include "Matrix4x4.h"

class ModelviewMatrix : public Matrix4x4
{
public:
	ModelviewMatrix();
	ModelviewMatrix(const Matrix4x4& matrix);
	virtual ~ModelviewMatrix();

	void rotate(float x, float y, float z);
	void move(float x, float y, float z);
	void moveForward(float amount);
	void moveLeft(float amount);
	void moveUp(float amount);
	
};

#endif	/* MODELVIEWMATRIX_H */

