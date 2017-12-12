function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')


	----------------------------------------------------------------------
	-- Idle set
	----------------------------------------------------------------------
	-- Initializes an array to begin storing set data
	sets.idle = {}

	-- Idle : Default
	sets.idle = {
	    head="Mummu Bonnet +1",
	    body="Mummu Jacket +1",
	    hands="Mummu Wrists +1",
	    legs="Mummu Kecks +1",
	    feet="Mummu Gamash. +1",
	    neck="Asperity Necklace",
	    waist="Windbuffet Belt +1",
	    left_ear="Brutal Earring",
	    right_ear="Cessance Earring",
	    left_ring="Petrov Ring",
	    right_ring="Hetairoi Ring",
	    back="Agema Cape",
	} -- end sets.idle


	----------------------------------------------------------------------
	-- Melee set
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.melee = {}

	-- Melee : default
	sets.melee = {
	} -- end sets.melee


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Precast : Fast Cast
	sets.precast.fastCast = {
	} -- end sets.precast.fastCast


	----------------------------------------------------------------------
	-- Midcast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}
	sets.midcast.ws = {}

	-- Midcast : Weapon Skill : Default
	sets.midcast.ws.default = {
	} -- end sets.midcast.ws.default

	-- Midcast : Weapon Skill : Raging Fists
	sets.midcast.ws["Raging Fists"] = {
	} -- end sets.midcast.ws["Raging Fists"]

	-- Midcast : Weapon Skill : Spinning Attack
	sets.midcast.ws["Spinning Attack"] = {
	} -- end sets.midcast.ws["Spinning Attack"]

	-- Midcast : Weapon Skill : Asuran Fists
	sets.midcast.ws["Asuran Fists"] = {
	} -- end sets.midcast.ws["Asuran Fists"]

	-- Midcast : Weapon Skill : Final Heaven
	sets.midcast.ws["Final Heaven"] = {
	} -- end sets.midcast.ws["Final Heaven"]

	-- Midcast : Weapon Skill : Victory Smite
	sets.midcast.ws["Victory Smite"] = {
	} -- end sets.midcast.ws["Victory Smite"]


	----------------------------------------------------------------------
	-- Utility Sets (not bound to a key)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.utility = {}

	-- Focus set
	sets.utility.focus = {
	} -- end sets.utility.focus

	-- Chakra set
	sets.utility.chakra = {
	} -- end sets.utility.chakra

	-- Counterstance set
	sets.utility.counterstance = {
	} -- end sets.utility.counterstance

	-- Formless Strikes set
	sets.utility.formlessStrikes = {
	} -- end sets.utility.formlessStrikes

	-- Footwork set
	sets.utility.footwork = {
	} -- end sets.utility.footwork

	-- Perfect Counter set
	sets.utility.perfectCounter = {
	} -- end sets.utility.perfectCounter

	-- Impetus set
	sets.utility.impetus = {
	} -- end sets.utility.impetus

end -- end get_sets()


----------------------------------------------------------------------
-- Callback for when casting begins
----------------------------------------------------------------------
function precast(spell)
    if spell.action_type == 'Magic' then
		equip(sets.precast.fastCast)
	end
end -- end precast()


----------------------------------------------------------------------
-- Callback for after casting begins, but before it fires
----------------------------------------------------------------------
function midcast(spell)

	-- Check if the action is a weapon skill
    if spell.type == 'WeaponSkill' then
		-- Check if the action is a specified weapon skill
		if sets.midcast.ws[spell.name] then
			-- Equip the appropriate specific ws set
			equip(sets.midcast.ws[spell.name])
	    else
	    	-- Equip default ws set
			equip(sets.midcast.ws.default)
		end
	elseif spell.type == 'JobAbility' then
		if spell.name == 'Focus' then
			equip(sets.utility.focus)
		elseif spell.name == 'Chakra' then
			equip(sets.utility.chakra)
		elseif spell.name == 'Counterstance' then
			equip(sets.utility.counterstance)
		elseif spell.name == 'Formless Strikes' then
			equip(sets.utility.formlessStrikes)
		elseif spell.name == 'Footwork' then
			equip(sets.utility.footwork)
		elseif spell.name == 'Perfect Counter' then
			equip(sets.utility.perfectCounter)
		elseif spell.name == 'Impetus' then
			equip(sets.utility.impetus)
		end
	end

end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)

	-- Check the player status
	if player.status =='Engaged' then
		equip(sets.melee)
	else
		equip(sets.idle)
	end

end -- end aftercast()


----------------------------------------------------------------------
-- Callback for whenever engagment status changes
----------------------------------------------------------------------
function status_change(new,old)

	-- Check the player status
	if new == 'Idle' then
		equip(sets.idle)
	elseif new == 'Engaged' then
		equip(sets.melee)
	end

end -- end status_change()


----------------------------------------------------------------------
-- In game alerts to gear set changes
----------------------------------------------------------------------
function self_command(command)

	-- Equip the idle set
	if command == 'toggle idle set' then
		-- Alert the user which set is currently being equipped
		send_command('@input /echo <----- Idle Set Equipped ----->')
		-- Equip the set
		equip(sets.idle)
	end -- end if

end -- end self_command()