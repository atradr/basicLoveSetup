function love.load(arg)
    require "level"

    current_level = level

    current_level.load()
end

function love.update(dt)
    current_level.update(dt)
end

function love.draw(dt)
    current_level.draw(dt)
end

function switch_level(level)
    current_level = level
    level.load()
end

function love.mousepressed(x, y, button, istouch)
    -- In case the level doesn't need a mousepressed function
    if current_level.mousepressed ~= nil then
        current_level.mousepressed(x, y, button, istouch)
    end
end

function love.keypressed(key, scancode, isrepeat)
    -- In case the level doesn't need a keypressed function
    if current_level.keypressed ~= nil then
        current_level.keypressed(key, scancode, isrepeat)
    end
end
