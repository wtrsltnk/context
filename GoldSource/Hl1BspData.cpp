#include "Hl1BspData.h"

#include <File.h>

Hl1BspData::Hl1BspData(
    fs::File *file)
{
    this->dataSize = file->size();
    this->data = new unsigned char[this->dataSize];
    file->read(this->data, this->dataSize);

    this->header = (HL1::tBSPHeader *)this->data;

    if (this->header->signature != HL1_BSP_SIGNATURE)
    {
        delete[] this->data;
        this->data = nullptr;
        this->dataSize = 0;
        this->header = nullptr;
        return;
    }

    this->entitySize = loadLump(&this->entityData, header->lumps[HL1_BSP_ENTITYLUMP], this->data, this->dataSize);
    this->planeCount = loadLump(&this->planes, header->lumps[HL1_BSP_PLANELUMP], this->data, this->dataSize);
    this->textureSize = loadLump(&this->textureData, header->lumps[HL1_BSP_TEXTURELUMP], this->data, this->dataSize);
    this->vertexCount = loadLump(&this->vertices, header->lumps[HL1_BSP_VERTEXLUMP], this->data, this->dataSize);
    this->visibilitySize = loadLump(&this->visibilityData, header->lumps[HL1_BSP_VISIBILITYLUMP], this->data, this->dataSize);
    this->nodeCount = loadLump(&this->nodes, header->lumps[HL1_BSP_NODELUMP], this->data, this->dataSize);
    this->texinfoCount = loadLump(&this->texinfos, header->lumps[HL1_BSP_TEXINFOLUMP], this->data, this->dataSize);
    this->faceCount = loadLump(&this->faces, header->lumps[HL1_BSP_FACELUMP], this->data, this->dataSize);
    this->lightingSize = loadLump(&this->lightingData, header->lumps[HL1_BSP_LIGHTINGLUMP], this->data, this->dataSize);
    this->clipnodeCount = loadLump(&this->clipnodes, header->lumps[HL1_BSP_CLIPNODELUMP], this->data, this->dataSize);
    this->leafCount = loadLump(&this->leafs, header->lumps[HL1_BSP_LEAFLUMP], this->data, this->dataSize);
    this->marksurfaceCount = loadLump(&this->marksurfaces, header->lumps[HL1_BSP_MARKSURFACELUMP], this->data, this->dataSize);
    this->edgeCount = loadLump(&this->edges, header->lumps[HL1_BSP_EDGELUMP], this->data, this->dataSize);
    this->surfedgeCount = loadLump(&this->surfedges, header->lumps[HL1_BSP_SURFEDGELUMP], this->data, this->dataSize);
    this->modelCount = loadLump(&this->models, header->lumps[HL1_BSP_MODELLUMP], this->data, this->dataSize);
}

Hl1BspData::~Hl1BspData()
{
    if (isLoaded())
    {
        delete[] this->data;
    }
}

bool Hl1BspData::isLoaded()
{
    return (this->data != nullptr);
}

//bool Hl1BspData::testBSP(unsigned char* data, int size)
//{
//    HL1::tBSPHeader header(*(HL1::tBSPHeader*)data);
//
//    if (header.signature != HL1_BSP_SIGNATURE) {
//        std::cout << "Wrong BSP signature" << std::endl;
//        return false;
//    }
//
//    if (header.lumps[HL1_BSP_PLANELUMP].size % sizeof(HL1::tBSPPlane) != 0)
//    {
//        std::cout << "Plane lump has the wrong size" << std::endl;
//        return false;
//    }
//    if (header.lumps[HL1_BSP_VERTEXLUMP].size % sizeof(HL1::tBSPVertex) != 0)
//    {
//        std::cout << "Vertex lump has the wrong size" << std::endl;
//        return false;
//    }
//    if (header.lumps[HL1_BSP_NODELUMP].size % sizeof(HL1::tBSPNode) != 0)
//    {
//        std::cout << " Node lump has the wrong size" << std::endl;
//        return false;
//    }
//    if (header.lumps[HL1_BSP_TEXINFOLUMP].size % sizeof(HL1::tBSPTexInfo) != 0)
//    {
//        std::cout << "Texture info lump has the wrong size" << std::endl;
//        return false;
//    }
//    if (header.lumps[HL1_BSP_FACELUMP].size % sizeof(HL1::tBSPFace) != 0)
//    {
//        std::cout << "Face lump has the wrong size" << std::endl;
//        return false;
//    }
//    if (header.lumps[HL1_BSP_CLIPNODELUMP].size % sizeof(HL1::tBSPClipNode) != 0)
//    {
//        std::cout << "Clipnode lump has the wrond size" << std::endl;
//        return false;
//    }
//    if (header.lumps[HL1_BSP_LEAFLUMP].size % sizeof(HL1::tBSPLeaf) != 0)
//    {
//        std::cout << "Leaf lump has the wrong size" << std::endl;
//        return false;
//    }
//    if (header.lumps[HL1_BSP_EDGELUMP].size % sizeof(HL1::tBSPEdge) != 0)
//    {
//        std::cout << "Edge lump has the wrong size" << std::endl;
//        return false;
//    }
//    if (header.lumps[HL1_BSP_MODELLUMP].size % sizeof(HL1::tBSPModel) != 0)
//    {
//        std::cout << "Model lump has the wrond size" << std::endl;
//        return false;
//    }
//
//    return true;
//}

HL1::tBSPMipTexHeader *Hl1BspData::getMiptex(
    int index)
{
    auto bspMiptexTable = reinterpret_cast<HL1::tBSPMipTexOffsetTable *>(this->textureData);

    if (index >= 0 && bspMiptexTable->miptexCount > index)
    {
        return reinterpret_cast<HL1::tBSPMipTexHeader *>(this->textureData + bspMiptexTable->offsets[index]);
    }

    return nullptr;
}
