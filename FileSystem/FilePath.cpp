/* 
 * File:   FilePath.cpp
 * Author: wouter
 * 
 * Created on July 18, 2011, 9:52 AM
 */

#include "FilePath.h"
#include "Package.h"
#include "Item.h"
#include <string>

namespace fs
{

FilePath::FilePath()
	: mPackage(0)
{
	this->mPathToFile[0] = '\0';
}

FilePath::FilePath(int type, Package* package, const char* pathToFile)
	: mType(type), mPackage(package)
{
	for (int i = 0; i < MAX_PATH_TO_FILE; i++)
	{
		this->mPathToFile[i] = pathToFile[i];
		if (pathToFile[i] == '\0')
			break;
	}
}

FilePath::FilePath(const FilePath& other)
{
	(*this) = other;
}

FilePath::~FilePath()
{
}

const FilePath& FilePath::operator = (const FilePath& other)
{
	this->mType = other.mType;
	this->mPackage = other.mPackage;
	
	for (int i = 0; i < MAX_PATH_TO_FILE; i++)
		this->mPathToFile[i] = other.mPathToFile[i];
	
	return (*this);
}

FilePath::operator bool ()
{
	return this->isValid();
}

bool FilePath::isValid() const
{
	return (this->mPathToFile[0] != '\0');
}

Package* FilePath::package()
{
	return this->mPackage;
}

const char* FilePath::pathToFile() const
{
	return this->mPathToFile;
}

const char* FilePath::fullPath() const
{
	static std::string fullPath;
	
	if (this->mPackage != 0)
		fullPath = std::string(this->mPackage->filePath().fullPath()) + std::string("/") + std::string(this->mPathToFile);
	else
		fullPath = std::string(this->mPathToFile);
	
	return fullPath.c_str();
}

int FilePath::type() const
{
	return this->mType;
}

}
