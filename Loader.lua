local AllowedGames = {
    [18794863104] = true,
}

if not AllowedGames[game.PlaceId] then
    return warn("Unsupported game.")
end

loadstring(game:HttpGet("https://script.ugirecode.workers.dev/demonology"))()
