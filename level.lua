local P = {}
local fileName = ...
_G[fileName] = P

-- Import everything I need
local love = love
local Camera = require 'lib/hump.camera'
local math = math

setfenv(1, P)


function load(arg)
  x, y, timeElapsed = 0, 0, 0
  camera = Camera(0, 0)
end

function update(dt)
  timeElapsed = timeElapsed + dt
  x = math.cos(timeElapsed) * 100
  y = math.sin(timeElapsed) * 100
  camera:lookAt(x, y)
end

function draw(dt)
  camera:attach()
  love.graphics.rectangle('fill', 0, 0, 64, 64)
  camera:attach()
end