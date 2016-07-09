
--[[//Inserter Speed Ratios \\--

Rotation
Normal -> Long = 37.5% Rotation Speed
Normal -> Side = 45.5% Rotation Speed


--]]
--// Paths \\--

spritePath		= 	"__GMod__/graphics/entity/inserters"
iconPath 			= 	"__GMod__/graphics/icons"

--//Inserter Sprite Definitions \\--


platformSlow 		= 	spritePath .. "/platforms/platform-slow.png" 		--Gray
platformNormal 		= 	spritePath .. "/platforms/platform-normal.png" 		--Yellow
platformFast 		= 	spritePath .. "/platforms/platform-fast.png" 		--Blue
platformVeryFast 	= 	spritePath .. "/platforms/platform-veryfast.png" 	--Green
platformMotorized 	= 	spritePath .. "/platforms/platform-motorized.png" 	--Orange
platformElectric 	= 	spritePath .. "/platforms/platform-electric.png" 	--Red

handBaseSlow 		= 	spritePath .. "/arms/hand-base-slow.png" 			--Gray
handBaseNormal 		= 	spritePath .. "/arms/hand-base-normal.png" 			--Yellow
handBaseFast 		= 	spritePath .. "/arms/hand-base-fast.png" 			--Blue
handBaseVeryFast 	= 	spritePath .. "/arms/hand-base-veryfast.png" 		--Green
handBaseMotorized 	= 	spritePath .. "/arms/hand-base-motorized.png" 		--Orange
handBaseElectric 	= 	spritePath .. "/arms/hand-base-electric.png" 		--Red

handOpenNormal 		= 	spritePath .. "/arms/hand-open-normal.png"			--Yellow
handOpenLong 		= 	spritePath .. "/arms/hand-open-long.png"				--Red
handOpenVeryLong 	= 	spritePath .. "/arms/hand-open-verylong.png"			--Orange
handOpenFilter 		= 	spritePath .. "/arms/hand-open-filter.png"			--Purple
handOpenStack		=	spritePath .. "/arms/hand-open-stack.png"			--White

handClosedNormal	=	spritePath .. "/arms/hand-closed-normal.png"			--Yellow
handClosedLong		=	spritePath .. "/arms/hand-closed-long.png"			--Red
handClosedVeryLong	=	spritePath .. "/arms/hand-closed-extralong.png"		--Orange
handClosedFilter	=	spritePath .. "/arms/hand-closed-filter.png"			--Purple
handClosedStack		=	spritePath .. "/arms/hand-closed-stack.png"			--White

--\\   End Sprite Definitions   //--



