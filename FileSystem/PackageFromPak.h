/* 
 * File:   PackageFromPak.h
 * Author: wouter
 *
 * Created on July 24, 2011, 2:05 PM
 */

#ifndef PACKAGEFROMPAK_H
#define	PACKAGEFROMPAK_H

#include "Package.h"

namespace fs
{
	
	#define HL1_PAK_SIGNATURE "PACK"

	typedef struct sPAKHeader
	{
		char signature[4];
		int lumpsOffset;
		int lumpsSize;

	} tPAKHeader;

	typedef struct sPAKLump
	{
		char name[56];
		int offset;
		int size;

	} tPAKLump;
	
	class PackageFromPak : public Package
	{
	public:
		PackageFromPak(const fs::FilePath& filePath);
		virtual ~PackageFromPak();

		virtual bool open(int flags = 0);
		virtual bool close();
		
		virtual fs::File* openFile(const fs::FilePath& filePath, int flags = 0);
		
	private:
		fs::File* mPakFile;
		int mLumpCount;
		fs::tPAKLump* mLumps;

	};

}

#endif	/* PACKAGEFROMPAK_H */

