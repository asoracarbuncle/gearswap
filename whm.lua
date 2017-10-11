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

	-- idle : Default
	sets.idle.default = {
		-- INSERT YOUR IDLE/REFRESH SET HERE
	} -- end sets.idle.default


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Precast : Fastcast
	sets.precast.fastcast = {
		-- INSERT YOUR FAST CAST SET HERE
	} -- end sets.precast.fastcast


	----------------------------------------------------------------------
	-- Magic set
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}
	sets.midcast.magic = {}

	-- Magic : Default
	sets.midcast.magic.default = {
		-- INSERT A DEFAULT MAGIC SET HERE
	} -- end sets.magic.default

	-- Magic : Enhancing
	sets.midcast.magic.enhancing = {
		-- INSERT YOUR ENHANCING MAGIC SET HERE
	} -- end sets.magic.enhancing

	-- Magic : Healing
	sets.midcast.magic.healing = {
		-- INSERT YOUR HEALING MAGIC SET HERE
	} -- end sets.magic.healing

	-- Magic : Enfeebling
	sets.midcast.magic.enfeebling = {
		-- INSERT YOUR ENFEEBLING MAGIC SET HERE
	} -- end sets.magic.enfeebling



end -- end get_sets()


----------------------------------------------------------------------
-- Spell arrays
----------------------------------------------------------------------
MagicHealing = {
	["Cure"] = true,
	["Cure II"] = true,
	["Cure III"] = true,
	["Cure IV"] = true,
	["Cure V"] = true,
	["Cure VI"] = true,
	["Curaga"] = true,
	["Curaga II"] = true,
	["Curaga III"] = true,
	["Curaga IV"] = true,
	["Curaga V"] = true,
	["Curaga VI"] = true,
	["Cura"] = true,
	["Cura II"] = true,
	["Cura III"] = true,
}

MagicEnfeebling = {}

MagicEnhancing = {
	["Protect"] = true,
	["Protect II"] = true,
	["Protect III"] = true,
	["Protect IV"] = true,
	["Protect V"] = true,
	["Protectra"] = true,
	["Protectra II"] = true,
	["Protectra III"] = true,
	["Protectra IV"] = true,
	["Protectra V"] = true,
	["Regen"] = true,
	["Regen II"] = true,
	["Regen III"] = true,
	["Regen IV"] = true,
	["Shell"] = true,
	["Shell II"] = true,
	["Shell III"] = true,
	["Shell IV"] = true,
	["Shell V"] = true,
	["Shellra"] = true,
	["Shellra II"] = true,
	["Shellra III"] = true,
	["Shellra IV"] = true,
	["Shellra V"] = true,
}


----------------------------------------------------------------------
-- Callback for when casting begins
----------------------------------------------------------------------
function precast(spell)
    if spell.action_type == 'Magic' then
		equip(sets.precast.fastcast)
	end
end -- end precast()


----------------------------------------------------------------------
-- Callback for after casting begins, but before it fires
----------------------------------------------------------------------
function midcast(spell)

	-- Check if the action is a specified weapon skill
	if spell.action_type == 'Magic' then

		-- Check if this is healing magic
		if MagicHealing[spell.name] then
			equip(sets.midcast.magic.healing)
		elseif MagicEnfeebling[spell.name] then
			equip(sets.midcast.magic.enfeebling)
		elseif MagicEnhancing[spell.name] then
			equip(sets.midcast.magic.enhancing)
		else
			equip(sets.midcast.magic.default)
		end

    end -- end if

end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)
	equip(sets.idle.default)
end -- end aftercast()


----------------------------------------------------------------------
-- Callback for whenever engagment status changes
----------------------------------------------------------------------
function status_change(new,old)
	equip(sets.idle.default)
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
		equip(sets.idle.default)
	end -- end if

end -- end self_command()