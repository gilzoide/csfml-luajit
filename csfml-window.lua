--[[
-- This file was automatically generated by Inclua 0.2.0 (https://github.com/gilzoide/inclua)
-- 
-- The Inclua team hopes this file was accurately generated, that it will be useful
-- and will never give SEGFAULTs, throw exceptions, or panic in a similar way.
-- This software is provided 'as-is', without any warranty.
-- Feel free to change and redistribute it.
--]]
local ffi = require 'ffi'

ffi.cdef[=[
typedef struct sfContext sfContext;

typedef struct sfCursor sfCursor;

typedef struct sfWindow sfWindow;

const char * sfClipboard_getString();
const sfUint32 * sfClipboard_getUnicodeString();
void sfClipboard_setString(const char * text);
void sfClipboard_setUnicodeString(const sfUint32 * text);
typedef struct  {
  const char * name;
  unsigned int vendorId;
  unsigned int productId;
} sfJoystickIdentification;

enum  {
  sfJoystickCount = 8,
  sfJoystickButtonCount = 32,
  sfJoystickAxisCount = 8,
};
typedef enum  {
  sfJoystickX = 0,
  sfJoystickY = 1,
  sfJoystickZ = 2,
  sfJoystickR = 3,
  sfJoystickU = 4,
  sfJoystickV = 5,
  sfJoystickPovX = 6,
  sfJoystickPovY = 7,
} sfJoystickAxis;

sfBool sfJoystick_isConnected(unsigned int joystick);
unsigned int sfJoystick_getButtonCount(unsigned int joystick);
sfBool sfJoystick_hasAxis(unsigned int joystick, sfJoystickAxis axis);
sfBool sfJoystick_isButtonPressed(unsigned int joystick, unsigned int button);
float sfJoystick_getAxisPosition(unsigned int joystick, sfJoystickAxis axis);
sfJoystickIdentification sfJoystick_getIdentification(unsigned int joystick);
void sfJoystick_update();
typedef enum  {
  sfKeyUnknown = -1,
  sfKeyA = 0,
  sfKeyB = 1,
  sfKeyC = 2,
  sfKeyD = 3,
  sfKeyE = 4,
  sfKeyF = 5,
  sfKeyG = 6,
  sfKeyH = 7,
  sfKeyI = 8,
  sfKeyJ = 9,
  sfKeyK = 10,
  sfKeyL = 11,
  sfKeyM = 12,
  sfKeyN = 13,
  sfKeyO = 14,
  sfKeyP = 15,
  sfKeyQ = 16,
  sfKeyR = 17,
  sfKeyS = 18,
  sfKeyT = 19,
  sfKeyU = 20,
  sfKeyV = 21,
  sfKeyW = 22,
  sfKeyX = 23,
  sfKeyY = 24,
  sfKeyZ = 25,
  sfKeyNum0 = 26,
  sfKeyNum1 = 27,
  sfKeyNum2 = 28,
  sfKeyNum3 = 29,
  sfKeyNum4 = 30,
  sfKeyNum5 = 31,
  sfKeyNum6 = 32,
  sfKeyNum7 = 33,
  sfKeyNum8 = 34,
  sfKeyNum9 = 35,
  sfKeyEscape = 36,
  sfKeyLControl = 37,
  sfKeyLShift = 38,
  sfKeyLAlt = 39,
  sfKeyLSystem = 40,
  sfKeyRControl = 41,
  sfKeyRShift = 42,
  sfKeyRAlt = 43,
  sfKeyRSystem = 44,
  sfKeyMenu = 45,
  sfKeyLBracket = 46,
  sfKeyRBracket = 47,
  sfKeySemicolon = 48,
  sfKeyComma = 49,
  sfKeyPeriod = 50,
  sfKeyQuote = 51,
  sfKeySlash = 52,
  sfKeyBackslash = 53,
  sfKeyTilde = 54,
  sfKeyEqual = 55,
  sfKeyHyphen = 56,
  sfKeySpace = 57,
  sfKeyEnter = 58,
  sfKeyBackspace = 59,
  sfKeyTab = 60,
  sfKeyPageUp = 61,
  sfKeyPageDown = 62,
  sfKeyEnd = 63,
  sfKeyHome = 64,
  sfKeyInsert = 65,
  sfKeyDelete = 66,
  sfKeyAdd = 67,
  sfKeySubtract = 68,
  sfKeyMultiply = 69,
  sfKeyDivide = 70,
  sfKeyLeft = 71,
  sfKeyRight = 72,
  sfKeyUp = 73,
  sfKeyDown = 74,
  sfKeyNumpad0 = 75,
  sfKeyNumpad1 = 76,
  sfKeyNumpad2 = 77,
  sfKeyNumpad3 = 78,
  sfKeyNumpad4 = 79,
  sfKeyNumpad5 = 80,
  sfKeyNumpad6 = 81,
  sfKeyNumpad7 = 82,
  sfKeyNumpad8 = 83,
  sfKeyNumpad9 = 84,
  sfKeyF1 = 85,
  sfKeyF2 = 86,
  sfKeyF3 = 87,
  sfKeyF4 = 88,
  sfKeyF5 = 89,
  sfKeyF6 = 90,
  sfKeyF7 = 91,
  sfKeyF8 = 92,
  sfKeyF9 = 93,
  sfKeyF10 = 94,
  sfKeyF11 = 95,
  sfKeyF12 = 96,
  sfKeyF13 = 97,
  sfKeyF14 = 98,
  sfKeyF15 = 99,
  sfKeyPause = 100,
  sfKeyCount = 101,
  sfKeyDash = 56,
  sfKeyBack = 59,
  sfKeyBackSlash = 53,
  sfKeySemiColon = 48,
  sfKeyReturn = 58,
} sfKeyCode;

sfBool sfKeyboard_isKeyPressed(sfKeyCode key);
void sfKeyboard_setVirtualKeyboardVisible(sfBool visible);
typedef enum  {
  sfMouseLeft = 0,
  sfMouseRight = 1,
  sfMouseMiddle = 2,
  sfMouseXButton1 = 3,
  sfMouseXButton2 = 4,
  sfMouseButtonCount = 5,
} sfMouseButton;

typedef enum  {
  sfMouseVerticalWheel = 0,
  sfMouseHorizontalWheel = 1,
} sfMouseWheel;

sfBool sfMouse_isButtonPressed(sfMouseButton button);
sfVector2i sfMouse_getPosition(const sfWindow * relativeTo);
void sfMouse_setPosition(sfVector2i position, const sfWindow * relativeTo);
typedef enum  {
  sfSensorAccelerometer = 0,
  sfSensorGyroscope = 1,
  sfSensorMagnetometer = 2,
  sfSensorGravity = 3,
  sfSensorUserAcceleration = 4,
  sfSensorOrientation = 5,
  sfSensorCount = 6,
} sfSensorType;

sfBool sfSensor_isAvailable(sfSensorType sensor);
void sfSensor_setEnabled(sfSensorType sensor, sfBool enabled);
sfVector3f sfSensor_getValue(sfSensorType sensor);
typedef enum  {
  sfEvtClosed = 0,
  sfEvtResized = 1,
  sfEvtLostFocus = 2,
  sfEvtGainedFocus = 3,
  sfEvtTextEntered = 4,
  sfEvtKeyPressed = 5,
  sfEvtKeyReleased = 6,
  sfEvtMouseWheelMoved = 7,
  sfEvtMouseWheelScrolled = 8,
  sfEvtMouseButtonPressed = 9,
  sfEvtMouseButtonReleased = 10,
  sfEvtMouseMoved = 11,
  sfEvtMouseEntered = 12,
  sfEvtMouseLeft = 13,
  sfEvtJoystickButtonPressed = 14,
  sfEvtJoystickButtonReleased = 15,
  sfEvtJoystickMoved = 16,
  sfEvtJoystickConnected = 17,
  sfEvtJoystickDisconnected = 18,
  sfEvtTouchBegan = 19,
  sfEvtTouchMoved = 20,
  sfEvtTouchEnded = 21,
  sfEvtSensorChanged = 22,
  sfEvtCount = 23,
} sfEventType;

typedef struct  {
  sfEventType type;
  sfKeyCode code;
  sfBool alt;
  sfBool control;
  sfBool shift;
  sfBool system;
} sfKeyEvent;

typedef struct  {
  sfEventType type;
  sfUint32 unicode;
} sfTextEvent;

typedef struct  {
  sfEventType type;
  int x;
  int y;
} sfMouseMoveEvent;

typedef struct  {
  sfEventType type;
  sfMouseButton button;
  int x;
  int y;
} sfMouseButtonEvent;

typedef struct  {
  sfEventType type;
  int delta;
  int x;
  int y;
} sfMouseWheelEvent;

typedef struct  {
  sfEventType type;
  sfMouseWheel wheel;
  float delta;
  int x;
  int y;
} sfMouseWheelScrollEvent;

typedef struct  {
  sfEventType type;
  unsigned int joystickId;
  sfJoystickAxis axis;
  float position;
} sfJoystickMoveEvent;

typedef struct  {
  sfEventType type;
  unsigned int joystickId;
  unsigned int button;
} sfJoystickButtonEvent;

typedef struct  {
  sfEventType type;
  unsigned int joystickId;
} sfJoystickConnectEvent;

typedef struct  {
  sfEventType type;
  unsigned int width;
  unsigned int height;
} sfSizeEvent;

typedef struct  {
  sfEventType type;
  unsigned int finger;
  int x;
  int y;
} sfTouchEvent;

typedef struct  {
  sfEventType type;
  sfSensorType sensorType;
  float x;
  float y;
  float z;
} sfSensorEvent;

typedef union  {
  sfEventType type;
  sfSizeEvent size;
  sfKeyEvent key;
  sfTextEvent text;
  sfMouseMoveEvent mouseMove;
  sfMouseButtonEvent mouseButton;
  sfMouseWheelEvent mouseWheel;
  sfMouseWheelScrollEvent mouseWheelScroll;
  sfJoystickMoveEvent joystickMove;
  sfJoystickButtonEvent joystickButton;
  sfJoystickConnectEvent joystickConnect;
  sfTouchEvent touch;
  sfSensorEvent sensor;
} sfEvent;

typedef struct  {
  unsigned int width;
  unsigned int height;
  unsigned int bitsPerPixel;
} sfVideoMode;

sfVideoMode sfVideoMode_getDesktopMode();
const sfVideoMode * sfVideoMode_getFullscreenModes(size_t * count);
sfBool sfVideoMode_isValid(sfVideoMode mode);
typedef unsigned long sfWindowHandle;
typedef enum  {
  sfNone = 0,
  sfTitlebar = 1,
  sfResize = 2,
  sfClose = 4,
  sfFullscreen = 8,
  sfDefaultStyle = 7,
} sfWindowStyle;

typedef enum  {
  sfContextDefault = 0,
  sfContextCore = 1,
  sfContextDebug = 4,
} sfContextAttribute;

typedef struct  {
  unsigned int depthBits;
  unsigned int stencilBits;
  unsigned int antialiasingLevel;
  unsigned int majorVersion;
  unsigned int minorVersion;
  sfUint32 attributeFlags;
  sfBool sRgbCapable;
} sfContextSettings;

sfWindow * sfWindow_create(sfVideoMode mode, const char * title, sfUint32 style, const sfContextSettings * settings);
sfWindow * sfWindow_createUnicode(sfVideoMode mode, const sfUint32 * title, sfUint32 style, const sfContextSettings * settings);
sfWindow * sfWindow_createFromHandle(sfWindowHandle handle, const sfContextSettings * settings);
void sfWindow_destroy(sfWindow * window);
void sfWindow_close(sfWindow * window);
sfBool sfWindow_isOpen(const sfWindow * window);
sfContextSettings sfWindow_getSettings(const sfWindow * window);
sfBool sfWindow_pollEvent(sfWindow * window, sfEvent * event);
sfBool sfWindow_waitEvent(sfWindow * window, sfEvent * event);
sfVector2i sfWindow_getPosition(const sfWindow * window);
void sfWindow_setPosition(sfWindow * window, sfVector2i position);
sfVector2u sfWindow_getSize(const sfWindow * window);
void sfWindow_setSize(sfWindow * window, sfVector2u size);
void sfWindow_setTitle(sfWindow * window, const char * title);
void sfWindow_setUnicodeTitle(sfWindow * window, const sfUint32 * title);
void sfWindow_setIcon(sfWindow * window, unsigned int width, unsigned int height, const sfUint8 * pixels);
void sfWindow_setVisible(sfWindow * window, sfBool visible);
void sfWindow_setVerticalSyncEnabled(sfWindow * window, sfBool enabled);
void sfWindow_setMouseCursorVisible(sfWindow * window, sfBool visible);
void sfWindow_setMouseCursorGrabbed(sfWindow * window, sfBool grabbed);
void sfWindow_setMouseCursor(sfWindow * window, const sfCursor * cursor);
void sfWindow_setKeyRepeatEnabled(sfWindow * window, sfBool enabled);
void sfWindow_setFramerateLimit(sfWindow * window, unsigned int limit);
void sfWindow_setJoystickThreshold(sfWindow * window, float threshold);
sfBool sfWindow_setActive(sfWindow * window, sfBool active);
void sfWindow_requestFocus(sfWindow * window);
sfBool sfWindow_hasFocus(const sfWindow * window);
void sfWindow_display(sfWindow * window);
sfWindowHandle sfWindow_getSystemHandle(const sfWindow * window);
sfContext * sfContext_create();
void sfContext_destroy(sfContext * context);
sfBool sfContext_setActive(sfContext * context, sfBool active);
sfContextSettings sfContext_getSettings(const sfContext * context);
sfUint64 sfContext_getActiveContextId();
typedef enum  {
  sfCursorArrow = 0,
  sfCursorArrowWait = 1,
  sfCursorWait = 2,
  sfCursorText = 3,
  sfCursorHand = 4,
  sfCursorSizeHorizontal = 5,
  sfCursorSizeVertical = 6,
  sfCursorSizeTopLeftBottomRight = 7,
  sfCursorSizeBottomLeftTopRight = 8,
  sfCursorSizeAll = 9,
  sfCursorCross = 10,
  sfCursorHelp = 11,
  sfCursorNotAllowed = 12,
} sfCursorType;

sfCursor * sfCursor_createFromPixels(const sfUint8 * pixels, sfVector2u size, sfVector2u hotspot);
sfCursor * sfCursor_createFromSystem(sfCursorType type);
void sfCursor_destroy(sfCursor * cursor);
sfBool sfTouch_isDown(unsigned int finger);
sfVector2i sfTouch_getPosition(unsigned int finger, const sfWindow * relativeTo);
]=]

local c_lib = ffi.load('csfml-window', true)
local lua_lib = setmetatable({ c_lib = c_lib }, { __index = c_lib })
lua_lib.Context = ffi.metatype('sfContext', {
  __name = 'sfContext',
  __gc = c_lib.sfContext_destroy,
  __index = {
    setActive = c_lib.sfContext_setActive,
    getSettings = c_lib.sfContext_getSettings,
  },
})
lua_lib.Cursor = ffi.metatype('sfCursor', {
  __name = 'sfCursor',
  __gc = c_lib.sfCursor_destroy,
})
lua_lib.Window = ffi.metatype('sfWindow', {
  __name = 'sfWindow',
  __gc = c_lib.sfWindow_destroy,
  __index = {
    close = c_lib.sfWindow_close,
    isOpen = c_lib.sfWindow_isOpen,
    getSettings = c_lib.sfWindow_getSettings,
    pollEvent = c_lib.sfWindow_pollEvent,
    waitEvent = c_lib.sfWindow_waitEvent,
    getPosition = c_lib.sfWindow_getPosition,
    setPosition = c_lib.sfWindow_setPosition,
    getSize = c_lib.sfWindow_getSize,
    setSize = c_lib.sfWindow_setSize,
    setTitle = c_lib.sfWindow_setTitle,
    setUnicodeTitle = c_lib.sfWindow_setUnicodeTitle,
    setIcon = c_lib.sfWindow_setIcon,
    setVisible = c_lib.sfWindow_setVisible,
    setVerticalSyncEnabled = c_lib.sfWindow_setVerticalSyncEnabled,
    setMouseCursorVisible = c_lib.sfWindow_setMouseCursorVisible,
    setMouseCursorGrabbed = c_lib.sfWindow_setMouseCursorGrabbed,
    setMouseCursor = c_lib.sfWindow_setMouseCursor,
    setKeyRepeatEnabled = c_lib.sfWindow_setKeyRepeatEnabled,
    setFramerateLimit = c_lib.sfWindow_setFramerateLimit,
    setJoystickThreshold = c_lib.sfWindow_setJoystickThreshold,
    setActive = c_lib.sfWindow_setActive,
    requestFocus = c_lib.sfWindow_requestFocus,
    hasFocus = c_lib.sfWindow_hasFocus,
    display = c_lib.sfWindow_display,
    getSystemHandle = c_lib.sfWindow_getSystemHandle,
  },
})
lua_lib.JoystickIdentification = ffi.metatype('sfJoystickIdentification', {
  __name = 'sfJoystickIdentification',
})
lua_lib.KeyEvent = ffi.metatype('sfKeyEvent', {
  __name = 'sfKeyEvent',
})
lua_lib.TextEvent = ffi.metatype('sfTextEvent', {
  __name = 'sfTextEvent',
})
lua_lib.MouseMoveEvent = ffi.metatype('sfMouseMoveEvent', {
  __name = 'sfMouseMoveEvent',
})
lua_lib.MouseButtonEvent = ffi.metatype('sfMouseButtonEvent', {
  __name = 'sfMouseButtonEvent',
})
lua_lib.MouseWheelEvent = ffi.metatype('sfMouseWheelEvent', {
  __name = 'sfMouseWheelEvent',
})
lua_lib.MouseWheelScrollEvent = ffi.metatype('sfMouseWheelScrollEvent', {
  __name = 'sfMouseWheelScrollEvent',
})
lua_lib.JoystickMoveEvent = ffi.metatype('sfJoystickMoveEvent', {
  __name = 'sfJoystickMoveEvent',
})
lua_lib.JoystickButtonEvent = ffi.metatype('sfJoystickButtonEvent', {
  __name = 'sfJoystickButtonEvent',
})
lua_lib.JoystickConnectEvent = ffi.metatype('sfJoystickConnectEvent', {
  __name = 'sfJoystickConnectEvent',
})
lua_lib.SizeEvent = ffi.metatype('sfSizeEvent', {
  __name = 'sfSizeEvent',
})
lua_lib.TouchEvent = ffi.metatype('sfTouchEvent', {
  __name = 'sfTouchEvent',
})
lua_lib.SensorEvent = ffi.metatype('sfSensorEvent', {
  __name = 'sfSensorEvent',
})
lua_lib.Event = ffi.metatype('sfEvent', {
  __name = 'sfEvent',
})
lua_lib.VideoMode = ffi.metatype('sfVideoMode', {
  __name = 'sfVideoMode',
  __index = {
    isValid = c_lib.sfVideoMode_isValid,
  },
})
lua_lib.ContextSettings = ffi.metatype('sfContextSettings', {
  __name = 'sfContextSettings',
})
lua_lib.Clipboard_getString = lua_lib.sfClipboard_getString
lua_lib.Clipboard_getUnicodeString = lua_lib.sfClipboard_getUnicodeString
lua_lib.Clipboard_setString = lua_lib.sfClipboard_setString
lua_lib.Clipboard_setUnicodeString = lua_lib.sfClipboard_setUnicodeString
lua_lib.Joystick_isConnected = lua_lib.sfJoystick_isConnected
lua_lib.Joystick_getButtonCount = lua_lib.sfJoystick_getButtonCount
lua_lib.Joystick_hasAxis = lua_lib.sfJoystick_hasAxis
lua_lib.Joystick_isButtonPressed = lua_lib.sfJoystick_isButtonPressed
lua_lib.Joystick_getAxisPosition = lua_lib.sfJoystick_getAxisPosition
lua_lib.Joystick_getIdentification = lua_lib.sfJoystick_getIdentification
lua_lib.Joystick_update = lua_lib.sfJoystick_update
lua_lib.Keyboard_isKeyPressed = lua_lib.sfKeyboard_isKeyPressed
lua_lib.Keyboard_setVirtualKeyboardVisible = lua_lib.sfKeyboard_setVirtualKeyboardVisible
lua_lib.Mouse_isButtonPressed = lua_lib.sfMouse_isButtonPressed
lua_lib.Mouse_getPosition = lua_lib.sfMouse_getPosition
lua_lib.Mouse_setPosition = lua_lib.sfMouse_setPosition
lua_lib.Sensor_isAvailable = lua_lib.sfSensor_isAvailable
lua_lib.Sensor_setEnabled = lua_lib.sfSensor_setEnabled
lua_lib.Sensor_getValue = lua_lib.sfSensor_getValue
lua_lib.VideoMode_getDesktopMode = lua_lib.sfVideoMode_getDesktopMode
lua_lib.VideoMode_getFullscreenModes = lua_lib.sfVideoMode_getFullscreenModes
lua_lib.VideoMode_isValid = lua_lib.sfVideoMode_isValid
lua_lib.Window_create = lua_lib.sfWindow_create
lua_lib.Window_createUnicode = lua_lib.sfWindow_createUnicode
lua_lib.Window_createFromHandle = lua_lib.sfWindow_createFromHandle
lua_lib.Window_destroy = lua_lib.sfWindow_destroy
lua_lib.Window_close = lua_lib.sfWindow_close
lua_lib.Window_isOpen = lua_lib.sfWindow_isOpen
lua_lib.Window_getSettings = lua_lib.sfWindow_getSettings
lua_lib.Window_pollEvent = lua_lib.sfWindow_pollEvent
lua_lib.Window_waitEvent = lua_lib.sfWindow_waitEvent
lua_lib.Window_getPosition = lua_lib.sfWindow_getPosition
lua_lib.Window_setPosition = lua_lib.sfWindow_setPosition
lua_lib.Window_getSize = lua_lib.sfWindow_getSize
lua_lib.Window_setSize = lua_lib.sfWindow_setSize
lua_lib.Window_setTitle = lua_lib.sfWindow_setTitle
lua_lib.Window_setUnicodeTitle = lua_lib.sfWindow_setUnicodeTitle
lua_lib.Window_setIcon = lua_lib.sfWindow_setIcon
lua_lib.Window_setVisible = lua_lib.sfWindow_setVisible
lua_lib.Window_setVerticalSyncEnabled = lua_lib.sfWindow_setVerticalSyncEnabled
lua_lib.Window_setMouseCursorVisible = lua_lib.sfWindow_setMouseCursorVisible
lua_lib.Window_setMouseCursorGrabbed = lua_lib.sfWindow_setMouseCursorGrabbed
lua_lib.Window_setMouseCursor = lua_lib.sfWindow_setMouseCursor
lua_lib.Window_setKeyRepeatEnabled = lua_lib.sfWindow_setKeyRepeatEnabled
lua_lib.Window_setFramerateLimit = lua_lib.sfWindow_setFramerateLimit
lua_lib.Window_setJoystickThreshold = lua_lib.sfWindow_setJoystickThreshold
lua_lib.Window_setActive = lua_lib.sfWindow_setActive
lua_lib.Window_requestFocus = lua_lib.sfWindow_requestFocus
lua_lib.Window_hasFocus = lua_lib.sfWindow_hasFocus
lua_lib.Window_display = lua_lib.sfWindow_display
lua_lib.Window_getSystemHandle = lua_lib.sfWindow_getSystemHandle
lua_lib.Context_create = lua_lib.sfContext_create
lua_lib.Context_destroy = lua_lib.sfContext_destroy
lua_lib.Context_setActive = lua_lib.sfContext_setActive
lua_lib.Context_getSettings = lua_lib.sfContext_getSettings
lua_lib.Context_getActiveContextId = lua_lib.sfContext_getActiveContextId
lua_lib.Cursor_createFromPixels = lua_lib.sfCursor_createFromPixels
lua_lib.Cursor_createFromSystem = lua_lib.sfCursor_createFromSystem
lua_lib.Cursor_destroy = lua_lib.sfCursor_destroy
lua_lib.Touch_isDown = lua_lib.sfTouch_isDown
lua_lib.Touch_getPosition = lua_lib.sfTouch_getPosition
return lua_lib

