/* 
 * File:   Shader.h
 * Author: wouter
 *
 * Created on May 26, 2011, 10:51 PM
 */

#ifndef SHADER_H
#define	SHADER_H

class Shader
{
public:
	Shader();
	virtual ~Shader();

	void use();
	
protected:
	unsigned int mProgram;
	int mShaderCount;
	unsigned int* mShaders;
	
};

#endif	/* SHADER_H */

