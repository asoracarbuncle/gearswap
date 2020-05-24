function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c equip idle set')


	----------------------------------------------------------------------
	-- Idle set(s)
	----------------------------------------------------------------------
	sets.idle = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Idle


	----------------------------------------------------------------------
	-- Engaged set(s)
	----------------------------------------------------------------------
	sets.engaged = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Engaged


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
	sets.midcast.ws = T{} -- DO NOT EDIT THIS LINE
	sets.midcast.ja = T{} -- DO NOT EDIT THIS LINE

	-- Midcast : Weaponskill : Default
	-- This defines a general default weaponskill set that will be used
	-- only when a specific weapon skill set doesn't overrides it. This
	-- ensures that you will always have strong weaponskill pieces
	-- equipped even when you use an uncommon weapon skill.
	sets.midcast.ws.default = {
	} -- end Weaponskill default

	-- Midcast : Weaponskill : Combo
	sets.midcast.ws["Combo"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Combo

	-- Midcast : Weaponskill : Shoulder Tackle
	sets.midcast.ws["Shoulder Tackle"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Shoulder Tackle

	-- Midcast : Weaponskill : One Inch Punch
	sets.midcast.ws["One Inch Punch"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end One Inch Punch

	-- Midcast : Weaponskill : Backhand Blow
	sets.midcast.ws["Backhand Blow"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Backhand Blow

	-- Midcast : Weaponskill : Raging Fists
	sets.midcast.ws["Raging Fists"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Raging Fists

	-- Midcast : Weaponskill : Spinning Attack
	sets.midcast.ws["Spinning Attack"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Spinning Attack

	-- Midcast : Weaponskill : Howling Fist
	sets.midcast.ws["Howling Fist"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Howling Fist

	-- Midcast : Weaponskill : Dragon Kick
	sets.midcast.ws["Dragon Kick"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Dragon Kick

	-- Midcast : Weaponskill : Asuran Fists
	sets.midcast.ws["Asuran Fists"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Asuran Fists

	-- Midcast : Weaponskill : Tornado Kick
	sets.midcast.ws["Tornado Kick"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Tornado Kick

	-- Midcast : Weaponskill : Shijin Spiral
	sets.midcast.ws["Shijin Spiral"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Shijin Spiral

	-- Midcast : Weaponskill : Final Heaven
	sets.midcast.ws["Final Heaven"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Final Heaven

	-- Midcast : Weaponskill : Victory Smite
	sets.midcast.ws["Victory Smite"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Victory Smite

	-- Midcast : Weaponskill : Ascetic's Fury
	sets.midcast.ws["Ascetic's Fury"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Ascetic's Fury

	-- Midcast : Weaponskill : Stringing Pummel
	sets.midcast.ws["Stringing Pummel"] = set_combine(sets.midcast.ws.default, {
		-- PASTE YOUR GEAR OVER THIS LINE
	}) -- end Stringing Pummel


	----------------------------------------------------------------------
	-- Job Ability set(s)
	-- Add gear that should be put on just before the execution of a
	-- job ability. Do not use these sets for situations where gear
	-- must be worn throughout the duration of the buff.
	sets.midcast = T{}
	----------------------------------------------------------------------
	-- Midcast : Job Ability : Boost
	sets.midcast.ja['Boost'] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Boost

	-- Midcast : Job Ability : Dodge
	sets.midcast.ja['Dodge'] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Dodge

	-- Midcast : Job Ability : Focus
	sets.midcast.ja['Focus'] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Sengikori

	-- Midcast : Job Ability : Chakra
	sets.midcast.ja['Chakra'] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Chakra

	-- Midcast : Job Ability : Chi Blast
	sets.midcast.ja['Chi Blast'] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Chi Blast

	-- Midcast : Job Ability : Counterstance
	sets.midcast.ja['Counterstance'] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Counterstance

	-- Midcast : Job Ability : Footwork
	sets.midcast.ja['Footwork'] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Footwork

	-- Midcast : Job Ability : Mantra
	sets.midcast.ja['Mantra'] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Mantra

	-- Midcast : Job Ability : Formless Strikes
	sets.midcast.ja['Formless Strikes'] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Formless Strikes

	-- Midcast : Job Ability : Perfect Counter
	sets.midcast.ja['Perfect Counter'] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Perfect Counter

	-- Midcast : Job Ability : Impetus
	sets.midcast.ja['Impetus'] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Impetus

	-- Midcast : Job Ability : Inner Strength
	sets.midcast.ja['Inner Strength'] = {
		-- PASTE YOUR GEAR OVER THIS LINE
	} -- end Inner Strength

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
end -- end status_change()


----------------------------------------------------------------------
-- Callback for whenever buffs change
----------------------------------------------------------------------
function buff_change(name, gain)
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

end -- end self_command()