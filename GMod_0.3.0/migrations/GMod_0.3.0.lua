for i, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
	if force.technologies["engine"].researched == true then

		force.recipes["gm-servo"].enabled = true
		
		if force.technologies["electric-engine"].researched == true then
			
			force.recipes["gm-adv-servo"].enabled = true

		end
	end

end
