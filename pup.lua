function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c equip idle set')
	send_command('bind f10 gs c equip melee set')


	----------------------------------------------------------------------
	-- Idle set
	----------------------------------------------------------------------
	-- Initializes an array to begin storing set data
	sets.idle = {}

	-- Idle : Default
	sets.idle = {
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
	-- Midcast: Weapon skill sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}
	sets.midcast.ws = {}

	-- Midcast : Weapon Skill : Default
	sets.midcast.ws.default = {
	} -- end sets.midcast.ws.default

	-- Midcast : Weapon Skill : Combo
	sets.midcast.ws["Combo"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Shoulder Tackle
	sets.midcast.ws["Shoulder Tackle"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : One Inch Punch
	sets.midcast.ws["One Inch Punch"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Backhand Blow
	sets.midcast.ws["Backhand Blow"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Raging Fists
	sets.midcast.ws["Raging Fists"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Spinning Attack
	sets.midcast.ws["Spinning Attack"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Howling Fist
	sets.midcast.ws["Howling Fist"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Dragon Kick
	sets.midcast.ws["Dragon Kick"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Asuran Fists
	sets.midcast.ws["Asuran Fists"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Tornado Kick
	sets.midcast.ws["Tornado Kick"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Shijin Spiral
	sets.midcast.ws["Shijin Spiral"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Final Heaven
	sets.midcast.ws["Final Heaven"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Victory Smite
	sets.midcast.ws["Victory Smite"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Ascetic's Fury
	sets.midcast.ws["Ascetic's Fury"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Stringing Pummel
	sets.midcast.ws["Stringing Pummel"] = sets.midcast.ws.default


	----------------------------------------------------------------------
	-- Midcast: Job ability sets (not bound to a key)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast.ja = {}

	-- Overdrive set
	sets.midcast.ja["Overdrive"] = {
	} -- end sets.midcast.ja["Overdrive"]

	-- Activate set
	sets.midcast.ja["Activate"] = {
	} -- end sets.midcast.ja["Activate"]

	-- Deus Ex Automata set
	sets.midcast.ja["Deus Ex Automata"] = {
	} -- end sets.midcast.ja["Deus Ex Automata"]
	
	-- Repair set
	sets.midcast.ja["Repair"] = {
	} -- end sets.midcast.ja["Repair"]

	-- Maintenance set
	sets.midcast.ja["Maintenance"] = {
	} -- end sets.midcast.ja["Maintenance"]

	-- Ventriloquy set
	sets.midcast.ja["Ventriloquy"] = {
	} -- end sets.midcast.ja["Ventriloquy"]

	-- Role Reversal set
	sets.midcast.ja["Role Reversal"] = {
	} -- end sets.midcast.ja["Role Reversal"]

	-- Tactical Switch set
	sets.midcast.ja["Tactical Switch"] = {
	} -- end sets.midcast.ja["Tactical Switch"]

	-- Cooldown set
	sets.midcast.ja["Cooldown"] = {
	} -- end sets.midcast.ja["Cooldown"]

	-- Heady Artifice set
	sets.midcast.ja["Heady Artifice"] = {
	} -- end sets.midcast.ja["Heady Artifice"]

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
    	
		-- Equip the default set
		equip(sets.midcast.ws.default)

		-- Check if the weapon skill has a set
		if sets.midcast.ws[spell.english] then
			equip(sets.midcast.ws[spell.english])
		end

	elseif spell.type == 'JobAbility' then

		-- Check if the action is a specified job ability
		if sets.midcast.ja[spell.english] then
			equip(sets.midcast.ja[spell.english])
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

	-- Equip idle set
	if command == 'equip idle set' then
		-- Alert the user which set is currently being equipped
		send_command('@input /echo <----- Idle Set Equipped ----->')
		-- Equip the set
		equip(sets.idle)
	end -- end if

	-- Equip idle set
	if command == 'equip melee set' then
		-- Alert the user which set is currently being equipped
		send_command('@input /echo <----- Idle Melee Equipped ----->')
		-- Equip the set
		equip(sets.melee)
	end -- end if

end -- end self_command()