/* 
 * File:   Shader.cpp
 * Author: wouter
 * 
 * Created on May 26, 2011, 10:51 PM
 */

#include "Shader.h"

#include <glad/glad.h>
#include <iostream>

Shader::Shader()
	: mProgram(0), mShaderCount(0), mShaders(0)
{
}

Shader::~Shader()
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

void Shader::link()
{
    this->mProgram = glCreateProgram();
    
    for (int i = 0; i < this->mShaderCount; i++)
        glAttachShader(this->mProgram, this->mShaders[i]);

    glLinkProgram(this->mProgram);
    Shader::printProgramInfoLog(this->mProgram);
    
    glUseProgram(this->mProgram);
    this->onLinked();
}

void Shader::use()
{
    if (this->mProgram == 0)
        this->link();
    
    glUseProgram(this->mProgram);
}

unsigned int Shader::compileVertexShader(const char* shader)
{
	unsigned int id = glCreateShader(GL_VERTEX_SHADER);
	glShaderSource(id, 1, &shader, NULL);
	glCompileShader(id);
	Shader::printShaderInfoLog(id);	
	
	return id;
}

unsigned int Shader::compileFragmentShader(const char* shader)
{
	unsigned int id = glCreateShader(GL_FRAGMENT_SHADER);
	glShaderSource(id, 1, &shader, NULL);
	glCompileShader(id);
	Shader::printShaderInfoLog(id);
	
	return id;
}

void Shader::printProgramInfoLog(unsigned int obj)
{
    int infologLength = 0;
    int charsWritten  = 0;
    char *infoLog;

    glGetProgramiv(obj, GL_INFO_LOG_LENGTH,&infologLength);

    if (infologLength > 0)
    {
        infoLog = (char *)new char[infologLength];
        glGetProgramInfoLog(obj, infologLength, &charsWritten, infoLog);
		std::cout <<  infoLog << std::endl;
        delete []infoLog;
    }
}

void Shader::printShaderInfoLog(unsigned int obj)
{
    int infologLength = 0;
    int charsWritten  = 0;
    char *infoLog;

    glGetShaderiv(obj, GL_INFO_LOG_LENGTH,&infologLength);

    if (infologLength > 0)
    {
        infoLog = (char *)new char[infologLength];
        glGetShaderInfoLog(obj, infologLength, &charsWritten, infoLog);
		std::cout <<  infoLog << std::endl;
        delete []infoLog;
    }
}
