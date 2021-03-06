function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')


	----------------------------------------------------------------------
	-- Idle sets
	----------------------------------------------------------------------
	sets.idle = {
	    main={ name="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
        sub="Genmei Shield",
	    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
	    head="Azimuth Hood +1",
        body="Jhakri Robe +2",
        hands="Geo. Mitaines +1",
	    legs="Assid. Pants +1",
        feet="Geo. Sandals +1",
        neck="Loricate Torque +1",
        waist="Isa Belt",
	    left_ear="Handler's Earring",
	    right_ear="Handler's Earring +1",
        left_ring="Fortified Ring",
        right_ring="Defending Ring",
	    back={ name="Lifestream Cape", augments={'Geomancy Skill +10','Indi. eff. dur. +19','Pet: Damage taken -2%',}},
	} -- end Idle


	----------------------------------------------------------------------
	-- Melee sets
	----------------------------------------------------------------------
	sets.melee = {
	    main={ name="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
        sub="Genmei Shield",
	    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
        head="Jhakri Coronal +2",
        body="Jhakri Robe +2",
        hands="Jhakri Cuffs +2",
        legs="Jhakri Slops +2",
        feet="Jhakri Pigaches +2",
        neck="Asperity Necklace",
        waist="Grunfeld Rope",
        left_ear="Brutal Earring",
        right_ear="Cessance Earring",
        left_ring="Rajas Ring",
        right_ring="Petrov Ring",
	    back={ name="Lifestream Cape", augments={'Geomancy Skill +10','Indi. eff. dur. +19','Pet: Damage taken -2%',}},
	} -- end Melee


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Fast cast set
	sets.precast.fastCast = {
	    head={ name="Merlinic Hood", augments={'Mag. Acc.+16','"Fast Cast"+6','MND+9','"Mag.Atk.Bns."+4',}},
        body="Zendik Robe",
        hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+18','"Fast Cast"+4','CHR+8','"Mag.Atk.Bns."+7',}},
	    legs="Geomancy Pants",
	    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+26','"Fast Cast"+6','"Mag.Atk.Bns."+5',}},
        neck="Orunmila's Torque",
        waist="Witful Belt",
        left_ear="Loquac. Earring",
        right_ear="Etiolation Earring",
        left_ring="Prolix Ring",
        right_ring="Kishar Ring",
        back={ name="Nantosuelta's Cape", augments={'"Fast Cast"+10',}},
	} -- end sets.precast.fastCast


	----------------------------------------------------------------------
	-- Midcast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}

	-- Magic : Default
	sets.midcast.magic = {
	    main={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
        head="Jhakri Coronal +2",
        body="Jhakri Robe +2",
        hands="Jhakri Cuffs +2",
        legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst dmg.+1%','INT+9','Mag. Acc.+11','"Mag.Atk.Bns."+11',}},
        feet="Jhakri Pigaches +2",
	    neck="Mizu. Kubikazari",
	    waist="Refoccilation Stone",
        left_ear="Friomisi Earring",
        right_ear="Hecate's Earring",
        left_ring="Mujin Band",
        right_ring="Locus Ring",
        back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
	} -- end sets.magic.default

	-- Midcast : Cure Potency
	sets.midcast.curePotency = {
        main={ name="Serenity", augments={'MP+50','Enha.mag. skill +10','"Cure" potency +5%','"Cure" spellcasting time -10%',}},
        ammo="Hydrocera",
        head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
        hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+17 "Mag.Atk.Bns."+17','Magic burst dmg.+9%','MND+6','Mag. Acc.+14',}},
        legs="Gyve Trousers",
        feet={ name="Medium's Sabots", augments={'MP+50','MND+8','"Conserve MP"+6','"Cure" potency +3%',}},
        neck="Incanter's Torque",
        waist="Luminary Sash",
        left_ear="Lifestorm Earring",
        right_ear="Static Earring",
        left_ring="Vertigo Ring",
        right_ring="Lebeche Ring",
        back="Solemnity Cape",
	} -- end sets.midcast.curePotency


	----------------------------------------------------------------------
	-- Utility Sets (not bound to a key)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.utility = {}

	-- Dark magic
	sets.utility.darkMagic = {
	    main={ name="Rubicundity", augments={'Mag. Acc.+10','"Mag.Atk.Bns."+10','Dark magic skill +10','"Conserve MP"+7',}},
        body="Shango Robe",
	    neck="Erra Pendant",
        waist="Fucho-no-Obi",
	    left_ring="Evanescence Ring",
		right_ring="Archon Ring",
	    back="Perimede Cape",
	} -- end sets.utility.darkMagic

	-- Geomancer magic skill
	sets.utility.geoSkill = {
	    head="Azimuth Hood +1",
	    body={ name="Bagua Tunic +1", augments={'Enhances "Bolster" effect',}},
	    hands="Geo. Mitaines +1",
	    feet={ name="Medium's Sabots", augments={'MP+50','MND+8','"Conserve MP"+6','"Cure" potency +3%',}},
        neck="Incanter's Torque",
	    waist="Kobo Obi",
	    back={ name="Lifestream Cape", augments={'Geomancy Skill +10','Indi. eff. dur. +19','Pet: Damage taken -2%',}},
	} -- end sets.utility.geoSkill


	----------------------------------------------------------------------
	-- Spell arrays
	----------------------------------------------------------------------
	CureSpells = {
		["Cure"] = true,
		["Cure II"] = true,
		["Cure III"] = true,
		["Cure IV"] = true,
	}

	DarkSpells = {
		["Aspir"] = true,
		["Aspir II"] = true,
		["Aspir III"] = true,
		["Drain"] = true,
	}

end -- end get_sets()


----------------------------------------------------------------------
-- Callback function for when the lua is unloaded
----------------------------------------------------------------------
function file_unload()

	-- Upon unloading this lua file, remove commonly used key binds
    send_command('unbind f9')

end    


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

	-- Check if the action is a specified weapon skill
	if spell.action_type == 'Magic' then

		-- Check if the spell is a geo spell
		if spell.skill == 'Geomancy' or spell.skill == 'Handbell' then
			equip(sets.utility.geoSkill)
		-- Check if the spell is a cure
    	elseif CureSpells[spell.english] then
			equip(sets.midcast.curePotency)
		-- Check if the spell is dark magic
		elseif DarkSpells[spell.english] then
			equip(set_combine(sets.midcast.magic, sets.utility.darkMagic))
		-- For all other spells that do not meet the above conditions
		else
			equip(sets.midcast.magic)
		end

    end -- end if

end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)
	-- Check if the player is still engaged after the cast
	if player.status =='Engaged' then
		equip(sets.melee)
	-- Check if the player is not still engaged after the cast
	else
		equip(sets.idle)
	end
end -- end aftercast()


----------------------------------------------------------------------
-- Callback for whenever engagment status changes
----------------------------------------------------------------------
function status_change(newStatus, oldStatus)
	-- Check if player status has switched to engaged
	if newStatus == 'Engaged' then
		equip(sets.melee)
	-- Check if player status has switched to idle
	else
		equip(sets.idle)
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


----------------------------------------------------------------------
-- Event Listener
----------------------------------------------------------------------
-- Callback for when the job is changed
----------------------------------------------------------------------
isInitialChange = true
function job_change(mainId, mainLvl, subId, subLvl)
	equip(sets.idle)
	if isInitialChange then
	    coroutine.schedule(function() send_command('input /macro book 5;wait .5;input /macro set 1;input /lockstyleset 1') end, 10)
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