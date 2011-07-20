/* 
 * File:   DirectoryPackage.cpp
 * Author: wouter
 * 
 * Created on July 18, 2011, 10:57 AM
 */

#include "DirectoryPackage.h"

namespace fs
{
		
DirectoryPackage::DirectoryPackage(const char* root)
{
	int i = 0;
	while (root[i] != '\0')
		i++;
	this->mRoot = new char[i+1];
	while (i >= 0)
	{
		this->mRoot[i] = root[i];
		i--;
	}
}

DirectoryPackage::~DirectoryPackage()
{
}

fs::FilePath DirectoryPackage::findFile(const char* filename)
{
#ifdef WIN32
#else
#endif
	return fs::FilePath();
}

fs::File* DirectoryPackage::openFile(const fs::FilePath& filePath)
{
	return 0;
}

bool DirectoryPackage::closeFile(const fs::FilePath& filePath)
{
}

}
