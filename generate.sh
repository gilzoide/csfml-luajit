#!/bin/sh

clang_headers='-I /usr/lib/clang/*/include'
inclua headers/system.h   -p SFML/System -p SFML/Config -m csfml-system   -n sf -tg -- $clang_headers > csfml-system.lua
inclua headers/audio.h    -p SFML/Audio                 -m csfml-audio    -n sf -tg -- $clang_headers > csfml-audio.lua
inclua headers/graphics.h -p SFML/Graphics              -m csfml-graphics -n sf -tg -- $clang_headers > csfml-graphics.lua
inclua headers/window.h   -p SFML/Window                -m csfml-window   -n sf -tg -- $clang_headers > csfml-window.lua
inclua headers/network.h  -p SFML/Network               -m csfml-network  -n sf -tg -- $clang_headers > csfml-network.lua
