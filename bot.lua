local discordia = require('discordia')
local client = discordia.Client()
local dslash = require("discordia-slash")
-- required to initialize:
local CLIENT = discordia.Client():useApplicationCommands()
local fs = require('fs')
local json = require('json')

local config = json.decode(fs.readFileSync('config.json'))


client:on('ready', function()
	-- client.user is the path for your bot
	print('Logged in as '.. client.user.username)
end)

CLIENT:on("messageCommand", function(ia, cmd, msg)
	CommandConstructor = CommandConstructor:setName(name)
	CommandConstructor = CommandConstructor:setDescription(description)
end)



client:on('messageCreate', function(message)
	if message.content == '!ping' then
		
		message.channel:send('Latency is' .. os.Time() - message.createdAt )
	end
end)




client:run(config.token)