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
{
}

FileSystem::~FileSystem()
{
	while (this->mPackages.empty() == false)
	{
		fs::Package* package = this->mPackages.back();
		this->mPackages.pop_back();
		package->close();
		delete package;
	}
}

Package* FileSystem::addPackage(const char* pathToPackage)
{
	if (strcmp(FileSystem::extension(pathToPackage), ".pak") == 0 || strcmp(FileSystem::extension(pathToPackage), ".PAK") == 0)
	{
		// TODO : Open a Pak-file
	}
	else if (strcmp(FileSystem::extension(pathToPackage), ".zip") == 0 || strcmp(FileSystem::extension(pathToPackage), ".ZIP") == 0)
	{
		// TODO : Open a Zip-file
	}
	else if (strcmp(FileSystem::extension(pathToPackage), ".wad") == 0 || strcmp(FileSystem::extension(pathToPackage), ".WAD") == 0)
	{
		// TODO : Open a Wad-file
	}
	else if (strcmp(FileSystem::extension(pathToPackage), ".gcf") == 0 || strcmp(FileSystem::extension(pathToPackage), ".GCF") == 0)
	{
		// TODO : Open a Gcf-file
	}
	else
	{
		fs::FilePath filePath(fs::FilePathType::Package, 0, pathToPackage);
		PackageFromDirectory* package = new PackageFromDirectory(filePath);
		if (package->open())
		{
			this->mPackages.push_back(package);
			return package;
		}
	}
	return 0;
}

Package* FileSystem::addPackage(fs::FilePath& pathToPackage)
{
	if (pathToPackage.package() != 0)
	{
		Package* package = pathToPackage.package()->openPackage(pathToPackage);
		if (package != 0 && package->open())
		{
			this->mPackages.push_back(package);
			return package;
		}
	}
	else 
	{
		PackageFromDirectory* package = new PackageFromDirectory(pathToPackage);
		if (package->open())
		{
			this->mPackages.push_back(package);
			return package;
		}
	}
	return 0;
}

fs::FilePath FileSystem::findFile(const char* filename)
{
	for (std::vector<Package*>::iterator i = this->mPackages.begin(); i != this->mPackages.end(); ++i)
	{
		fs::FilePath file = (*i)->findFile(filename);
		if (file.isValid())
		{
			return file;
		}
	}
	return fs::FilePath();
}

const char* FileSystem::extension(const char* fullpath)
{
	return strrchr(fullpath, '.');
}

}