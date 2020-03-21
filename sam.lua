function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')
	send_command('bind f10 gs c toggle melee set')


	----------------------------------------------------------------------
	-- Idle set
	----------------------------------------------------------------------
	-- Initializes an array to begin storing set data
	sets.idle = {}

	-- Idle : Default
	sets.idle = {
	    ammo="Ginsen",
        head="Wakido Kabuto +3",
        body="Hiza. Haramaki +2",
	    hands={ name="Sakonji Kote +3", augments={'Enhances "Blade Bash" effect',}},
	    legs="Wakido Haidate +3",
	    feet={ name="Sak. Sune-Ate +3", augments={'Enhances "Meikyo Shisui" effect',}},
        neck="Loricate Torque +1",
	    waist="Ioskeha Belt +1",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Defending Ring",
        right_ring="Vocane Ring",
	    back="Moonbeam Cape",
	} -- end sets.idle


	----------------------------------------------------------------------
	-- Melee set
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.melee = {}

	-- Melee : default
	-- Store TP: 64
	-- Haste: 26%
	-- Triple Attack: 5%
	-- Double Attack: 33%
	-- Accuracy: 1278
	sets.melee = {
	    ammo="Ginsen",
	    head="Flam. Zucchetto +2",
	    body="Wakido Domaru +3",
	    hands="Wakido Kote +3",
	    legs="Wakido Haidate +3",
	    feet="Flam. Gambieras +2",
	    neck="Moonlight Nodowa",
	    waist="Ioskeha Belt +1",
	    left_ear="Cessance Earring",
	    right_ear="Brutal Earring",
	    left_ring="Flamma Ring",
	    right_ring="Ilabrat Ring",
	    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	} -- end sets.melee


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Precast : Fast Cast
	sets.precast.fastCast = {
        ammo="Sapience Orb",
        hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="Arjuna Breeches",
        neck="Orunmila's Torque",
        left_ear="Etiolation Earring",
        right_ear="Loquac. Earring",
        left_ring="Lebeche Ring",
        right_ring="Prolix Ring",
	} -- end sets.precast.fastCast


	----------------------------------------------------------------------
	-- Midcast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}
	sets.midcast.ws = {}

	-- Midcast : Weapon Skill : Single Hit Physical
	-- Strength: 267
	-- Weapon Skill Damage: 58%
	sets.midcast.ws.default = {
        ammo="Knobkierrie",
        head="Wakido Kabuto +3",
	    body={ name="Sakonji Domaru +3", augments={'Enhances "Overwhelm" effect',}},
        hands={ name="Sakonji Kote +3", augments={'Enhances "Blade Bash" effect',}},
	    legs="Wakido Haidate +3",
	    feet={ name="Sak. Sune-Ate +3", augments={'Enhances "Meikyo Shisui" effect',}},
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Ishvara Earring",
	    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
	    left_ring="Shukuyu Ring",
        right_ring="Regal Ring",
        back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	} -- end sets.midcast.ws.default

	-- Midcast : Weapon Skill : Elemental
	-- Strength: 182
	-- Magic Attack Bonus: 160
	sets.midcast.ws.elemental = {
        ammo="Pemphredo Tathlum",
        head="Wakido Kabuto +3",
        body={ name="Found. Breastplate", augments={'Accuracy+15','Mag. Acc.+15','Attack+15','"Mag.Atk.Bns."+15',}},
        hands={ name="Founder's Gauntlets", augments={'STR+5','"Mag.Atk.Bns."+1',}},
        legs="Augury Cuisses",
        feet={ name="Founder's Greaves", augments={'VIT+10','Accuracy+15','"Mag.Atk.Bns."+15','Mag. Evasion+15',}},
        neck="Baetyl Pendant",
        waist="Eschan Stone",
        left_ear="Friomisi Earring",
        right_ear="Hecate's Earring",
        left_ring="Acumen Ring",
        right_ring="Mujin Band",
        back={ name="Smertrios's Mantle", augments={'STR+20','Mag. Acc+20 /Mag. Dmg.+20','STR+6','"Mag.Atk.Bns."+10',}},
	} -- end sets.midcast.ws.elemental

	-- Midcast : Weapon Skill : Tachi: Goten
	sets.midcast.ws["Tachi: Goten"] = sets.midcast.ws.elemental

	-- Midcast : Weapon Skill : Tachi: Jinpu
	sets.midcast.ws["Tachi: Jinpu"] = sets.midcast.ws.elemental

	-- Midcast : Weapon Skill : Tachi: Kagero
	sets.midcast.ws["Tachi: Kagero"] = sets.midcast.ws.elemental

	-- Midcast : Weapon Skill : Tachi: Koki
	sets.midcast.ws["Tachi: Koki"] = sets.midcast.ws.elemental


	----------------------------------------------------------------------
	-- Utility Sets (not bound to a key)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.utility = {}

	-- Hasso set
	sets.utility.hasso = {
        hands="Wakido Kote +3",
	    legs="Kasuga Haidate +1",
        feet="Wakido Sune. +2",
	} -- end sets.utility.hasso

	-- Meditate set
	sets.utility.meditate = {
        head="Wakido Kabuto +3",
        hands={ name="Sakonji Kote +3", augments={'Enhances "Blade Bash" effect',}},
        back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
	} -- end sets.utility.meditate

	-- Warding Circle set
	sets.utility.wardingCircle = {
        head="Wakido Kabuto +3",
	} -- end sets.utility.wardingCircle

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
		if sets.midcast.ws[spell.english] then
			-- Equip the appropriate specific ws set
			equip(sets.midcast.ws[spell.english])
	    else
	    	-- Equip default ws set
			equip(sets.midcast.ws.default)
		end

	elseif spell.type == 'JobAbility' then

		if spell.english == 'Hasso' then
			equip(sets.utility.hasso)
		elseif spell.english == 'Meditate' then
			equip(sets.utility.meditate)
		elseif spell.english == 'Warding Circle' then
			equip(sets.utility.wardingCircle)
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
	if command == 'toggle idle set' then
		-- Alert the user which set is currently being equipped
		send_command('@input /echo <----- Idle Set Equipped ----->')
		-- Equip the set
		equip(sets.idle)
	end -- end if

	-- Equip melee set
	if command == 'toggle melee set' then
		-- Alert the user which set is currently being equipped
		send_command('@input /echo <----- Melee Set Equipped ----->')
		-- Equip the set
		equip(sets.melee)
	end -- end if

end -- end self_command()