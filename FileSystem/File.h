/* 
 * File:   File.h
 * Author: wouter
 *
 * Created on July 18, 2011, 10:49 AM
 */

#ifndef FILE_H
#define	FILE_H

#include "FilePath.h"

namespace fs
{
	
	typedef unsigned char byte;

	class File
	{
	public:
		File(const fs::FilePath& filePath);
		virtual ~File();
		
		virtual void setCursorFromBegin(int offset) = 0;
		virtual void setCursorFromEnd(int offset) = 0;
		virtual byte* read(int size, int offset = 0) = 0;
		virtual int size() = 0;
		
		const fs::FilePath& filePath() const;

	protected:
		fs::FilePath mFilePath;

	};

}

#endif	/* FILE_H */

