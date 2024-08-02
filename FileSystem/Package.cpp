/* 
 * File:   Package.cpp
 * Author: wouter
 * 
 * Created on July 18, 2011, 9:51 AM
 */

#include "Package.h"

namespace fs
{

Package::Package(
    const fs::FilePath& filePath)
	: Item(filePath)
{
}

Package::~Package() = default;

fs::FilePath Package::findFile(
    const std::string& filename)
{
	for (std::vector<fs::FilePath>::iterator f = this->mFiles.begin(); f != this->mFiles.end(); ++f)
	{
        if ((*f).pathToFile() == filename)
        {
            return (*f);
        }
    }

	for (std::vector<fs::Item*>::iterator i = this->mOpenItems.begin(); i != this->mOpenItems.end(); ++i)
	{
		if ((*i)->filePath().type() == fs::FilePathType::Package)
		{
			fs::FilePath path = ((fs::Package*)(*i))->findFile(filename);
			if (path.isValid())
            {
                return path;
            }
        }
	}

	return fs::FilePath();
}

		
/*
 * Closes the give child package if it is a child. The given pointer is 
 * not valid after this method returns true.
 */
bool Package::closeFile(fs::File* file)
{
	for (std::vector<fs::Item*>::iterator f = this->mOpenItems.begin(); f != this->mOpenItems.end(); ++f)
	{
		if ((*f) == file)
		{
			if (file->close())
			{
				this->mOpenItems.erase(f);
				return true;
			}
			else
            {
                return false;
            }
        }
	}

	return true;
}

const std::vector<fs::FilePath>& Package::files() const
{
	return this->mFiles;
}

}
