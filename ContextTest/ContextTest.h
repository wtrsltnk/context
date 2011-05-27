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

class ContextTest : public GlContext
{
public:
	ContextTest();
	virtual ~ContextTest();

	virtual void onIdle(const GameTime* gameTime);
	virtual void onResize(int w, int h);
	
private:
	ProjectionMatrix mProjection;

};

#endif	/* CONTEXTTEST_H */

