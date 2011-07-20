/* 
 * File:   FilePath.h
 * Author: wouter
 *
 * Created on July 18, 2011, 9:52 AM
 */

#ifndef FILEPATH_H
#define	FILEPATH_H

#define MAX_PATH_TO_FILE 256

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

	class FilePath
	{
	public:
		FilePath();
		FilePath(int type, Package* package, const char* pathToFile);
		FilePath(const FilePath& other);
		virtual ~FilePath();

		const FilePath& operator = (const FilePath& other);
		operator bool ();
		bool isValid() const;

		Package* package();
		const char* pathToFile() const;
		const char* fullPath() const;
		int type() const;

	protected:
		int mType;
		Package* mPackage;
		char mPathToFile[MAX_PATH_TO_FILE];

	};

}

#endif	/* FILEPATH_H */

