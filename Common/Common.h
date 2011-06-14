/* 
 * File:   Common.h
 * Author: wouter
 *
 * Created on June 7, 2011, 11:22 PM
 */

#ifndef COMMON_H
#define	COMMON_H

#include "BoundingVolume.h"

class Common
{
public:
	Common();
	virtual ~Common();

	static void push2DProjection();
	static void push3DProjection();
	static void popProjection();
	
	static void getColorFromIndex(int index, unsigned char color[3]);
	static void glColorFromIndex(int index);
	static int getIndexFromColor(unsigned char color[3]);
	static int getIndexFromPixelAt(int x, int y);
	
	static void renderBoundingBox(const BoundingVolume& bb);
};

#endif	/* COMMON_H */

