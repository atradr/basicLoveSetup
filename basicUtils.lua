local P = {}
local fileName = ...
_G[fileName] = P

setfenv(1, P)

function makeRectangle(x, y, width, height)
  return {x=x, y=y, w=width, h=height}
end

function rectanglesOverlap(x1, y1, w1, h1, x2, y2, w2, h2)
  return  x1 < x2 + w2 and
          x2 < x1 + w1 and
          y1 < y2 + h2 and
          y2 < y1 + h1
end

function pointInRectangle(x1, y1, x2, y2, w2, h2)
	return x1 > x2 and
			x1 < x2 + w2 and
			y1 > y2 and
			y1 < y2 + h2
end
