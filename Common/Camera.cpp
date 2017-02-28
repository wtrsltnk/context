#include "Camera.h"
#include <glm/gtc/matrix_transform.hpp>
#include <GL/glextl.h>

#define PI 3.14159265
#define Deg2Rad(Ang) ((float)( Ang * PI / 180.0 ))

Camera::Camera()
	: mIsChanged(true)
{ }

Camera::~Camera()
{ }

void Camera::update() const
{
//    (Matrix4x4::translateMatrix(this->mPosition[0], this->mPosition[1], this->mPosition[2]) * this->mMatrix).glMultiply();
    auto m = glm::translate(glm::mat4(1.0f), this->mPosition) * this->mMatrix;

    glMultMatrixf(&m[0][0]);
}

void Camera::setRotation(float r[3])
{
	if (r[0] != 0 || r[1] != 0 || r[2] != 0) this->mIsChanged = true;

	this->setRotation(r[0], r[1], r[2]);
}

glm::mat4 rotateMatrixX(float angle)
{
    glm::mat4 out(1.0f);

    float cosAngle = cosf(angle);
    float sinAngle = sinf(angle);

    out[1][1] =  cosAngle;
    out[2][1] = -sinAngle;
    out[1][2] =  sinAngle;
    out[2][2] =  cosAngle;

    return out;
}

glm::mat4 rotateMatrixY(float angle)
{
    glm::mat4 out(1.0f);

    float cosAngle = cosf(angle);
    float sinAngle = sinf(angle);

    out[0][0] =  cosAngle;
    out[2][0] =  sinAngle;
    out[0][2] = -sinAngle;
    out[2][2] =  cosAngle;

    return out;
}

glm::mat4 rotateMatrixZ(float angle)
{
    glm::mat4 out(1.0f);

    float cosAngle = cosf(angle);
    float sinAngle = sinf(angle);

    out[0][0] =  cosAngle;
    out[1][0] = -sinAngle;
    out[0][1] =  sinAngle;
    out[1][1] =  cosAngle;

    return out;
}

void Camera::setRotation(float x, float y, float z)
{
	if (x != 0 || y != 0 || z != 0) this->mIsChanged = true;

    this->mRotation = glm::vec3(x, y, z);
//    this->mMatrix = Matrix4x4::rotateMatrixZ(this->mRotation[2]) * Matrix4x4::rotateMatrixY(this->mRotation[1]) * Matrix4x4::rotateMatrixX(this->mRotation[0]);
    this->mMatrix = rotateMatrixZ(this->mRotation[2]) * rotateMatrixY(this->mRotation[1]) * rotateMatrixX(this->mRotation[0]);
}

glm::vec3& Camera::rotation()
{
	return this->mRotation;
}

void Camera::rotate(float x, float y, float z)
{
	if (x != 0 || y != 0 || z != 0) this->mIsChanged = true;

	this->mRotation[0] += x;
	this->mRotation[1] += y;
	this->mRotation[2] += z;
    this->mMatrix = rotateMatrixZ(this->mRotation[2]) * rotateMatrixY(this->mRotation[1]) * rotateMatrixX(this->mRotation[0]);
}

void Camera::rotateX(float amount)
{
	if (amount != 0) this->mIsChanged = true;

	this->mRotation[0] += amount;
    this->mMatrix = rotateMatrixZ(this->mRotation[2]) * rotateMatrixY(this->mRotation[1]) * rotateMatrixX(this->mRotation[0]);
}

void Camera::rotateY(float amount)
{
	if (amount != 0) this->mIsChanged = true;

	this->mRotation[1] += amount;
    this->mMatrix = rotateMatrixZ(this->mRotation[2]) * rotateMatrixY(this->mRotation[1]) * rotateMatrixX(this->mRotation[0]);
}

void Camera::rotateZ(float amount)
{
	if (amount != 0) this->mIsChanged = true;

	this->mRotation[2] += amount;
    this->mMatrix = rotateMatrixZ(this->mRotation[2]) * rotateMatrixY(this->mRotation[1]) * rotateMatrixX(this->mRotation[0]);
}

