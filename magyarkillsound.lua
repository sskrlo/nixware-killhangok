local phrases = {
    "firstblood.vsnd_c",
    "doublekill.vsnd_c",
    "triplekill.vsnd_c",
    "multikill.vsnd_c",
    "monsterkill.vsnd_c",
    "megakill.vsnd_c",
    "ultrakill.vsnd_c",
    "unstoppable.vsnd_c",
    "rampage.vsnd_c",
    "lastplace.vsnd_c",
    "killingspree.vsnd_c",
    "headshot.vsnd_c",
    "dominating.vsnd_c",
    "godlike.vsnd_c"
}

local counter = 0
register_callback("player_death", function(event)
    if event:get_pawn("attacker") == entitylist.get_local_player_pawn() then
        engine.execute_client_cmd("play \\sounds\\" .. phrases[counter % #phrases + 1])
        counter = counter + 1
    end
end)