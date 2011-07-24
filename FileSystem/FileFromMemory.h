/* 
 * File:   FileFromMemory.h
 * Author: wouter
 *
 * Created on July 24, 2011, 1:01 AM
 */

#ifndef FILEFROMMEMORY_H
#define	FILEFROMMEMORY_H

#include "File.h"

namespace fs
{

	class FileFromMemory : public fs::File
	{
	public:
		FileFromMemory(const fs::FilePath& filePath, fs::File* from, int offset, int size);
		virtual ~FileFromMemory();

		virtual bool open(int flags = 0);
		virtual bool close();
		
		virtual void setCursorFromBegin(int offset);
		virtual void setCursorFromCurrent(int offset);
		virtual void setCursorFromEnd(int offset);
		virtual int read(byte* buffer, int size, int offset = 0);
		virtual int size();
		
	private:
		bool mOpen;
		int mDataSize;
		byte* mData;
		int mCursor;

	};
	
}

#endif	/* FILEFROMMEMORY_H */

