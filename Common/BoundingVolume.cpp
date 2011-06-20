/* 
 * File:   BoundingVolume.cpp
 * Author: wouter
 * 
 * Created on June 13, 2011, 4:43 PM
 */

#include "BoundingVolume.h"
#include "Vector3.h"

BoundingVolume::BoundingVolume()
{
	this->mMins = Vector3(9999.9f, 9999.9f, 9999.9f);
	this->mMaxs = Vector3(-9999.9f, -9999.9f, -9999.9f);
}

BoundingVolume::~BoundingVolume()
{
}

BoundingVolume& BoundingVolume::operator << (const Vector3& p)
{
	if (p.x() < this->mMins.x())
		this->mMins.x(p.x());
	if (p.y() < this->mMins.y())
		this->mMins.y(p.y());
	if (p.z() < this->mMins.z())
		this->mMins.z(p.z());
	
	if (p.x() > this->mMaxs.x())
		this->mMaxs.x(p.x());
	if (p.y() > this->mMaxs.y())
		this->mMaxs.y(p.y());
	if (p.z() > this->mMaxs.z())
		this->mMaxs.z(p.z());
	
	return (*this);
}


BoundingVolume& BoundingVolume::operator << (const BoundingVolume& b)
{
	if (b.mMins.x() < this->mMins.x())
		this->mMins.x(b.mMins.x());
	if (b.mMins.y() < this->mMins.y())
		this->mMins.y(b.mMins.y());
	if (b.mMins.z() < this->mMins.z())
		this->mMins.z(b.mMins.z());
	
	if (b.mMaxs.x() > this->mMaxs.x())
		this->mMaxs.x(b.mMaxs.x());
	if (b.mMaxs.y() > this->mMaxs.y())
		this->mMaxs.y(b.mMaxs.y());
	if (b.mMaxs.z() > this->mMaxs.z())
		this->mMaxs.z(b.mMaxs.z());
	
	return (*this);
}

const Vector3& BoundingVolume::mins() const
{
	return this->mMins;
}

const Vector3& BoundingVolume::maxs() const
{
	return this->mMaxs;
}

Vector3& BoundingVolume::mins()
{
	return this->mMins;
}

Vector3& BoundingVolume::maxs()
{
	return this->mMaxs;
}

Vector3 BoundingVolume::origin()
{
	return Vector3(
			this->mMins.x() + ((this->mMaxs.x()-this->mMins.x()) / 2),
			this->mMins.y() + ((this->mMaxs.y()-this->mMins.y()) / 2),
			this->mMins.z() + ((this->mMaxs.z()-this->mMins.z()) / 2)
		);
}

float BoundingVolume::width() const
{
	return this->mMaxs[0] - this->mMins[0];
}

float BoundingVolume::heigth() const
{
	return this->mMaxs[1] - this->mMins[1];
}

float BoundingVolume::depth() const
{
	return this->mMaxs[2] - this->mMins[2];
}

