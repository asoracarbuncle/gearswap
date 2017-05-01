function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle melee set')


	----------------------------------------------------------------------
	-- Unload key bindings upon file unload
	----------------------------------------------------------------------
	require "remove_bindings"


	----------------------------------------------------------------------
	-- Melee set
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.melee = {}

	-- Melee : default
	sets.melee.default = {
		ammo="Ginsen",
	    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
	    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
	    hands={ name="Herculean Gloves", augments={'Accuracy+20 Attack+20','"Store TP"+1','DEX+7','Accuracy+12','Attack+3',}},
	    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+2','DEX+6','Accuracy+7','Attack+14',}},
	    neck="Clotharius Torque",
	    waist="Windbuffet Belt +1",
	    left_ear="Brutal Earring",
	    right_ear="Suppanomimi",
	    left_ring="Epona's Ring",
	    right_ring="Rajas Ring",
	    back={ name="Toetapper Mantle", augments={'"Store TP"+5','"Dual Wield"+4','"Rev. Flourish"+11',}},
	    -- back={ name="Mecisto. Mantle", augments={'Cap. Point+43%','Mag. Acc.+3','DEF+1',}},
	} -- end sets.melee.default


	----------------------------------------------------------------------
	-- Midcast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}

	-- Midcast : Rudra's Storm
	sets.midcast["Rudra's Storm"] = {
	    ammo="Mantoptera Eye",
	    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
	    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
	    hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
	    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+2','DEX+6','Accuracy+7','Attack+14',}},
	    neck="Clotharius Torque",
	    waist="Grunfeld Rope",
	    left_ear="Brutal Earring",
	    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
		left_ring="Epona's Ring",
	    right_ring="Begrudging Ring",
	    back={ name="Toetapper Mantle", augments={'"Store TP"+5','"Dual Wield"+4','"Rev. Flourish"+11',}},
	} -- end sets.midcast["Rudra's Storm"]

end -- end get_sets()


----------------------------------------------------------------------
-- Callback for after casting begins, but before it fires
----------------------------------------------------------------------
function midcast(spell)

	-- Equip any specific named sets
    if sets.midcast[spell.name] then
        equip(sets.midcast[spell.name])
	end -- end if

end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)
	equip(sets.melee.default)
end -- end aftercast()


----------------------------------------------------------------------
-- Callback for whenever engagment status changes
----------------------------------------------------------------------
function status_change(new,old)
	if new == 'Engaged' then
		equip(sets.melee.default)
	end
end -- end status_change()


----------------------------------------------------------------------
-- In game alerts to gear set changes
----------------------------------------------------------------------
function self_command(command)

	-- Equip the melee set
	if command == 'toggle melee set' then
		-- Alert the user which set is currently being equipped
		send_command('@input /echo <----- Melee: Default Set Equipped ----->')
		-- Equip the set
		equip(sets.melee.default)
	end -- end if

end -- end self_command()