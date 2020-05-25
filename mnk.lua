function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c equip idle set')


	----------------------------------------------------------------------
	-- Idle set(s)
	----------------------------------------------------------------------
	sets.idle = {
        ammo="Mantoptera Eye",
        head="Malignance Chapeau",
        body="Mummu Jacket +2",
        hands="Mummu Wrists +2",
        legs="Mummu Kecks +2",
        feet="Malignance Boots",
        neck="Loricate Torque +1",
        waist="Luminary Sash",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Defending Ring",
        right_ring="Vertigo Ring",
        back="Moonbeam Cape",
	} -- end Idle


	----------------------------------------------------------------------
	-- Engaged set(s)
	----------------------------------------------------------------------
	sets.engaged = {
        ammo="Ginsen",
        head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
        body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
        hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
        legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+2','DEX+6','Accuracy+7','Attack+14',}},
        neck="Moonlight Nodowa",
        waist="Windbuffet Belt +1",
        left_ear="Sherida Earring",
        right_ear="Telos Earring",
        left_ring="Gere Ring",
        right_ring="Niqmaddu Ring",
        back="Atheling Mantle",
	} -- end Engaged


	----------------------------------------------------------------------
	-- Precast set(s)
	----------------------------------------------------------------------
	sets.precast = T{} -- DO NOT EDIT THIS LINE

	-- Precast : Fast Cast
	sets.precast.fastCast = {
        ammo="Sapience Orb",
        head={ name="Herculean Helm", augments={'Mag. Acc.+4','"Fast Cast"+6','MND+5',}},
        body={ name="Herculean Vest", augments={'Mag. Acc.+9','"Fast Cast"+5','"Mag.Atk.Bns."+7',}},
        hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="Limbo Trousers",
        feet={ name="Herculean Boots", augments={'"Fast Cast"+5','INT+13','"Mag.Atk.Bns."+13',}},
        neck="Orunmila's Torque",
        left_ear="Etiolation Earring",
        right_ear="Loquac. Earring",
        left_ring="Rahab Ring",
        right_ring="Prolix Ring",
	} -- end Fast Cast


	----------------------------------------------------------------------
	-- Midcast set(s)
	----------------------------------------------------------------------
	sets.midcast = T{} -- DO NOT EDIT THIS LINE

	-- Midcast : Weaponskill : Default
	-- This defines a general default weaponskill set that will be used
	-- only when a specific weapon skill set doesn't overrides it. This
	-- ensures that you will always have strong weaponskill pieces
	-- equipped even when you use an uncommon weapon skill.
	sets.midcast.ws = T{} -- DO NOT EDIT THIS LINE
	----------------------------------------------------------------------
	-- Midcast : Weaponskill : Default
	sets.midcast.ws.default = {
	} -- end Weaponskill default

	-- Midcast : Weaponskill : Ascetic's Fury
	sets.midcast.ws["Ascetic's Fury"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Ascetic's Fury

	-- Midcast : Weaponskill : Asuran Fists
	sets.midcast.ws["Asuran Fists"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Asuran Fists

	-- Midcast : Weaponskill : Backhand Blow
	sets.midcast.ws["Backhand Blow"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Backhand Blow

	-- Midcast : Weaponskill : Combo
	sets.midcast.ws["Combo"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Combo

	-- Midcast : Weaponskill : Dragon Kick
	sets.midcast.ws["Dragon Kick"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Dragon Kick

	-- Midcast : Weaponskill : Final Heaven
	sets.midcast.ws["Final Heaven"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Final Heaven

	-- Midcast : Weaponskill : Howling Fist
	sets.midcast.ws["Howling Fist"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Howling Fist

	-- Midcast : Weaponskill : One Inch Punch
	sets.midcast.ws["One Inch Punch"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end One Inch Punch

	-- Midcast : Weaponskill : Raging Fists
	sets.midcast.ws["Raging Fists"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Raging Fists

	-- Midcast : Weaponskill : Shijin Spiral
	sets.midcast.ws["Shijin Spiral"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Shijin Spiral

	-- Midcast : Weaponskill : Shoulder Tackle
	sets.midcast.ws["Shoulder Tackle"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Shoulder Tackle

	-- Midcast : Weaponskill : Spinning Attack
	sets.midcast.ws["Spinning Attack"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Spinning Attack

	-- Midcast : Weaponskill : Tornado Kick
	sets.midcast.ws["Tornado Kick"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Tornado Kick

	-- Midcast : Weaponskill : Stringing Pummel
	sets.midcast.ws["Stringing Pummel"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Stringing Pummel

	-- Midcast : Weaponskill : Victory Smite
	sets.midcast.ws["Victory Smite"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Victory Smite


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
		waist="Ask sash ",
	} -- end Boost

	----------------------------------------------------------------------
	-- Job Ability : Boost
	-- This set is equipped when the boost buff is aquired and unequipped
	-- when it is lost. This set is for pieces that buff the Boost ability
	-- During it's duration.
	sets.utility.impetus = {
        head="Malignance Chapeau",
		body="Bhikku cyclas +1",
	} -- end Boost


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
			equip(sets.midcast.ws.default)
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
		equip(sets.engaged)
	else
		equip(sets.idle)
	end

	-- Misc checks
	check_boost()
	check_impetus()

end -- end aftercast()


----------------------------------------------------------------------
-- Callback for whenever engagment status changes
----------------------------------------------------------------------
function status_change(new, old)

	if new == 'Engaged' then
		equip(sets.engaged)
	else
		equip(sets.idle)
	end

	-- Misc checks
	check_boost()
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

	-- Equip idle set
	if command == 'equip idle set' then
		equip(sets.idle)
		send_command('@input /echo <----- Idle Set Equipped ----->')
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
