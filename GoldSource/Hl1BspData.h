#ifndef _BSPDATA_H
#define	_BSPDATA_H

#include "hl1types.h"

namespace fs
{
class File;
}

class Hl1BspData
{
public:
    Hl1BspData(fs::File* file);
    virtual ~Hl1BspData();

	bool isLoaded();
	HL1::tBSPMipTexHeader* getMiptex(int index);

    int dataSize = 0;
    unsigned char* data = nullptr;

    HL1::tBSPHeader* header = nullptr;

    int entitySize = 0;
    unsigned char* entityData = nullptr;

    int planeCount = 0;
    HL1::tBSPPlane* planes = nullptr;

    int textureSize = 0;
    unsigned char* textureData = nullptr;

    int vertexCount = 0;
    HL1::tBSPVertex* vertices = nullptr;

    int visibilitySize = 0;
    unsigned char* visibilityData = nullptr;

    int nodeCount = 0;
    HL1::tBSPNode* nodes = nullptr;

    int texinfoCount = 0;
    HL1::tBSPTexInfo* texinfos = nullptr;

    int faceCount = 0;
    HL1::tBSPFace* faces = nullptr;

    int lightingSize = 0;
    unsigned char* lightingData = nullptr;

    int clipnodeCount = 0;
    HL1::tBSPClipNode* clipnodes = nullptr;

    int leafCount = 0;
    HL1::tBSPLeaf* leafs = nullptr;

    int marksurfaceCount = 0;
    unsigned short* marksurfaces = nullptr;

    int edgeCount = 0;
    HL1::tBSPEdge* edges = nullptr;

    int surfedgeCount = 0;
    int* surfedges = 0;

    int modelCount = 0;
    HL1::tBSPModel* models = nullptr;

private:
    template <typename T>
    static int loadLump(T** array, const HL1::tBSPLump& lump, unsigned char* data, int size)
    {
        if (size < (lump.offset + lump.size))
            return 0;

        int count = lump.size / sizeof(T);
        if (count > 0)
        {
			*array = (T*)(data + lump.offset);
        }
        return count;
    }
};

#endif	/* _BSPDATA_H */

