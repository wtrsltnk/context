/* 
 * File:   PackageFromPak.cpp
 * Author: wouter
 * 
 * Created on July 24, 2011, 2:05 PM
 */

#include "PackageFromPak.h"
#include "FileFromMemory.h"
#include <string.h>

using namespace fs;

PackageFromPak::PackageFromPak(const fs::FilePath& filePath)
	: Package(filePath)
{
}

PackageFromPak::~PackageFromPak()
{
	this->close();
}

bool PackageFromPak::open(int flags)
{
	this->mPakFile = this->mFilePath.openAsFile(flags);
	if (this->mPakFile  != 0)
	{
		fs::tPAKHeader header;
		this->mPakFile->read((byte*)&header, sizeof(header));
		if (strncmp(header.signature, HL1_PAK_SIGNATURE, 4) == 0)
		{
			this->mLumpCount = header.lumpsSize / sizeof(tPAKLump);
			this->mLumps = new fs::tPAKLump[this->mLumpCount];
			this->mPakFile->setCursorFromBegin(header.lumpsOffset);
			this->mPakFile->read((byte*)this->mLumps, header.lumpsSize);
			for (int i = 0; i < this->mLumpCount; i++)
				this->mFiles.push_back(fs::FilePath(fs::FilePathType::File, this, this->mLumps[i].name));
			
			return true;
		}
		else
		{
			this->mPakFile->close();
			delete this->mPakFile;
			this->mPakFile = 0;
		}
	}
	return false;
}

bool PackageFromPak::close()
{
	if (this->mPakFile != 0)
	{
		this->mPakFile->close();
		delete this->mPakFile;
	}
	this->mPakFile = 0;
	if (this->mLumps != 0)
		delete []this->mLumps;
	this->mLumps = 0;
	return true;
}

fs::File* PackageFromPak::openFile(const fs::FilePath& filePath, int flags)
{
	for (int i = 0; i < this->mLumpCount; i++)
	{
		if (filePath.pathToFile() == this->mLumps[i].name)
		{
			fs::File* result = new fs::FileFromMemory(filePath, this->mPakFile, this->mLumps[i].offset, this->mLumps[i].size);
			if (result->open())
				return result;
			else
				delete result;
		}
	}
	
	return 0;
}

