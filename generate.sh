#!/bin/sh

inclua headers/system.h   -p SFML/System -p SFML/Config -m csfml-system   -n sf -tg > csfml-system.lua
inclua headers/audio.h    -p SFML/Audio                 -m csfml-audio    -n sf -tg > csfml-audio.lua
inclua headers/graphics.h -p SFML/Graphics              -m csfml-graphics -n sf -tg > csfml-graphics.lua
inclua headers/window.h   -p SFML/Window                -m csfml-window   -n sf -tg > csfml-window.lua
inclua headers/network.h  -p SFML/Network               -m csfml-network  -n sf -tg > csfml-network.lua
