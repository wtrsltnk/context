/*
 * File:   mousestate.hpp
 * Author: wouter
 *
 * Created on August 2, 2024, 4:45 PM
 */

#ifndef MOUSESTATE_HPP
#define MOUSESTATE_HPP

/// Definitions for the Mouse buttons
namespace Mouse
{
    enum Button
    {
        Left,
        Right,
        Middle,
        WheelDown,
        WheelUp,
        XButton1,
        XButton2,

        Unknown,
        Count // For internal use
    };
}

class MouseState
{
public:
    static MouseState &currentState();
    MouseState(const MouseState &state);
    virtual ~MouseState();

    bool isButtonPressed(Mouse::Button button) const;
    void setButtonPressed(Mouse::Button button, bool pressed);
    int x() const;
    void x(int x);
    int y() const;
    void y(int y);

private:
    MouseState();
    static MouseState sCurrentState;

    bool mMouseButton[Mouse::Count];
    int mMouseX, mMouseY;

    friend void handleEvents();
};

#endif // MOUSESTATE_HPP
