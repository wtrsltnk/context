#ifndef ISTATICMANAGER_H
#define	ISTATICMANAGER_H

#include <Plane.h>
#include <vector>

class Camera;
class Texture;

typedef std::vector<unsigned short> Indexlist;

typedef struct sVertex
{
	float position[3];
	float texcoord[2][2];
	float normal[3];
	unsigned char color[4];

} tVertex;

typedef struct sFace
{
	unsigned int mode;
	int flags;
	int firstVertex;
	int vertexCount;

	Plane plane;
	Texture* texture;
	Texture* lightmap;

} tFace;

typedef struct sModel
{
	float mins[3], maxs[3];
	float origin[3];
	int headnode[4];
	int visLeafs;                       // not including the solid leaf 0
	int firstFace;
	int faceCount;
	
} tModel;

class IStaticManager
{
public:
	virtual ~IStaticManager() { }

public:	// Data management
	virtual void cleanup() = 0;

	virtual void setVertices(int count, tVertex* vertices) = 0;
	virtual void setFaces(int count, tFace* faces) = 0;
	virtual void setModels(int count, tModel* models) = 0;
	virtual void setTextures(int count, Texture* textures) = 0;
	virtual Texture* getTexture(int index) = 0;

public:	// Rendering
	virtual int updateRenderSet(Camera* camera) = 0;
	virtual void renderFaces() = 0;
	virtual void renderFace(int index) = 0;


private:

};

#endif	/* ISTATICMANAGER_H */

