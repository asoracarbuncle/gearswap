function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')
	send_command('bind f10 gs c toggle weapon set')
	send_command('bind f11 gs c toggle instrument set')


	----------------------------------------------------------------------
	-- Unload key bindings upon file unload
	----------------------------------------------------------------------
	require "remove_bindings"


	----------------------------------------------------------------------
	-- Weapon sets
	----------------------------------------------------------------------
	-- Initializes an array to begin storing set data
	sets.weapons = {}
	weaponSetIndex = 0

	-- Weapon: Index Names
	weaponSetNames = {
		[0] = 'Song Knife/Shield',
		[1] = 'DD Knife/Shield',
		[2] = 'DD Knife/DD Knife',
	}

	-- Weapon : Song Knife/Shield
	sets.weapons[0] = {
        main={ name="Kali", augments={'DMG:+15','CHR+15','Mag. Acc.+15',}},
	    sub="Genmei Shield",
	}

	-- Weapon : DD Knife/Shield
	sets.weapons[1] = {
	    main={ name="Taming Sari", augments={'STR+10','DEX+10','DMG:+15','"Treasure Hunter"+1',}},
	    sub="Genmei Shield",
	}

	-- Weapon : DD Knife/DD Knife
	sets.weapons[2] = {
	    main={ name="Taming Sari", augments={'STR+10','DEX+10','DMG:+15','"Treasure Hunter"+1',}},
	    sub={ name="Taming Sari", augments={'STR+8','DEX+9','DMG:+13',}},
	}


	----------------------------------------------------------------------
	-- Instrument sets
	----------------------------------------------------------------------
	-- Initializes an array to begin storing set data
	sets.instruments = {}
	instrumentSetIndex = 0

	-- Weapon: Index Names
	instrumentSetNames = {
		[0] = 'Gjallarhorn',
		[1] = 'Daurdabla',
	}

	-- Instrument : Horn
	sets.instruments[0] = {
	    range="Gjallarhorn",
	}

	-- Instrument : Harp
	sets.instruments[1] = {
	    range="Daurdabla",
	}


	----------------------------------------------------------------------
	-- Idle set
	----------------------------------------------------------------------
	-- Initializes an array to begin storing set data
	sets.idle = {}

	-- Idle : Default
	sets.idle.default = {
	    head="Inyanga Tiara +1",
	    body="Inyanga Jubbah +2",
	    hands="Inyan. Dastanas +2",
	    legs="Inyanga Shalwar +2",
	    feet="Inyan. Crackows +1",
        neck="Twilight Torque",
	    waist="Channeler's Stone",
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
	    head="Aya. Zucchetto +1",
	    body="Ayanmo Corazza +1",
	    hands="Aya. Manopolas +1",
	    legs="Aya. Cosciales +1",
	    feet="Aya. Gambieras +1",
	    neck="Asperity Necklace",
        waist="Grunfeld Rope",
	    left_ear="Telos Earring",
	    right_ear="Suppanomimi",
	    left_ring="Rajas Ring",
	    right_ring="Petrov Ring",
	    back="Atheling Mantle",
	    -- back={ name="Mecisto. Mantle", augments={'Cap. Point+43%','Mag. Acc.+3','DEF+1',}},
	} -- end sets.melee.default


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}
	sets.precast.fastCast = {}

	-- Precast : fastCast Song
	sets.precast.fastCast.song = {
	    head="Fili Calot +1",
	    body="Inyanga Jubbah +2",
        hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
	    legs={ name="Lengo Pants", augments={'INT+7','Mag. Acc.+7','"Mag.Atk.Bns."+3','"Refresh"+1',}},
	    feet={ name="Bihu Slippers +1", augments={'Enhances "Nightingale" effect',}},
	    neck="Voltsurge Torque",
	    waist="Witful Belt",
	    left_ear="Loquac. Earring",
        right_ear="Aoidos' Earring",
	    left_ring="Prolix Ring",
        right_ring="Kishar Ring",
	    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
	} -- end sets.precast.fastCast

	-- Precast : fastCast Magic
	sets.precast.fastCast.magic = {
	    body="Vrikodara Jupon",
        hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
	    legs={ name="Lengo Pants", augments={'INT+7','Mag. Acc.+7','"Mag.Atk.Bns."+3','"Refresh"+1',}},
	    neck="Voltsurge Torque",
	    waist="Witful Belt",
	    left_ear="Loquac. Earring",
	    right_ear="Etiolation Earring",
	    left_ring="Prolix Ring",
        right_ring="Kishar Ring",
	    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
	} -- end sets.precast.fastCast


	----------------------------------------------------------------------
	-- Midcast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}
	sets.midcast.ws = {}
	sets.midcast.buffSong = {}

	-- Midcast : Weapon Skill : Default
	sets.midcast.ws.default = {
	    head="Aya. Zucchetto +1",
	    body="Ayanmo Corazza +1",
	    hands="Aya. Manopolas +1",
	    legs="Aya. Cosciales +1",
	    feet="Aya. Gambieras +1",
	    neck="Asperity Necklace",
        waist="Grunfeld Rope",
	    left_ear="Telos Earring",
	    right_ear="Suppanomimi",
	    left_ring="Rajas Ring",
	    right_ring="Petrov Ring",
	    back="Atheling Mantle",
	} -- end sets.midcast.ws.default

	-- Midcast : Weapon Skill : Rudra's Storm
	sets.midcast.ws["Rudra's Storm"] = {
	    head="Aya. Zucchetto +1",
	    body="Ayanmo Corazza +1",
	    hands="Aya. Manopolas +1",
	    legs="Aya. Cosciales +1",
	    feet="Aya. Gambieras +1",
	    neck="Asperity Necklace",
	    waist="Grunfeld Rope",
	    left_ear="Telos Earring",
	    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
	    left_ring="Ramuh Ring",
	    right_ring="Begrudging Ring",
	    back="Atheling Mantle",
	} -- end sets.midcast.ws["Rudra's Storm"]

	-- Midcast : Weapon Skill : Evisceration
	sets.midcast.ws['Evisceration'] = {
	    head="Aya. Zucchetto +1",
	    body="Ayanmo Corazza +1",
	    hands="Aya. Manopolas +1",
	    legs="Aya. Cosciales +1",
	    feet="Aya. Gambieras +1",
	    neck="Fotia Gorget",
	    waist="Fotia Belt",
	    left_ear="Telos Earring",
	    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
	    left_ring="Ramuh Ring",
	    right_ring="Begrudging Ring",
	    back="Atheling Mantle",
	} -- end sets.midcast.ws['Evisceration']

	-- Midcast : Buff Song for Gjallarhorn
	sets.midcast.buffSong["Gjallarhorn"] = {
	    head="Brioso Roundlet +3",
	    body="Fili Hongreline +1",
	    hands="Inyan. Dastanas +2",
	    legs="Inyanga Shalwar +2",
	    feet="Brioso Slippers +3",
	    neck="Moonbow Whistle",
        waist="Kobo Obi",
	    left_ear="Darkside Earring",
	    left_ring="Kishar Ring",
	    right_ring="Vertigo Ring",
	    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
	} -- end sets.midcast.buffSong["Gjallarhorn"]

	-- Midcast : Buff Song for harp
	sets.midcast.buffSong["Daurdabla"] = {
	    head="Brioso Roundlet +3",
	    body="Fili Hongreline +1",
	    hands="Inyan. Dastanas +2",
	    legs="Inyanga Shalwar +2",
	    feet="Brioso Slippers +3",
	    neck="Moonbow Whistle",
        waist="Kobo Obi",
	    left_ear="Darkside Earring",
	    right_ear="String Earring",
	    left_ring="Kishar Ring",
	    right_ring="Vertigo Ring",
	    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
	} -- end sets.midcast.buffSong["Daurdabla"]

	-- Midcast : Enfeeble Song set
	sets.midcast.enfeebleSong = {
	    head="Brioso Roundlet +3",
	    body="Fili Hongreline +1",
        hands="Inyan. Dastanas +2",
        legs="Inyanga Shalwar +2",
	    feet="Brioso Slippers +3",
	    neck="Moonbow Whistle",
        waist="Kobo Obi",
	    left_ear="Darkside Earring",
	    right_ear="Regal Earring",
        left_ring="Metamorph Ring",
	    right_ring="Metamor. Ring +1",
	    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
	} -- end sets.midcast.enfeebleSong

	-- Midcast : Magic
	sets.midcast.magic = {
	    head="Brioso Roundlet +3",
        body="Brioso Justau. +2",
        hands="Brioso Cuffs +2",
        legs="Brioso Cannions +2",
        feet="Brioso Slippers +3",
	    neck="Moonbow Whistle",
	    waist="Porous Rope",
	    left_ear="Lifestorm Earring",
	    right_ear="Psystorm Earring",
        left_ring="Metamorph Ring",
	    right_ring="Metamor. Ring +1",
	    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
	} -- end sets.midcast.magic


	----------------------------------------------------------------------
	-- Utility Sets (not bound to a key)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.utility = {}

	-- Ballad Song set
	sets.utility.ballad = {
	    legs="Fili Rhingrave +1",
	} -- end sets.utility.ballad

	-- Lullaby Song set
	sets.utility.lullaby = {
        hands="Brioso Cuffs +2",
	} -- end sets.utility.lullaby

	-- Madrigal Song set
	sets.utility.madrigal = {
	    head="Fili Calot +1",
	    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
	} -- end sets.utility.madrigal

	-- March Song set
	sets.utility.march = {
        hands="Fili Manchettes +1",
	} -- end sets.utility.march

	-- Mazurka Song set
	sets.utility.mazurka = {
        feet="Fili Cothurnes +1",
	} -- end sets.utility.mazurka

	-- Minne Song set
	sets.utility.minne = {
	    right_ear="Darkside Earring",
	} -- end sets.utility.minne

	-- Minuet Song set
	sets.utility.minuet = {
	    body="Fili Hongreline +1",
	} -- end sets.utility.minuet

	-- Paeon Song set
	sets.utility.paeon = {
	    head="Brioso Roundlet +3",
	} -- end sets.utility.paeon

	-- Prelude Song set
	sets.utility.prelude = {
	    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
	} -- end sets.utility.prelude

	-- Scherzo Song set
	sets.utility.scherzo = {
        feet="Fili Cothurnes +1",
	} -- end sets.utility.scherzo


	----------------------------------------------------------------------
	-- Job ability Sets (not bound to a key)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.jobAbilities = {}

	-- Soul Voice
	sets.jobAbilities.soulVoice = {
	    legs={ name="Bihu Cannions +1", augments={'Enhances "Soul Voice" effect',}},
	} -- end sets.jobAbilities.soulVoice


	-- Nightingale
	sets.jobAbilities.nightingale = {
	    feet={ name="Bihu Slippers +1", augments={'Enhances "Nightingale" effect',}},
	} -- end sets.jobAbilities.nightingale

	-- Troubadour
	sets.jobAbilities.troubadour = {
	    body="Fili Hongreline +1",
        legs="Inyanga Shalwar +2",
        feet="Brioso Slippers +3",
	} -- end sets.jobAbilities.troubadour


	----------------------------------------------------------------------
	-- Song arrays
	----------------------------------------------------------------------
	BalladSongs = {
		["Mage's Ballad"] = true,
		["Mage's Ballad II"] = true,
		["Mage's Ballad III"] = true,
	}

	LullabySongs = {
		["Foe Lullaby"] = true,
		["Foe Lullaby II"] = true,
		["Horde Lullaby"] = true,
		["Horde Lullaby II"] = true,
	}

	MadrigalSongs = {
		["Sword Madrigal"] = true,
		["Blade Madrigal"] = true,
	}

	MarchSongs = {
		["Advancing March"] = true,
		["Victory March"] = true,
	}

	MazurkaSongs = {
		["Raptor Mazurka"] = true,
		["Chocobo Mazurka"] = true,
	}

	MinneSongs = {
		["Knight's Minne"] = true,
		["Knight's Minne II"] = true,
		["Knight's Minne III"] = true,
		["Knight's Minne IV"] = true,
		["Knight's Minne V"] = true,
	}

	MinuetSongs = {
		["Valor Minuet"] = true,
		["Valor Minuet II"] = true,
		["Valor Minuet III"] = true,
		["Valor Minuet IV"] = true,
		["Valor Minuet V"] = true,
	}

	PaeonSongs = {
		["Army's Paeon"] = true,
		["Army's Paeon II"] = true,
		["Army's Paeon III"] = true,
		["Army's Paeon IV"] = true,
		["Army's Paeon V"] = true,
		["Army's Paeon VI"] = true,
	}

	PreludeSongs = {
		["Hunter's Prelude"] = true,
		["Archer's Prelude"] = true,
	}

	ScherzoSongs = {
		["Sentinel's Scherzo"] = true,
	}

	EnfeebleSongs = {
		["Foe Requiem"] = true,
		["Foe Requiem II"] = true,
		["Foe Requiem III"] = true,
		["Foe Requiem IV"] = true,
		["Foe Requiem V"] = true,
		["Foe Requiem VI"] = true,
		["Foe Requiem VII"] = true,
		["Foe Lullaby"] = true,
		["Foe Lullaby II"] = true,
		["Horde Lullaby"] = true,
		["Horde Lullaby II"] = true,
		["Battlefield Elegy"] = true,
		["Carnage Elegy"] = true,
		["Fire Threnody"] = true,
		["Fire Threnody II"] = true,
		["Ice Threnody"] = true,
		["Ice Threnody II"] = true,
		["Wind Threnody"] = true,
		["Wind Threnody II"] = true,
		["Earth Threnody"] = true,
		["Earth Threnody II"] = true,
		["Ltng. Threnody"] = true,
		["Ltng. Threnody II"] = true,
		["Water Threnody"] = true,
		["Water Threnody II"] = true,
		["Light Threnody"] = true,
		["Light Threnody II"] = true,
		["Dark Threnody"] = true,
		["Dark Threnody II"] = true,
		["Magic Finale"] = true,
		["Pining Nocturne"] = true,
	}

