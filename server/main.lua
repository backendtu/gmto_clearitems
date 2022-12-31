local config = require('config')

RegisterCommand(config.command_name, function(source, args, rawCommand)
  local players = GetPlayers()

  for _, player in pairs(players) do
    TriggerClientEvent('ox_inventory:removeItem', player, 'weapon_pistol')
    TriggerClientEvent('ox_inventory:removeItem', player, 'ammo-9')
  end
end)