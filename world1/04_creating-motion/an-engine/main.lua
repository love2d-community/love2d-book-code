x, y = 20, 20

function love.update(dt)
  x, y = love.mouse.getPosition()
end

function love.draw()
  love.graphics.setColor(80, 80, 80)
  love.graphics.rectangle("fill", x, y, 100, 20)
  love.graphics.setColor(200, 200, 200)
  love.graphics.line(x+20, y+10, x+100, y+10)
end
