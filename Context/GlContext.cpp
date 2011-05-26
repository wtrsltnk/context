/* 
 * File:   GlContext.cpp
 * Author: wouter
 * 
 * Created on May 26, 2011, 2:21 PM
 */

#include "GlContext.h"
#include "GameTime.h"
#include <iostream>

extern Mouse::Button sButtonmap[];
extern Key::Code sKeymap[];

#if defined(WIN32)
#define PLATFORM_IS_WIN32 1
#elif defined(__APPLE__)
#define PLATFORM_IS_APPLE 1
#else
#define PLATFORM_IS_LINUX 1
#endif

#ifdef PLATFORM_IS_LINUX
#include <X11/Xlib.h>
#include <X11/extensions/xf86vmode.h>
#include "GLee.h"

#define GLX_CONTEXT_MAJOR_VERSION_ARB       0x2091
#define GLX_CONTEXT_MINOR_VERSION_ARB       0x2092
typedef GLXContext (*glXCreateContextAttribsARBProc)(Display*, GLXFBConfig, GLXContext, Bool, const int*);

class GlContext::Impl
{
public:
	Impl(GlContext* parent)
		: mParent(parent), mRunning(true), mActive(true), 
				mPositionX(0), mPositionY(0), mWidth(800), mHeight(600), mBits(0),
				mFullscreen(false)
	{ }
	virtual ~Impl() { }
	
	GlContext* mParent;
	bool mRunning;
	bool mActive;
	int mPositionX;
	int mPositionY;
	int mWidth;
	int mHeight;
	int mBits;
	bool mFullscreen;
	
    Display* display;
    Window window;
    GLXContext context;
	Atom wmDeleteMessage;
	int screen;
	XF86VidModeModeInfo deskMode;

	bool create(int major, int minor)
	{
		int attrListSgl[] = { GLX_RGBA,
								GLX_RED_SIZE, 4,
								GLX_GREEN_SIZE, 4,
								GLX_BLUE_SIZE, 4,
								GLX_DEPTH_SIZE, 16,
								None };

		int attrListDbl[] = { GLX_RGBA, GLX_DOUBLEBUFFER,
								GLX_RED_SIZE, 4,
								GLX_GREEN_SIZE, 4,
								GLX_BLUE_SIZE, 4,
								GLX_DEPTH_SIZE, 16,
								None };

		XVisualInfo *vi;
		XF86VidModeModeInfo **modes;
		int modeNum;
		int bestMode;
		Window winDummy;
		unsigned int borderDummy;

		bestMode = 0;

		this->display = XOpenDisplay(0);
		this->screen = DefaultScreen(this->display);
		XF86VidModeGetAllModeLines(this->display, this->screen, &modeNum, &modes);

		this->deskMode = *modes[0];

		for (int i = 0; i < modeNum; i++)
			if ((modes[i]->hdisplay == this->mWidth) && (modes[i]->vdisplay == this->mHeight))
				bestMode = i;

		vi = glXChooseVisual(this->display, this->screen, attrListDbl);
		if(NULL == vi)
			vi = glXChooseVisual(this->display, this->screen, attrListSgl);

		Window rootWindow = DefaultRootWindow(this->display);
		Colormap currentColorMap = XCreateColormap(this->display, rootWindow, vi->visual, AllocNone);

		XSetWindowAttributes currentWindowAttributes;
		currentWindowAttributes.colormap = currentColorMap;
		currentWindowAttributes.event_mask = KeyPressMask | KeyReleaseMask | ButtonPressMask | ButtonReleaseMask | PointerMotionMask | StructureNotifyMask;

		if(this->mFullscreen)
		{
			XF86VidModeSwitchToMode(this->display, this->screen, modes[bestMode]);
			XF86VidModeSetViewPort(this->display, this->screen, 0, 0);
			currentWindowAttributes.override_redirect = True;
			
			this->window = XCreateWindow(this->display, RootWindow(this->display, vi->screen),
									0, 0, modes[bestMode]->hdisplay, modes[bestMode]->vdisplay, 0, vi->depth, InputOutput, vi->visual,
									CWColormap | CWEventMask,
									&currentWindowAttributes);
			XWarpPointer(this->display, None, this->window, 0, 0, 0, 0, 0, 0);
			XMapRaised(this->display, this->window);
			XGrabKeyboard(this->display, this->window, True, GrabModeAsync,GrabModeAsync, CurrentTime);
			XGrabPointer(this->display, this->window, True, ButtonPressMask, GrabModeAsync, GrabModeAsync, this->window, None, CurrentTime);
		}
		else
		{
			this->window = XCreateWindow(this->display, rootWindow, 0, 0, this->mWidth, this->mHeight, 0, vi->depth, InputOutput, vi->visual, CWColormap | CWEventMask, &currentWindowAttributes);

			this->wmDeleteMessage = XInternAtom(this->display, "WM_DELETE_WINDOW", False);
			XSetWMProtocols(this->display, this->window, &this->wmDeleteMessage, 1);
			XMapWindow(this->display, this->window);
			XStoreName(this->display, this->window, "OpenGL");

		}
		XFree(modes);

		glXCreateContextAttribsARBProc glXCreateContextAttribsARB = 0;
		glXCreateContextAttribsARB = (glXCreateContextAttribsARBProc) glXGetProcAddress((const GLubyte *)"glXCreateContextAttribsARB");

		if (glXCreateContextAttribsARB != 0)
		{
			int elemc;
			GLXFBConfig *fbcfg = glXChooseFBConfig(this->display, this->screen, NULL, &elemc);
			int gl3attr[] = {
				GLX_CONTEXT_MAJOR_VERSION_ARB, major,
				GLX_CONTEXT_MINOR_VERSION_ARB, minor,
				None
			};
			this->context = glXCreateContextAttribsARB(this->display, fbcfg[0], NULL, true, gl3attr);

			if (this->context == false)
				this->context = glXCreateContext(this->display, vi, 0, True);
		}
		else
			this->context = glXCreateContext(this->display, vi, 0, True);
		
		
		glXMakeCurrent(this->display, this->window, this->context);
		XGetGeometry(this->display, this->window, &winDummy, &this->mPositionX, &this->mPositionY, (unsigned int*)&this->mWidth, (unsigned int*)&this->mHeight, &borderDummy, (unsigned int*)&this->mBits);

		if (this->mParent->onInitializeGl() == false)
		{
			this->destroy();
			return false;
		}
		return true;
	}

