function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')


	----------------------------------------------------------------------
	-- Unload key bindings upon file unload
	----------------------------------------------------------------------
	require "remove_bindings"


	----------------------------------------------------------------------
	-- Idle set
	----------------------------------------------------------------------
	-- Initializes an array to begin storing set data
	sets.idle = {}

	-- idle : Default
	sets.idle.default = {
	    main={ name="Lathi", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
	    sub="Niobid Strap",
        ammo="Impatiens",
	    head={ name="Merlinic Hood", augments={'Mag. Acc.+13 "Mag.Atk.Bns."+13','Magic burst dmg.+10%','Mag. Acc.+8','"Mag.Atk.Bns."+3',}},
	    body="Jhakri Robe +2",
	    hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+17 "Mag.Atk.Bns."+17','Magic burst dmg.+9%','MND+6','Mag. Acc.+14',}},
	    legs={ name="Lengo Pants", augments={'INT+7','Mag. Acc.+7','"Mag.Atk.Bns."+3','"Refresh"+1',}},
	    feet="Tutyr Sabots",
	    neck="Twilight Torque",
        waist="Fucho-no-Obi",
	    left_ear="Etiolation Earring",
	    right_ear="Static Earring",
        left_ring="Defending Ring",
	    right_ring="Vocane Ring",
        back="Solemnity Cape",
	    -- back={ name="Mecisto. Mantle", augments={'Cap. Point+43%','Mag. Acc.+3','DEF+1',}},
	} -- end sets.idle.default


	----------------------------------------------------------------------
	-- Melee set
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.melee = {}

	-- Melee : Default
	sets.melee.default = {
	    main={ name="Lathi", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
	    sub="Niobid Strap",
        ammo="Impatiens",
	    head={ name="Merlinic Hood", augments={'Mag. Acc.+13 "Mag.Atk.Bns."+13','Magic burst dmg.+10%','Mag. Acc.+8','"Mag.Atk.Bns."+3',}},
	    body={ name="Witching Robe", augments={'MP+50','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Refresh"+1',}},
        hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+17 "Mag.Atk.Bns."+17','Magic burst dmg.+9%','MND+6','Mag. Acc.+14',}},
        legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst dmg.+1%','INT+9','Mag. Acc.+11','"Mag.Atk.Bns."+11',}},
        feet={ name="Merlinic Crackows", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Occult Acumen"+10','Mag. Acc.+7','"Mag.Atk.Bns."+14',}},
	    neck="Twilight Torque",
        waist="Chaac Belt",
	    left_ear="Etiolation Earring",
	    right_ear="Static Earring",
        left_ring="Defending Ring",
	    right_ring="Vocane Ring",
        back="Solemnity Cape",
	    -- back={ name="Mecisto. Mantle", augments={'Cap. Point+43%','Mag. Acc.+3','DEF+1',}},
	} -- end sets.melee.default


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Precast : FastCast
	sets.precast.fastCast = {
        ammo="Sapience Orb",
        head={ name="Amalric Coif", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
        body="Zendik Robe",
        hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+18','"Fast Cast"+4','CHR+8','"Mag.Atk.Bns."+7',}},
        legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet={ name="Amalric Nails", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
        neck="Voltsurge Torque",
        waist="Witful Belt",
        left_ear="Loquac. Earring",
        right_ear="Etiolation Earring",
        left_ring="Prolix Ring",
        right_ring="Kishar Ring",
        back={ name="Taranus's Cape", augments={'"Fast Cast"+10',}},
	} -- end sets.precast.fastCast


	----------------------------------------------------------------------
	-- Magic set
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.magic = {}

	-- Magic : Default
	sets.magic.default = {
	    main={ name="Lathi", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
	    sub="Niobid Strap",
        ammo="Witchstone",
        head={ name="Merlinic Hood", augments={'Mag. Acc.+13 "Mag.Atk.Bns."+13','Magic burst dmg.+10%','Mag. Acc.+8','"Mag.Atk.Bns."+3',}},
	    body="Jhakri Robe +2",
	    hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+17 "Mag.Atk.Bns."+17','Magic burst dmg.+9%','MND+6','Mag. Acc.+14',}},
        legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst dmg.+1%','INT+9','Mag. Acc.+11','"Mag.Atk.Bns."+11',}},
        feet={ name="Merlinic Crackows", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Occult Acumen"+10','Mag. Acc.+7','"Mag.Atk.Bns."+14',}},
        neck="Mizu. Kubikazari",
	    waist="Refoccilation Stone",
        left_ear="Friomisi Earring",
        right_ear="Hecate's Earring",
        left_ring="Mujin Band",
        right_ring="Locus Ring",
	    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
	    -- back={ name="Mecisto. Mantle", augments={'Cap. Point+43%','Mag. Acc.+3','DEF+1',}},
	} -- end sets.magic.default


	----------------------------------------------------------------------
	-- Utility Sets (not bound to a key)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.utility = {}

	-- Elemental magic
	sets.utility.elementalFastCast = {
        body="Mallquis Saio +1",
	} -- end sets.Utility.elementalFastCast

	-- Dark magic
	sets.utility.darkMagic = {
	    neck="Erra Pendant",
        waist="Fucho-no-Obi",
	    left_ring="Evanescence Ring",
		right_ring="Archon Ring",
	    back="Perimede Cape",
	} -- end sets.Utility.darkMagic

	-- Capacity points
	capacityPoints = false;
	sets.utility.capacityPoints = {
	    back={ name="Mecisto. Mantle", augments={'Cap. Point+43%','Mag. Acc.+3','DEF+1',}},
	} -- end sets.Utility.capacityPoints


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
	}


end -- end get_sets()


----------------------------------------------------------------------
-- Callback for when casting begins
----------------------------------------------------------------------
function precast(spell)

    if spell.action_type == 'Magic' then

		-- Check if the spell is elemental magic
		if ElementalSpells[spell.english] then
			equip(set_combine(sets.precast.fastCast, sets.utility.elementalFastCast))
		else
			equip(sets.precast.fastCast)
		end

	end

end -- end precast()


----------------------------------------------------------------------
-- Callback for after casting begins, but before it fires
----------------------------------------------------------------------
function midcast(spell)

	-- Check if the action is a specified weapon skill
	if spell.action_type == 'Magic' then

		-- Check if the spell is dark magic
		if DarkSpells[spell.english] then
			equip(set_combine(sets.magic.default, sets.utility.darkMagic))
		else
			equip(sets.magic.default)
		end

    end -- end if

end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)
	if player.status =='Engaged' then
		equip(sets.melee.default)
	else
		equip(set_combine(sets.melee.default, sets.idle.default))
	end
end -- end aftercast()


----------------------------------------------------------------------
-- Callback for whenever engagment status changes
----------------------------------------------------------------------
function status_change(new,old)
	if new == 'Idle' then
		equip(sets.idle.default)
	elseif new == 'Engaged' then
		equip(sets.melee.default)
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
		equip(sets.idle.default)
	end -- end if

end -- end self_command()