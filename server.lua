ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


local command = "/repair"


AddEventHandler('chatMessage', function(source, n, msg)
	local msg = string.lower(msg)
	if msg == command then
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local xPlayers = ESX.GetPlayers()
  
	  local mecano = 0
	    for i=1, #xPlayers, 1 do
	      local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
	      if xPlayer.job.name == 'mecano' then
	        mecano = mecano + 1
	      end
	    end
	    if mecano <= 0 then
		CancelEvent()
		TriggerClientEvent('thaisen:repair', source)
		else
		TriggerClientEvent('thaisenrepair:besked',_source)
	end
	end
end)