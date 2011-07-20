/* 
 * File:   FileSystem.cpp
 * Author: wouter
 * 
 * Created on July 18, 2011, 9:49 AM
 */

#include "FileSystem.h"

namespace fs
{

FileSystem::FileSystem()
{
}

FileSystem::~FileSystem()
{
}

Package* FileSystem::addPackage(const char* pathToPackage)
{
	return 0;
}

Package* FileSystem::addPackage(const fs::FilePath& pathToPackage)
{
	return 0;
}

fs::FilePath FileSystem::findFile(const char* filename)
{
	return fs::FilePath();
}

}