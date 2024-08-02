/* 
 * File:   PackageFromDirectory.cpp
 * Author: wouter
 * 
 * Created on July 18, 2011, 10:57 AM
 */

#include "PackageFromDirectory.h"
#include "FileFromDirectory.h"
#include <sys/stat.h>
#include <filesystem>
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
	if (this->mOpen)
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
	return false;
}

fs::File* PackageFromDirectory::openFile(const fs::FilePath& filePath, int flags)
{
	if (this->mOpen)
	{
		fs::File* file = new fs::FileFromDirectory(filePath);
		if (file->open())
			return file;
		else
			delete file;
	}
	return 0;
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
				std::string ext = fs::FileSystem::extension(dirp->d_name);
				if (ext == ".wad" || ext == ".WAD")
					parent->mFiles.push_back(fs::FilePath(fs::FilePathType::Package, parent, dirp->d_name));
				else
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
    auto tmp = std::filesystem::path(root) / "/" / file;

    return std::filesystem::is_regular_file(tmp);
}

bool PackageFromDirectory::isFolder(const std::string& root, const std::string& folder)
{
    return !isFile(root, folder);
}

}
