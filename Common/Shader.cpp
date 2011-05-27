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
	if (GLEE_VERSION_2_0)
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

void Shader::link()
{
	if (GLEE_VERSION_2_0)
	{
		this->mProgram = glCreateProgram();
		
		for (int i = 0; i < this->mShaderCount; i++)
			glAttachShader(this->mProgram, this->mShaders[i]);

		glLinkProgram(this->mProgram);
		
		this->onLinked();
	}
}

void Shader::use()
{
	if (this->mProgram == 0)
		this->link();
	
	if (GLEE_VERSION_2_0)
	{
		glUseProgram(this->mProgram);
	}
}
