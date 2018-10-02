function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')


	----------------------------------------------------------------------
	-- Idle set
	----------------------------------------------------------------------

	-- Idle : Default
	sets.idle = {

	} -- end sets.idle


	----------------------------------------------------------------------
	-- Melee set
	----------------------------------------------------------------------

	-- Melee : Default
	sets.melee = {

	} -- end sets.melee


	----------------------------------------------------------------------
	-- Midcast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}
	sets.midcast.ws = {}

	-- Midcast : Weaponskill : Default
	sets.midcast.ws.default = {

	} -- end sets.midcast.ws.default

	-- Midcast : Weapon Skill : Savage Blade
	sets.midcast.ws['Savage Blade'] = {

	} -- end sets.midcast.ws['Savage Blade']

	-- Midcast : Weapon Skill : Last Stand
	sets.midcast.ws['Last Stand'] = {

	} -- end sets.midcast.ws['Last Stand']


	----------------------------------------------------------------------
	-- Job ability Sets (not bound to a key)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.jobAbilities = {}

	-- Phantom Roll
	sets.jobAbilities.phantomRoll = {

	} -- end sets.jobAbilities.phantomRoll


end -- end get_sets()

----------------------------------------------------------------------
-- Phantom Rolls
----------------------------------------------------------------------
phantomRolls = {
	["Corsair's Roll"] = true,
	["Ninja's Roll"] = true,
	["Hunter's Roll"] = true,
	["Chaos Roll"] = true,
	["Magus's Roll"] = true,
	["Healer's Roll"] = true,
	["Drachen Roll"] = true,
	["Choral Roll"] = true,
	["Monk's Roll"] = true,
	["Beast Roll"] = true,
	["Samurai Roll"] = true,
	["Evoker's Roll"] = true,
	["Rogue's Roll"] = true,
	["Warlock's Roll"] = true,
	["Fighter's Roll"] = true,
	["Puppet Roll"] = true,
	["Gallant's Roll"] = true,
	["Wizard's Roll"] = true,
	["Dancer's Roll"] = true,
	["Scholar's Roll"] = true,
	["Naturalist's Roll"] = true,
	["Runeist's Roll"] = true,
	["Bolter's Roll"] = true,
	["Caster's Roll"] = true,
	["Courser's Roll"] = true,
	["Blitzer's Roll"] = true,
	["Tactician's Roll"] = true,
	["Allies' Roll"] = true,
	["Miser's Roll"] = true,
	["Companion's Roll"] = true,
	["Avenger's Roll"] = true,
}


----------------------------------------------------------------------
-- Callback for after casting begins, but before it fires
----------------------------------------------------------------------
function midcast(spell)

	-- Check if the action is a specified weapon skill
	if spell.type == 'WeaponSkill' then

    	-- Check if a specific ws set exists
		if sets.midcast.ws[spell.name] then
			-- Equip the appropriate ws specific set
			equip(sets.midcast.ws[spell.name])
		else
    		-- Equip default ws set
			equip(sets.midcast.ws.default)
		end

	elseif spell.type == 'CorsairRoll' then

		if phantomRolls[spell.english] then
			equip(sets.jobAbilities.phantomRoll)
		end

	end

end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)
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
		send_command('@input /echo <----- Idle: Default Set Equipped ----->')
		-- Equip the set
		equip(sets.idle)
	end -- end if

end -- end self_command()