#ifndef HL1LOADER_H
#define	HL1LOADER_H

#include "IStaticManager.h"
#include "hl1types.h"

class Hl1BspData;

class Hl1BspLoader
{
public:
	Hl1BspLoader();
	virtual ~Hl1BspLoader();

	bool loadBsp(Hl1BspData* data, IStaticManager* mngr);

private:
	bool loadFaces(Hl1BspData* data, IStaticManager* mngr);
	bool loadTextures(Hl1BspData* data, IStaticManager* mngr);
	bool loadMiptex(Texture* t, unsigned char* data);

};

#endif	/* HL1LOADER_H */

