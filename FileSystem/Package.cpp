/* 
 * File:   Package.cpp
 * Author: wouter
 * 
 * Created on July 18, 2011, 9:51 AM
 */

#include "Package.h"

namespace fs
{

Package::Package()
	: mParentPackage(0)
{
}

Package::~Package()
{
}

const fs::Package* Package::parentPackage() const
{
	return this->mParentPackage;
}

const std::vector<fs::File*>& Package::openFiles() const
{
	return this->mOpenFiles;
}

	
}
