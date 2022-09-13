local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
	-- client.user is the path for your bot
	print('Logged in as '.. client.user.username)
end)

client:run('Bot')