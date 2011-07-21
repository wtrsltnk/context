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
#include <string>

namespace fs
{
	
	class FileSystem
	{
	public:
		FileSystem();
		virtual ~FileSystem();

		Package* addPackage(const std::string& pathToPackage);
		Package* addPackage(fs::FilePath pathToPackage);
		void removePackage(Package* p);
		
		fs::FilePath findFile(const std::string& filename);
		
	private:
		std::vector<Package*> mPackages;
		
	public:
		static std::string extension(const std::string& fullpath);
		
	};

}

#endif	/* FILESYSTEM_H */

