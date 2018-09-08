function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')
	send_command('bind f10 gs c cycle melee set')


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
	meleeSetIndex = 0
	meleeSetHasBeenEngaged = false

	-- Melee: Index Names
	meleeSetNames = {
		[0] = 'Default',
		[1] = 'Accuracy',
		[2] = 'Hybrid DT',
	}

	-- Melee : Default
	sets.melee[0] = {
	} -- end sets.melee[1]

	-- Melee : Accuracy
	sets.melee[1] = {
	} -- end sets.melee[2]

	-- Melee : Hybrid DT
	sets.melee[2] = {
	} -- end sets.melee[3]


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

	-- Midcast : Weapon Skill : Metatron Torment
	sets.midcast.ws['Metatron Torment'] = {
	} -- end sets.midcast.ws['Metatron Torment']

	-- Midcast : Weapon Skill : Resolution
	sets.midcast.ws['Resolution'] = {
	} -- end sets.midcast.ws['Resolution']

	-- Midcast : Weapon Skill : Scourge
	sets.midcast.ws['Scourge'] = {
	} -- end sets.midcast.ws['Scourge']

	-- Midcast : Weapon Skill : Upheaval
	sets.midcast.ws['Upheaval'] = {
	} -- end sets.midcast.ws['Upheaval']


	----------------------------------------------------------------------
	-- Utility Sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.jobAbility = {}

	-- Berserk
	sets.jobAbility['Berserk'] = {
	} -- end sets.jobAbility['Berserk']

	-- Blood Rage
	sets.jobAbility['Blood Rage'] = {
	} -- end sets.jobAbility['Blood Rage']

	-- Mighty Strikes
	sets.jobAbility['Mighty Strikes'] = {
	} -- end sets.jobAbility['Mighty Strikes']

	-- Provoke
	sets.jobAbility['Provoke'] = {
	} -- end sets.jobAbility['Provoke']

	-- Restraint
	sets.jobAbility['Restraint'] = {
	} -- end sets.jobAbility['Restraint']

	-- Tomahawk
	sets.jobAbility['Tomahawk'] = {
	} -- end sets.jobAbility['Tomahawk']

	-- Warcry
	sets.jobAbility['Warcry'] = {
	} -- end sets.jobAbility['Warcry']

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

		if sets.midcast.ws[spell.english] then
			equip(sets.midcast.ws[spell.english])
	    else
			equip(sets.midcast.ws.default)
		end

	elseif spell.type == 'JobAbility' then

		if sets.jobAbility[spell.english] then
			equip(sets.jobAbility[spell.english])
		end

	end

end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)

	-- Check the player status
	if player.status == 'Engaged' then
		equip(sets.melee[meleeSetIndex])
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
		equip(sets.melee[meleeSetIndex])
	end

end -- end status_change()


----------------------------------------------------------------------
-- In game alerts to gear set changes
----------------------------------------------------------------------
function self_command(command)

	-- Equip idle set
	if command == 'toggle idle set' then
		-- Alert the user which set is currently being equipped
		send_command('@input /echo <----- Idle Set Equipped ----->')
		-- Equip the set
		equip(sets.idle)
	end -- end if

	-- Equip melee set
	if command == 'cycle melee set' then

		if meleeSetHasBeenEngaged == false then
			meleeSetHasBeenEngaged = true
			meleeSetIndex = 0
		else
			meleeSetIndex = meleeSetIndex + 1
			if meleeSetIndex > table.getn(sets.melee) then
				meleeSetIndex = 0
			end
		end

		equip(sets.melee[meleeSetIndex])
		send_command('@input /echo <----- Melee '..meleeSetNames[meleeSetIndex]..' Set Equipped ----->')

	end -- end if

end -- end self_command()