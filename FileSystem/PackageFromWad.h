/* 
 * File:   PackageFromWad.h
 * Author: wouter
 *
 * Created on July 24, 2011, 12:41 AM
 */

#ifndef PACKAGEFROMWAD_H
#define	PACKAGEFROMWAD_H

#include "Package.h"

namespace fs
{
	#define HL1_WAD_SIGNATURE "WAD3"
	#define	MAX_MIP_LEVELS 4

	typedef struct sWADHeader
	{
		char signature[4];
		int lumpsCount;
		int lumpsOffset;

	} tWADHeader;

	typedef struct sWADLump
	{
		int offset;
		int sizeOnDisk;
		int size;
		char type;
		char compression;
		char empty0;
		char empty1;
		char name[16];

	} tWADLump;

	// This can also be found in GoldSource lib
	typedef struct sBSPMipTexHeader
	{
		char name[16];
		unsigned int width;
		unsigned int height;
		unsigned int offsets[4];

	} tBSPMipTexHeader;
	
	class PackageFromWad : public fs::Package
	{
	public:
		PackageFromWad(const fs::FilePath& filePath);
		virtual ~PackageFromWad();

		virtual bool open(int flags = 0);
		virtual bool close();
		
		virtual fs::File* openFile(const fs::FilePath& filePath, int flags = 0);

	private:
		fs::File* mWadFile;
		int mLumpCount;
		fs::tWADLump* mLumps;

	};
}

#endif	/* PACKAGEFROMWAD_H */

