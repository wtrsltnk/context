/* 
 * File:   FileFromDirectory.cpp
 * Author: wouter
 * 
 * Created on July 20, 2011, 3:46 PM
 */

#include "FileFromDirectory.h"
#include <stdio.h>

namespace fs
{

FileFromDirectory::FileFromDirectory(const fs::FilePath& filePath)
	: File(filePath), mSize(0)
{
}

FileFromDirectory::~FileFromDirectory()
{
}

bool FileFromDirectory::open(int flags)
{
	if (this->mFilePath.type() == fs::FilePathType::File)
	{
		this->mHandle = fopen(this->mFilePath.fullPath().c_str(), "r");
		if (this->mHandle != 0)
		{
			fseek((FILE*)this->mHandle, 0, SEEK_END);
			this->mSize = ftell((FILE*)this->mHandle);
			fseek((FILE*)this->mHandle, 0, SEEK_SET);
			
			return true;
		}
	}
	return false;
}

bool FileFromDirectory::close()
{
	if (this->mHandle != 0)
	{
		fclose((FILE*)this->mHandle);
	}
	return true;
}

void FileFromDirectory::setCursorFromBegin(int offset)
{
	fseek((FILE*)this->mHandle, offset, SEEK_SET);
}

void FileFromDirectory::setCursorFromCurrent(int offset)
{
	fseek((FILE*)this->mHandle, offset, SEEK_CUR);
}

void FileFromDirectory::setCursorFromEnd(int offset)
{
	fseek((FILE*)this->mHandle, offset, SEEK_END);
}

int FileFromDirectory::read(byte* buffer, int size, int offset)
{
	fseek((FILE*)this->mHandle, offset, SEEK_CUR);
	return int(fread(buffer, 1, size, (FILE*)this->mHandle));
}

int FileFromDirectory::size()
{
	return this->mSize;
}

}
