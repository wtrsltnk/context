/* 
 * File:   DefaultShader.cpp
 * Author: wouter
 * 
 * Created on May 27, 2011, 11:42 AM
 */

#include "DefaultShader.h"
#include "GLee.h"
#include <iostream>

const char vertexShaderSimple[] = 
"uniform mat4 projection_matrix;" \
"uniform mat4 modelview_matrix;" \
"void main()" \
"{" \
"	gl_Position = projection_matrix * modelview_matrix * gl_Vertex;" \
"}";

const char fragmentShaderSimple[] = 
"void main()" \
"{" \
"	gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0);" \
"}";

DefaultShader::DefaultShader()
{
	if (GLEE_VERSION_2_0)
	{
		this->mShaderCount = 2;
		this->mShaders = new unsigned  int[2];
		this->mShaders[0] = Shader::compileVertexShader(vertexShaderSimple);
		this->mShaders[1] = Shader::compileFragmentShader(fragmentShaderSimple);
	}
}

DefaultShader::DefaultShader(const char* vshader, const char* fshader)
	: mProjectionMatrixLocation(0), mModelviewMatrixLocation(0)
{
	if (GLEE_VERSION_2_0)
	{
		this->mShaderCount = 2;
		this->mShaders = new unsigned  int[2];
		this->mShaders[0] = Shader::compileVertexShader(vshader);
		this->mShaders[1] = Shader::compileFragmentShader(fshader);
	}
}

DefaultShader::~DefaultShader()
{
}

void DefaultShader::setProjectionMatrix(const ProjectionMatrix& m)
{
	glUniformMatrix4fv(this->mProjectionMatrixLocation, 1, GL_FALSE, (float*)&m.m[0][0]);
}

void DefaultShader::setModelviewMatrix(const ModelviewMatrix& m)
{
	glUniformMatrix4fv(this->mModelviewMatrixLocation, 1, GL_FALSE, (float*)&m.m[0][0]);
}

void DefaultShader::onLinked()
{
	this->mProjectionMatrixLocation = glGetUniformLocation(this->mProgram, "projection_matrix");
	this->mModelviewMatrixLocation = glGetUniformLocation(this->mProgram, "modelview_matrix");
}
