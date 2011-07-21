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

Package* FileSystem::addPackage(const std::string& pathToPackage)
{
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
			this->mPackages.push_back(package);
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

void FileSystem::removePackage(Package* p)
{
	for (std::vector<Package*>::iterator i = this->mPackages.begin(); i != this->mPackages.end(); ++i)
	{
		if (p == (*i))
		{
			this->mPackages.erase(i);
			p->close();
			delete p;
			return;
		}
	}
}

fs::FilePath FileSystem::findFile(const std::string& filename)
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