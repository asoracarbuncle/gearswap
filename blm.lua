function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c equip idle set')
	send_command('bind f10 gs c toggle burst mode')
	send_command('bind f11 gs c toggle death mode')


	----------------------------------------------------------------------
	-- Idle set
	----------------------------------------------------------------------
	-- Initializes an array to begin storing set data
	sets.idle = {
        main="Malignance Pole",
	    sub="Niobid Strap",
        ammo="Homiliary",
	    head="Befouled Crown",
	    body="Jhakri Robe +2",
	    hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+17 "Mag.Atk.Bns."+17','Magic burst dmg.+9%','MND+6','Mag. Acc.+14',}},
        legs="Assid. Pants +1",
	    feet="Tutyr Sabots",
        neck="Loricate Torque +1",
        waist="Fucho-no-Obi",
	    left_ear="Etiolation Earring",
	    right_ear="Static Earring",
	    left_ring="Fortified Ring",
	    right_ring="Defending Ring",
        back="Solemnity Cape",
	} -- end Idle


	----------------------------------------------------------------------
	-- Melee set
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.melee = {
	    main={ name="Lathi", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
	    sub="Niobid Strap",
	    ammo="Hydrocera",
        head="Jhakri Coronal +2",
	    body={ name="Witching Robe", augments={'MP+50','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Refresh"+1',}},
        hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+17 "Mag.Atk.Bns."+17','Magic burst dmg.+9%','MND+6','Mag. Acc.+14',}},
        legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst dmg.+1%','INT+9','Mag. Acc.+11','"Mag.Atk.Bns."+11',}},
        feet={ name="Merlinic Crackows", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Magic burst dmg.+9%','Mag. Acc.+13',}},
        neck="Loricate Torque +1",
        waist="Chaac Belt",
	    left_ear="Etiolation Earring",
	    right_ear="Static Earring",
	    left_ring="Fortified Ring",
	    right_ring="Defending Ring",
        back="Solemnity Cape",
	} -- end Melee


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Precast : FastCast
	sets.precast.fastCast = {
        main="Oranyan",
        sub="Niobid Strap",
        ammo="Impatiens",
        head={ name="Merlinic Hood", augments={'Mag. Acc.+16','"Fast Cast"+6','MND+9','"Mag.Atk.Bns."+4',}},
        body="Zendik Robe",
        hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+18','"Fast Cast"+4','CHR+8','"Mag.Atk.Bns."+7',}},
        legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet={ name="Merlinic Crackows", augments={'Mag. Acc.+26','"Fast Cast"+6','"Mag.Atk.Bns."+5',}},
        neck="Orunmila's Torque",
        waist="Witful Belt",
        left_ear="Loquac. Earring",
        right_ear="Malignance Earring",
        left_ring="Prolix Ring",
        right_ring="Kishar Ring",
        back={ name="Taranus's Cape", augments={'"Fast Cast"+10',}},
	} -- end Fast Cast


	----------------------------------------------------------------------
	-- Midcast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}

	-- Midcast : Magic : Default
	sets.midcast.magic = {}
	sets.midcast.magic.default = {
        main={ name="Lathi", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
        sub="Niobid Strap",
        ammo="Pemphredo Tathlum",
        head="Jhakri Coronal +2",
        body="Jhakri Robe +2",
        hands="Jhakri Cuffs +2",
        legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst dmg.+1%','INT+9','Mag. Acc.+11','"Mag.Atk.Bns."+11',}},
        feet="Jhakri Pigaches +2",
        neck="Sanctity Necklace",
        waist="Refoccilation Stone",
        left_ear="Regal Earring",
        right_ear="Malignance Earring",
        left_ring="Acumen Ring",
        right_ring="Freke Ring",
        back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
	} -- end Magic: Default

	-- Midcast : Magic : Dark
	sets.midcast.magic.dark = {
	    main={ name="Rubicundity", augments={'Mag. Acc.+10','"Mag.Atk.Bns."+10','Dark magic skill +10','"Conserve MP"+7',}},
	    sub="Ammurapi Shield",
	    head="Pixie Hairpin +1",
        body="Shango Robe",
        neck="Sanctity Necklace",
        waist="Fucho-no-Obi",
	    left_ring="Evanescence Ring",
		right_ring="Archon Ring",
	    back="Perimede Cape",
	} -- end Magic: Dark

	-- Midcast : Magic : Death
	deathMode = false
	sets.midcast.magic.death = {
	    main={ name="Lathi", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
	    sub="Niobid Strap",
	    ammo="Hydrocera",
	    head="Pixie Hairpin +1",
	    body={ name="Amalric Doublet", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
	    hands={ name="Amalric Gages", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
	    legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
	    feet={ name="Amalric Nails", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
	    neck="Eddy Necklace",
	    waist="Refoccilation Stone",
        left_ear="Regal Earring",
	    right_ear="Etiolation Earring",
	    left_ring="Mephitas's Ring",
	    right_ring="Mephitas's Ring +1",
        back={ name="Taranus's Cape", augments={'MP+30','Mag. Acc+10 /Mag. Dmg.+10','MP+20','"Mag.Atk.Bns."+10','Spell interruption rate down-10%',}},
	} -- end Magic: Death

	-- Midcast : Weaponskill : Default
	sets.midcast.ws = {}
	sets.midcast.ws.default = {
	} -- end Weaponskill: Default

	-- Midcast : Weaponskill : Myrkr
	sets.midcast.ws['Myrkr'] = {
	} -- end Weaponskill: Myrkr


	----------------------------------------------------------------------
	-- Job Ability Sets (not bound to a key)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.jobAbility = {}

	-- Manafont
	sets.jobAbility['Manafont'] = {
	} -- end Manafont


	----------------------------------------------------------------------
	-- Utility Sets (not bound to a key)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.utility = {}

	-- Magic burst
	burstMode = false
	sets.utility.magicBurst = {
	    hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+17 "Mag.Atk.Bns."+17','Magic burst dmg.+9%','MND+6','Mag. Acc.+14',}},
        neck="Mizu. Kubikazari",
        left_ring="Mujin Band",
        right_ring="Locus Ring",
	} -- end Magic Burst

	-- Mana Wall
	sets.jobAbility['Mana Wall'] = {
	} -- end Mana Wall

	-- Weather Bonus
	sets.utility.weatherBonus = {
	    waist="Hachirin-no-Obi",
	} -- end Weather Bonus


	----------------------------------------------------------------------
	-- Spell arrays
	----------------------------------------------------------------------
	ElementalSpells = {
		["Fire"] = true,
		["Fire II"] = true,
		["Fire III"] = true,
		["Fire IV"] = true,
		["Fire V"] = true,
		["Fire VI"] = true,
		["Blizzard"] = true,
		["Blizzard II"] = true,
		["Blizzard III"] = true,
		["Blizzard IV"] = true,
		["Blizzard V"] = true,
		["Blizzard VI"] = true,
		["Aero"] = true,
		["Aero II"] = true,
		["Aero III"] = true,
		["Aero IV"] = true,
		["Aero V"] = true,
		["Aero VI"] = true,
		["Stone"] = true,
		["Stone II"] = true,
		["Stone III"] = true,
		["Stone IV"] = true,
		["Stone V"] = true,
		["Stone VI"] = true,
		["Thunder"] = true,
		["Thunder II"] = true,
		["Thunder III"] = true,
		["Thunder IV"] = true,
		["Thunder V"] = true,
		["Thunder VI"] = true,
		["Water"] = true,
		["Water II"] = true,
		["Water III"] = true,
		["Water IV"] = true,
		["Water V"] = true,
		["Water VI"] = true,
		["Firaga"] = true,
		["Firaga II"] = true,
		["Firaga III"] = true,
		["Blizzaga"] = true,
		["Blizzaga II"] = true,
		["Blizzaga III"] = true,
		["Aeroga"] = true,
		["Aeroga II"] = true,
		["Aeroga III"] = true,
		["Stonega"] = true,
		["Stonega II"] = true,
		["Stonega III"] = true,
		["Thundaga"] = true,
		["Thundaga II"] = true,
		["Thundaga III"] = true,
		["Waterga"] = true,
		["Waterga II"] = true,
		["Waterga III"] = true,
		["Firaja"] = true,
		["Blizzaja"] = true,
		["Aeroja"] = true,
		["Stoneja"] = true,
		["Thundaja"] = true,
		["Waterja"] = true,
		["Flare"] = true,
		["Flare II"] = true,
		["Freeze"] = true,
		["Freeze II"] = true,
		["Tornado"] = true,
		["Tornado II"] = true,
		["Quake"] = true,
		["Quake II"] = true,
		["Burst"] = true,
		["Burst II"] = true,
		["Flood"] = true,
		["Flood II"] = true,
		["Comet"] = true,
		["Burn"] = true,
		["Frost"] = true,
		["Rasp"] = true,
		["Shock"] = true,
		["Drown"] = true,
	}

	DarkSpells = {
		["Aspir"] = true,
		["Aspir II"] = true,
		["Aspir III"] = true,
		["Bio"] = true,
		["Bio II"] = true,
		["Drain"] = true,
	}

end -- end get_sets()


----------------------------------------------------------------------
-- Callback for when casting begins
----------------------------------------------------------------------
function precast(spell)
	-- Ensure death mode is off
	if deathMode == false then
	    if spell.action_type == 'Magic' then
			equip(sets.precast.fastCast)
		elseif spell.type == 'JobAbility' then
			equip(sets.jobAbility[spell.english])
	    end
	end
	manaWallCheck()
end -- end precast()


----------------------------------------------------------------------
-- Callback for after casting begins, but before it fires
----------------------------------------------------------------------
function midcast(spell)

	-- Ensure death mode is off
	if deathMode == false then

		-- Check if the action is a specified weapon skill
		if spell.action_type == 'Magic' then

			-- 1. Check if the spell is dark magic
			if DarkSpells[spell.english] then
				equip(sets.midcast.magic.dark)
			elseif ElementalSpells[spell.english] then
				equip(sets.midcast.magic.default)
			end

			-- 2. Check if burst mode is on
			if burstMode == true then
				equip(sets.utility.magicBurst)
			end

		    -- 3. Check for element bonus
		    if ElementalSpells[spell.english] then
				if spell.element == world.weather_element or spell.element == world.day_element then
					equip(sets.utility.weatherBonus)
				end
			end

	    elseif spell.type == 'WeaponSkill' then

	    	-- Check if a specific ws set exists
			if sets.midcast.ws[spell.name] then
				-- Equip the appropriate ws specific set
				equip(sets.midcast.ws[spell.name])
			else
	    		-- Equip default ws set
				equip(sets.midcast.ws.default)
			end
	    end
	end
	manaWallCheck()
end -- end Midcast


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)
	-- Ensure death mode is off
	if deathMode == false then
		if player.status =='Engaged' then
			equip(sets.melee)
		else
			equip(sets.idle)
		end
	end
	manaWallCheck()
end -- end Aftercast


----------------------------------------------------------------------
-- Callback for whenever engagment status changes
----------------------------------------------------------------------
function status_change(new,old)
	-- Ensure death mode is off
	if deathMode == false then
		if new == 'Engaged' then
			equip(sets.melee)
		else
			equip(sets.idle)
		end
	end
	manaWallCheck()
end -- end Status Change


----------------------------------------------------------------------
-- When buffs are gained or lost
----------------------------------------------------------------------
function buff_change(buffName, gained, buffDetails)
	manaWallCheck()
end -- end Buff Change


----------------------------------------------------------------------
-- In game alerts to gear set changes
----------------------------------------------------------------------
function self_command(command)

	-- Equip the idle set
	if command == 'equip idle set' then
		if deathMode == false then
			equip(sets.idle)
			send_command('@input /echo <----- Idle Set Equipped ----->')
		else
			send_command('@input /echo <----- ERROR: Disable Death Mode ----->')
		end
	end -- end Idle Set

	-- Toggle burst mode
	if command == 'toggle burst mode' then
		if burstMode == false then
			burstMode = true
			send_command('@input /echo <----- Burst Mode On ----->')
		else
			burstMode = false
			send_command('@input /echo <----- Burst Mode Off ----->')
		end
	end -- end Burst Mode

	-- Toggle death mode
	if command == 'toggle death mode' then
		-- Check status of deathMode
		if deathMode == false then
			deathMode = true
			equip(sets.midcast.magic.death)
			send_command('@input /echo <----- Death Mode On ----->')
		else
			-- Toggle deathMode off
			deathMode = false
			if player.status == "Engaged" then
				equip(sets.melee)
			else
				equip(sets.idle)
			end
			send_command('@input /echo <----- Death Mode Off ----->')
		end
	end -- end Death Mode

end -- end Self Command

----------------------------------------------------------------------
-- Checks for Mana Wall
----------------------------------------------------------------------
function manaWallCheck()
	if buffactive['Mana Wall'] then
		equip(sets.utility.manaWall)
	end
end


----------------------------------------------------------------------
-- Event Listener
----------------------------------------------------------------------
-- Callback for when the job is changed
----------------------------------------------------------------------
isInitialChange = true
function job_change(mainId, mainLvl, subId, subLvl)
	equip(sets.idle)
	if isInitialChange then
	    coroutine.schedule(function() send_command('input /macro book 6;wait .5;input /macro set 1;input /lockstyleset 19') end, 10)
	    isInitialChange = false
	end
end -- end job_change()
windower.register_event('job change', job_change)


----------------------------------------------------------------------
-- Event Listener
----------------------------------------------------------------------
-- Callback for when entering a zone
----------------------------------------------------------------------
windower.register_event('zone change', function() equip(sets.idle) end)