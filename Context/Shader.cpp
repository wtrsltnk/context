/* 
 * File:   Shader.cpp
 * Author: wouter
 * 
 * Created on May 26, 2011, 10:51 PM
 */

#include "Shader.h"
#include "GLee.h"

Shader::Shader()
	: mProgram(0), mShaderCount(0), mShaders(0)
{
}

Shader::~Shader()
{
	if (GLEE_VERSION_2_1)
	{
		if (this->mShaderCount > 0)
		{
			for (int i = 0; i < this->mShaderCount; i++)
			{
				glDetachShader(this->mProgram, this->mShaders[i]);
				glDeleteShader(this->mShaders[i]);
			}
			delete []this->mShaders;
		}
		if (this->mProgram != 0)
			glDeleteProgram(this->mProgram);
	}
}

void Shader::use()
{
	if (GLEE_VERSION_2_1)
	{
		glUseProgram(this->mProgram);
	}
}
