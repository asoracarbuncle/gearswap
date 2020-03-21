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
	    ammo="Mantoptera Eye",
        head="Mummu Bonnet +1",
        body="Hiza. Haramaki +2",
        hands="Mummu Wrists +1",
        legs="Mummu Kecks +1",
        feet="Mummu Gamash. +1",
        neck="Loricate Torque +1",
        waist="Grunfeld Rope",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Defending Ring",
        right_ring="Vocane Ring",
        back="Reiki Cloak",
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
	    neck="Moonlight Nodowa",
	    waist="Windbuffet Belt +1",
	    left_ear="Telos Earring",
	    right_ear="Dedition Earring",
	    left_ring="Epona's Ring",
	    right_ring="Hetairoi Ring",
	    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
	} -- end sets.melee


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Precast : Fast Cast
	sets.precast.fastCast = {
	    ammo="Sapience Orb",
        head={ name="Herculean Helm", augments={'Pet: Attack+28 Pet: Rng.Atk.+28','INT+8','"Treasure Hunter"+1','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
	    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
	    legs="Gyve Trousers",
        neck="Orunmila's Torque",
	    left_ear="Loquac. Earring",
	    right_ear="Etiolation Earring",
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
        ammo="Falcon Eye",
	    head="Mummu Bonnet +1",
	    body="Mummu Jacket +1",
	    hands="Mummu Wrists +1",
	    legs="Mummu Kecks +1",
	    feet="Mummu Gamash. +1",
	    neck="Fotia Gorget",
	    waist="Fotia Belt",
	    left_ear="Ishvara Earring",
	    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
	    left_ring="Regal Ring",
	    right_ring="Begrudging Ring",
	    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
	} -- end sets.midcast.ws.default

	-- Midcast : Weapon Skill : Blade: Hi
	sets.midcast.ws["Blade: Hi"] = {
        ammo="Falcon Eye",
	    head="Mummu Bonnet +1",
	    body="Mummu Jacket +1",
	    hands="Mummu Wrists +1",
	    legs="Mummu Kecks +1",
	    feet="Mummu Gamash. +1",
	    neck="Fotia Gorget",
	    waist="Fotia Belt",
	    left_ear="Ishvara Earring",
	    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
	    left_ring="Regal Ring",
	    right_ring="Begrudging Ring",
	    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
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

	-- Mikage set
	sets.utility.mikage = {
	    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
	} -- end sets.utility.mikage

	-- Utsusemi set
	sets.utility.utsusemi = {
        feet="Iga Kyahan +2",
	    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
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
		elseif spell.name == 'Mikage' then
			equip(sets.utility.mikage)
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