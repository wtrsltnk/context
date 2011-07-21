/* 
 * File:   FilePath.h
 * Author: wouter
 *
 * Created on July 18, 2011, 9:52 AM
 */

#ifndef FILEPATH_H
#define	FILEPATH_H

#include <string>

namespace fs
{
	namespace FilePathType
	{
		enum Type
		{
			File,
			Package
		};
	}

	class Package;
	class File;

	class FilePath
	{
	public:
		FilePath();
		FilePath(int type, Package* package, const std::string& pathToFile);
		FilePath(const FilePath& other);
		virtual ~FilePath();

		const FilePath& operator = (const FilePath& other);
		operator bool ();
		bool isValid() const;

		Package* package();
		const std::string& pathToFile() const;
		std::string fullPath() const;
		int type() const;
		
		fs::File* openAsFile(int flags = 0);
		fs::Package* openAsPackage(int flags = 0);

	protected:
		int mType;
		Package* mPackage;
		std::string mPathToFile;

	};

}

#endif	/* FILEPATH_H */

