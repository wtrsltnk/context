/* 
 * File:   Item.h
 * Author: wouter
 *
 * Created on July 20, 2011, 1:42 PM
 */

#ifndef ITEM_H
#define	ITEM_H

#include "FilePath.h"

namespace fs
{
	
	class Item
	{
	public:
		Item(const fs::FilePath& filePath);
		virtual ~Item();

		virtual bool open(int flags = 0) = 0;
		virtual bool close() = 0;
		
		fs::FilePath filePath();

	protected:
		fs::FilePath mFilePath;

	};
	
}

#endif	/* ITEM_H */

