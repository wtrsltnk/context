/* 
 * File:   BoundingVolume.h
 * Author: wouter
 *
 * Created on June 13, 2011, 4:43 PM
 */

#ifndef BOUNDINGVOLUME_H
#define	BOUNDINGVOLUME_H

#include <glm/glm.hpp>

class BoundingVolume
{
public:
	BoundingVolume();
	virtual ~BoundingVolume();

    BoundingVolume& operator << (const glm::vec3& p);
	BoundingVolume& operator << (const BoundingVolume& b);
	
    const glm::vec3& mins() const;
    const glm::vec3& maxs() const;
    glm::vec3& mins();
    glm::vec3& maxs();
    glm::vec3 origin();
	
	float width() const;
	float heigth() const;
	float depth() const;
	
private:
    glm::vec3 mMins, mMaxs;

};

#endif	/* BOUNDINGVOLUME_H */

