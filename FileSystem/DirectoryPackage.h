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
		DirectoryPackage(const char* root);
		virtual ~DirectoryPackage();

		virtual fs::FilePath findFile(const char* filename);
		virtual fs::File* openFile(const fs::FilePath& filePath);
		virtual bool closeFile(const fs::FilePath& filePath);

	private:
		char* mRoot;
		
	};
	
}

#endif	/* DIRECTORYPACKAGE_H */

