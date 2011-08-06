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
#include "PackageFromWad.h"
#include "PackageFromPak.h"
#include "FileSystem.h"
#include <string>

namespace fs
{

FilePath::FilePath()
	: mType(0), mPackage(0), mPathToFile(std::string(""))
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
//	if (this->mType == fs::FilePathType::File)
	{
		if (this->mPackage != 0)
		{
			return this->mPackage->openFile(fs::FilePath(fs::FilePathType::File, this->mPackage, this->mPathToFile), flags);
		}
		else
		{
			fs::FileFromDirectory* file = new fs::FileFromDirectory(fs::FilePath(fs::FilePathType::File, this->mPackage, this->mPathToFile));
			if (file->open(flags))
				return file;
			
			delete file;
		}
	}
	return 0;
}

fs::Package* FilePath::openAsPackage(int flags)
{
	fs::Package* p = 0;
//	if (this->mType == fs::FilePathType::Package)
	{
		std::string ext = FileSystem::extension(this->pathToFile());

		if (ext == ".pak" || ext == ".PAK")
		{
			p = new fs::PackageFromPak(fs::FilePath(fs::FilePathType::Package, this->mPackage, this->mPathToFile));
		}
		else if (ext == ".zip" || ext == ".ZIP")
		{
			// TODO : Open a Zip-file
		}
		else if (ext == ".wad" || ext == ".WAD")
		{
			p = new fs::PackageFromWad(fs::FilePath(fs::FilePathType::Package, this->mPackage, this->mPathToFile));
		}
		else if (ext == ".gcf" || ext == ".GCF")
		{
			// TODO : Open a Gcf-file
		}
		else
		{
			p = new fs::PackageFromDirectory(fs::FilePath(fs::FilePathType::Package, this->mPackage, this->mPathToFile));
		}
		
		if (p != 0 && p->open(flags) != false)
		{
			if (this->mPackage != 0)
				this->mPackage->mOpenItems.push_back(p);
		}
		else
		{
			delete p;
			p = 0;
		}
	}
	return p;
}

}