	void destroy()
	{
		this->mParent->onDestroyGl();
		
		if(this->context)
		{
			if(!glXMakeCurrent(this->display, None, NULL))
			{
				std::cout << "Error releasing drawing context : killGLWindow" << std::endl;
			}
			glXDestroyContext(this->display, this->context);
			this->context = NULL;
		}

		if(this->mFullscreen)
		{
			XF86VidModeSwitchToMode(this->display, this->screen, &this->deskMode);
			XF86VidModeSetViewPort(this->display, this->screen, 0, 0);
		}
		XCloseDisplay(this->display);
	}
	
	void handleEvents()
	{
		XEvent event = { 0 };

		while (XPending(this->display))
		{
			XNextEvent(this->display, &event);

			if (event.type == KeyPress)
			{
				KeyboardState::currentState().setPressed(sKeymap[event.xkey.keycode], true);
				this->mParent->onKeyDown(sKeymap[event.xkey.keycode]);
			}
			else if (event.type == KeyRelease)
			{
				KeyboardState::currentState().setPressed(sKeymap[event.xkey.keycode], false);
				this->mParent->onKeyUp(sKeymap[event.xkey.keycode]);
			}
			else if (event.type == ButtonPress)
			{
				MouseState::currentState().setButtonPressed(sButtonmap[event.xbutton.button], true);
				this->mParent->onMouseButtonDown(sButtonmap[event.xbutton.button]);
			}
			else if (event.type == ButtonRelease)
			{
				MouseState::currentState().setButtonPressed(sButtonmap[event.xbutton.button], false);
				this->mParent->onMouseButtonUp(sButtonmap[event.xbutton.button]);
			}
			else if (event.type == MotionNotify)
			{
				MouseState::currentState().setMousePositionX(event.xmotion.x);
				MouseState::currentState().setMousePositionY(event.xmotion.y);
				this->mParent->onMouseMove(event.xmotion.x, event.xmotion.y);
			}
			else if (event.type == ConfigureNotify)
			{
				this->mWidth = event.xconfigure.width;
				this->mHeight = event.xconfigure.height;
				this->mPositionX = event.xconfigure.x;
				this->mPositionY = event.xconfigure.y;
				this->mParent->onResize(event.xconfigure.width, event.xconfigure.height);
			}
			else if (event.type == DestroyNotify)
				this->mRunning = false;
			else if (event.type == FocusIn)
				this->mActive = true;
			else if (event.type == FocusOut)
				this->mActive = false;
			else if (event.type == ClientMessage)
				if (event.xclient.data.l[0] == this->wmDeleteMessage)
					this->mRunning = false;
		}
		
		this->mParent->onIdle(this->getElapsedTime());

		glXSwapBuffers(this->display, this->window);
	}

