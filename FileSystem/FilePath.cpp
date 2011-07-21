/* 
 * File:   FilePath.cpp
 * Author: wouter
 * 
 * Created on July 18, 2011, 9:52 AM
 */

#include "FilePath.h"
#include "Package.h"
#include "Item.h"
#include "FileFromDirectory.h"
#include "PackageFromDirectory.h"
#include <string>

namespace fs
{

FilePath::FilePath()
	: mType(0), mPackage(0), mPathToFile("")
{
}

FilePath::FilePath(int type, Package* package, const std::string& pathToFile)
	: mType(type), mPackage(package), mPathToFile(pathToFile)
{
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
	this->mPathToFile = other.mPathToFile;
	
	return (*this);
}

FilePath::operator bool ()
{
	return this->isValid();
}

bool FilePath::isValid() const
{
	return (this->mPathToFile.length() > 0);
}

Package* FilePath::package()
{
	return this->mPackage;
}

const std::string& FilePath::pathToFile() const
{
	return this->mPathToFile;
}

std::string FilePath::fullPath() const
{
	std::string fullPath;
	
	if (this->mPackage != 0)
		fullPath = std::string(this->mPackage->filePath().fullPath()) + std::string("/") + std::string(this->mPathToFile);
	else
		fullPath = std::string(this->mPathToFile);
	
	return fullPath;
}

int FilePath::type() const
{
	return this->mType;
}

fs::File* FilePath::openAsFile(int flags)
{
	if (this->mType == fs::FilePathType::File)
	{
		if (this->mPackage != 0)
			return this->mPackage->openFile(*this, flags);
		else
		{
			fs::FileFromDirectory* file = new fs::FileFromDirectory(*this);
			if (file->open(flags))
				return file;
			delete file;
		}
	}
	return 0;
}

fs::Package* FilePath::openAsPackage(int flags)
{
	if (this->mType == fs::FilePathType::File)
	{
		if (this->mPackage != 0)
			return this->mPackage->openPackage(*this, flags);
		else
		{
			fs::PackageFromDirectory* file = new fs::PackageFromDirectory(*this);
			if (file->open(flags))
				return file;
			delete file;
		}
	}
	return 0;
}

}
