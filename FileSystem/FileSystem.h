/* 
 * File:   FileSystem.h
 * Author: wouter
 *
 * Created on July 18, 2011, 9:49 AM
 */

#ifndef FILESYSTEM_H
#define	FILESYSTEM_H

#include "FilePath.h"
#include <vector>

namespace fs
{
	
	class FileSystem
	{
	public:
		FileSystem();
		virtual ~FileSystem();

		Package* addPackage(const char* pathToPackage);
		Package* addPackage(const fs::FilePath& pathToPackage);
		
		fs::FilePath findFile(const char* filename);
		
	private:
		std::vector<Package*> mPackages;
		
	};

}

#endif	/* FILESYSTEM_H */

