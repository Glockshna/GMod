----// Config Options \\--

bIncludeInserters = true 				--Include the additional Inserters
bIncludePlayerResearch = false 			--Include additional Player Crafting Speed research || NOT IMPLEMENTED
bIncludeUndergroundTransports = false 	--Include longer variations of the Underground Transport Belts and Underground Pipes || NOT IMPLEMENTED
bIncludeUpgradedBelts = false 			--Include faster variants of Transport Belts || NOT IMPLEMENTED
bIncludeRobots = false					--Include upgraded robot and roboport tiers || NOT IMPLEMENTED
bIncludeRobotResearch = false			--Include additional robot speed and carryweight researches || NOT IMPLEMENTED

--// End Config Options \\--
--\\ Do Not Edit Below  //--

if bIncludeInserters == true then
	require("prototypes.technologies.inserters")
	require("prototypes.inserter-groups")
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

if bIncludeRobots == true then
	require("prototypes.technologies.robot-tiers")
	require("prototypes.robots")
end

if bIncludeRobotResearch == true then
	require("prototypes.technologies.robot-upgrades")
end