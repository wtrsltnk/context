/* 
 * File:   DefaultShader.h
 * Author: wouter
 *
 * Created on May 27, 2011, 11:42 AM
 */

#ifndef DEFAULTSHADER_H
#define	DEFAULTSHADER_H

#include "Shader.h"
#include "ProjectionMatrix.h"
#include "ModelviewMatrix.h"

class DefaultShader : public Shader
{
public:
	DefaultShader();
	DefaultShader(const char* vertexShader, const char* fragmentShader);
	virtual ~DefaultShader();

	void setProjectionMatrix(const ProjectionMatrix& m);
	void setModelviewMatrix(const ModelviewMatrix& m);
	
protected:
	virtual void onLinked();
	
protected:
	int mProjectionMatrixLocation;
	int mModelviewMatrixLocation;

};

#endif	/* DEFAULTSHADER_H */