void Camera::rotateDegree(float x, float y, float z)
{
	if (x != 0 || y != 0 || z != 0) this->mIsChanged = true;

	this->mRotation[0] += Deg2Rad(x);
	this->mRotation[1] += Deg2Rad(y);
	this->mRotation[2] += Deg2Rad(z);
    this->mMatrix = rotateMatrixZ(this->mRotation[2]) * rotateMatrixY(this->mRotation[1]) * rotateMatrixX(this->mRotation[0]);
}

void Camera::rotateXDegree(float amount)
{
	if (amount != 0) this->mIsChanged = true;

	this->mRotation[0] += Deg2Rad(amount);
    this->mMatrix = rotateMatrixZ(this->mRotation[2]) * rotateMatrixY(this->mRotation[1]) * rotateMatrixX(this->mRotation[0]);
}

void Camera::rotateYDegree(float amount)
{
	if (amount != 0) this->mIsChanged = true;

	this->mRotation[1] += Deg2Rad(amount);
    this->mMatrix = rotateMatrixZ(this->mRotation[2]) * rotateMatrixY(this->mRotation[1]) * rotateMatrixX(this->mRotation[0]);
}

void Camera::rotateZDegree(float amount)
{
	if (amount != 0) this->mIsChanged = true;

	this->mRotation[2] += Deg2Rad(amount);
    this->mMatrix = rotateMatrixZ(this->mRotation[2]) * rotateMatrixY(this->mRotation[1]) * rotateMatrixX(this->mRotation[0]);
}

void Camera::setPosition(const float mPosition[3])
{
	this->setPosition(this->mPosition[0], this->mPosition[1], this->mPosition[2]);
}

void Camera::setPosition(float x, float y, float z)
{
	if (x != 0 || y != 0 || z != 0) this->mIsChanged = true;

    this->mPosition = glm::vec3(x, y, z);
}

glm::vec3& Camera::position()
{
	return this->mPosition;
}

void Camera::move(float forward, float left, float up)
{
//	if (forward != 0 || left != 0 || up != 0) this->mIsChanged = true;
//
//    this->mPosition += (this->mMatrix.forwardVector() * forward) * (this->mMatrix.leftVector() * left) * (this->mMatrix.upVector() * up);

    setPosition(this->mPosition.x+forward, this->mPosition.y+left, this->mPosition.z+up);
}

void Camera::moveForward(float amount)
{
	if (amount != 0) this->mIsChanged = true;

    setPosition(this->mPosition.x+(this->forward() * amount).x,
            this->mPosition.y+(this->forward() * amount).y,
            this->mPosition.z+(this->forward() * amount).z);
}

void Camera::moveUp(float amount)
{
	if (amount != 0) this->mIsChanged = true;

    setPosition(this->mPosition.x+(this->up() * amount).x,
            this->mPosition.y+(this->up() * amount).y,
            this->mPosition.z+(this->up() * amount).z);
}

void Camera::moveLeft(float amount)
{
	if (amount != 0) this->mIsChanged = true;

    setPosition(this->mPosition.x+(this->left() * amount).x,
            this->mPosition.y+(this->left() * amount).y,
            this->mPosition.z+(this->left() * amount).z);
}

glm::mat4& Camera::matrix()
{
	return this->mMatrix;
}

glm::vec3 Camera::forward()
{
//	return this->mMatrix.forwardVector();
    return glm::vec3(this->mMatrix[2]);
}

glm::vec3 Camera::up()
{
//	return this->mMatrix.upVector();
    return glm::vec3(this->mMatrix[1]);
}

glm::vec3 Camera::left()
{
//	return this->mMatrix.leftVector();
    return glm::vec3(this->mMatrix[0]);
}

bool Camera::isChanged()
{
	bool tmp = this->mIsChanged;

	this->mIsChanged = false;
	
	return tmp;
}
