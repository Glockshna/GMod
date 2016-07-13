for i, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
	if force.technologies["gm-very-fast-inserter"].researched == true then

		force.recipes["gm-very-fast-inserter"].enabled = true
		force.recipes["gm-very-fast-filter-inserter"].enabled = true
		force.recipes["gm-very-fast-long-inserter"].enabled = true
		force.recipes["gm-very-fast-inserter-left"].enabled = true
		force.recipes["gm-very-fast-inserter-right"].enabled = true
		force.recipes["gm-very-fast-inserter-left-filter"].enabled = true
		force.recipes["gm-very-fast-inserter-right-filter"].enabled = true
		force.recipes["gm-very-fast-extra-long-inserter"].enabled = true

		if force.technologies["gm-motorized-inserter"].researched == true then

			force.recipes["gm-motorized-inserter"].enabled = true
			force.recipes["gm-motorized-filter-inserter"].enabled = true
			force.recipes["gm-motorized-long-inserter"].enabled = true
			force.recipes["gm-motorized-inserter-left"].enabled = true
			force.recipes["gm-motorized-inserter-right"].enabled = true
			force.recipes["gm-motorized-inserter-left-filter"].enabled = true
			force.recipes["gm-motorized-inserter-right-filter"].enabled = true
			force.recipes["gm-motorized-extra-long-inserter"].enabled = true

			if force.technologies["gm-electric-inserter"].researched == true then

				force.recipes["gm-electric-inserter"].enabled = true
				force.recipes["gm-electric-filter-inserter"].enabled = true
				force.recipes["gm-electric-long-inserter"].enabled = true
				force.recipes["gm-electric-inserter-left"].enabled = true
				force.recipes["gm-electric-inserter-right"].enabled = true
				force.recipes["gm-electric-inserter-left-filter"].enabled = true
				force.recipes["gm-electric-inserter-right-filter"].enabled = true
				force.recipes["gm-electric-extra-long-inserter"].enabled = true
			end
		end
	end

end
