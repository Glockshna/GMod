
--//Inserter Sprite Definitions \\--
platformSlow 		= 	"__GMod__/graphics/entity/inserters/platforms/platform-slow.png" 		--Gray
platformNormal 		= 	"__GMod__/graphics/entity/inserters/platforms/platform-normal.png" 		--Yellow
platformFast 		= 	"__GMod__/graphics/entity/inserters/platforms/platform-fast.png" 		--Blue
platformVeryFast 	= 	"__GMod__/graphics/entity/inserters/platforms/platform-veryfast.png" 	--Green
platformMotorized 	= 	"__GMod__/graphics/entity/inserters/platforms/platform-motorized.png" 	--Orange
platformElectric 	= 	"__GMod__/graphics/entity/inserters/platforms/platform-electric.png" 	--Red

handBaseSlow 		= 	"__GMod__/graphics/entity/inserters/arms/hand-base-slow.png" 			--Gray
handBaseNormal 		= 	"__GMod__/graphics/entity/inserters/arms/hand-base-normal.png" 			--Yellow
handBaseFast 		= 	"__GMod__/graphics/entity/inserters/arms/hand-base-fast.png" 			--Blue
handBaseVeryFast 	= 	"__GMod__/graphics/entity/inserters/arms/hand-base-veryfast.png" 		--Green
handBaseMotorized 	= 	"__GMod__/graphics/entity/inserters/arms/hand-base-motorized.png" 		--Orange
handBaseElectric 	= 	"__GMod__/graphics/entity/inserters/arms/hand-base-electric.png" 		--Red

handOpenNormal 		= 	"__GMod__/graphics/entity/inserters/arms/hand-open-normal.png"			--Yellow
handOpenLong 		= 	"__GMod__/graphics/entity/inserters/arms/hand-open-long.png"			--Red
handOpenVeryLong 	= 	"__GMod__/graphics/entity/inserters/arms/hand-open-verylong.png"		--Orange
handOpenFilter 		= 	"__GMod__/graphics/entity/inserters/arms/hand-open-filter.png"			--Purple
handOpenStack		=	"__GMod__/graphics/entity/inserters/arms/hand-open-stack.png"			--White

handClosedNormal	=	"__GMod__/graphics/entity/inserters/arms/hand-closed-normal.png"		--Yellow
handClosedLong		=	"__GMod__/graphics/entity/inserters/arms/hand-closed-long.png"			--Red
handClosedVeryLong	=	"__GMod__/graphics/entity/inserters/arms/hand-closed-extralong.png"		--Orange
handClosedFilter	=	"__GMod__/graphics/entity/inserters/arms/hand-closed-filter.png"		--Purple
handClosedStack		=	"__GMod__/graphics/entity/inserters/arms/hand-closed-stack.png"			--White
--\\   End Sprite Definitions   //--

data:extend(
{

	
	--Very Fast Standard Inserter
	{
		type = "item",
		name = "gm-very-fast-inserter",
		icon = "__GMod__/graphics/icons/very-fast-inserter.png",
		flags = {"goes-to-quickbar"},
		subgroup = "inserter",
		order = "d[fast-inserter]",
		place_result = "gm-very-fast-inserter",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-very-fast-inserter",
		icon = "__GMod__/graphics/icons/very-fast-inserter.png",
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
		energy_per_movement = 14000,
		energy_per_rotation = 14000,
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
	
	--Motorized Standard Inserter
	
	{
		type = "item",
		name = "gm-motorized-inserter",
		icon = "__GMod__/graphics/icons/motorized-inserter.png",
		flags = {"goes-to-quickbar"},
		subgroup = "inserter",
		order = "d[fast-inserter]",
		place_result = "gm-motorized-inserter",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-motorized-inserter",
		icon = "__GMod__/graphics/icons/motorized-inserter.png",
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
		energy_per_movement = 14000,
		energy_per_rotation = 14000,
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
	
	--Electric Standard Inserter
	
	{
		type = "item",
		name = "gm-electric-inserter",
		icon = "__GMod__/graphics/icons/electric-inserter.png",
		flags = {"goes-to-quickbar"},
		subgroup = "inserter",
		order = "d[fast-inserter]",
		place_result = "gm-electric-inserter",
		stack_size = 50
	},
	{
		type = "inserter",
		name = "gm-electric-inserter",
		icon = "__GMod__/graphics/icons/electric-inserter.png",
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
		energy_per_movement = 14000,
		energy_per_rotation = 14000,
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
	
	
})