Entity = {
  x = 0,
  y = 0,
  w = 0,
  h = 0
}

function Entity:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end
