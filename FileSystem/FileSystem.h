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
		Package* addPackage(fs::FilePath& pathToPackage);
		
		fs::FilePath findFile(const char* filename);
		
	private:
		std::vector<Package*> mPackages;
		
	public:
		static const char* extension(const char* fullpath);
		
	};

}

#endif	/* FILESYSTEM_H */

