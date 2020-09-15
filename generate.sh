#!/bin/sh

clang_headers='-I /usr/lib/clang/*/include'
generate_module() {
  module=$1
  patterns=$2
  # sed is used here to patch sfBool function return values directly with booleans on LuaJIT
  inclua headers/$module.h $patterns -m csfml-$module -n sf -g -- $clang_headers | sed 's/^sfBool/bool/gm' > csfml-$module.lua
}

generate_module audio '-p SFML/Audio'
generate_module graphics '-p SFML/Graphics'
generate_module network '-p SFML/Network'
generate_module system '-p SFML/System -p SFML/Config'
generate_module window '-p SFML/Window'
