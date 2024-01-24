
------ example artifact.lua
---- Adds a new artifact which makes all actors fall more slowly and jump higher

-- Creates a new artifact with the name Artifact of Antigrav
local artifact = Artifact.new("X100")
-- Make the artifact be unlocked by default
artifact.unlocked = true

-- Set the artifact's loadout info
artifact.loadoutSprite = Sprite.load("x100.png", 2, 18, 18)
artifact.loadoutText = "Multiplies all item pickups by 100 times."

callback("onItemPickup", function(player)
    if artifact.active then
        misc.shakeScreen(20) 
        player.giveItem(infusion, 69)
    else
        player:kill()
    end
end)