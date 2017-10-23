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
	    ammo="Ginsen",
	    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
	    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
	    hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
	    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
	    feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+2','DEX+6','Accuracy+7','Attack+14',}},
	    neck="Asperity Necklace",
	    waist="Grunfeld Rope",
	    left_ear="Suppanomimi",
	    right_ear="Brutal Earring",
	    left_ring="Epona's Ring",
	    right_ring="Rajas Ring",
	    back="Atheling Mantle",
	} -- end sets.idle


	----------------------------------------------------------------------
	-- Melee set
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.melee = {}

	-- Melee : default
	sets.melee = {
	    ammo="Ginsen",
	    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
	    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
	    hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
	    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
	    feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+2','DEX+6','Accuracy+7','Attack+14',}},
	    neck="Asperity Necklace",
	    waist="Grunfeld Rope",
	    left_ear="Suppanomimi",
	    right_ear="Brutal Earring",
	    left_ring="Epona's Ring",
	    right_ring="Rajas Ring",
	    back="Atheling Mantle",
	} -- end sets.melee


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Precast : Fast Cast
	sets.precast.fastCast = {
	    head={ name="Herculean Helm", augments={'Accuracy+23 Attack+23','Crit. hit damage +2%','Accuracy+12','Attack+10',}},
	    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
	    legs="Gyve Trousers",
	    neck="Voltsurge Torque",
	    left_ear="Etiolation Earring",
	    right_ear="Loquac. Earring",
	    left_ring="Kishar Ring",
	    right_ring="Prolix Ring",
	} -- end sets.precast.fastCast


	----------------------------------------------------------------------
	-- Midcast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}
	sets.midcast.ws = {}

	-- Midcast : Magic
	sets.midcast.magic = {
	} -- end sets.midcast.magic

	-- Midcast : Weapon Skill : Default
	sets.midcast.ws.default = {
	} -- end sets.midcast.ws.default

	-- Midcast : Weapon Skill : Blade: Hi
	sets.midcast.ws["Blade: Hi"] = {
	} -- end sets.midcast.ws["Blade: Hi"]


	----------------------------------------------------------------------
	-- Utility Sets (not bound to a key)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.utility = {}

	-- Futae set
	sets.utility.futae = {
	} -- end sets.utility.futae

	-- Innin set
	sets.utility.innin = {
	} -- end sets.utility.innin

	-- Migawari set
	sets.utility.migawari = {
	} -- end sets.utility.migawari

	-- Utsusemi set
	sets.utility.utsusemi = {
	} -- end sets.utility.utsusemi

	-- Yonin set
	sets.utility.yonin = {
	} -- end sets.utility.yonin


	----------------------------------------------------------------------
	-- Spell arrays
	----------------------------------------------------------------------
	MigawariSpells = {
		["Migawari: Ichi"] = true,
	}

	UtsusemiSpells = {
		["Utsusemi: Ichi"] = true,
		["Utsusemi: Ni"] = true,
		["Utsusemi: San"] = true,
	}

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
			equip(sets.midcast.ws[spell.name])
		-- If not, use the default weapon skill set
	    else
			equip(sets.midcast.ws.default)
		end
	-- Check if the action is a magic spell
    elseif spell.action_type == 'Magic' then
    	-- Check if the spell is migawari
    	if MigawariSpells[spell.name] then
			equip(sets.utility.migawari)
    	-- Check if the spell is utsusemi
    	elseif UtsusemiSpells[spell.name] then
			equip(sets.utility.utsusemi)
    	-- Equip the catch all magic set
    	else
			equip(sets.midcast.magic)
		end
	-- Check if the action is a job ability
	elseif spell.type == 'JobAbility' then
		if spell.name == 'Futae' then
			equip(sets.utility.futae)
		elseif spell.name == 'Innin' then
			equip(sets.utility.innin)
		elseif spell.name == 'Yonin' then
			equip(sets.utility.yonin)
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