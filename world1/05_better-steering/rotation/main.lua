player = {
  x = 150,
  y = 150,
  xvel = 0,
  yvel = 0,
  rotation = 0
}

local ANGACCEL      = 4
local ACCELERATION  = 20

function love.update(dt)
  if love.keyboard.isDown"right" then
    -- rotate clockwise
    player.rotation = player.rotation + ANGACCEL*dt
  end
  if love.keyboard.isDown"left" then
    -- rotate counter-clockwise
    player.rotation = player.rotation - ANGACCEL*dt
  end
  if love.keyboard.isDown"down" then
    -- decelerate / accelerate backwards
    -- (left out for now)
  end
  if love.keyboard.isDown"up" then
    -- accelerate
    -- (left out for now)
  end
end

function love.draw()
  love.graphics.setColor(80, 80, 80)
  love.graphics.translate(player.x, player.y)
  love.graphics.rotate(player.rotation)
  love.graphics.rectangle("fill", -50, -10, 100, 20)
  love.graphics.setColor(200, 200, 200)
  love.graphics.line(20, 0, 50, 0)
end
