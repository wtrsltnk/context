/* 
 * File:   DefaultShader.cpp
 * Author: wouter
 * 
 * Created on May 27, 2011, 11:42 AM
 */

#include "DefaultShader.h"
#include "GLee.h"

DefaultShader::DefaultShader(const char* vertexShader, const char* fragmentShader)
	: mProjectionMatrixLocation(0), mModelviewMatrixLocation(0)
{
	if (GLEE_VERSION_2_0)
	{
		this->mShaderCount = 2;
		this->mShaders = new unsigned  int[2];
		
		this->mShaders[0] = glCreateShader(GL_VERTEX_SHADER);
		glShaderSource(this->mShaders[0], 1, &vertexShader, NULL);
		glCompileShader(this->mShaders[0]);
		
		this->mShaders[1] = glCreateShader(GL_FRAGMENT_SHADER);
		glShaderSource(this->mShaders[1], 1, &fragmentShader, NULL);
		glCompileShader(this->mShaders[1]);
	}
}

DefaultShader::~DefaultShader()
{
}

void DefaultShader::setProjectionMatrix(const ProjectionMatrix& m)
{
	glUniformMatrix4fv(this->mProjectionMatrixLocation, 1, false, (float*)&m.m[0][0]);
}

void DefaultShader::setModelviewMatrix(const ModelviewMatrix& m)
{
	glUniformMatrix4fv(this->mModelviewMatrixLocation, 1, true, (float*)&m.m[0][0]);
}

void DefaultShader::onLinked()
{
	this->mProjectionMatrixLocation = glGetUniformLocation(this->mProgram, "projectionMatrix");
	this->mModelviewMatrixLocation = glGetUniformLocation(this->mProgram, "modelviewMatrix");
}
