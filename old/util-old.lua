function use(module, ...)
    local target = _G
	local args = {...}
	if #args == 0 then
        for k,v in pairs(module) do
		    if target[k] then
			    io.stderr:write("use: skipping duplicate symbol ", k, "\n")
			else
                target[k] = module[k]
			end
		end
	else
	    for i,k in ipairs(args) do
		    if target[k] then
			    io.stderr:write("use: importing duplicate symbol ", k, "\n")
			end
            target[k] = module[k]
		end
	end
end

io.stdout:setvbuf("no")

use(math)
use(love.graphics)
gprint = love.graphics.print
use(love.audio)