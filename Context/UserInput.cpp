#include "UserInput.h"

/**************************************************************/
/** Mouse State												 **/
/**************************************************************/

MouseState MouseState::sCurrentState;

MouseState::MouseState()
{
	for (int i = 0; i < Mouse::Count; i++)
		this->mMouseButton[i] = false;
	this->mMouseX = this->mMouseY = 0;
}

MouseState::MouseState(const MouseState& state)
{
	for (int i = 0; i < Mouse::Count; i++)
		this->mMouseButton[i] = state.mMouseButton[i];
	this->mMouseX = state.mMouseX;
	this->mMouseY = state.mMouseY;
}

MouseState& MouseState::currentState()
{
	return MouseState::sCurrentState;
}

MouseState::~MouseState()
{
}

bool MouseState::isButtonPressed(Mouse::Button button) const
{
	return this->mMouseButton[button];
}

void MouseState::setButtonPressed(Mouse::Button button, bool pressed)
{
	this->mMouseButton[button] = pressed;
}

int MouseState::x() const
{
	return this->mMouseX;
}

void MouseState::x(int x)
{
	this->mMouseX = x;
}

int MouseState::y() const
{
	return this->mMouseY;
}

void MouseState::y(int y)
{
	this->mMouseY = y;
}


/**************************************************************/
/** Keyboard State											 **/
/**************************************************************/

KeyboardState KeyboardState::sCurrentState;

KeyboardState::KeyboardState()
{
	for (int i = 0; i < Key::Count; i++)
		this->mKeys[i] = false;
}

KeyboardState& KeyboardState::currentState()
{
	return KeyboardState::sCurrentState;
}

KeyboardState::KeyboardState(const KeyboardState& state)
{
	for (int i = 0; i < Key::Count; i++)
		this->mKeys[i] = state.mKeys[i];
}

KeyboardState::~KeyboardState()
{
}

bool KeyboardState::isKeyPressed(Key::Code key) const
{
	return this->mKeys[key];
}

void KeyboardState::setPressed(Key::Code key, bool pressed)
{
	this->mKeys[key] = pressed;
}
