local discordia = require('discordia')
local client = discordia.Client()
local fs = require('fs');
local json = require('json');
local config = json.decode(fs.readFileSync('config.json'))
-- h

client:on("ready", function()
	print(h)
end)


client:on('messageCreate', function(message)
	if message.content == '!ping' then

		message.channel:send('Latency is' ) 
		
	end
end)


client:run(config.token)