squares = {1, 4, 9, 16, 25, 36, 49, 64, 81}
-- for i in ipairs(squares) do
for i=1,#squares do
	print("Hello world!", i, squares[i])
	if i % 2 == 0 then
		print(i, "is even")
	else
		print(i, "is odd")
	end
end

-- io.write("what is your name? ")
-- name = io.read()
-- print("Hello, "..name.."!")

function love.draw()
    love.graphics.setColor(0.5, 0, 1)
	love.graphics.circle("fill", 200, 200, 100)
end