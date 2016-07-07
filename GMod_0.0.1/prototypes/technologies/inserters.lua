data:extend(
{
	--Very Fast Inserter
	{
		type = "technology",
		name = "gm-very-fast-inserter",
		icon = "__GMod__/graphics/technology/very-fast-inserters.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "gm-very-fast-inserter"
			},
			{
				type = "unlock-recipe",
				recipe = "gm-very-fast-filter-inserter"
			},
		},
		prerequisites = {"automation"},
		unit =
		{
			count = 20,
			ingredients = {{"science-pack-1", 1},{"science-pack-2",1}},			
			time = 10
		},
		order = "a-b-a",
	},

	--Motorized Inserters
	{
		type = "technology",
		name = "gm-motorized-inserter",
		icon = "__GMod__/graphics/technology/motorized-inserter.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "gm-motorized-inserter"
			},
			{
				type = "unlock-recipe",
				recipe = "gm-motorized-filter-inserter"
			},
		},
		prerequisites = {"gm-very-fast-inserter","engine"},
		unit =
		{
			count = 20,
			ingredients = {{"science-pack-1", 1},{"science-pack-2",1}},			
			time = 10
		},
		order = "a-b-a",
	},
	
	--Electric Inserter
	
	{
		type = "technology",
		name = "gm-electric-inserter",
		icon = "__GMod__/graphics/technology/electric-inserter.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "gm-electric-inserter"
			},
			{
				type = "unlock-recipe",
				recipe = "gm-electric-filter-inserter"
			},
		},
		prerequisites = {"gm-motorized-inserter","electric-engine"},
		unit =
		{
			count = 20,
			ingredients = {{"science-pack-1", 1},{"science-pack-2",1}},			
			time = 10
		},
		order = "a-b-a",
	},
--]]
})