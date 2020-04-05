#ifndef _CAMERA_H
#define _CAMERA_H

#include <glm/glm.hpp>

class Camera
{
public:
    Camera();
    virtual ~Camera();

    void update() const;

    const glm::vec3 &rotation() const;
    void rotate(float x, float y, float z);

    const glm::vec3 &position() const;
    void moveForward(float amount);
    void moveUp(float amount);
    void moveLeft(float amount);

    glm::mat4 &matrix();

    glm::vec3 forward();
    glm::vec3 up();
    glm::vec3 left();

private:
    glm::mat4 mMatrix;
    glm::vec3 mRotation;
    glm::vec3 mPosition;
};

#endif /* _CAMERA_H */
