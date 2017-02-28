#ifndef _CAMERA_H
#define	_CAMERA_H

#include <glm/glm.hpp>

class Camera
{
public:
	Camera();
	virtual ~Camera();

    void update() const;

    glm::vec3& rotation();
    void setRotation(float rotation[3]);
    virtual void setRotation(float x, float y, float z);
	void rotate(float x, float y, float z);
	void rotateX(float amount);
	void rotateY(float amount);
	void rotateZ(float amount);
	void rotateDegree(float x, float y, float z);
	void rotateXDegree(float amount);
	void rotateYDegree(float amount);
	void rotateZDegree(float amount);

    glm::vec3& position();
    void setPosition(const float position[3]);
    virtual void setPosition(float x, float y, float z);
    virtual void move(float forward, float left, float up);
	void moveForward(float amount);
	void moveUp(float amount);
	void moveLeft(float amount);
	
    glm::mat4& matrix();

    glm::vec3 forward();
    glm::vec3 up();
    glm::vec3 left();

	bool isChanged();

private:
    glm::mat4 mMatrix;
    glm::vec3 mRotation;
    glm::vec3 mPosition;
	bool mIsChanged;

};

#endif	/* _CAMERA_H */

