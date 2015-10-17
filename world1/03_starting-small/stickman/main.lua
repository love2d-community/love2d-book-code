function love.draw()
  love.graphics.setColor(255, 255, 255)           -- white
  love.graphics.line(40, 90, 35, 120)             -- left foot
  love.graphics.line(60, 90, 65, 120)             -- right foot

  love.graphics.setColor(0, 255, 0)               -- green
  love.graphics.rectangle("fill", 30, 30, 40, 60) -- body

  love.graphics.setColor(255, 0, 0)               -- red
  love.graphics.circle("fill", 50, 20, 15)        -- head
end
