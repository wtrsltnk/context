#include "Camera.h"
#include "glad.h"
#include <glm/gtc/matrix_transform.hpp>

#define PI 3.14159265
#define Deg2Rad(Ang) ((float)(Ang * PI / 180.0))

Camera::Camera()
{}

Camera::~Camera()
{}

glm::mat4 translateMatrix(float x, float y, float z)
{
    glm::mat4 out(1.0f);

    out[3][0] = x;
    out[3][1] = y;
    out[3][2] = z;

    return out;
}

void Camera::update() const
{
    //    (Matrix4x4::translateMatrix(this->mPosition[0], this->mPosition[1], this->mPosition[2]) * this->mMatrix).glMultiply();
    auto m = this->mMatrix * translateMatrix(this->mPosition.x, this->mPosition.y, this->mPosition.z);

    glMultMatrixf(&m[0][0]);
}

glm::mat4 rotateMatrixX(
    float angle)
{
    glm::mat4 out(1.0f);

    float cosAngle = cosf(angle);
    float sinAngle = sinf(angle);

    out[1][1] = cosAngle;
    out[2][1] = -sinAngle;
    out[1][2] = sinAngle;
    out[2][2] = cosAngle;

    return out;
}

glm::mat4 rotateMatrixY(
    float angle)
{
    glm::mat4 out(1.0f);

    float cosAngle = cosf(angle);
    float sinAngle = sinf(angle);

    out[0][0] = cosAngle;
    out[2][0] = sinAngle;
    out[0][2] = -sinAngle;
    out[2][2] = cosAngle;

    return out;
}

glm::mat4 rotateMatrixZ(
    float angle)
{
    glm::mat4 out(1.0f);

    float cosAngle = cosf(angle);
    float sinAngle = sinf(angle);

    out[0][0] = cosAngle;
    out[1][0] = -sinAngle;
    out[0][1] = sinAngle;
    out[1][1] = cosAngle;

    return out;
}

const glm::vec3 &Camera::rotation() const
{
    return this->mRotation;
}

void Camera::rotate(
    float x,
    float y,
    float z)
{
    this->mRotation[0] += x;
    this->mRotation[1] += y;
    this->mRotation[2] += z;
    this->mMatrix = rotateMatrixX(this->mRotation[0]) * rotateMatrixY(this->mRotation[1]) * rotateMatrixZ(this->mRotation[2]);
}

const glm::vec3 &Camera::position() const
{
    return this->mPosition;
}

void Camera::moveForward(
    float amount)
{
    this->mPosition.x += (this->forward() * amount).x;
    this->mPosition.y += (this->forward() * amount).y;
    this->mPosition.z += (this->forward() * amount).z;
}

void Camera::moveUp(
    float amount)
{
    this->mPosition.x += (this->up() * amount).x;
    this->mPosition.y += (this->up() * amount).y;
    this->mPosition.z += (this->up() * amount).z;
}

void Camera::moveLeft(
    float amount)
{
    this->mPosition.x += (this->left() * amount).x;
    this->mPosition.y += (this->left() * amount).y;
    this->mPosition.z += (this->left() * amount).z;
}

glm::mat4 &Camera::matrix()
{
    return this->mMatrix;
}

glm::vec3 Camera::forward()
{
    return glm::vec3(this->mMatrix[0][2], this->mMatrix[1][2], this->mMatrix[2][2]);
}

glm::vec3 Camera::up()
{
    return glm::vec3(this->mMatrix[0][1], this->mMatrix[1][1], this->mMatrix[2][1]);
}

glm::vec3 Camera::left()
{
    return glm::vec3(this->mMatrix[0][0], this->mMatrix[1][0], this->mMatrix[2][0]);
}
