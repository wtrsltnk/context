/* 
 * File:   FileFromDirectory.h
 * Author: wouter
 *
 * Created on July 20, 2011, 3:46 PM
 */

#ifndef FILEFROMDIRECTORY_H
#define	FILEFROMDIRECTORY_H

#include "File.h"

namespace fs
{

	class FileFromDirectory : public File
	{
	public:
		FileFromDirectory(const fs::FilePath& filePath);
		virtual ~FileFromDirectory();

		virtual bool open(int flags = 0);
		virtual bool close();
		
		virtual void setCursorFromBegin(int offset);
		virtual void setCursorFromCurrent(int offset);
		virtual void setCursorFromEnd(int offset);
		virtual int read(byte* buffer, int size, int offset = 0);
		virtual int size();
		
	private:
		void* mHandle;
		int mSize;
		
	};
	
}

#endif	/* FILEFROMDIRECTORY_H */

