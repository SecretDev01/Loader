if game.PlaceId == 18794863104 then
    loadstring(game:HttpGet("https://script.ugirecode.workers.dev/demonology"))()
elseif game.PlaceId == 11379739543 then
    loadstring(game:HttpGet("https://script.ugirecode.workers.dev/time%20bomb%20duel"))()
elseif game.PlaceId == 142823291 then
    loadstring(game:HttpGet("https://script.ugirecode.workers.dev/murder%20mystery"))()
elseif game.PlaceId == 93044798454681 or game.PlaceId == 125810438250765 then
    loadstring(game:HttpGet("https://script.ugirecode.workers.dev/deadly%20delivery"))()
else
    warn("Unsupported game: " .. game.PlaceId)
end
