/* 
 * File:   Package.h
 * Author: wouter
 *
 * Created on July 18, 2011, 9:51 AM
 */

#ifndef PACKAGE_H
#define	PACKAGE_H

#include "FilePath.h"
#include "File.h"
#include <vector>

namespace fs
{

	class Package
	{
	public:
		Package();
		virtual ~Package();
		
		virtual fs::FilePath findFile(const char* filename) = 0;
		virtual fs::File* openFile(const fs::FilePath& filePath) = 0;
		virtual bool closeFile(const fs::FilePath& filePath) = 0;

		const fs::Package* parentPackage() const;
		const std::vector<fs::File*>& openFiles() const;

	protected:
		Package* mParentPackage;
		std::vector<fs::File*> mOpenFiles;

	};

}

#endif	/* PACKAGE_H */