data:extend(
{	--Very Fast Inserters
	
	{
		type = "item",
		name = "gm-very-fast-inserter",
		icon = iconPath .. "/standard-veryfast.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-standard-inserters",
		order = "a",
		place_result = "gm-very-fast-inserter",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-very-fast-inserter",
		icon = iconPath .. "/standard-veryfast.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable =
		{
			hardness = 0.2,
			mining_time = 0.5,
			result = "gm-very-fast-inserter"
		},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {0, 1.2},
		energy_per_movement = 7000,
		energy_per_rotation = 7000,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.5kW"
		},
		extension_speed = 0.14,
		rotation_speed = 0.08,
		fast_replaceable_group = "inserter",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = handBaseVeryFast,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedNormal,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenNormal,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet =
			{
				filename = platformVeryFast,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},
		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},	
	{
		type = "recipe",
		name = "gm-very-fast-inserter",
		enabled = false,
		ingredients =
		{
			{"electronic-circuit", 2},
			{"iron-gear-wheel", 5},
			{"fast-inserter", 1}
		},
		result = "gm-very-fast-inserter",
		requester_paste_multiplier = 4
	},	
		
	--Left
		{
		type = "item",
		name = "gm-very-fast-inserter-left",
		icon = iconPath .. "/standard-left-veryfast.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-left-inserters",
		order = "a",
		place_result = "gm-very-fast-inserter-left",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-very-fast-inserter-left",
		icon = iconPath .. "/standard-left-veryfast.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable =
		{
			hardness = 0.2,
			mining_time = 0.5,
			result = "gm-very-fast-inserter-left"
		},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {1.2, 0},
		energy_per_movement = 7000,
		energy_per_rotation = 7000,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.5kW"
		},
		extension_speed = 0.14,
		rotation_speed = 0.0364,
		fast_replaceable_group = "inserter",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = handBaseVeryFast,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedNormal,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenNormal,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet =
			{
				filename = platformVeryFast,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},
		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},	
	{
		type = "recipe",
		name = "gm-very-fast-inserter-left",
		enabled = false,
		ingredients =
		{
			{"electronic-circuit", 2},
			{"iron-gear-wheel", 5},
			{"fast-inserter", 1}
		},
		result = "gm-very-fast-inserter-left",
		requester_paste_multiplier = 4
	},
	--Left Filter
	{
		type = "item",
		name = "gm-very-fast-inserter-left-filter",
		icon = iconPath .. "/filter-left-veryfast.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-left-inserters",
		order = "a",
		place_result = "gm-very-fast-inserter-left-filter",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-very-fast-inserter-left-filter",
		icon = iconPath .. "/filter-left-veryfast.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable =
		{
			hardness = 0.2,
			mining_time = 0.5,
			result = "gm-very-fast-inserter-left-filter"
		},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {1.2, 0},
		energy_per_movement = 7000,
		energy_per_rotation = 7000,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.5kW"
		},
		extension_speed = 0.14,
		rotation_speed = 0.0364,
		fast_replaceable_group = "inserter",
		filter_count = 5,
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = handBaseVeryFast,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedFilter,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenFilter,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet =
			{
				filename = platformVeryFast,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},
		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},	

	{
		type = "recipe",
		name = "gm-very-fast-inserter-left-filter",
		enabled = false,
		ingredients =
		{
			{"electronic-circuit", 2},
			{"iron-gear-wheel", 5},
			{"fast-inserter", 1}
		},
		result = "gm-very-fast-inserter-left-filter",
		requester_paste_multiplier = 4
	},

	--Right
	{
		type = "item",
		name = "gm-very-fast-inserter-right",
		icon = iconPath .. "/standard-right-veryfast.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-right-inserters",
		order = "a",
		place_result = "gm-very-fast-inserter-right",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-very-fast-inserter-right",
		icon = iconPath .. "/standard-right-veryfast.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable =
		{
			hardness = 0.2,
			mining_time = 0.5,
			result = "gm-very-fast-inserter-right"
		},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {-1.2, 0},
		energy_per_movement = 7000,
		energy_per_rotation = 7000,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.5kW"
		},
		extension_speed = 0.14,
		rotation_speed = 0.0364,
		fast_replaceable_group = "inserter",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = handBaseVeryFast,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedNormal,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenNormal,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet =
			{
				filename = platformVeryFast,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},
		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},	
	{
		type = "recipe",
		name = "gm-very-fast-inserter-right",
		enabled = false,
		ingredients =
		{
			{"electronic-circuit", 2},
			{"iron-gear-wheel", 5},
			{"fast-inserter", 1}
		},
		result = "gm-very-fast-inserter-right",
		requester_paste_multiplier = 4
	},	
	--Filter Right
	{
		type = "item",
		name = "gm-very-fast-inserter-right-filter",
		icon = iconPath .. "/filter-veryfast.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-filter-inserters",
		order = "a",
		place_result = "gm-very-fast-inserter-right-filter",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-very-fast-inserter-right-filter",
		icon = iconPath .. "/filter-veryfast.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "gm-very-fast-inserter-right-filter"},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {-1.2, 0},
		energy_per_movement = 8000,
		energy_per_rotation = 8000,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.5kW"
		},
		extension_speed = 0.14,
		rotation_speed = 0.0364,
		fast_replaceable_group = "inserter",
		filter_count = 5,
		hand_base_picture =
		{
			filename = handBaseVeryFast,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedFilter,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenFilter,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet=
			{
				filename = platformVeryFast,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},

		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},
	{
		type = "recipe",
		name = "gm-very-fast-inserter-right-filter",
		enabled = false,
		ingredients =
		{
			{"gm-very-fast-inserter", 1},
			{"electronic-circuit", 4}
		},
		result = "gm-very-fast-inserter-right-filter",
		requester_paste_multiplier = 4
	},
	--Filter
	
	{
		type = "item",
		name = "gm-very-fast-filter-inserter",
		icon = iconPath .. "/filter-veryfast.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-filter-inserters",
		order = "a",
		place_result = "gm-very-fast-filter-inserter",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-very-fast-filter-inserter",
		icon = iconPath .. "/filter-veryfast.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "gm-very-fast-filter-inserter"},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {0, 1.2},
		energy_per_movement = 8000,
		energy_per_rotation = 8000,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.5kW"
		},
		extension_speed = 0.14,
		rotation_speed = 0.8,
		fast_replaceable_group = "inserter",
		filter_count = 5,
		hand_base_picture =
		{
			filename = handBaseVeryFast,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedFilter,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenFilter,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet=
			{
				filename = platformVeryFast,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},

		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},
	{
		type = "recipe",
		name = "gm-very-fast-filter-inserter",
		enabled = false,
		ingredients =
		{
			{"gm-very-fast-inserter", 1},
			{"electronic-circuit", 4}
		},
		result = "gm-very-fast-filter-inserter",
		requester_paste_multiplier = 4
	},
	
	--long
	
	{
		type = "item",
		name = "gm-very-fast-long-inserter",
		icon = iconPath .. "/long-veryfast.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-long-inserters",
		order = "a",
		place_result = "gm-very-fast-long-inserter",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-very-fast-long-inserter",
		icon = iconPath .. "/long-veryfast.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "gm-very-fast-long-inserter"},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -2},
		insert_position = {0, 2.2},
		energy_per_movement = 5000,
		energy_per_rotation = 5000,
		rotation_speed = 0.08,
		extension_speed = 0.3,
		hand_size = 1.5,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.4kW"
		},
		fast_replaceable_group = "long-handed-inserter",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-long-handed-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = handBaseVeryFast,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedLong,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenLong,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet =
			{
				filename = platformVeryFast,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},
		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},
	{
		type = "recipe",
		name = "gm-very-fast-long-inserter",
		enabled = false,
		ingredients =
		{
			{"iron-gear-wheel", 2},
			{"iron-plate", 2},
			{"gm-very-fast-inserter", 1}
		},
		result = "gm-very-fast-long-inserter",
		requester_paste_multiplier = 4
	},
})

