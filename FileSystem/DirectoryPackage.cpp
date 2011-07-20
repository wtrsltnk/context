/* 
 * File:   DirectoryPackage.cpp
 * Author: wouter
 * 
 * Created on July 18, 2011, 10:57 AM
 */

#include "DirectoryPackage.h"
#include <sys/stat.h>
#include <sys/dir.h>
#include <string.h>
#include <string>

namespace fs
{
		
DirectoryPackage::DirectoryPackage(const fs::FilePath& filePath, int flags)
	: Package(filePath)
{
	DirectoryPackage::addFilesFromFolder(this->mFilePath.fullPath(), flags, this);
}

DirectoryPackage::~DirectoryPackage()
{
}

bool DirectoryPackage::open()
{
	return true;
}

bool DirectoryPackage::close()
{
	return true;
}

fs::FilePath DirectoryPackage::findFile(const char* filename)
{
	for (std::vector<fs::FilePath>::iterator f = this->mFiles.begin(); f != this->mFiles.end(); ++f)
	{
		if (strcmp((*f).pathToFile(), filename) == 0)
			return (*f);
	}
	return fs::FilePath();
}

fs::Package* DirectoryPackage::openPackage(const fs::FilePath& filePath, int flags)
{
	if (filePath.type() == fs::FilePathType::Package)
	{
		std::string tmp(std::string(this->mFilePath.pathToFile()) + std::string("/") + std::string(filePath.pathToFile()));
		DirectoryPackage* dir = new DirectoryPackage(filePath, flags);
		if (dir->open())
		{
			this->mOpenItems.push_back(dir);
			return dir;
		}
		else
			delete dir;
	}
	return 0;
}

bool DirectoryPackage::closePackage(fs::Package* package)
{
	for (std::vector<fs::Item*>::iterator f = this->mOpenItems.begin(); f != this->mOpenItems.end(); ++f)
	{
		if ((*f) == package)
		{
			if (package->close())
			{
				this->mOpenItems.erase(f);
				delete package;
				return true;
			}
			else
			{
				return false;
			}
		}
	}
	return false;
}

fs::File* DirectoryPackage::openFile(const fs::FilePath& filePath, int flags)
{
	if (filePath.type() == fs::FilePathType::File)
	{
		
	}
	return 0;
}

bool DirectoryPackage::closeFile(fs::File* file)
{
}

void DirectoryPackage::addFilesFromFolder(const char* root, int flags, DirectoryPackage* parent)
{
#ifdef WIN32
#else
	DIR* dir = opendir(root);
    struct dirent* dirp;
    if (dir != false)
    {
        while ((dirp = readdir(dir)) != NULL)
        {
			if (0 == strcmp(".", dirp->d_name) || 0 == strcmp("..", dirp->d_name))
				continue;

			if (DirectoryPackage::isFile(root, dirp->d_name))
			{
				parent->mFiles.push_back(fs::FilePath(fs::FilePathType::File, parent, dirp->d_name));
			}
			else if (DirectoryPackage::isFolder(root, dirp->d_name))
			{
				parent->mFiles.push_back(fs::FilePath(fs::FilePathType::Package, parent, dirp->d_name));
			}
        }
    }
    closedir(dir);
#endif
}

bool DirectoryPackage::isFile(const char* root, const char* file)
{
	std::string tmp(std::string(root) + std::string("/") + std::string(file));
	
	struct stat buf = { 0 };
	if (stat(tmp.c_str(), &buf) == 0)
		return S_ISREG(buf.st_mode);

	return false;
}

bool DirectoryPackage::isFolder(const char* root, const char* folder)
{
	std::string tmp(std::string(root) + std::string("/") + std::string(folder));
	
	struct stat buf = { 0 };
	if (stat(tmp.c_str(), &buf) == 0)
		return S_ISDIR(buf.st_mode);

	return false;
}

}
