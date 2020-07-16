-- require "strict"
require "util"

function love.load()
    setMode(0, 0, {fullscreen=true})
	whale = newImage("whale.png")
	sound = newSource("whale.ogg", "stream")
	play(sound)
	print(sin(pi/6))
end

function love.draw()
    setColor(1, 0, 0)
	circle("fill", 300, 300, 200)
    setColor(1, 1, 1)
	draw(whale, -40, -50)
	gprint("Hello Whaled!", 400, 300)
end
