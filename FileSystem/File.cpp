/* 
 * File:   File.cpp
 * Author: wouter
 * 
 * Created on July 18, 2011, 10:49 AM
 */

#include "File.h"
#include "Package.h"

namespace fs
{

File::File(
    const fs::FilePath& filePath)
	: Item(filePath)
{
}

File::~File() = default;

bool File::close()
{
    if (this->mFilePath.package() != nullptr)
    {
        return this->mFilePath.package()->closeFile(this);
    }

	return false;
}

}
