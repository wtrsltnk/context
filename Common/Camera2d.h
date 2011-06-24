/* 
 * File:   Camera2d.h
 * Author: wouter
 *
 * Created on June 24, 2011, 12:12 PM
 */

#ifndef CAMERA2D_H
#define	CAMERA2D_H

#include "Vector3.h"

class Camera2d
{
public:
	Camera2d();
	virtual ~Camera2d();

    void update();

	Vector3& position();
    void setPosition(const float position[3]);
    virtual void setPosition(float x, float y, float z);
    virtual void move(float forward, float left, float up);
	
	bool isChanged();

	int mAxis;
    Vector3 mPosition;
	float mZoom;
	bool mIsChanged;

};

#endif	/* CAMERA2D_H */

