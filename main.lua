require("garmonicalWave")

function love.load()
    width = love.graphics.getWidth()
    height = love.graphics.getHeight()

    garmonicalW1 = GarmonicalWave:create(15, 0.01, 20, 5, 20, 200, 300, 150)
    garmonicalW2 = GarmonicalWave:create(30, 0.01, 5, 1, 250, 750, 200, 900)
    garmonicalW3 = GarmonicalWave:create(17, 0.01, 5, 12, 180, 480, 700, 450)

end

function love.draw()
    garmonicalW1:draw()
    garmonicalW2:draw()
    garmonicalW3:draw()
end

function update(dt)
    
end