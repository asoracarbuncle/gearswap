function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c equip idle set')
	send_command('bind f10 gs c toggle treasureHunter set')


	----------------------------------------------------------------------
	-- Idle set
	----------------------------------------------------------------------
	sets.idle = {
	    main="Aeneas",
	    sub={ name="Taming Sari", augments={'STR+10','DEX+10','DMG:+15','"Treasure Hunter"+1',}},
	    ammo="Mantoptera Eye",
	    head="Malignance Chapeau",
	    body="Mummu Jacket +2",
	    hands="Mummu Wrists +2",
	    legs="Mummu Kecks +2",
	    feet="Mummu Gamash. +2",
	    neck="Loricate Torque +1",
	    waist="Windbuffet Belt +1",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Karieyh Ring",
	    right_ring="Defending Ring",
	    back="Reiki Cloak",
	} -- end Idle


	----------------------------------------------------------------------
	-- Melee set
	----------------------------------------------------------------------
	sets.melee = {
	    main="Aeneas",
	    sub={ name="Taming Sari", augments={'STR+10','DEX+10','DMG:+15','"Treasure Hunter"+1',}},
	    ammo="Ginsen",
	    head="Malignance Chapeau",
	    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
	    hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
	    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
	    feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+2','DEX+6','Accuracy+7','Attack+14',}},
	    neck="Clotharius Torque",
	    waist="Sarissapho. Belt",
	    left_ear="Dedition Earring",
	    right_ear="Sherida Earring",
        left_ring="Epona's Ring",
        right_ring="Gere Ring",
	    back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
	} -- end Melee


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Precast : Fastcast
	sets.precast.fastCast = {
	    ammo="Sapience Orb",
        head={ name="Herculean Helm", augments={'Mag. Acc.+4','"Fast Cast"+6','MND+5',}},
        body={ name="Herculean Vest", augments={'Mag. Acc.+9','"Fast Cast"+5','"Mag.Atk.Bns."+7',}},
	    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
	    legs="Limbo Trousers",
        feet={ name="Herculean Boots", augments={'"Fast Cast"+5','INT+13','"Mag.Atk.Bns."+13',}},
        neck="Orunmila's Torque",
        left_ear="Loquac. Earring",
        right_ear="Etiolation Earring",
        left_ring="Kishar Ring",
        right_ring="Prolix Ring",
	} -- end Fast Cast


	----------------------------------------------------------------------
	-- Midcast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}
	sets.midcast.ws = {}

	-- Midcast : Weapon Skill : Default
	sets.midcast.ws.default = {
        ammo="Falcon Eye",
	    head="Mummu Bonnet +2",
	    body="Mummu Jacket +2",
	    hands="Mummu Wrists +2",
	    legs="Mummu Kecks +2",
	    feet="Mummu Gamash. +2",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Telos Earring",
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="Regal Ring",
        right_ring="Begrudging Ring",
        back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
	} -- end Default

	-- Midcast : Weapon Skill : Rudra's Storm
	sets.midcast.ws["Rudra's Storm"] = {
        ammo="Falcon Eye",
        head="Malignance Chapeau",
        body="Meg. Cuirie +2",
        hands="Meg. Gloves +2",
        legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet="Mummu Gamash. +2",
        neck="Caro Necklace",
        waist="Grunfeld Rope",
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="Sherida Earring",
        left_ring="Ilabrat Ring",
        right_ring="Regal Ring",
        back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
	} -- end Rudra'S Storm

	-- Midcast : Weapon Skill : Evisceration
	sets.midcast.ws['Evisceration'] = {
        ammo="Falcon Eye",
	    head="Malignance Chapeau",
	    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
	    hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
	    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+2','DEX+6','Accuracy+7','Attack+14',}},
	    neck="Fotia Gorget",
	    waist="Fotia Belt",
	    left_ear="Telos Earring",
	    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="Regal Ring",
	    right_ring="Begrudging Ring",
        back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
	} -- end Evisceration

	-- Midcast : Weapon Skill : Mandalic Stab
	sets.midcast.ws['Mandalic Stab'] = {
        ammo="Falcon Eye",
        head="Malignance Chapeau",
        body="Meg. Cuirie +2",
        hands="Meg. Gloves +2",
        legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet="Mummu Gamash. +2",
        neck="Caro Necklace",
        waist="Grunfeld Rope",
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="Sherida Earring",
        left_ring="Ilabrat Ring",
        right_ring="Regal Ring",
        back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
	} -- end Mandalic Stab


	----------------------------------------------------------------------
	-- Utility sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.utility = {}

	-- Utility : TreasureHunter
	treasureHunter = false;
	sets.utility.treasureHunter = {
	    main={ name="Sandung", augments={'Accuracy+50','Crit. hit rate+5%','"Triple Atk."+3',}},
	    sub={ name="Taming Sari", augments={'STR+10','DEX+10','DMG:+15','"Treasure Hunter"+1',}},
        head={ name="Herculean Helm", augments={'Pet: Attack+28 Pet: Rng.Atk.+28','INT+8','"Treasure Hunter"+1','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
        body={ name="Herculean Vest", augments={'Pet: "Dbl.Atk."+3 Pet: Crit.hit rate +3','Chance of successful block +1','"Treasure Hunter"+1','Accuracy+12 Attack+12',}},
	    hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs={ name="Herculean Trousers", augments={'INT+8','Attack+4','"Treasure Hunter"+1','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
	    feet="Skulk. Poulaines +1",
	    waist="Chaac Belt",
	} -- end Treasure Hunter


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
		-- Equip specific weapon skill set
		if sets.midcast.ws[spell.english] then
			equip(sets.midcast.ws[spell.english])
		-- Equip default weapon skill set
		else
			equip(sets.midcast.ws.default)
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
		equip(set_combine(sets.melee, sets.idle))
	end

	-- Check if treasure hunter is enabled
	if treasureHunter == true then
		equip(sets.utility.treasureHunter)
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

	-- Check if treasure hunter is enabled
	if treasureHunter == true then
		equip(sets.utility.treasureHunter)
	end

end -- end status_change()


----------------------------------------------------------------------
-- In game alerts to gear set changes
----------------------------------------------------------------------
function self_command(command)

	-- Equip the idle set
	if command == 'equip idle set' then
		-- Alert the user which set is currently being equipped
		send_command('@input /echo <----- Idle: Default Set Equipped ----->')
		-- Equip the set
		equip(sets.idle)
	end -- end if

	-- Toggle on or off the treasure hunter utility set
	if command == 'toggle treasureHunter set' then

		-- Start by equipping the current idle set
		equip(sets.idle)

		-- Check the status of treasure hunter
		if treasureHunter == false then
			-- Alert the user which set is currently being equipped
			send_command('@input /echo <----- Treasure Hunter Enabled ----->')
			-- Toggle the treasure hunter variable
			treasureHunter = true;
			-- Equip the treasure hunter set
			equip(sets.utility.treasureHunter)
		elseif treasureHunter == true then
			-- Alert the user which set is currently being equipped
			send_command('@input /echo <----- Treasure Hunter Disabled ----->')
			-- Toggle the treasure hunter variable
			treasureHunter = false;
			-- Equip the idle set
			equip(sets.idle)
		end

	end -- end if

end -- end self_command()