/* 
 * File:   ProjectionMatrix.h
 * Author: wouter
 *
 * Created on May 27, 2011, 10:06 AM
 */

#ifndef PROJECTIONMATRIX_H
#define	PROJECTIONMATRIX_H

#include "Matrix4x4.h"

class ProjectionMatrix : public Matrix4x4
{
public:
	ProjectionMatrix();
	virtual ~ProjectionMatrix();

	void setPerspective(float fov, float aspect, float near, float far);
	void setFrustum(float left, float right, float bottom, float top, float near, float far);
	void setOrthographic(float left, float right, float bottom, float top, float near, float far);
	
};

#endif	/* PROJECTIONMATRIX_H */

