function use(module, ...)
	for k,v in pairs(module) do
		if _G[k] then
			io.stderr:write("use: skipping duplicate symbol ", k, "\n")
		else
			_G[k] = module[k]
		end
	end
end

io.stdout:setvbuf("no")

use(math)
use(love.window)
use(love.graphics)
gprint = love.graphics.print
use(love.audio)