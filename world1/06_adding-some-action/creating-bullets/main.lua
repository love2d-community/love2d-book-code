player = {
  x = 150,
  y = 150,
  xvel = 0,
  yvel = 0,
  rotation = 0
}

bullets = {}

-- Function to create bullets
function shot()
  table.insert(bullets, {x = player.x, y = player.y, speed = 1000, rotation = player.rotation})
end

local ANGACCEL      = 4
local ACCELERATION  = 400

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
    player.xvel = player.xvel - ACCELERATION*dt * math.cos(player.rotation)
    player.yvel = player.yvel - ACCELERATION*dt * math.sin(player.rotation)
  end
  if love.keyboard.isDown"up" then
    -- accelerate
    player.xvel = player.xvel + ACCELERATION*dt * math.cos(player.rotation)
    player.yvel = player.yvel + ACCELERATION*dt * math.sin(player.rotation)
  end

  if love.keyboard.isDown" " then
    shot()
  end

  player.x = player.x + player.xvel*dt
  player.y = player.y + player.yvel*dt

  -- Update all bullets
  for _, bullet in ipairs(bullets) do
    bullet.x = bullet.x + math.cos(bullet.rotation) * bullet.speed * dt
    bullet.y = bullet.y + math.sin(bullet.rotation) * bullet.speed * dt
  end

  -- for dragging
  player.xvel = player.xvel * 0.99
  player.yvel = player.yvel * 0.99

end

function love.draw()
    -- Draw all bullets
  for _, bullet in ipairs(bullets) do
    love.graphics.setColor(255,255,255)
    love.graphics.circle("fill", bullet.x, bullet.y, 2)
  end

  love.graphics.print("Qtde. de tiros: " .. #bullets, 10, 10)

  love.graphics.setColor(80, 80, 80)
  love.graphics.translate(player.x, player.y)
  love.graphics.rotate(player.rotation)
  love.graphics.rectangle("fill", -50, -10, 100, 20)
  love.graphics.setColor(200, 200, 200)
  love.graphics.line(20, 0, 50, 0)

end