	GameTime* getElapsedTime()
	{
		static GameTime gameTime(0, 0);
		static bool init = false;
		static float lastTime;
		static float currentTime;
		static struct timespec initial;

		float measuredTime;

		struct timespec now;

		if (init == false)
			clock_gettime(CLOCK_REALTIME, &initial);

		clock_gettime(CLOCK_REALTIME, &now);
		measuredTime = (float)(now.tv_sec-initial.tv_sec)+(float)now.tv_nsec/1000000000.0f;

		if (init == false)
		{
			lastTime = measuredTime;
			currentTime = measuredTime;
			init = true;
		}
		else
		{
			lastTime = currentTime;
			currentTime = measuredTime;
		}
		gameTime = GameTime(currentTime, currentTime - lastTime);

		return &gameTime;
	}
};

Mouse::Button sButtonmap[]  =
{
/*   0 */	Mouse::Unknown,
/*   1 */	Mouse::Left,
/*   2 */	Mouse::Middle,
/*   3 */	Mouse::Right,
/*   4 */	Mouse::XButton1,
/*   5 */	Mouse::XButton2,
/*   6 */	Mouse::Unknown,
/*   7 */	Mouse::Unknown,
/*   8 */	Mouse::Unknown,
/*   9 */	Mouse::Unknown
};

