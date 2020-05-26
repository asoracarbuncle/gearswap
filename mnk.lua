function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c cycle idle set')
	send_command('bind f10 gs c cycle engaged set')


	----------------------------------------------------------------------
	-- Idle set(s)
	----------------------------------------------------------------------
	sets.idle = T{} -- DO NOT EDIT THIS LINE
	idleSetIndex = 0 -- DO NOT EDIT THIS LINE
	idleSetNames = {
		[0] = 'Default',
		[1] = 'DT',
	}

	-- Idle : Default
	sets.idle[0] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Idle : Default

	-- Idle : DT
	sets.idle[1] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Idle : DT


	----------------------------------------------------------------------
	-- Engaged set(s)
	----------------------------------------------------------------------
	sets.engaged = T{} -- DO NOT EDIT THIS LINE
	engagedSetIndex = 0 -- DO NOT EDIT THIS LINE
	engagedSetNames = {
		[0] = 'TP',
		[1] = 'Accuracy',
		[2] = 'Hybrid DT',
		[3] = 'Hybrid Counter',
	}

	-- Engaged : TP
	sets.engaged[0] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Engaged : TP

	-- Engaged : Accuracy
	sets.engaged[1] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Engaged : Accuracy

	-- Engaged : Hybrid DT
	sets.engaged[2] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Engaged : Hybrid DT

	-- Engaged : Hybrid Counter
	sets.engaged[3] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Engaged : Hybrid Counter


	----------------------------------------------------------------------
	-- Precast set(s)
	----------------------------------------------------------------------
	sets.precast = T{} -- DO NOT EDIT THIS LINE

	-- Precast : Fast Cast
	sets.precast.fastCast = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Fast Cast


	----------------------------------------------------------------------
	-- Midcast set(s)
	----------------------------------------------------------------------
	sets.midcast = T{} -- DO NOT EDIT THIS LINE

	-- Midcast : Weaponskill : Default
	-- This defines general physical and magical weaponskill sets that
	-- will be used only when a specific weapon skill set doesn't
	-- override it. This ensures that you will always have strong
	-- weaponskill pieces equipped even when you use an uncommon weapon
	-- skill.
	sets.midcast.ws = T{} -- DO NOT EDIT THIS LINE
	----------------------------------------------------------------------
	-- Midcast : Weaponskill : Physical
	sets.midcast.ws.physical = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Weaponskill physical

	-- Midcast : Weaponskill : Magical
	sets.midcast.ws.magical = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Weaponskill magical


	----------------------------------------------------------------------
	-- Hand-to-Hand
	----------------------------------------------------------------------
	-- Midcast : Weaponskill : Ascetic's Fury
	sets.midcast.ws["Ascetic's Fury"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Ascetic's Fury

	-- Midcast : Weaponskill : Asuran Fists
	sets.midcast.ws["Asuran Fists"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Asuran Fists

	-- Midcast : Weaponskill : Backhand Blow
	sets.midcast.ws["Backhand Blow"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Backhand Blow

	-- Midcast : Weaponskill : Combo
	sets.midcast.ws["Combo"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Combo

	-- Midcast : Weaponskill : Dragon Kick
	sets.midcast.ws["Dragon Kick"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Dragon Kick

	-- Midcast : Weaponskill : Final Heaven
	sets.midcast.ws["Final Heaven"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Final Heaven

	-- Midcast : Weaponskill : Howling Fist
	sets.midcast.ws["Howling Fist"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Howling Fist

	-- Midcast : Weaponskill : One Inch Punch
	sets.midcast.ws["One Inch Punch"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end One Inch Punch

	-- Midcast : Weaponskill : Raging Fists
	sets.midcast.ws["Raging Fists"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Raging Fists

	-- Midcast : Weaponskill : Shijin Spiral
	sets.midcast.ws["Shijin Spiral"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Shijin Spiral

	-- Midcast : Weaponskill : Shoulder Tackle
	sets.midcast.ws["Shoulder Tackle"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Shoulder Tackle

	-- Midcast : Weaponskill : Spinning Attack
	sets.midcast.ws["Spinning Attack"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Spinning Attack

	-- Midcast : Weaponskill : Tornado Kick
	sets.midcast.ws["Tornado Kick"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Tornado Kick

	-- Midcast : Weaponskill : Stringing Pummel
	sets.midcast.ws["Stringing Pummel"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Stringing Pummel

	-- Midcast : Weaponskill : Victory Smite
	sets.midcast.ws["Victory Smite"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Victory Smite


	----------------------------------------------------------------------
	-- Staff
	----------------------------------------------------------------------
	-- Midcast : Weaponskill : Cataclysm
	sets.midcast.ws["Cataclysm"] = set_combine(sets.midcast.ws.magical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Cataclysm

	-- Midcast : Weaponskill : Earth Crusher
	sets.midcast.ws["Earth Crusher"] = set_combine(sets.midcast.ws.magical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Earth Crusher

	-- Midcast : Weaponskill : Full Swing
	sets.midcast.ws["Full Swing"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Full Swing

	-- Midcast : Weaponskill : Heavy Swing
	sets.midcast.ws["Heavy Swing"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Heavy Swing

	-- Midcast : Weaponskill : Rock Crusher
	sets.midcast.ws["Rock Crusher"] = set_combine(sets.midcast.ws.magical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Rock Crusher

	-- Midcast : Weaponskill : Shattersoul
	sets.midcast.ws["Shattersoul"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Shattersoul

	-- Midcast : Weaponskill : Shell Crusher
	sets.midcast.ws["Shell Crusher"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Shell Crusher

	-- Midcast : Weaponskill : Spirit Taker
	sets.midcast.ws["Spirit Taker"] = set_combine(sets.midcast.ws.physical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Spirit Taker

	-- Midcast : Weaponskill : Starburst
	sets.midcast.ws["Starburst"] = set_combine(sets.midcast.ws.magical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Starburst

	-- Midcast : Weaponskill : Sunburst
	sets.midcast.ws["Sunburst"] = set_combine(sets.midcast.ws.magical, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Sunburst


	----------------------------------------------------------------------
	-- Job Ability set(s)
	-- Add gear that should be put on just before the execution of a
	-- job ability. Do not use these sets for situations where gear
	-- must be worn throughout the duration of the buff.
	sets.midcast.ja = T{} -- DO NOT EDIT THIS LINE
	----------------------------------------------------------------------
	-- Midcast : Job Ability : Boost
	sets.midcast.ja['Boost'] = {
		hands="Anchorite's gloves +3",
	} -- end Boost

	-- Midcast : Job Ability : Chakra
	sets.midcast.ja['Chakra'] = {
        body="Anchorite's Cyclas +3",
		hands="Hesychast's Gloves +3",
	} -- end Chakra

	-- Midcast : Job Ability : Chi Blast
	sets.midcast.ja['Chi Blast'] = {
		head="Hesychast's Crown +3",
	} -- end Chi Blast

	-- Midcast : Job Ability : Counterstance
	sets.midcast.ja['Counterstance'] = {
		feet="Hesychast's Gaiters +3",
	} -- end Counterstance

	-- Midcast : Job Ability : Dodge
	sets.midcast.ja['Dodge'] = {
		feet="Anchorite's gaiters +3",
	} -- end Dodge

	-- Midcast : Job Ability : Focus
	sets.midcast.ja['Focus'] = {
	    head="Anchorite's Crown +3",
	} -- end Sengikori

	-- Midcast : Job Ability : Footwork
	sets.midcast.ja['Footwork'] = {
		feet="Bhikku Gaiters +1",
	} -- end Footwork

	-- Midcast : Job Ability : Formless Strikes
	sets.midcast.ja['Formless Strikes'] = {
		body="Hesychast's Cyclas +3",
	} -- end Formless Strikes

	-- Midcast : Job Ability : Impetus
	sets.midcast.ja['Impetus'] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Impetus

	-- Midcast : Job Ability : Hundred Fists
	sets.midcast.ja['Hundred Fists'] = {
		legs="Hesychast's Hose +3",
	} -- end Hundred Fists

	-- Midcast : Job Ability : Inner Strength
	sets.midcast.ja['Inner Strength'] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Inner Strength

	-- Midcast : Job Ability : Mantra
	sets.midcast.ja['Mantra'] = {
		feet="Hesychast's Gaiters +3",
	} -- end Mantra

	-- Midcast : Job Ability : Perfect Counter
	sets.midcast.ja['Perfect Counter'] = {
		head="Bhikku Crown +1",
	} -- end Perfect Counter


	----------------------------------------------------------------------
	-- Utility set(s)
	-- This is specialized gear that may be used in specific ways and for
	-- specific purposes. The usage of the gear will be listed above each
	-- gearset.
	sets.utility = T{} -- DO NOT EDIT THIS LINE
	----------------------------------------------------------------------
	-- Job Ability : Boost
	-- This set is equipped when the boost buff is aquired and unequipped
	-- when it is lost. This set is for pieces that buff the Boost ability
	-- During it's duration.
	sets.utility.boost = {
		waist="Ask sash",
	} -- end Boost

	----------------------------------------------------------------------
	-- Job Ability : Impetus
	-- This set is equipped when the boost buff is aquired and unequipped
	-- when it is lost. This set is for pieces that buff the Boost ability
	-- During it's duration.
	sets.utility.impetus = {
		body="Bhikku cyclas +1",
	} -- end Impetus


end -- end get_sets()


----------------------------------------------------------------------
-- Callback for when casting begins
----------------------------------------------------------------------
function precast(spell)

    if spell.action_type == 'Magic' then
		equip(sets.precast.fastCast)
	end

	-- Misc checks
	check_boost()
	check_impetus()

end -- end precast()


----------------------------------------------------------------------
-- Callback for after casting begins, but before it fires
----------------------------------------------------------------------
function midcast(spell)

	-- Check if the action is a job ability
	if spell.type == 'JobAbility' then
		if sets.midcast.ja[spell.english] then
			equip(sets.midcast.ja[spell.english])
		end

	-- Check if the action is a weapon skill
    elseif spell.type == 'WeaponSkill' then

		-- Check if the action is a specified weapon skill
		if sets.midcast.ws[spell.english] then
			equip(sets.midcast.ws[spell.english])
		else
			-- Equip the default set
			equip(sets.midcast.ws.physical)
		end
	end

	-- Misc checks
	check_boost()
	check_impetus()

end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)

	if player.status =='Engaged' then
		equip(sets.engaged[engagedSetIndex])
	else
		equip(sets.idle[idleSetIndex])
	end

	-- Misc checks
	check_impetus()

end -- end aftercast()


----------------------------------------------------------------------
-- Callback for whenever engagment status changes
----------------------------------------------------------------------
function status_change(new, old)

	if new == 'Engaged' then
		equip(sets.engaged[engagedSetIndex])
	else
		equip(sets.idle[idleSetIndex])
	end

	-- Misc checks
	check_impetus()

end -- end status_change()


----------------------------------------------------------------------
-- Callback for whenever buffs change
----------------------------------------------------------------------
function buff_change(name, gain)
	check_boost()
	check_impetus()
end -- end buff_change()


----------------------------------------------------------------------
-- In game alerts to gear set changes
----------------------------------------------------------------------
function self_command(command)

	-- Cycle idle set
	if command == 'cycle idle set' then
		idleSetIndex = idleSetIndex + 1
		if idleSetIndex > table.getn(sets.idle) then
			idleSetIndex = 0
		end
		if player.status =='Idle' then
			equip(sets.idle[idleSetIndex])
		end
		send_command('@input /echo <----- Idle: ' .. idleSetNames[idleSetIndex] .. ' ----->')
	end -- end if

	-- Cycle engaged set
	if command == 'cycle engaged set' then
		engagedSetIndex = engagedSetIndex + 1
		if engagedSetIndex > table.getn(sets.engaged) then
			engagedSetIndex = 0
		end
		if player.status =='Engaged' then
			equip(sets.engaged[engagedSetIndex])
		end
		send_command('@input /echo <----- Engaged: ' .. engagedSetNames[engagedSetIndex] .. ' ----->')
	end -- end if

	-- Misc checks
	check_boost()
	check_impetus()

end -- end self_command()

----------------------------------------------------------------------
-- Checks for Boost and equips accordingly
----------------------------------------------------------------------
function check_boost()
	if buffactive.boost then
		equip(sets.utility.boost)
	end
end

----------------------------------------------------------------------
-- Checks for Impetus and equips accordingly
----------------------------------------------------------------------
function check_impetus()
	if buffactive.impetus then
		equip(sets.utility.impetus)
	end
end
