/* 
 * File:   Hl1SprData.cpp
 * Author: wouter
 * 
 * Created on August 29, 2010, 10:43 AM
 */

#include "Hl1SprData.h"
#include <File.h>
#include <string.h>

Hl1SprData::Hl1SprData(
    fs::File *file)
    : mHeader(0)
{
    this->dataSize = file->size();
    this->data = new unsigned char[this->dataSize];
    file->read(this->data, this->dataSize);

    this->mHeader = (HL1::tSPRHeader *)this->data;
    if (strncmp(this->mHeader->signature, "IDSP", 4) != 0)
    {
        return;
    }

    short cnt = *(short *)(this->data + sizeof(HL1::tSPRHeader));
    unsigned char *palette = (unsigned char *)(this->data + sizeof(HL1::tSPRHeader) + sizeof(short));
    unsigned char *tmp = (unsigned char *)(this->data + sizeof(HL1::tSPRHeader) + sizeof(short) + cnt * 3);

    this->mFrames = new Texture[this->mHeader->numframes];
    for (int i = 0; i < this->mHeader->numframes; i++)
    {
        HL1::eSpriteFrameType frames = *(HL1::eSpriteFrameType *)tmp;
        tmp += sizeof(HL1::eSpriteFrameType);
        if (frames != HL1::SPR_SINGLE)
        {
            continue;
        }

        HL1::tSPRFrame *frame = (HL1::tSPRFrame *)tmp;
        tmp += sizeof(HL1::tSPRFrame);
        unsigned char *textureData = new unsigned char[frame->width * frame->height * 3];
        for (int y = 0; y < frame->height; y++)
        {
            for (int x = 0; x < frame->width; x++)
            {
                int item = x * frame->height + y;
                unsigned char index = tmp[item];
                textureData[item * 3] = palette[index * 3];
                textureData[item * 3 + 1] = palette[index * 3 + 1];
                textureData[item * 3 + 2] = palette[index * 3 + 2];
            }
        }
        this->mFrames[i].setData(frame->width, frame->height, 3, textureData);
        delete[] textureData;

        tmp += frame->width * frame->height;
    }
}

Hl1SprData::~Hl1SprData()
{
    if (this->mFrames != nullptr)
    {
        delete[] this->mFrames;
    }

    this->mFrames = nullptr;
    if (this->data != nullptr)
    {
        delete[] this->data;
    }
}

int Hl1SprData::getFrameCount() const
{
    return this->mHeader->numframes;
}

Texture *Hl1SprData::getFrame(
    int index)
{
    if (index >= 0 && index < this->mHeader->numframes)
    {
        return &this->mFrames[index];
    }

    return nullptr;
}

int Hl1SprData::getWidth() const
{
    if (this->mHeader != nullptr)
    {
        return this->mHeader->width;
    }

    return 0;
}

int Hl1SprData::getHeight() const
{
    if (this->mHeader != nullptr)
    {
        return this->mHeader->height;
    }

    return 0;
}
