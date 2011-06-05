#ifndef PLANE_H
#define	PLANE_H

#include "Vector3.h"

#define cZeroTolerance 1e-08

class Plane
{
public:
	Plane();
	Plane(float nx, float ny, float nz, float d);
	Plane(float d, float n[3]);
	Plane(float p[4]);
	virtual ~Plane();

	float mDistance;
	Vector3 mNormal;

	float distance();
	Vector3& normal();

	float distanceTo(const Vector3& v);
	bool intersect(const Vector3& start, const Vector3& end, Vector3& result);

	void invert();
};

#endif	/* PLANE_H */

