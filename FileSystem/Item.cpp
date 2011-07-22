/* 
 * File:   Item.cpp
 * Author: wouter
 * 
 * Created on July 20, 2011, 1:42 PM
 */

#include "Item.h"

namespace fs
{
	
Item::Item(const fs::FilePath& filePath)
	: mFilePath(filePath)
{
}

Item::~Item()
{
}

fs::FilePath Item::filePath()
{
	return this->mFilePath;
}

}
