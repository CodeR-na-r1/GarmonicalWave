GarmonicalWave = {}
GarmonicalWave.__index = GarmonicalWave

function GarmonicalWave:create(A, vel, angle, step, x_min, x_max, width, height)

    local garmonicalWave = {}
    setmetatable(garmonicalWave, GarmonicalWave)

    garmonicalWave.A = A
    garmonicalWave.vel = vel
    garmonicalWave.angle = angle
    garmonicalWave.step = step

    garmonicalWave.x_min = x_min
    garmonicalWave.x_max = x_max

    garmonicalWave.width = width
    garmonicalWave.height = height

    return garmonicalWave
end

function GarmonicalWave:draw(steps)

    for x = self.x_min, self.x_max, self.step do

        local y = self.A * math.sin((self.angle + x / 150) * 4)
        y = y + self.A * math.sin((self.angle + x / 240) * 7)

        r, g, b, a = love.graphics.getColor()

        love.graphics.setColor(1, 1, 1)
        love.graphics.circle("line", x, y+self.height /2, 10)

        love.graphics.setColor(x/255, x/self.width, self.width/x, 0.5)
        love.graphics.circle("fill", x, y+self.height /2, 10)

        love.graphics.setColor(r, g, b, a)
    end

    self.angle = self.angle + self.vel
end