#ifndef _LIGHTMAP_H
#define	_LIGHTMAP_H

#include "hl1types.h"
#include "IStaticManager.h"
#include "Hl1BspData.h"

void CalcSurfaceExtents(HL1::tBSPFace* in, float *mins, float *maxs, Hl1BspData* bsp);
Texture* ComputeLightmap(HL1::tBSPFace* in, float *mins, float *maxs, Hl1BspData* bsp);

#endif	/* _LIGHTMAP_H */

