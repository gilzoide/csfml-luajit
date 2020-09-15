-- Open a closable window and paint it black
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

