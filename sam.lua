function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')


	----------------------------------------------------------------------
	-- Idle set(s)
	----------------------------------------------------------------------
	sets.idle = {
	    ammo="Ginsen",
        head="Wakido Kabuto +3",
        body="Sacro Breastplate",
	    hands={ name="Sakonji Kote +3", augments={'Enhances "Blade Bash" effect',}},
	    legs="Wakido Haidate +3",
	    feet={ name="Sak. Sune-Ate +3", augments={'Enhances "Meikyo Shisui" effect',}},
        neck="Loricate Torque +1",
        waist="Sarissapho. Belt",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
	    left_ring="Fortified Ring",
	    right_ring="Defending Ring",
	    back="Moonbeam Cape",
	} -- end Idle


	----------------------------------------------------------------------
	-- Engaged set(s)
	----------------------------------------------------------------------
	sets.engaged = {
        ammo="Ginsen",
        head="Flam. Zucchetto +2",
        body="Ken. Samue +1",
        -- hands="Ken. Tekko +1",
        hands="Wakido Kote +3",
        legs="Ken. Hakama +1",
        feet="Ken. Sune-Ate +1",
        neck={ name="Sam. Nodowa +2", augments={'Path: A',}},
        waist="Windbuffet Belt +1",
        left_ear="Dedition Earring",
        right_ear="Telos Earring",
        left_ring="Flamma Ring",
        right_ring="Niqmaddu Ring",
        back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Damage taken-5%',}},
	} -- end Engaged


	----------------------------------------------------------------------
	-- Precast set(s)
	sets.precast = {}
	----------------------------------------------------------------------

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
	sets.midcast = {}
	sets.midcast.ws = {}
	----------------------------------------------------------------------

	-- Midcast : Weapon Skill : Default
	-- Strength: 267
	-- Weapon Skill Damage: 58%
	sets.midcast.ws.default = {
        ammo="Knobkierrie",
        head={ name="Sakonji Kabuto +3", augments={'Enhances "Ikishoten" effect',}},
	    body={ name="Sakonji Domaru +3", augments={'Enhances "Overwhelm" effect',}},
        hands={ name="Sakonji Kote +3", augments={'Enhances "Blade Bash" effect',}},
	    legs="Wakido Haidate +3",
	    feet={ name="Sak. Sune-Ate +3", augments={'Enhances "Meikyo Shisui" effect',}},
        neck={ name="Sam. Nodowa +2", augments={'Path: A',}},
        waist="Fotia Belt",
        left_ear="Thrud Earring",
	    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
	    left_ring="Shukuyu Ring",
        right_ring="Regal Ring",
        back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	} -- end Weaponskill Default

	-- Midcast : Weapon Skill : Tachi: Fudo
	sets.midcast.ws["Tachi: Fudo"] = {
        ammo="Knobkierrie",
        head={ name="Sakonji Kabuto +3", augments={'Enhances "Ikishoten" effect',}},
	    body={ name="Sakonji Domaru +3", augments={'Enhances "Overwhelm" effect',}},
        hands={ name="Sakonji Kote +3", augments={'Enhances "Blade Bash" effect',}},
	    legs="Wakido Haidate +3",
	    feet={ name="Sak. Sune-Ate +3", augments={'Enhances "Meikyo Shisui" effect',}},
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Thrud Earring",
	    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="Karieyh Ring",
        right_ring="Regal Ring",
        back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	} -- end Tachi: Fudo

	-- Midcast : Weapon Skill : Tachi: Shoha
	sets.midcast.ws["Tachi: Shoha"] = {
        ammo="Knobkierrie",
        head={ name="Sakonji Kabuto +3", augments={'Enhances "Ikishoten" effect',}},
	    body={ name="Sakonji Domaru +3", augments={'Enhances "Overwhelm" effect',}},
        hands={ name="Sakonji Kote +3", augments={'Enhances "Blade Bash" effect',}},
	    legs="Wakido Haidate +3",
	    feet={ name="Sak. Sune-Ate +3", augments={'Enhances "Meikyo Shisui" effect',}},
        neck={ name="Sam. Nodowa +2", augments={'Path: A',}},
        waist="Fotia Belt",
        left_ear="Thrud Earring",
	    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
	    left_ring="Shukuyu Ring",
        right_ring="Regal Ring",
        back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	} -- end Tachi: Shoha

	-- Midcast : Weapon Skill : Impulse Drive
	sets.midcast.ws["Impulse Drive"] = {
        ammo="Knobkierrie",
        head="Flam. Zucchetto +2",
        body="Ken. Samue +1",
        hands="Flam. Manopolas +2",
        legs="Ken. Hakama +1",
        feet="Ken. Sune-Ate +1",
        neck={ name="Sam. Nodowa +2", augments={'Path: A',}},
        waist="Fotia Belt",
        left_ear="Brutal Earring",
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="Shukuyu Ring",
        right_ring="Regal Ring",
        back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	} -- end Impulse Drive

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
        back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
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

	-- Meditate set
	sets.utility.meditate = {
        head="Wakido Kabuto +3",
        hands={ name="Sakonji Kote +3", augments={'Enhances "Blade Bash" effect',}},
        back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
	} -- end Meditate

	-- Sekkanoki set
	sets.utility.sekkanoki = {
        hands="Kasuga Kote +1",
	} -- end Sekkanoki

	-- Sengikori set
	sets.utility.sengikori = {
        feet="Kas. Sune-Ate +1",
	} -- end Sengikori

	-- Warding Circle set
	sets.utility.wardingCircle = {
        head="Wakido Kabuto +3",
	} -- end Warding Circle

end -- end get_sets()


----------------------------------------------------------------------
-- Callback for when casting begins
----------------------------------------------------------------------
function precast(spell)
	-- Magic
    if spell.action_type == 'Magic' then
		equip(sets.precast.fastCast)
	-- Weapon Skill
	elseif spell.action_type == 'WeaponSkill' then
		sekkanokiCheck()
		sengikoriCheck()
	end
end -- end precast()


----------------------------------------------------------------------
-- Callback for after casting begins, but before it fires
----------------------------------------------------------------------
function midcast(spell)

	if spell.type == 'JobAbility' then

		-- Meditate
		if spell.english == 'Meditate' then
			equip(sets.utility.meditate)

		-- Warding Circle
		elseif spell.english == 'Warding Circle' then
			equip(sets.utility.wardingCircle)
		end

	-- Check if the action is a weapon skill
    elseif spell.type == 'WeaponSkill' then
    	
		-- Check if the action is a specified weapon skill
		if sets.midcast.ws[spell.english] then
			equip(sets.midcast.ws[spell.english])
	    else
			equip(sets.midcast.ws.default)
		end
		sekkanokiCheck()
		sengikoriCheck()
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
	if command == 'toggle idle set' then
		send_command('@input /echo <----- Idle Set Equipped ----->')
		equip(sets.idle)
	end -- end if

end -- end self_command()


----------------------------------------------------------------------
-- Checks for Sekkanoki and equips accordingly
----------------------------------------------------------------------
function sekkanokiCheck()
	if buffactive.sekkanoki then
		equip(sets.utility.sekkanoki)
	end
end

----------------------------------------------------------------------
-- Checks for Sengikori and equips accordingly
----------------------------------------------------------------------
function sengikoriCheck()
	if buffactive.sengikori then
		equip(sets.utility.sengikori)
	end
end
