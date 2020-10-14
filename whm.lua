function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')


	----------------------------------------------------------------------
	-- Idle set
	----------------------------------------------------------------------
	-- idle : Default
	-- Refresh: 12 per tick / 13 per tick below 50%
	sets.idle = {
        main="Daybreak", -- Refresh +1
        sub="Genmei Shield",
        ammo="Homiliary", -- Refresh +1
        head={ name="Chironic Hat", augments={'"Triple Atk."+2','Crit.hit rate+4','"Refresh"+1','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
        body="Theo. Briault +3", -- Refresh +3
	    hands={ name="Chironic Gloves", augments={'STR+6','AGI+4','"Refresh"+2','Accuracy+10 Attack+10','Mag. Acc.+4 "Mag.Atk.Bns."+4',}}, --Refresh +2
	    legs="Assid. Pants +1", -- Refresh +1/+2
        feet={ name="Chironic Slippers", augments={'Mag. Acc.+8 "Mag.Atk.Bns."+8','CHR+5','"Refresh"+1',}},
        neck="Sanctity Necklace",
        waist="Fucho-no-Obi", -- Latent Refresh +1
	    left_ear={ name="Moonshade Earring", augments={'MP+25','Latent effect: "Refresh"+1',}}, -- Refresh +1
        right_ear="Etiolation Earring",
	    left_ring="Renaye Ring", -- Refresh +1
        right_ring="Defending Ring",
        back={ name="Alaunus's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Occ. inc. resist. to stat. ailments+10',}},
	} -- end sets.idle


	----------------------------------------------------------------------
	-- Melee sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.melee = {}

	-- Default melee set
	sets.melee = {
	    main={ name="Queller Rod", augments={'MP+80','"Cure" potency +15%','Enmity-5',}},
        sub="Culminus",
	    ammo="Hedgehog Bomb",
	    head="Aya. Zucchetto +2",
	    body="Ayanmo Corazza +2",
	    hands="Aya. Manopolas +2",
	    legs="Aya. Cosciales +2",
	    feet="Aya. Gambieras +2",
        neck="Incanter's Torque",
	    waist="Porous Rope",
	    left_ear={ name="Moonshade Earring", augments={'MP+25','Latent effect: "Refresh"+1',}},
	    right_ear="Nourish. Earring +1",
	    left_ring="Mephitas's Ring",
	    right_ring="Mephitas's Ring +1",
        back={ name="Alaunus's Cape", augments={'MND+20','MND+10','"Cure" potency +10%','Spell interruption rate down-10%',}},
	} -- end sets.melee


	----------------------------------------------------------------------
	-- Resting sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.resting = {}

	-- Default resting set
	sets.resting = {
	    main="Boonwell Staff",
	    sub=empty,
        waist="Austerity Belt +1",
	    ammo="Clarus Stone",
	} -- end sets.resting


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}
	sets.precast.fastCast = {}

	-- Precast : Fast cast (74%)
	sets.precast.fastCast.default = {
        main="Winged Wand",
	    sub="Chanter's Shield",
        ammo="Incantor Stone",
	    head="Nahtirah Hat",
	    body="Inyanga Jubbah +2",
        hands={ name="Chironic Gloves", augments={'"Mag.Atk.Bns."+12','"Fast Cast"+7',}},
        legs="Volte Brais",
        feet="Regal Pumps +1",
        neck="Cleric's Torque",
        waist="Witful Belt",
        left_ear="Loquac. Earring",
        right_ear="Malignance Earring",
	    left_ring="Prolix Ring",
	    right_ring="Kishar Ring",
        back={ name="Alaunus's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Occ. inc. resist. to stat. ailments+10',}},
	} -- end sets.precast.fastCast

	-- Precast : Healing magic casting time
	-- Healing Magic Casting Time: -76%
	sets.precast.fastCast.healing = {
        legs="Ebers Pant. +1",
        feet="Hygieia Clogs +1",
	} -- end Fast Cast: Healing


	----------------------------------------------------------------------
	-- Magic sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}
	sets.midcast.magic = {}

	-- Magic : Default
	sets.midcast.magic.default = {
	} -- end Default

	-- Magic : Healing
	sets.midcast.magic.healing = {
	    main={ name="Queller Rod", augments={'MP+80','"Cure" potency +15%','Enmity-5',}},
	    sub="Sors Shield",
	    ammo="Hydrocera",
	    head={ name="Vanya Hood", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
        body="Theo. Briault +3",
	    hands={ name="Vanya Cuffs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
        legs="Ebers Pant. +1",
	    feet={ name="Vanya Clogs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
        neck="Incanter's Torque",
	    waist="Porous Rope",
	    left_ear="Nourish. Earring",
	    right_ear="Nourish. Earring +1",
        left_ring="Levia. Ring",
        right_ring="Levia. Ring",
        back={ name="Alaunus's Cape", augments={'MND+20','MND+10','"Cure" potency +10%','Spell interruption rate down-10%',}},
	} -- end Healing

	-- Magic : Enhancing
	sets.midcast.magic.enhancing = {
        main="Gada",
        sub="Ammurapi Shield",
        ammo="Hydrocera",
        head="Befouled Crown",
	    body="Inyanga Jubbah +2",
	    hands={ name="Chironic Gloves", augments={'STR+6','AGI+4','"Refresh"+2','Accuracy+10 Attack+10','Mag. Acc.+4 "Mag.Atk.Bns."+4',}},
        legs={ name="Piety Pantaln. +3", augments={'Enhances "Afflatus Misery" effect',}},
        feet="Theo. Duckbills +1",
        neck="Incanter's Torque",
	    waist="Luminary Sash",
	    left_ear="Andoaa Earring",
	    right_ear="Mimir Earring",
        left_ring="Levia. Ring",
        right_ring="Levia. Ring",
	    back="Perimede Cape",
	} -- end Enhancing

	-- Magic : Enfeebling
	sets.midcast.magic.enfeebling = {
        main="Daybreak",
	    sub="Ammurapi Shield",
        neck="Incanter's Torque",
	} -- end Enfeebling

	-- Magic : Dispelga
	sets.midcast.magic.dispelga = {
        main="Daybreak",
	} -- end Dispelga

	-- Magic : Refresh
	sets.midcast.magic.refresh = {
        feet="Inspirited Boots",
	} -- end Refresh


	----------------------------------------------------------------------
	-- Job Ability sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.jobAbility = {}

	-- Job Ability: Afflatus Solace
	sets.jobAbility.afflatusSolace = {
        back={ name="Alaunus's Cape", augments={'MND+20','MND+10','"Cure" potency +10%','Spell interruption rate down-10%',}},
	} -- end sets.jobAbility.afflatusSolace

	-- Job Ability: Devotion
	sets.jobAbility.devotion = {
	    head={ name="Piety Cap", augments={'Enhances "Devotion" effect',}},
	} -- end sets.jobAbility.devotion

	-- Job Ability: Martyr
	sets.jobAbility.martyr = {
	    hands={ name="Piety Mitts", augments={'Enhances "Martyr" effect',}},
	} -- end sets.jobAbility.martyr


	----------------------------------------------------------------------
	-- Utility Sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.utility = {}

	-- Utility: Cureskin
	sets.utility.cureSkin = {
	    body="Ebers Bliaud +1",
	} -- end Cure Skin

	-- Utility: Cursna
	sets.utility.cursna = {
        main={ name="Divinity", augments={'Attack+10','Accuracy+10','Phys. dmg. taken -3%','DMG:+15',}},
        body="Ebers Bliaud +1",
        hands={ name="Fanatic Gloves", augments={'MP+50','Healing magic skill +10','"Conserve MP"+7','"Fast Cast"+7',}},
        legs="Theo. Pant. +1",
        feet={ name="Vanya Clogs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
        neck="Incanter's Torque",
        left_ear="Healing Earring",
        right_ear="Beatific Earring",
        left_ring="Menelaus's Ring",
        right_ring="Haoma's Ring",
        back={ name="Alaunus's Cape", augments={'MND+20','MND+10','"Cure" potency +10%','Spell interruption rate down-10%',}},
	} -- end Cursna

	-- Utility: Divine caress
	sets.utility.divineCaress = {
        hands="Ebers Mitts +1",
	} -- end Divine Caress

	-- Utility: Elemental Resistance
	sets.utility.elementalResistance = {
	    body="Ebers Bliaud +1",
        legs={ name="Piety Pantaln. +3", augments={'Enhances "Afflatus Misery" effect',}},
	} -- end sets.utility.elementalResistance

	-- Utility: Erase
	sets.utility.erase = {
        neck="Cleric's Torque",
	} -- end sets.utility.erase

	-- Utility: Regen
	sets.utility.regen = {
        hands="Ebers Mitts +1",
	} -- end sets.utility.regen

	-- Utility: Status Removal
	sets.utility.statusRemoval = {
	    head="Ebers Cap +1",
	} -- end sets.utility.statusRemoval


end -- end get_sets()


----------------------------------------------------------------------
-- Spell arrays
----------------------------------------------------------------------
MagicCureSkin = {
	["Cure"] = true,
	["Cure II"] = true,
	["Cure III"] = true,
	["Cure IV"] = true,
	["Cure V"] = true,
	["Cure VI"] = true,
}

MagicCursna = {
	["Cursna"] = true,
}

MagicElementalResistance = {
	["Baraera"] = true,
	["Baraero"] = true,
	["Baramnesia"] = true,
	["Baramnesra"] = true,
	["Barblind"] = true,
	["Barblindra"] = true,
	["Barblizzara"] = true,
	["Barblizzard"] = true,
	["Barfira"] = true,
	["Barfire"] = true,
	["Barparalyze"] = true,
	["Barparalyzra"] = true,
	["Barpetra"] = true,
	["Barpetrify"] = true,
	["Barpoison"] = true,
	["Barpoisonra"] = true,
	["Barsilence"] = true,
	["Barsilencera"] = true,
	["Barsleep"] = true,
	["Barsleepra"] = true,
	["Barstone"] = true,
	["Barstonra"] = true,
	["Barthunder"] = true,
	["Barthundra"] = true,
	["Barvira"] = true,
	["Barvirus"] = true,
	["Barwater"] = true,
	["Barwatera"] = true,
}

MagicEnfeebling = {
	["Addle"] = true,
	["Addle II"] = true,
	["Bind"] = true,
	["Blind"] = true,
	["Blind II"] = true,
	["Break"] = true,
	["Breakga"] = true,
	["Dia"] = true,
	["Dia II"] = true,
	["Dia III"] = true,
	["Diaga"] = true,
	["Dispel"] = true,
	["Dispelga"] = true,
	["Distract"] = true,
	["Distract II"] = true,
	["Distract III"] = true,
	["Frazzle"] = true,
	["Frazzle II"] = true,
	["Frazzle III"] = true,
	["Gravity"] = true,
	["Gravity II"] = true,
	["Paralyze"] = true,
	["Paralyze II"] = true,
	["Poison"] = true,
	["Poison II"] = true,
	["Poisonga"] = true,
	["Sleep"] = true,
	["Sleep II"] = true,
	["Sleepga"] = true,
	["Sleepga II"] = true,
	["Silence"] = true,
	["Slow"] = true,
	["Slow II"] = true,
}

MagicEnhancing = {
	["Adloquium"] = true,
	["Animus Augeo"] = true,
	["Animus Minuo"] = true,
	["Aquaveil"] = true,
	["Aurorastorm"] = true,
	["Aurorastorm II"] = true,
	["Auspice"] = true,
	["Baraera"] = true,
	["Baraero"] = true,
	["Baramnesia"] = true,
	["Baramnesra"] = true,
	["Barblind"] = true,
	["Barblindra"] = true,
	["Barblizzara"] = true,
	["Barblizzard"] = true,
	["Barfira"] = true,
	["Barfire"] = true,
	["Barparalyze"] = true,
	["Barparalyzra"] = true,
	["Barpetra"] = true,
	["Barpetrify"] = true,
	["Barpoison"] = true,
	["Barpoisonra"] = true,
	["Barsilence"] = true,
	["Barsilencera"] = true,
	["Barsleep"] = true,
	["Barsleepra"] = true,
	["Barstone"] = true,
	["Barstonra"] = true,
	["Barthunder"] = true,
	["Barthundra"] = true,
	["Barvira"] = true,
	["Barvirus"] = true,
	["Barwater"] = true,
	["Barwatera"] = true,
	["Blaze Spikes"] = true,
	["Blink"] = true,
	["Boost-AGI"] = true,
	["Boost-CHR"] = true,
	["Boost-DEX"] = true,
	["Boost-INT"] = true,
	["Boost-MND"] = true,
	["Boost-STR"] = true,
	["Boost-VIT"] = true,
	["Crusade"] = true,
	["Deodorize"] = true,
	["Embrava"] = true,
	["Enaero"] = true,
	["Enaero II"] = true,
	["Enblizzard"] = true,
	["Enblizzard II"] = true,
	["Enfire"] = true,
	["Enfire II"] = true,
	["Enstone"] = true,
	["Enstone II"] = true,
	["Enthunder"] = true,
	["Enthunder II"] = true,
	["Enwater"] = true,
	["Enwater II"] = true,
	["Erase"] = true,
	["Escape"] = true,
	["Firestorm"] = true,
	["Firestorm II"] = true,
	["Flurry"] = true,
	["Flurry II"] = true,
	["Foil"] = true,
	["Gain-AGI"] = true,
	["Gain-CHR"] = true,
	["Gain-DEX"] = true,
	["Gain-INT"] = true,
	["Gain-MND"] = true,
	["Gain-STR"] = true,
	["Gain-VIT"] = true,
	["Hailstorm"] = true,
	["Hailstorm II"] = true,
	["Haste"] = true,
	["Haste II"] = true,
	["Ice Spikes"] = true,
	["Invisible"] = true,
	["Phalanx"] = true,
	["Phalanx II"] = true,
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
	["Rainstorm"] = true,
	["Rainstorm II"] = true,
	["Recall-Jugner"] = true,
	["Recall-Meriph"] = true,
	["Recall-Pashh"] = true,
	["Refresh"] = true,
	["Refresh II"] = true,
	["Refresh III"] = true,
	["Regen"] = true,
	["Regen II"] = true,
	["Regen III"] = true,
	["Regen IV"] = true,
	["Regen V"] = true,
	["Reprisal"] = true,
	["Retrace"] = true,
	["Sandstorm"] = true,
	["Sandstorm II"] = true,
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
	["Shock Spikes"] = true,
	["Sneak"] = true,
	["Stoneskin"] = true,
	["Teleport-Altep"] = true,
	["Teleport-Dem"] = true,
	["Teleport-Holla"] = true,
	["Teleport-Mea"] = true,
	["Teleport-Vahzl"] = true,
	["Teleport-Yhoat"] = true,
	["Temper"] = true,
	["Temper II"] = true,
	["Thunderstorm"] = true,
	["Thunderstorm II"] = true,
	["Voidstorm"] = true,
	["Voidstorm II"] = true,
	["Warp"] = true,
	["Warp II"] = true,
	["Windstorm"] = true,
	["Windstorm II"] = true,
}

MagicHealing = {
	["Arise"] = true,
	["Blindna"] = true,
	["Curaga"] = true,
	["Curaga II"] = true,
	["Curaga III"] = true,
	["Curaga IV"] = true,
	["Curaga V"] = true,
	["Cure"] = true,
	["Cure II"] = true,
	["Cure III"] = true,
	["Cure IV"] = true,
	["Cure V"] = true,
	["Cure VI"] = true,
	["Cursna"] = true,
	["Esuna"] = true,
	["Full Cure"] = true,
	["Paralyna"] = true,
	["Poisona"] = true,
	["Raise"] = true,
	["Raise II"] = true,
	["Raise III"] = true,
	["Reraise"] = true,
	["Reraise II"] = true,
	["Reraise III"] = true,
	["Reraise IV"] = true,
	["Sacrifice"] = true,
	["Silena"] = true,
	["Stona"] = true,
	["Viruna"] = true,
}

MagicProtectraV = {
	["Protectra V"] = true,
}

MagicRefresh = {
	["Refresh"] = true,
	["Refresh II"] = true,
	["Refresh III"] = true,
}

MagicRegen = {
	["Regen"] = true,
	["Regen II"] = true,
	["Regen III"] = true,
	["Regen IV"] = true,
	["Regen V"] = true,
}

MagicShellraV = {
	["Shellra V"] = true,
}

MagicStatusRemoval = {
	["Blindna"] = true,
	["Cursna"] = true,
	["Paralyna"] = true,
	["Poisona"] = true,
	["Silena"] = true,
	["Stona"] = true,
	["Viruna"] = true,
}


----------------------------------------------------------------------
-- Callback for when casting begins
----------------------------------------------------------------------
function precast(spell)
    if spell.action_type == 'Magic' then
		equip(sets.precast.fastCast.default)
		if MagicHealing[spell.english] then
			equip(sets.precast.fastCast.healing)
		end
		if spell.english == "Dispelga" then
			equip(sets.midcast.magic.dispelga)
		end
	end
end -- end precast()


----------------------------------------------------------------------
-- Callback for after casting begins, but before it fires
----------------------------------------------------------------------
function midcast(spell)

	-- Check if the action is magic
	if spell.action_type == 'Magic' then

		-- 1.) Apply magic type gear
		if MagicEnfeebling[spell.english] then
			equip(sets.midcast.magic.enfeebling)
		elseif MagicEnhancing[spell.english] then
			equip(sets.midcast.magic.enhancing)
			if spell.english == 'Erase' then
				equip(sets.utility.erase)
			end
		elseif MagicHealing[spell.english] then
			equip(sets.midcast.magic.healing)
		else
			equip(sets.midcast.magic.default)
		end

		-- 2.) Apply specific spell group gear
		if MagicElementalResistance[spell.english] then
			equip(sets.utility.elementalResistance)
		elseif MagicRegen[spell.english] then
			equip(sets.utility.regen)
		elseif MagicStatusRemoval[spell.english] then
			equip(sets.utility.statusRemoval)
			if MagicCursna[spell.english] then
				equip(sets.utility.cursna)
			end
		end

		-- 3.) Apply active buff dependent gear
		if MagicCureSkin[spell.english] then
			if buffactive['Afflatus Solace'] then
				equip(sets.utility.cureSkin)
			end
		elseif MagicStatusRemoval[spell.english] then
			if buffactive['Divine Caress'] then
				equip(sets.utility.divineCaress)
			end
		end

		-- 4.) Check for specific spells
		if spell.english == "Dispelga" then
			equip(sets.midcast.magic.dispelga)
		elseif MagicRefresh[spell.english] then
			equip(sets.midcast.magic.refresh)
		end

	-- Check if the action is a job ability
	elseif spell.type == 'JobAbility' then

		-- Equip specific job ability gear
		if spell.english == 'Afflatus Solace' then
			equip(sets.jobAbility.afflatusSolace)
		elseif spell.english == 'Devotion' then
			equip(sets.jobAbility.devotion)
		elseif spell.english == 'Martyr' then
			equip(sets.jobAbility.martyr)
		end

    end -- end if

end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)
	-- Check if player status has switched to engaged
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
	if new == 'Idle' then
		equip(sets.idle)
	elseif new == 'Engaged' then
		equip(sets.melee)
	elseif new == "Resting" then
		equip(sets.resting)
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
	    coroutine.schedule(function() send_command('input /macro book 1;wait .5;input /macro set 1;input /lockstyleset 1') end, 10)
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