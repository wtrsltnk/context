#ifndef HL1LOADER_H
#define HL1LOADER_H

#include "IStaticManager.h"
#include "hl1types.h"
#include <Tokenizer.h>
#include <map>
#include <string>

typedef std::vector<std::pair<std::string, std::string>> _KeyValueMap;

class KeyValueMap : public _KeyValueMap
{
public:
    std::string operator[](const std::string &key)
    {
        for (KeyValueMap::iterator i = this->begin(); i != this->end(); ++i)
            if ((*i).first == key)
                return (*i).second;
        return "";
    }
};

class Hl1BspData;

class Hl1BspLoader
{
public:
    Hl1BspLoader();
    virtual ~Hl1BspLoader();

    bool loadBsp(
        Hl1BspData *data,
        IStaticManager *mngr);

private:
    bool loadEntityData(
        Hl1BspData *data);
    bool loadSingleEntity(
        Tokenizer &tok,
        KeyValueMap &keyValues);
    bool loadFaces(
        Hl1BspData *data,
        IStaticManager *mngr);
    bool loadModels(
        Hl1BspData *data,
        IStaticManager *mngr);
    bool loadTextures(
        Hl1BspData *data,
        IStaticManager *mngr);
    bool loadMiptex(
        Texture *t,
        unsigned char *data);

    tModel *models;
};

#endif /* HL1LOADER_H */
