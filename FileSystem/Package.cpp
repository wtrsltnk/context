/* 
 * File:   Package.cpp
 * Author: wouter
 * 
 * Created on July 18, 2011, 9:51 AM
 */

#include "Package.h"

namespace fs
{

Package::Package(const fs::FilePath& filePath)
	: Item(filePath)
{
}

Package::~Package()
{
}

const std::vector<fs::FilePath>& Package::files() const
{
	return this->mFiles;
}

}
