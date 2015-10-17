player = {
  x = 20,
  y = 20
}

SPEED = 300

function love.update(dt)
  if love.keyboard.isDown("right") then
    player.x = player.x + SPEED*dt
  end
  if love.keyboard.isDown("left") then
    player.x = player.x - SPEED*dt
  end
  if love.keyboard.isDown("down") then
    player.y = player.y + SPEED*dt
  end
  if love.keyboard.isDown("up") then
    player.y = player.y - SPEED*dt
  end
end

function love.draw()
  love.graphics.setColor(80, 80, 80)
  love.graphics.rectangle("fill", player.x, player.y, 100, 20)
  love.graphics.setColor(200, 200, 200)
  love.graphics.line(player.x+20, player.y+10, player.x+100, player.y+10)
end
