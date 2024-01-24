
------ example artifact.lua
---- Adds a new artifact which makes all actors fall more slowly and jump higher

-- Creates a new artifact with the name Artifact of Antigrav
local artifact = Artifact.new("X100")
-- Make the artifact be unlocked by default
artifact.unlocked = true

-- Set the artifact's loadout info
artifact.loadoutSprite = Sprite.load("x100.png", 2, 18, 18)
artifact.loadoutText = "Multiplies all item pickups by 100 times."


registercallback("onActorInit", function(actor)
	if artifact.active then
		local grav = actor:get("pGravity1")
		-- Check if the variable exists
		if grav ~= nil then
			-- Set the new gravity
			actor:set("pGravity1", grav * 0.5)
			-- Falling speed while holding jump
			actor:set("pGravity2", grav * 0.4)
		end
	end
end)