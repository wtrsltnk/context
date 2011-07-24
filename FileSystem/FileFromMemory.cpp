/* 
 * File:   FileFromMemory.cpp
 * Author: wouter
 * 
 * Created on July 24, 2011, 1:01 AM
 */

#include "FileFromMemory.h"

using namespace fs;

FileFromMemory::FileFromMemory(const fs::FilePath& filePath, fs::File* from, int offset, int size)
	: File(filePath), mDataSize(size), mData(0), mCursor(0)
{
	if (this->mDataSize > 0)
	{
		this->mData = new byte[this->mDataSize];
		from->setCursorFromBegin(offset);
		from->read(this->mData, this->mDataSize);
	}
}

FileFromMemory::~FileFromMemory()
{
	if (this->mData != 0)
		delete []this->mData;
	this->mData = 0;
	this->mDataSize = 0;
}

bool FileFromMemory::open(int flags)
{
	this->mOpen = true;
	return true;
}

bool FileFromMemory::close()
{
	this->mOpen = false;
	if (this->mData != 0)
		delete []this->mData;
	this->mData = 0;
	this->mDataSize = 0;
	return true;
}

void FileFromMemory::setCursorFromBegin(int offset)
{
	this->mCursor = offset;
}

void FileFromMemory::setCursorFromCurrent(int offset)
{
	this->mCursor += offset;
}

void FileFromMemory::setCursorFromEnd(int offset)
{
	this->mCursor = this->mDataSize - offset;
}

int FileFromMemory::read(byte* buffer, int size, int offset)
{
	this->mCursor = offset;
	
	if (this->mCursor + size > this->mDataSize)
		size = this->mDataSize - this->mCursor;
	
	for (int i = 0; i < size; i++)
		buffer[i] = this->mData[this->mCursor+i];
	
	return size;
}

int FileFromMemory::size()
{
	return this->mDataSize;
}
