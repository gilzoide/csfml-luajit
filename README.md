# CSFML LuaJIT FFI
LuaJIT FFI bindings for [CSFML](https://github.com/SFML/CSFML).

The bindings were automatically generated using [inclua](https://github.com/gilzoide/inclua)
and provide metatypes with `__gc` metamethods and other methods for struct and union types.

Currently, these bindings target [CSFML 2.5](https://github.com/SFML/CSFML/tree/2.5),
but could be easily regenerated for other versions using [generate.sh](generate.sh).

## Usage
Each of the generated files represent a single module and are not aware about
CSFML modules interdependencies.

The `csfml-system` lua module must be `require`d before any of the other ones.
In the same line, `csfml-window` must be `require`d before `csfml-graphics`.

**Example:**

```lua
local sf = {
    system = require 'csfml-system',
    window = require 'csfml-window',
    graphics = require 'csfml-graphics',
}

local window = sf.graphics.RenderWindow_create(
    sf.window.VideoMode(800, 600, 32),
    'title',
    sf.window.sfDefaultStyle,
    nil
)
window:setVerticalSyncEnabled(true)

local event = sf.window.Event()
while window:isOpen() ~= 0 do
    while window:pollEvent(event) ~= 0 do
        if event.type == sf.window.sfEvtClosed then
            window:close()
        end
    end

    window:clear(sf.graphics.Black)
    window:display()
end
```


## Generating the bindings
The script [generate.sh](generate.sh) calls `inclua` with the appropriate flags
and should be easy to modify.