data:extend(
{ 	--Motorized Inserters
	
	
	{
		type = "item",
		name = "gm-motorized-inserter",
		icon = iconPath .. "/standard-motorized.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-standard-inserters",
		order = "b",
		place_result = "gm-motorized-inserter",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-motorized-inserter",
		icon = iconPath .. "/standard-motorized.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable =
		{
			hardness = 0.2,
			mining_time = 0.5,
			result = "gm-motorized-inserter"
		},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {0, 1.2},
		energy_per_movement = 7000,
		energy_per_rotation = 7000,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.5kW"
		},
		extension_speed = 0.20,
		rotation_speed = 0.12,
		fast_replaceable_group = "inserter",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = handBaseMotorized,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedNormal,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenNormal,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet =
			{
				filename = platformMotorized,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},
		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},	
	{
		type = "recipe",
		name = "gm-motorized-inserter",
		enabled = false,
		ingredients =
		{
			{"electronic-circuit", 2},
			{"iron-gear-wheel", 5},
			{"engine-unit", 1},
			{"gm-very-fast-inserter", 1}
		},
		result = "gm-motorized-inserter",
		requester_paste_multiplier = 4
	},	
	
	--Left
	
	{
		type = "item",
		name = "gm-motorized-inserter-left",
		icon = iconPath .. "/standard-left-motorized.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-left-inserters",
		order = "b",
		place_result = "gm-motorized-inserter-left",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-motorized-inserter-left",
		icon = iconPath .. "/standard-left-motorized.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable =
		{
			hardness = 0.2,
			mining_time = 0.5,
			result = "gm-motorized-inserter-left"
		},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {1.2, 0},
		energy_per_movement = 7000,
		energy_per_rotation = 7000,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.5kW"
		},
		extension_speed = 0.20,
		rotation_speed = 0.054,
		fast_replaceable_group = "inserter",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = handBaseMotorized,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedNormal,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenNormal,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet =
			{
				filename = platformMotorized,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},
		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},	
	{
		type = "recipe",
		name = "gm-motorized-inserter-left",
		enabled = false,
		ingredients =
		{
			{"electronic-circuit", 2},
			{"iron-gear-wheel", 5},
			{"engine-unit", 1},
			{"gm-very-fast-inserter", 1}
		},
		result = "gm-motorized-inserter-left",
		requester_paste_multiplier = 4
	},

	--Left Filter

	{
		type = "item",
		name = "gm-motorized-inserter-left-filter",
		icon = iconPath .. "/filter-left-motorized.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-left-inserters",
		order = "b",
		place_result = "gm-motorized-inserter-left-filter",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-motorized-inserter-left-filter",
		icon = iconPath .. "/filter-left-motorized.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable =
		{
			hardness = 0.2,
			mining_time = 0.5,
			result = "gm-motorized-inserter-left-filter"
		},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {1.2, 0},
		energy_per_movement = 7000,
		energy_per_rotation = 7000,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.5kW"
		},
		extension_speed = 0.20,
		rotation_speed = 0.054,
		fast_replaceable_group = "inserter",
		filter_count = 5,
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = handBaseMotorized,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedFilter,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenFilter,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet =
			{
				filename = platformMotorized,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},
		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},	
	{
		type = "recipe",
		name = "gm-motorized-inserter-left-filter",
		enabled = false,
		ingredients =
		{
			{"electronic-circuit", 2},
			{"iron-gear-wheel", 5},
			{"engine-unit", 1},
			{"gm-very-fast-inserter", 1}
		},
		result = "gm-motorized-inserter-left-filter",
		requester_paste_multiplier = 4
	},	

	--Right

	{
		type = "item",
		name = "gm-motorized-inserter-right",
		icon = iconPath .. "/standard-right-motorized.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-right-inserters",
		order = "b",
		place_result = "gm-motorized-inserter-right",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-motorized-inserter-right",
		icon = iconPath .. "/standard-right-motorized.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable =
		{
			hardness = 0.2,
			mining_time = 0.5,
			result = "gm-motorized-inserter-right"
		},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {-1.2, 0},
		energy_per_movement = 7000,
		energy_per_rotation = 7000,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.5kW"
		},
		extension_speed = 0.20,
		rotation_speed = 0.054,
		fast_replaceable_group = "inserter",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = handBaseMotorized,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedNormal,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenNormal,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet =
			{
				filename = platformMotorized,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},
		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},	
	{
		type = "recipe",
		name = "gm-motorized-inserter-right",
		enabled = false,
		ingredients =
		{
			{"electronic-circuit", 2},
			{"iron-gear-wheel", 5},
			{"engine-unit", 1},
			{"gm-very-fast-inserter", 1}
		},
		result = "gm-motorized-inserter-right",
		requester_paste_multiplier = 4
	},	
	--Right Filter

	{
		type = "item",
		name = "gm-motorized-inserter-right-filter",
		icon = iconPath .. "/filter-right-motorized.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-right-inserters",
		order = "b",
		place_result = "gm-motorized-inserter-right-filter",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-motorized-inserter-right-filter",
		icon = iconPath .. "/filter-right-motorized.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable =
		{
			hardness = 0.2,
			mining_time = 0.5,
			result = "gm-motorized-inserter-right-filter"
		},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {-1.2, 0},
		energy_per_movement = 7000,
		energy_per_rotation = 7000,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.5kW"
		},
		extension_speed = 0.20,
		rotation_speed = 0.054,
		fast_replaceable_group = "inserter",
		filter_count = 5,
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = handBaseMotorized,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedFilter,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenFilter,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet =
			{
				filename = platformMotorized,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},
		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},	
	{
		type = "recipe",
		name = "gm-motorized-inserter-right-filter",
		enabled = false,
		ingredients =
		{
			{"electronic-circuit", 2},
			{"iron-gear-wheel", 5},
			{"engine-unit", 1},
			{"gm-very-fast-inserter", 1}
		},
		result = "gm-motorized-inserter-right-filter",
		requester_paste_multiplier = 4
	},
	--Filter
	
	{
		type = "item",
		name = "gm-motorized-filter-inserter",
		icon = iconPath .. "/filter-motorized.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-filter-inserters",
		order = "b",
		place_result = "gm-motorized-filter-inserter",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-motorized-filter-inserter",
		icon = iconPath .. "/filter-motorized.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "gm-motorized-filter-inserter"},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {0, 1.2},
		energy_per_movement = 8000,
		energy_per_rotation = 8000,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.5kW"
		},
		extension_speed = 0.20,
		rotation_speed = 0.12,
		fast_replaceable_group = "inserter",
		filter_count = 5,
		hand_base_picture =
		{
			filename = handBaseMotorized,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedFilter,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenFilter,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet=
			{
				filename = platformMotorized,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},

		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},
	{
		type = "recipe",
		name = "gm-motorized-filter-inserter",
		enabled = false,
		ingredients =
		{
			{"gm-motorized-inserter", 1},
			{"electronic-circuit", 4}
		},
		result = "gm-motorized-filter-inserter",
		requester_paste_multiplier = 4
	},
	
	--Long
	{
		type = "item",
		name = "gm-motorized-long-inserter",
		icon = iconPath .. "/long-motorized.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-long-inserters",
		order = "b",
		place_result = "gm-motorized-long-inserter",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-motorized-long-inserter",
		icon = iconPath .. "/long-motorized.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "gm-motorized-long-inserter"},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -2},
		insert_position = {0, 2.2},
		energy_per_movement = 5000,
		energy_per_rotation = 5000,
		rotation_speed = 0.114,
		extension_speed = 0.3,
		hand_size = 1.5,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.4kW"
		},
		fast_replaceable_group = "long-handed-inserter",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-long-handed-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = handBaseMotorized,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedLong,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenLong,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet =
			{
				filename = platformMotorized,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},
		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},
	{
		type = "recipe",
		name = "gm-motorized-long-inserter",
		enabled = false,
		ingredients =
		{
			{"iron-gear-wheel", 2},
			{"iron-plate", 2},
			{"gm-motorized-inserter", 1}
		},
		result = "gm-motorized-long-inserter",
		requester_paste_multiplier = 4
	},
})
data:extend(
{	--Electric Inserters
	
	{
		type = "item",
		name = "gm-electric-inserter",
		icon = iconPath .. "/standard-electric.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-standard-inserters",
		order = "c",
		place_result = "gm-electric-inserter",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-electric-inserter",
		icon = iconPath .. "/standard-electric.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable =
		{
			hardness = 0.2,
			mining_time = 0.5,
			result = "gm-electric-inserter"
		},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {0, 1.2},
		energy_per_movement = 7000,
		energy_per_rotation = 7000,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.5kW"
		},
		extension_speed = 0.30,
		rotation_speed = 0.20,
		fast_replaceable_group = "inserter",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = handBaseElectric,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedNormal,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenNormal,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet =
			{
				filename = platformElectric,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},
		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},
	{
		type = "recipe",
		name = "gm-electric-inserter",
		enabled = false,
		ingredients =
		{
			{"advanced-circuit", 1},
			{"iron-gear-wheel", 5},
			{"electric-engine-unit", 1},
			{"gm-very-fast-inserter", 1}
		},
		result = "gm-electric-inserter",
		requester_paste_multiplier = 4
	},
	--Left
	{
		type = "item",
		name = "gm-electric-inserter-left",
		icon = iconPath .. "/standard-left-electric.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-left-inserters",
		order = "c",
		place_result = "gm-electric-inserter-left",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-electric-inserter-left",
		icon = iconPath .. "/standard-left-electric.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable =
		{
			hardness = 0.2,
			mining_time = 0.5,
			result = "gm-electric-inserter-left"
		},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {1.2, 0},
		energy_per_movement = 7000,
		energy_per_rotation = 7000,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.5kW"
		},
		extension_speed = 0.30,
		rotation_speed = 0.09,
		fast_replaceable_group = "inserter",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = handBaseElectric,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedNormal,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenNormal,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet =
			{
				filename = platformElectric,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},
		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},
	{
		type = "recipe",
		name = "gm-electric-inserter-left",
		enabled = false,
		ingredients =
		{
			{"advanced-circuit", 1},
			{"iron-gear-wheel", 5},
			{"electric-engine-unit", 1},
			{"gm-very-fast-inserter", 1}
		},
		result = "gm-electric-inserter-left",
		requester_paste_multiplier = 4
	},
	--Filter Left
		{
		type = "item",
		name = "gm-electric-inserter-left-filter",
		icon = iconPath .. "/filter-left-electric.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-left-inserters",
		order = "c",
		place_result = "gm-electric-inserter-left-filter",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-electric-inserter-left-filter",
		icon = iconPath .. "/filter-left-electric.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable =
		{
			hardness = 0.2,
			mining_time = 0.5,
			result = "gm-electric-inserter-left-filter"
		},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {1.2, 0},
		energy_per_movement = 7000,
		energy_per_rotation = 7000,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.5kW"
		},
		extension_speed = 0.30,
		rotation_speed = 0.09,
		fast_replaceable_group = "inserter",
		filter_count = 5,
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = handBaseElectric,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedFilter,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenFilter,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet =
			{
				filename = platformElectric,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},
		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},
	{
		type = "recipe",
		name = "gm-electric-inserter-left-filter",
		enabled = false,
		ingredients =
		{
			{"advanced-circuit", 1},
			{"iron-gear-wheel", 5},
			{"electric-engine-unit", 1},
			{"gm-very-fast-inserter", 1}
		},
		result = "gm-electric-inserter-left-filter",
		requester_paste_multiplier = 4
	},
	--Right
	{
		type = "item",
		name = "gm-electric-inserter-right",
		icon = iconPath .. "/standard-right-electric.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-right-inserters",
		order = "c",
		place_result = "gm-electric-inserter-right",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-electric-inserter-right",
		icon = iconPath .. "/standard-right-electric.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable =
		{
			hardness = 0.2,
			mining_time = 0.5,
			result = "gm-electric-inserter-right"
		},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {-1.2, 0},
		energy_per_movement = 7000,
		energy_per_rotation = 7000,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.5kW"
		},
		extension_speed = 0.30,
		rotation_speed = 0.09,
		fast_replaceable_group = "inserter",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = handBaseElectric,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedNormal,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenNormal,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet =
			{
				filename = platformElectric,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},
		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},
	{
		type = "recipe",
		name = "gm-electric-inserter-right",
		enabled = false,
		ingredients =
		{
			{"advanced-circuit", 1},
			{"iron-gear-wheel", 5},
			{"electric-engine-unit", 1},
			{"gm-very-fast-inserter", 1}
		},
		result = "gm-electric-inserter-right",
		requester_paste_multiplier = 4
	},
	--Filter Right
	{
		type = "item",
		name = "gm-electric-inserter-right-filter",
		icon = iconPath .. "/filter-right-electric.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-right-inserters",
		order = "c",
		place_result = "gm-electric-inserter-right-filter",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-electric-inserter-right-filter",
		icon = iconPath .. "/filter-right-electric.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable =
		{
			hardness = 0.2,
			mining_time = 0.5,
			result = "gm-electric-inserter-right-filter"
		},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {-1.2, 0},
		energy_per_movement = 7000,
		energy_per_rotation = 7000,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.5kW"
		},
		extension_speed = 0.30,
		rotation_speed = 0.09,
		fast_replaceable_group = "inserter",
		filter_count = 5,
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = handBaseElectric,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedFilter,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenFilter,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet =
			{
				filename = platformElectric,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},
		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},
	{
		type = "recipe",
		name = "gm-electric-inserter-right-filter",
		enabled = false,
		ingredients =
		{
			{"advanced-circuit", 1},
			{"iron-gear-wheel", 5},
			{"electric-engine-unit", 1},
			{"gm-very-fast-inserter", 1}
		},
		result = "gm-electric-inserter-right-filter",
		requester_paste_multiplier = 4
	},
	--Filter
	
	{
		type = "item",
		name = "gm-electric-filter-inserter",
		icon = iconPath .. "/filter-electric.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-filter-inserters",
		order = "c",
		place_result = "gm-electric-filter-inserter",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-electric-filter-inserter",
		icon = iconPath .. "/filter-electric.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "gm-electric-filter-inserter"},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {0, 1.2},
		energy_per_movement = 8000,
		energy_per_rotation = 8000,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.5kW"
		},
		extension_speed = 0.30,
		rotation_speed = 0.20,
		fast_replaceable_group = "inserter",
		filter_count = 5,
		hand_base_picture =
		{
			filename = handBaseElectric,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedFilter,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenFilter,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet=
			{
				filename = platformElectric,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},

		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},
	{
		type = "recipe",
		name = "gm-electric-filter-inserter",
		enabled = false,
		ingredients =
		{
			{"gm-electric-inserter", 1},
			{"electronic-circuit", 4}
		},
		result = "gm-electric-filter-inserter",
		requester_paste_multiplier = 4
	},

	--Long
	
	{
		type = "item",
		name = "gm-electric-long-inserter",
		icon = iconPath .. "/long-electric.png",
		flags = {"goes-to-quickbar"},
		subgroup = "gm-long-inserters",
		order = "c",
		place_result = "gm-electric-long-inserter",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-electric-long-inserter",
		icon = iconPath .. "/long-electric.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "gm-electric-long-inserter"},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -2},
		insert_position = {0, 2.2},
		energy_per_movement = 5000,
		energy_per_rotation = 5000,
		rotation_speed = 0.171,
		extension_speed = 0.3,
		hand_size = 1.5,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.4kW"
		},
		fast_replaceable_group = "long-handed-inserter",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-long-handed-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = handBaseElectric,
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = handClosedLong,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = handOpenLong,
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet =
			{
				filename = platformElectric,
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = {0.09375, 0}
			}
		},
		circuit_wire_connection_point = inserter_circuit_wire_connection_point,
		circuit_connector_sprites = inserter_circuit_connector_sprites,
		circuit_wire_max_distance = inserter_circuit_wire_max_distance
	},
	{
		type = "recipe",
		name = "gm-electric-long-inserter",
		enabled = false,
		ingredients =
		{
			{"iron-gear-wheel", 2},
			{"iron-plate", 2},
			{"gm-electric-inserter", 1}
		},
		result = "gm-electric-long-inserter",
		requester_paste_multiplier = 4
	},
})