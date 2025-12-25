lib.addCommand(Config.Command, {
	help = Config.CommandHelp,
	params = Config.CommandParams,
	restricted = Config.Restricted,
}, function(source, args)
	local target = tonumber(args.playerId)
    local source = tonumber(source)

	if not GetPlayerName(target) then
		return lib.notify(source, { type = 'error', description = Config.Locale['player_not_online'] })
	end

    if source == target then
        return lib.notify(source, { type = 'error', description = Config.Locale['cannot_see_self'] })
    end

	exports.ox_inventory:forceOpenInventory(source, 'player', target)
end)