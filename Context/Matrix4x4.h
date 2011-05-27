#ifndef MATRIX4X4_H
#define MATRIX4X4_H

#include "Vector3.h"

class Matrix4x4
{
public:
	Matrix4x4();
	Matrix4x4(const Matrix4x4& matrix);
	Matrix4x4(float (*matrix)[4]);
	virtual ~Matrix4x4();

	const Vector3 forwardVector() const;
	const Vector3 leftVector() const;
	const Vector3 upVector() const;

	Matrix4x4 operator * (const Matrix4x4& other);
	
	void glMultiply() const;
	void print() const;

public:
	static Matrix4x4 rotateMatrixX(float angle);
	static Matrix4x4 rotateMatrixY(float angle);
	static Matrix4x4 rotateMatrixZ(float angle);
	static Matrix4x4 translateMatrix(float x, float y, float z);

private:
	float m[4][4];

};

#endif // MATRIX4X4_H
