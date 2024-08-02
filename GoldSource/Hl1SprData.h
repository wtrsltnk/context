/* 
 * File:   Hl1SprData.h
 * Author: wouter
 *
 * Created on August 29, 2010, 10:43 AM
 */

#ifndef HL1SPRDATA_H
#define	HL1SPRDATA_H

#include "hl1types.h"
#include <Texture.h>

namespace fs
{
class File;
}

class Hl1SprData
{
public:
	Hl1SprData(fs::File* file);
	virtual ~Hl1SprData();

	int getFrameCount() const;
	Texture* getFrame(int index);
	int getWidth() const;
	int getHeight() const;

protected:
	int dataSize;
	unsigned char* data;

    HL1::tSPRHeader* mHeader = nullptr;
    Texture* mFrames = nullptr;

};

#endif	/* HL1SPRDATA_H */
