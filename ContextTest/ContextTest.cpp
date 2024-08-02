/* 
 * File:   ContextTest.cpp
 * Author: wouter
 * 
 * Created on May 26, 2011, 3:12 PM
 */

#include "ContextTest.h"
#include <glad/glad.h>

ContextTest::ContextTest() = default;

ContextTest::~ContextTest()
{
    if (this->mShader != nullptr)
    {
        delete this->mShader;
    }
}

unsigned int vboid[2];

bool ContextTest::onInitializeGl()
{
    GLfloat vertices[] = {
        0.0f,
        0.0f,
        -10.0f,
        0.0f,
        5.0f,
        -10.0f,
        5.0f,
        5.0f,
        -10.0f,
    };
    GLuint indices[] = {
        0,
        1,
        2,
    };
    this->mShader = new DefaultShader();

    glGenBuffers(2, vboid);

    glBindBuffer(GL_ARRAY_BUFFER, vboid[0]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vboid[1]);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

    return true;
}

void ContextTest::onIdle(
    const GameTime *gameTime)
{
    (void)gameTime;

    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    this->mShader->use();
    this->mShader->setProjectionMatrix(this->mProjection);
    this->mShader->setModelviewMatrix(this->mModelview);

    glBindBuffer(GL_ARRAY_BUFFER, vboid[0]);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vboid[1]);

    glEnableClientState(GL_VERTEX_ARRAY);
    glVertexPointer(3, GL_FLOAT, 0, 0);

    glDrawElements(GL_TRIANGLES, 3, GL_UNSIGNED_INT, 0);

    glDisableClientState(GL_VERTEX_ARRAY);

    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
}

void ContextTest::onResize(int w, int h)
{
    if (h == 0)
    {
        h = 1;
    }

    float aspect = 1.0f * (float(w) / float(h));

    this->mProjection.setPerspective(90, aspect, 1, 3000.0f);
}

void ContextTest::onKeyDown(Key::Code key)
{
    float amount = 0.1f;
    if (KeyboardState::currentState().isKeyPressed(Key::LShift))
    {
        amount = -amount;
    }

    if (key == Key::M)
    {
        this->mModelview.move(amount, 0, 0);
    }
    else if (key == Key::R)
    {
        this->mModelview.rotate(amount, 0, 0);
    }
    else if (key == Key::W)
    {
        this->mModelview.moveForward(1);
    }
    else if (key == Key::S)
    {
        this->mModelview.moveForward(-1);
    }
    else if (key == Key::A)
    {
        this->mModelview.moveLeft(1);
    }
    else if (key == Key::D)
    {
        this->mModelview.moveLeft(-1);
    }
}