Key::Code sKeymap[] =
{
/*   0 */	Key::Unknown,
/*   1 */	Key::Unknown,
/*   2 */	Key::Unknown,
/*   3 */	Key::Unknown,
/*   4 */	Key::Unknown,
/*   5 */	Key::Unknown,
/*   6 */	Key::Unknown,
/*   7 */	Key::Unknown,
/*   8 */	Key::Unknown,
/*   9 */	Key::Escape,
/*  10 */	Key::Num1,
/*  11 */	Key::Num2,
/*  12 */	Key::Num3,
/*  13 */	Key::Num4,
/*  14 */	Key::Num5,
/*  15 */	Key::Num6,
/*  16 */	Key::Num7,
/*  17 */	Key::Num8,
/*  18 */	Key::Num9,
/*  19 */	Key::Num0,
/*  20 */	Key::Subtract,
/*  21 */	Key::Equal,
/*  22 */	Key::Back,
/*  23 */	Key::Tab,
/*  24 */	Key::Q,
/*  25 */	Key::W,
/*  26 */	Key::E,
/*  27 */	Key::R,
/*  28 */	Key::T,
/*  29 */	Key::Y,
/*  30 */	Key::U,
/*  31 */	Key::I,
/*  32 */	Key::O,
/*  33 */	Key::P,
/*  34 */	Key::LBracket,
/*  35 */	Key::RBracket,
/*  36 */	Key::Return,
/*  37 */	Key::LControl,
/*  38 */	Key::A,
/*  39 */	Key::S,
/*  40 */	Key::D,
/*  41 */	Key::F,
/*  42 */	Key::G,
/*  43 */	Key::H,
/*  44 */	Key::J,
/*  45 */	Key::K,
/*  46 */	Key::L,
/*  47 */	Key::SemiColon,
/*  48 */	Key::Quote,
/*  49 */	Key::Tilde,
/*  50 */	Key::LShift,
/*  51 */	Key::BackSlash,
/*  52 */	Key::Z,
/*  53 */	Key::X,
/*  54 */	Key::C,
/*  55 */	Key::V,
/*  56 */	Key::B,
/*  57 */	Key::N,
/*  58 */	Key::M,
/*  59 */	Key::Comma,
/*  60 */	Key::Period,
/*  61 */	Key::Slash,
/*  62 */	Key::RControl,
/*  63 */	Key::Multiply,
/*  64 */	Key::LAlt,
/*  65 */	Key::Space,
/*  66 */	Key::Capslock,
/*  67 */	Key::F1,
/*  68 */	Key::F2,
/*  69 */	Key::F3,
/*  70 */	Key::F4,
/*  71 */	Key::F5,
/*  72 */	Key::F6,
/*  73 */	Key::F7,
/*  74 */	Key::F8,
/*  75 */	Key::F9,
/*  76 */	Key::F10,
/*  77 */	Key::Numlock,
/*  78 */	Key::Scrollock,
/*  79 */	Key::Numpad7,
/*  80 */	Key::Numpad8,
/*  81 */	Key::Numpad9,
/*  82 */	Key::Subtract,
/*  83 */	Key::Numpad4,
/*  84 */	Key::Numpad5,
/*  85 */	Key::Numpad6,
/*  86 */	Key::Add,
/*  87 */	Key::Numpad1,
/*  88 */	Key::Numpad2,
/*  89 */	Key::Numpad3,
/*  90 */	Key::Numpad0,
/*  91 */	Key::Period,
/*  92 */	Key::Unknown,
/*  93 */	Key::Unknown,
/*  94 */	Key::Unknown,
/*  95 */	Key::F11,
/*  96 */	Key::F12,
/*  97 */	Key::Unknown,
/*  98 */	Key::Unknown,
/*  99 */	Key::Unknown,
/* 100 */	Key::Unknown,
/* 101 */	Key::Unknown,
/* 102 */	Key::Unknown,
/* 103 */	Key::Unknown,
/* 104 */	Key::Return,
/* 105 */	Key::Menu,
/* 106 */	Key::Divide,
/* 107 */	Key::Unknown,
/* 108 */	Key::RAlt,
/* 109 */	Key::Unknown,
/* 110 */	Key::Home,
/* 111 */	Key::Up,
/* 112 */	Key::PageUp,
/* 113 */	Key::Left,
/* 114 */	Key::Right,
/* 115 */	Key::End,
/* 116 */	Key::Down,
/* 117 */	Key::PageDown,
/* 118 */	Key::Insert,
/* 119 */	Key::Delete,
/* 120 */	Key::Unknown,
/* 121 */	Key::Unknown,
/* 122 */	Key::Unknown,
/* 123 */	Key::Unknown,
/* 124 */	Key::Unknown,
/* 125 */	Key::Unknown,
/* 126 */	Key::Unknown,
/* 127 */	Key::Pause,
/* 128 */	Key::Unknown,
/* 129 */	Key::Unknown,
/* 130 */	Key::Unknown,
/* 131 */	Key::Unknown,
/* 132 */	Key::Unknown,
/* 133 */	Key::LSystem,
/* 134 */	Key::Unknown,
/* 135 */	Key::Unknown,
/* 136 */	Key::Unknown,
/* 137 */	Key::Unknown,
/* 138 */	Key::Unknown,
/* 139 */	Key::Unknown,
/* 140 */	Key::Unknown,
/* 141 */	Key::Unknown,
/* 142 */	Key::Unknown,
/* 143 */	Key::Unknown,
/* 144 */	Key::Unknown,
/* 145 */	Key::Unknown,
/* 146 */	Key::Unknown,
/* 147 */	Key::Unknown,
/* 148 */	Key::Unknown,
/* 149 */	Key::Unknown,
/* 150 */	Key::Unknown,
/* 151 */	Key::Unknown,
/* 152 */	Key::Unknown,
/* 153 */	Key::Unknown,
/* 154 */	Key::Unknown,
/* 155 */	Key::Unknown,
/* 156 */	Key::Unknown,
/* 157 */	Key::Unknown,
/* 158 */	Key::Unknown,
/* 159 */	Key::Unknown,
/* 160 */	Key::Unknown,
/* 161 */	Key::Unknown,
/* 162 */	Key::Unknown,
/* 163 */	Key::Unknown,
/* 164 */	Key::Unknown,
/* 165 */	Key::Unknown,
/* 166 */	Key::Unknown,
/* 167 */	Key::Unknown,
/* 168 */	Key::Unknown,
/* 169 */	Key::Unknown,
/* 170 */	Key::Unknown,
/* 171 */	Key::Unknown,
/* 172 */	Key::Unknown,
/* 173 */	Key::Unknown,
/* 174 */	Key::Unknown,
/* 175 */	Key::Unknown,
/* 176 */	Key::Unknown,
/* 177 */	Key::Unknown,
/* 178 */	Key::Unknown,
/* 179 */	Key::Unknown,
/* 180 */	Key::Unknown,
/* 181 */	Key::Unknown,
/* 182 */	Key::Unknown,
/* 183 */	Key::Unknown,
/* 184 */	Key::Unknown,
/* 185 */	Key::Unknown,
/* 186 */	Key::Unknown,
/* 187 */	Key::Unknown,
/* 188 */	Key::Unknown,
/* 189 */	Key::Unknown,
/* 190 */	Key::Unknown,
/* 191 */	Key::Unknown,
/* 192 */	Key::Unknown,
/* 193 */	Key::Unknown,
/* 194 */	Key::Unknown,
/* 195 */	Key::Unknown,
/* 196 */	Key::Unknown,
/* 197 */	Key::Unknown,
/* 198 */	Key::Unknown,
/* 199 */	Key::Unknown,
/* 200 */	Key::Unknown,
/* 201 */	Key::Unknown,
/* 202 */	Key::Unknown,
/* 203 */	Key::Unknown,
/* 204 */	Key::Unknown,
/* 205 */	Key::Unknown,
/* 206 */	Key::Unknown,
/* 207 */	Key::Unknown,
/* 208 */	Key::Unknown,
/* 209 */	Key::Unknown,
/* 210 */	Key::Unknown,
/* 211 */	Key::Unknown,
/* 212 */	Key::Unknown,
/* 213 */	Key::Unknown,
/* 214 */	Key::Unknown,
/* 215 */	Key::Unknown,
/* 216 */	Key::Unknown,
/* 217 */	Key::Unknown,
/* 218 */	Key::Unknown,
/* 219 */	Key::Unknown,
/* 220 */	Key::Unknown,
/* 221 */	Key::Unknown,
/* 222 */	Key::Unknown,
/* 223 */	Key::Unknown,
/* 224 */	Key::Unknown,
/* 225 */	Key::Unknown,
/* 226 */	Key::Unknown,
/* 227 */	Key::Unknown,
/* 228 */	Key::Unknown,
/* 229 */	Key::Unknown,
/* 230 */	Key::Unknown,
/* 231 */	Key::Unknown,
/* 232 */	Key::Unknown,
/* 233 */	Key::Unknown,
/* 234 */	Key::Unknown,
/* 235 */	Key::Unknown,
/* 236 */	Key::Unknown,
/* 237 */	Key::Unknown,
/* 238 */	Key::Unknown,
/* 239 */	Key::Unknown,
/* 240 */	Key::Unknown,
/* 241 */	Key::Unknown,
/* 242 */	Key::Unknown,
/* 243 */	Key::Unknown,
/* 244 */	Key::Unknown,
/* 245 */	Key::Unknown,
/* 246 */	Key::Unknown,
/* 247 */	Key::Unknown,
/* 248 */	Key::Unknown,
/* 249 */	Key::Unknown,
/* 250 */	Key::Unknown,
/* 251 */	Key::Unknown,
/* 252 */	Key::Unknown,
/* 253 */	Key::Unknown,
/* 254 */	Key::Unknown,
/* 255 */	Key::Unknown
};

#endif	/* PLATFORM_IS_LINUX */

GlContext::GlContext()
	: pimpl(new Impl(this))
{
}

GlContext::~GlContext()
{
	delete this->pimpl;
}

bool GlContext::create(int major, int minor)
{
	return this->pimpl->create(major, minor);
}

int GlContext::startGameloop()
{
	while (this->pimpl->mRunning)
	{
		this->pimpl->handleEvents();
	}
	return 0;
}

void GlContext::stopGameloop()
{
	this->pimpl->mRunning = false;
}

int GlContext::width() const
{
	return this->pimpl->mWidth;
}

int GlContext::height() const
{
	return this->pimpl->mHeight;
}

int GlContext::bits() const
{
	return this->pimpl->mBits;
}

bool GlContext::fullscreen() const
{
	return this->pimpl->mFullscreen;
}
