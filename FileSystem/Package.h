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
		
		virtual fs::FilePath findFile(const std::string& filename);
		virtual fs::File* openFile(const fs::FilePath& filePath, int flags = 0) = 0;
		virtual bool closeFile(fs::File* file);

		const std::vector<fs::FilePath>& files() const;
		
	protected:
		std::vector<fs::FilePath> mFiles;
		std::vector<fs::Item*> mOpenItems;
		
		friend class FilePath;
	};

}

#endif	/* PACKAGE_H */

