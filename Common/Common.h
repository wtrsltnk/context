/* 
 * File:   Common.h
 * Author: wouter
 *
 * Created on June 7, 2011, 11:22 PM
 */

#ifndef COMMON_H
#define	COMMON_H

#include "BoundingVolume.h"
#include <vector>
#include <string>

typedef void (*ptr2RenderObjectFunction)(void*, int);

class Camera;

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
	
	static int selectObject(float* projection, float* modelview, int mousex, int mousey, void* objects, int count, ptr2RenderObjectFunction renderObjectFunction);
	
	static void renderBoundingBox(const BoundingVolume& bb);
	static void renderAxis();
	
	static void explode(std::vector<std::string>& lst, const std::string& input, const std::string& separators, bool remove_empty = true);
	static std::string implode(const std::vector<std::string>& lst, const std::string& glue = "");
};

#endif	/* COMMON_H */

