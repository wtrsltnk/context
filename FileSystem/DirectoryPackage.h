/* 
 * File:   DirectoryPackage.h
 * Author: wouter
 *
 * Created on July 18, 2011, 10:57 AM
 */

#ifndef DIRECTORYPACKAGE_H
#define	DIRECTORYPACKAGE_H

#include "Package.h"

namespace fs
{
	class DirectoryPackage : public fs::Package
	{
	public:
		DirectoryPackage(const fs::FilePath& filePath, int flags = 0);
		virtual ~DirectoryPackage();

		virtual bool open();
		virtual bool close();
		
		virtual fs::FilePath findFile(const char* filename);
		
		virtual fs::Package* openPackage(const fs::FilePath& filePath, int flags = 0);
		virtual bool closePackage(fs::Package* package);
		
		virtual fs::File* openFile(const fs::FilePath& filePath, int flags = 0);
		virtual bool closeFile(fs::File* file);

	private:
		std::vector<fs::Item*> mOpenItems;
		
		static void addFilesFromFolder(const char* root, int flags, DirectoryPackage* parent);
		static bool isFile(const char* root, const char* file);
		static bool isFolder(const char* root, const char* folder);
		
	};
	
}

#endif	/* DIRECTORYPACKAGE_H */

