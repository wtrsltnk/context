/* 
 * File:   File.cpp
 * Author: wouter
 * 
 * Created on July 18, 2011, 10:49 AM
 */

#include "File.h"

namespace fs
{

File::File(const fs::FilePath& filePath)
	: Item(filePath)
{
}

File::~File()
{
}

}