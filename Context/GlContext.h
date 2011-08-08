/* 
 * File:   GlContext.h
 * Author: wouter
 *
 * Created on May 26, 2011, 2:21 PM
 */

#ifndef GLCONTEXT_H
#define	GLCONTEXT_H

#include "UserInput.h"

class GameTime;

class GlContext
{
private:
	class Impl;
	Impl* pimpl;
	
public:
	GlContext();
	GlContext(int width, int height);
	virtual ~GlContext();

	bool create(int major = 3, int minor = 1);
	int startGameloop();
	void stopGameloop();
	
public:
	int width() const;
	int height() const;
	int bits() const;
	bool fullscreen() const;
	int delay() const;
	void setDelay(int d);
	
protected:
	virtual bool onInitializeGl() { return true; }
	virtual void onDestroyGl() { }
	virtual void onIdle(const GameTime* gameTime) { }
	virtual void onResize(int w, int h) { }
	virtual void onKeyDown(Key::Code key) { }
	virtual void onKeyUp(Key::Code key) { }
	virtual void onMouseButtonDown(Mouse::Button button) { }
	virtual void onMouseButtonUp(Mouse::Button button) { }
	virtual void onMouseMove(int x, int y) { }

};

#endif	/* GLCONTEXT_H */

