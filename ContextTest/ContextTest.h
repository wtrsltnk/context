/* 
 * File:   ContextTest.h
 * Author: wouter
 *
 * Created on May 26, 2011, 3:12 PM
 */

#ifndef CONTEXTTEST_H
#define	CONTEXTTEST_H

#include <GlContext.h>
#include <ProjectionMatrix.h>
#include <ModelviewMatrix.h>
#include <DefaultShader.h>

class ContextTest : public GlContext
{
public:
	ContextTest();
	virtual ~ContextTest();

	virtual bool onInitializeGl();
	virtual void onIdle(const GameTime* gameTime);
	virtual void onResize(int w, int h);
	virtual void onKeyDown(Key::Code key);
	
private:
	ProjectionMatrix mProjection;
	ModelviewMatrix mModelview;
	DefaultShader* mShader;

};

#endif	/* CONTEXTTEST_H */

