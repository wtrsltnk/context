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
	
	std::string ext = FileSystem::extension(pathToPackage);
	
	if (ext == ".pak" || ext == ".PAK")
	{
		// TODO : Open a Pak-file
	}
	else if (ext == ".zip" || ext == ".ZIP")
	{
		// TODO : Open a Zip-file
	}
	else if (ext == ".wad" || ext == ".WAD")
	{
		// TODO : Open a Wad-file
	}
	else if (ext == ".gcf" || ext == ".GCF")
	{
		// TODO : Open a Gcf-file
	}
	else
	{
		fs::FilePath filePath(fs::FilePathType::Package, 0, pathToPackage);
		PackageFromDirectory* package = new PackageFromDirectory(filePath);
		if (package->open())
		{
			this->mRoot = package;
			return package;
		}
	}
	return 0;
}

Package* FileSystem::addPackage(fs::FilePath pathToPackage)
{
	if (pathToPackage.package() != 0)
	{
		Package* package = pathToPackage.package()->openPackage(pathToPackage);
		if (package != 0 && package->open())
		{
			return package;
		}
	}
	else 
	{
		PackageFromDirectory* package = new PackageFromDirectory(pathToPackage);
		if (package->open())
		{
			return package;
		}
	}
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

}