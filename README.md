# CSFML LuaJIT FFI
[LuaJIT](https://luajit.org/) [FFI](https://luajit.org/ext_ffi.html) bindings for [CSFML](https://github.com/SFML/CSFML).

The bindings were automatically generated using [inclua](https://github.com/gilzoide/inclua)
and provide metatypes with `__gc` metamethods and other methods for struct and union types.

Beware of structs that have `sfBool`, like `sfKeyEvent`, because `sfBool` is
defined as `int` and numbers in Lua are truthy, including `0`. Assigning to them,
as well as passing booleans as function arguments don't have this issue, as
LuaJIT will convert them appropriately.
Function return types are automatically patched by the generator script.

Currently, these bindings target [CSFML 2.5](https://github.com/SFML/CSFML/tree/2.5),
but can be easily regenerated for other versions using [generate.sh](#generating-bindings).

## Usage
Each of the generated files represent a single module and are not aware about
CSFML modules' interdependencies.

Thus, `csfml-system` lua module must be `require`d before any of the other ones
and `csfml-window` must be `require`d before `csfml-graphics`.

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
while window:isOpen() do
    while window:pollEvent(event) do
        if event.type == sf.window.sfEvtClosed then
            window:close()
        end
    end

    window:clear(sf.graphics.Black)
    window:display()
end
```


## Generating bindings
First, edit [generate.sh](generate.sh) with your clang installation include
path if needed, as this is necessary for correctly reading `size_t` usages.
Then install [inclua](https://pypi.org/project/inclua/) and run `generate.sh`.


## TODO
- Add more example files
- Upload to LuaRocks
- Patch `sfBool` struct fields? Maybe proxy tables?
