/* 
 * File:   PackageFromDirectory.cpp
 * Author: wouter
 * 
 * Created on July 18, 2011, 10:57 AM
 */

#include "PackageFromDirectory.h"
#include "FileFromDirectory.h"
#include <sys/stat.h>
#include <sys/dir.h>
#include <string.h>
#include <string>

namespace fs
{
		
PackageFromDirectory::PackageFromDirectory(const fs::FilePath& filePath)
	: Package(filePath), mOpen(false)
{
}

PackageFromDirectory::~PackageFromDirectory()
{
}

bool PackageFromDirectory::open(int flags)
{
	PackageFromDirectory::addFilesFromFolder(this->mFilePath.fullPath(), flags, this);
	this->mOpen = true;
	return true;
}

bool PackageFromDirectory::close()
{
	this->mOpen = false;
	while (this->mOpenItems.empty() == false)
	{
		fs::Item* item = this->mOpenItems.back();
		this->mOpenItems.pop_back();
		item->close();
		delete item;
	}
	return true;
}

fs::FilePath PackageFromDirectory::findFile(const std::string& filename)
{
	if (this->mOpen)
	{
		for (std::vector<fs::FilePath>::iterator f = this->mFiles.begin(); f != this->mFiles.end(); ++f)
		{
			if ((*f).pathToFile() == filename)
				return (*f);
		}
	}
	return fs::FilePath();
}

fs::Package* PackageFromDirectory::openPackage(const fs::FilePath& filePath, int flags)
{
	if (this->mOpen && filePath.type() == fs::FilePathType::Package)
	{
		std::string tmp(this->mFilePath.pathToFile() + std::string("/") + filePath.pathToFile());
		PackageFromDirectory* dir = new PackageFromDirectory(filePath);
		if (dir->open(flags))
		{
			this->mOpenItems.push_back(dir);
			return dir;
		}
		else
			delete dir;
	}
	return 0;
}

bool PackageFromDirectory::closePackage(fs::Package* package)
{
	if (this->mOpen)
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
					return false;
			}
		}
	}
	return false;
}

fs::File* PackageFromDirectory::openFile(const fs::FilePath& filePath, int flags)
{
	if (this->mOpen && filePath.type() == fs::FilePathType::File)
	{
		fs::File* file = new fs::FileFromDirectory(filePath);
		if (file->open())
		{
			this->mOpenItems.push_back(file);
			return file;
		}
		else
			delete file;
	}
	return 0;
}

bool PackageFromDirectory::closeFile(fs::File* file)
{
	if (this->mOpen)
	{
		for (std::vector<fs::Item*>::iterator f = this->mOpenItems.begin(); f != this->mOpenItems.end(); ++f)
		{
			if ((*f) == file)
			{
				if (file->close())
				{
					this->mOpenItems.erase(f);
					delete file;
					return true;
				}
				else
					return false;
			}
		}
	}
	return true;
}

void PackageFromDirectory::addFilesFromFolder(const std::string& root, int flags, PackageFromDirectory* parent)
{
#ifdef WIN32
#else
	DIR* dir = opendir(root.c_str());
    struct dirent* dirp;
    if (dir != false)
    {
        while ((dirp = readdir(dir)) != NULL)
        {
			if (0 == strcmp(".", dirp->d_name) || 0 == strcmp("..", dirp->d_name))
				continue;

			if (PackageFromDirectory::isFile(root, dirp->d_name))
			{
				parent->mFiles.push_back(fs::FilePath(fs::FilePathType::File, parent, dirp->d_name));
			}
			else if (PackageFromDirectory::isFolder(root, dirp->d_name))
			{
				parent->mFiles.push_back(fs::FilePath(fs::FilePathType::Package, parent, dirp->d_name));
			}
        }
    }
    closedir(dir);
#endif
}

bool PackageFromDirectory::isFile(const std::string& root, const std::string& file)
{
	std::string tmp(root + std::string("/") + file);
	
	struct stat buf = { 0 };
	if (stat(tmp.c_str(), &buf) == 0)
		return S_ISREG(buf.st_mode);

	return false;
}

bool PackageFromDirectory::isFolder(const std::string& root, const std::string& folder)
{
	std::string tmp(root + std::string("/") + folder);
	
	struct stat buf = { 0 };
	if (stat(tmp.c_str(), &buf) == 0)
		return S_ISDIR(buf.st_mode);

	return false;
}

}
