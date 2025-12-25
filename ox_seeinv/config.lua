Config = {}

Config.Command = 'seeinv'
Config.CommandHelp = 'See the target inventory'
Config.CommandParams = {
    { name = 'playerId', help = 'The player ID to see inventory from' },
}
Config.Restricted = 'group.admin'

Config.Locale = {
    ['player_not_online'] = 'Hráč s tímto ID není online.',
    ['cannot_see_self'] = 'Nemůžete si vidět svůj inventář.',
}
