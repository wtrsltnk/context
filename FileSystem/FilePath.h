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

	class Package;

	class FilePath
	{
	public:
		FilePath();
		FilePath(Package* package, const char* pathToFile);
		FilePath(const FilePath& other);
		virtual ~FilePath();

		const FilePath& operator = (const FilePath& other);
		operator bool ();
		bool isValid() const;

		const Package* package() const;
		const char* pathToFile() const;

	protected:
		Package* mPackage;
		char mPathToFile[MAX_PATH_TO_FILE];

	};

}

#endif	/* FILEPATH_H */

