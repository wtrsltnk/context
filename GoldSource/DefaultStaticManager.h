#ifndef DEFAULTSTATICMANAGER_H
#define	DEFAULTSTATICMANAGER_H

#include "IStaticManager.h"
#include <set>

typedef std::set<short> RenderSet;

class DefaultStaticManager : public IStaticManager
{
public:
	DefaultStaticManager();
	virtual ~DefaultStaticManager();

public:	// Data management
	void cleanup();

	virtual void setVertices(int count, tVertex* vertices);
	virtual void setFaces(int count, tFace* faces);
	virtual void setModels(int count, tModel* models);
	virtual void setTextures(int count, Texture* textures);
	virtual Texture* getTexture(int index);

public:	// Rendering
	virtual int updateRenderSet(Camera* camera);
	virtual void renderFaces();
	virtual void renderFace(int index);

	bool testFace(const tFace& face, const Vector3& cameraPosition);

//private:
    int mVertexCount = 0;
    tVertex* mVertices = nullptr;

    int mFaceCount = 0;
    tFace* mFaces = nullptr;

    int mModelCount = 0;
    tModel* mModels = nullptr;

    int mTextureCount = 0;
    Texture* mTextures = nullptr;

private:	// Render set data
	RenderSet mRenderFaces;
	
};

#endif	/* DEFAULTSTATICMANAGER_H */
