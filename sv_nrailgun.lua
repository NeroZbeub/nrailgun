TriggerEvent('es:addGroupCommand', 'railgun', 'admin', function(source, args)
    TriggerClientEvent('nrailgun:railgun', source)
end, function(source, args)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = "Donne/Retire railgun"})
