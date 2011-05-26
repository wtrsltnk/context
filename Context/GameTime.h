/* 
 * File:   GameTime.h
 * Author: wouter
 *
 * Created on May 26, 2011, 3:42 PM
 */

#ifndef GAMETIME_H
#define	GAMETIME_H

class GameTime
{
public:
	GameTime(float total, float elapsed) : mTotal(total), mElapsed(elapsed) { }
	virtual ~GameTime() { }

	virtual float getTotalTime() { return mTotal; }
	virtual float getElapsedTime() { return mElapsed; }

private:
	float mTotal;
	float mElapsed;

};

#endif	/* GAMETIME_H */

