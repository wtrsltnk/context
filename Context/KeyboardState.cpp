/*
 * File:   keyboardstate.cpp
 * Author: wouter
 *
 * Created on August 2, 2024, 4:45 PM
 */

#include "KeyboardState.hpp"

KeyboardState KeyboardState::sCurrentState;

KeyboardState::KeyboardState()
{
    for (int i = 0; i < Key::Count; i++)
    {
        this->mKeys[i] = false;
    }
}

KeyboardState &KeyboardState::currentState()
{
    return KeyboardState::sCurrentState;
}

KeyboardState::KeyboardState(
    const KeyboardState &state)
{
    for (int i = 0; i < Key::Count; i++)
    {
        this->mKeys[i] = state.mKeys[i];
    }
}

KeyboardState::~KeyboardState()
{
}

bool KeyboardState::isKeyPressed(
    Key::Code key) const
{
    return this->mKeys[key];
}

void KeyboardState::setPressed(
    Key::Code key,
    bool pressed)
{
    this->mKeys[key] = pressed;
}
