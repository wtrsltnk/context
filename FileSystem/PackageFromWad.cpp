/* 
 * File:   PackageFromWad.cpp
 * Author: wouter
 * 
 * Created on July 24, 2011, 12:41 AM
 */

#include "PackageFromWad.h"
#include "FileFromMemory.h"
#include <string.h>
#include <iostream>

using namespace fs;

PackageFromWad::PackageFromWad(const fs::FilePath& filePath)
	: Package(filePath), mWadFile(0), mLumpCount(0), mLumps(0)
{
}

PackageFromWad::~PackageFromWad()
{
	this->close();
}

bool PackageFromWad::open(int flags)
{
	this->mWadFile = this->mFilePath.openAsFile(flags);
	if (this->mWadFile  != 0)
	{
		fs::tWADHeader header;
		this->mWadFile->read((byte*)&header, sizeof(header));
		if (strncmp(header.signature, "WAD3", 4) == 0)
		{
			this->mLumpCount = header.lumpsCount;
			this->mLumps = new fs::tWADLump[this->mLumpCount];
			this->mWadFile->setCursorFromBegin(header.lumpsOffset);
			this->mWadFile->read((byte*)this->mLumps, sizeof(fs::tWADLump) * this->mLumpCount);
			for (int i = 0; i < this->mLumpCount; i++)
				this->mFiles.push_back(fs::FilePath(fs::FilePathType::File, this, this->mLumps[i].name));
			
			return true;
		}
		else
		{
			this->mWadFile->close();
			this->mWadFile = 0;
		}
	}
	return false;
}

bool PackageFromWad::close()
{
	if (this->mWadFile != 0)
	{
		this->mWadFile->close();
		delete this->mWadFile;
	}
	this->mWadFile = 0;
	if (this->mLumps != 0)
		delete []this->mLumps;
	this->mLumps = 0;
	return true;
}

fs::File* PackageFromWad::openFile(const fs::FilePath& filePath, int flags)
{
	for (int i = 0; i < this->mLumpCount; i++)
	{
		if (filePath.pathToFile() == this->mLumps[i].name)
		{
			fs::File* result = new fs::FileFromMemory(filePath, this->mWadFile, this->mLumps[i].offset, this->mLumps[i].size);
			if (result->open())
				return result;
			else
				delete result;
		}
	}
	
	return 0;
}
