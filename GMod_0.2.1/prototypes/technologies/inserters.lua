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
			{
				type = "unlock-recipe",
				recipe = "gm-very-fast-long-inserter"
			},
			{
				type = "unlock-recipe",
				recipe = "gm-very-fast-inserter-left"
			},
			{
				type = "unlock-recipe",
				recipe = "gm-very-fast-inserter-right"
			},

			{
				type = "unlock-recipe",
				recipe = "gm-very-fast-inserter-left-filter"
			},
			{
				type = "unlock-recipe",
				recipe = "gm-very-fast-inserter-right-filter"
			},
						{
				type = "unlock-recipe",
				recipe = "gm-very-fast-extra-long-inserter"
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
			{
				type = "unlock-recipe",
				recipe = "gm-motorized-long-inserter"
			},
			{
				type = "unlock-recipe",
				recipe = "gm-motorized-inserter-left"
			},
			{
				type = "unlock-recipe",
				recipe = "gm-motorized-inserter-right"
			},
			{
				type = "unlock-recipe",
				recipe = "gm-motorized-inserter-left-filter"
			},
			{
				type = "unlock-recipe",
				recipe = "gm-motorized-inserter-right-filter"
			},
			{
				type = "unlock-recipe",
				recipe = "gm-motorized-extra-long-inserter"
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
			{
				type = "unlock-recipe",
				recipe = "gm-electric-long-inserter"
			},
			{
				type = "unlock-recipe",
				recipe = "gm-electric-inserter-left"
			},
			{
				type = "unlock-recipe",
				recipe = "gm-electric-inserter-right"
			},
			{
				type = "unlock-recipe",
				recipe = "gm-electric-inserter-left-filter"
			},
			{
				type = "unlock-recipe",
				recipe = "gm-electric-inserter-right-filter"
			},
			{
				type = "unlock-recipe",
				recipe = "gm-electric-extra-long-inserter"
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

})