end -- end get_sets()


----------------------------------------------------------------------
-- Callback for when casting begins
----------------------------------------------------------------------
function precast(spell)
    if spell.type == 'BardSong' then
		equip(sets.precast.fastCast.song)
    elseif spell.action_type == 'Magic' then
		equip(sets.precast.fastCast.magic)
	end
end -- end precast()


----------------------------------------------------------------------
-- Callback for after casting begins, but before it fires
----------------------------------------------------------------------
function midcast(spell)

	-- Equip any specific named sets
    if spell.type == 'WeaponSkill' then

    	-- Check if a specified weapon skill set exists
    	if sets.midcast.ws[spell.english] then
    		equip(sets.midcast.ws[spell.english])
    	else
    		-- Equip the default weapon skill set
    		equip(sets.midcast.ws.default)
    	end

    elseif spell.type == 'BardSong' then

    	-- Priority 1: Base gear
    	--
    	-- Set the base gear depending on if this is an enfeebling song
    	-- or buffsong
    	if EnfeebleSongs[spell.english] then
			equip(sets.midcast.enfeebleSong)
    	else
    		-- Set the gear based on which instrument is equipped
			equip(sets.midcast.buffSong[player.equipment.range])
		end -- end if

    	-- Priority 2: Song type+++
    	--
		-- Now check if there are specific gear for this type of song
    	if BalladSongs[spell.english] then
    		equip(sets.utility.ballad)
    	elseif LullabySongs[spell.english] then
    		equip(sets.utility.lullaby)
    	elseif MadrigalSongs[spell.english] then
    		equip(sets.utility.madrigal)
    	elseif MarchSongs[spell.english] then
    		equip(sets.utility.march)
    	elseif MinneSongs[spell.english] then
    		equip(sets.utility.minne)
    	elseif MinuetSongs[spell.english] then
    		equip(sets.utility.minuet)
    	elseif PaeonSongs[spell.english] then
    		equip(sets.utility.paeon)
    	elseif PreludeSongs[spell.english] then
    		equip(sets.utility.prelude)
    	elseif ScherzoSongs[spell.english] then
    		equip(sets.utility.scherzo)
    	end

    	-- Priority 3: Job Ability specific+++
    	--
    	-- Now check if we have any particular job ability buffs active
    	-- and equip appropriately
		if buffactive['Soul Voice'] then
			equip(sets.jobAbilities.soulVoice)
		end -- end if

		if buffactive['Nightingale'] then
			equip(sets.jobAbilities.nightingale)
		end -- end if

		if buffactive['Troubadour'] then
			equip(sets.jobAbilities.troubadour)
		end -- end if

    elseif spell.action_type == 'Magic' then
		equip(sets.midcast.magic)
	end
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

	-- Check if a mazurka was just used and switch to
	-- movement speed+++ gear
	if MazurkaSongs[spell.english] then
		equip(sets.utility.mazurka)
	end -- end if

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
		weaponSetIndex = 0
		instrumentSetIndex = 0
		equip(set_combine(sets.idle.default, sets.weapons[weaponSetIndex], sets.instruments[instrumentSetIndex]))
	end -- end if

	-- Toggle the weapon sets
	if command == 'toggle weapon set' then
		-- Increment the weapon index
		weaponSetIndex = weaponSetIndex + 1
		-- Check if the weaopn index is out of range
		if weaponSetIndex > table.getn(sets.weapons) then
			weaponSetIndex = 0
		end
		-- Equip the appropriate set
		equip(sets.weapons[weaponSetIndex])
		-- Alert the user which set is currently being equipped
		send_command('@input /echo <----- Weapon: '..weaponSetNames[weaponSetIndex]..' Set Equipped ----->')
	end -- end if

	-- Toggle the instrument sets
	if command == 'toggle instrument set' then
		-- Increment the instrument index
		instrumentSetIndex = instrumentSetIndex + 1
		-- Check if the instrument index is out of range
		if instrumentSetIndex > table.getn(sets.instruments) then
			instrumentSetIndex = 0
		end
		-- Equip the appropriate set
		equip(sets.instruments[instrumentSetIndex])
		-- Alert the user which set is currently being equipped
		send_command('@input /echo <----- Instrument: '..instrumentSetNames[instrumentSetIndex]..' Equipped ----->')
	end -- end if

end -- end self_command()