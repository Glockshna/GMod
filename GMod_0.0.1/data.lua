--// Config Options \\--

bIncludeInserters = true 				--Include the additional Inserters
bIncludePlayerResearch = false 			--Include additional Player Crafting Speed researches
bIncludeUndergroundTransports = false 	--Include longer variations of the Underground Transport Belts and Underground Pipes
bIncludeUpgradedBelts = false 			--Include faster variants of Transport Belts

--// End Config Options \\--
--\\ Do Not Edit Below  //--

if bIncludeInserters == true then
	require("prototypes.technologies.inserters")
	require("prototypes.inserters")
end

if bIncludePlayerResearch == true then
	require("prototypes.technologies.player")
end

if bIncludeUndergroundTransports == true then
	require("prototypes.technologies.underground-transport")
	require("prototypes.underground-transport")
end

if bIncludeUpgradedBelts == true then
	require("prototypes.technologies.upgraded-belts")
	require("prototypes.upgraded-belts")
end