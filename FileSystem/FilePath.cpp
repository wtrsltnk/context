/* 
 * File:   FilePath.cpp
 * Author: wouter
 * 
 * Created on July 18, 2011, 9:52 AM
 */

#include "FilePath.h"

namespace fs
{

FilePath::FilePath()
	: mPackage(0)
{
	this->mPathToFile[0] = '\0';
}

FilePath::FilePath(Package* package, const char* pathToFile)
	: mPackage(package)
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

const Package* FilePath::package() const
{
	return this->mPackage;
}

const char* FilePath::pathToFile() const
{
	return this->mPathToFile;
}

}
