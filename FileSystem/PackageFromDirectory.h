/* 
 * File:   PackageFromDirectory.h
 * Author: wouter
 *
 * Created on July 18, 2011, 10:57 AM
 */

#ifndef PACKAGEFROMDIRECTORY_H
#define	PACKAGEFROMDIRECTORY_H

#include "Package.h"

namespace fs
{
	class PackageFromDirectory : public fs::Package
	{
	public:
		PackageFromDirectory(const fs::FilePath& filePath);
		virtual ~PackageFromDirectory();

		virtual bool open(int flags = 0);
		virtual bool close();
		
		virtual fs::File* openFile(const fs::FilePath& filePath, int flags = 0);

	private:
		bool mOpen;
		
		static void addFilesFromFolder(const std::string& root, int flags, PackageFromDirectory* parent);
		static bool isFile(const std::string& root, const std::string& file);
		static bool isFolder(const std::string& root, const std::string& folder);
		
	};
	
}

#endif	/* PACKAGEFROMDIRECTORY_H */

