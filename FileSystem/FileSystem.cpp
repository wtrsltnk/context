/* 
 * File:   FileSystem.cpp
 * Author: wouter
 * 
 * Created on July 18, 2011, 9:49 AM
 */

#include "FileSystem.h"
#include "Package.h"
#include "PackageFromDirectory.h"
#include <string.h>
#include <iostream>

namespace fs
{

FileSystem::FileSystem()
	: mRoot(0)
{
}

FileSystem::~FileSystem()
{
	if (this->mRoot != 0)
	{
		this->mRoot->close();
		delete this->mRoot;
		this->mRoot = 0;
	}
}

FileSystem* FileSystem::sInstance = 0;

FileSystem* FileSystem::instance()
{
	if (FileSystem::sInstance == 0)
		FileSystem::sInstance = new FileSystem();
	
	return FileSystem::sInstance;
}

void FileSystem::clearInstance()
{
	if (FileSystem::sInstance != 0)
	{
		delete FileSystem::sInstance;
		FileSystem::sInstance = 0;
	}
}

Package* FileSystem::setRoot(const std::string& pathToPackage)
{
	if (this->mRoot != 0)
	{
		this->mRoot->close();
		delete this->mRoot;
	}
	this->mRoot = 0;
	
	fs::FilePath filePath(fs::FilePathType::Package, 0, pathToPackage);
	this->mRoot = filePath.openAsPackage();
	
	return this->mRoot;
}

Package* FileSystem::addPackage(fs::FilePath pathToPackage)
{
	if (pathToPackage.isValid())
	{
		Package* package = pathToPackage.openAsPackage();
		if (package != 0)
		{
			return package;
		}
	}
	return 0;
}

Package* FileSystem::addPackage(const std::string& pathToPackage)
{
	fs::FilePath path = this->findFile(pathToPackage);
	if (path.isValid())
		return this->addPackage(fs::FilePath(fs::FilePathType::Package, path.package(), path.pathToFile()));
	
	return 0;
}

fs::FilePath FileSystem::findFile(const std::string& filename)
{
	if (this->mRoot != 0)
		return this->mRoot->findFile(filename);
	
	return fs::FilePath();
}

std::string FileSystem::extension(const std::string& fullpath)
{
	int pos = fullpath.length();
	
	while (pos > 0)
	{
		if (fullpath[--pos] == '.')
			return fullpath.substr(pos);
	}
	return "";
}

std::string FileSystem::fileName(const std::string& fullname)
{
    const char* slash = strrchr(fullname.c_str(), '\\');
    const char* backslash = strrchr(fullname.c_str(), '/');

    if (slash == NULL && backslash == NULL)
        return fullname;

    if (slash != NULL && backslash != NULL)
    {
        if (slash > backslash)
            return std::string(slash + 1);
        return std::string(backslash + 1);
    }

    if (slash != NULL)
        return std::string(slash + 1);

    if (backslash != NULL)
        return std::string(backslash + 1);

    return std::string("");
}

}