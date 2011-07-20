/* 
 * File:   Package.h
 * Author: wouter
 *
 * Created on July 18, 2011, 9:51 AM
 */

#ifndef PACKAGE_H
#define	PACKAGE_H

#include "Item.h"
#include "File.h"
#include <vector>

namespace fs
{

	class Package : public Item
	{
	public:
		Package(const fs::FilePath& filePath);
		virtual ~Package();
		
		virtual bool open() = 0;
		virtual bool close() = 0;
		
		virtual fs::FilePath findFile(const char* filename) = 0;
		
		virtual fs::Package* openPackage(const fs::FilePath& filePath, int flags = 0) = 0;
		
		/*
		 * Closes the give child package if it is a child. The given pointer is 
		 * not valid after this method returns true.
		 */
		virtual bool closePackage(fs::Package* package) = 0;
		
		virtual fs::File* openFile(const fs::FilePath& filePath, int flags = 0) = 0;
		
		/*
		 * Closes the give child package if it is a child. The given pointer is 
		 * not valid after this method returns true.
		 */
		virtual bool closeFile(fs::File* file) = 0;

		const std::vector<fs::FilePath>& files() const;
		
	protected:
		std::vector<fs::FilePath> mFiles;
		
	};

}

#endif	/* PACKAGE_H */

