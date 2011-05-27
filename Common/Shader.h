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

	void link();
	void use();
	
public:
	static unsigned int compileVertexShader(const char* shader);
	static unsigned int compileFragmentShader(const char* shader);
	static void printProgramInfoLog(unsigned int obj);
	static void printShaderInfoLog(unsigned int obj);

protected:
	virtual void onLinked() { }
	
public:
	unsigned int mProgram;
	int mShaderCount;
	unsigned int* mShaders;
	
};

#endif	/* SHADER_H */

