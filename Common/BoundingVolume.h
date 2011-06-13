/* 
 * File:   BoundingVolume.h
 * Author: wouter
 *
 * Created on June 13, 2011, 4:43 PM
 */

#ifndef BOUNDINGVOLUME_H
#define	BOUNDINGVOLUME_H

#include "Vector3.h"

class BoundingVolume
{
public:
	BoundingVolume();
	virtual ~BoundingVolume();

	BoundingVolume& operator << (const Vector3& p);
	BoundingVolume& operator << (const BoundingVolume& b);
	
	Vector3& mins();
	Vector3& maxs();
	Vector3 origin();
	
private:
	Vector3 mMins, mMaxs;

};

#endif	/* BOUNDINGVOLUME_H */

