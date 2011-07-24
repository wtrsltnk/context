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
		FileSystem();
		virtual ~FileSystem();
		static FileSystem* sInstance;
	public:
		static FileSystem* instance();
		static void clearInstance();

		Package* setRoot(const std::string& pathToPackage);
		Package* addPackage(fs::FilePath pathToPackage);
		Package* addPackage(const std::string& pathToPackage);
		
		fs::FilePath findFile(const std::string& filename);
		
	private:
		Package* mRoot;
		
	public:
		static std::string extension(const std::string& fullpath);
		static std::string fileName(const std::string& fullname);
		
	};

}

#endif	/* FILESYSTEM_H */

