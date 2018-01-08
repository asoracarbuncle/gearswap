function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')


	----------------------------------------------------------------------
	-- Idle set
	----------------------------------------------------------------------
	-- idle : Default
	sets.idle = {
	    main="Bolelabunga",
	    sub="Sors Shield",
	    ammo="Hedgehog Bomb",
	    head="Hike Khat +1",
	    body="Theo. Briault +1",
	    hands="Aya. Manopolas +1",
	    legs="Assid. Pants +1",
	    feet="Aya. Gambieras +1",
        neck="Aife's Medal",
	    waist="Porous Rope",
	    left_ear={ name="Moonshade Earring", augments={'MP+25','Latent effect: "Refresh"+1',}},
	    right_ear="Nourish. Earring +1",
	    left_ring="Mephitas's Ring",
	    right_ring="Mephitas's Ring +1",
        back={ name="Alaunus's Cape", augments={'MND+20','MND+10','"Cure" potency +10%',}},
	} -- end sets.idle


	----------------------------------------------------------------------
	-- Melee sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.melee = {}

	-- Default melee set
	sets.melee = {
	    main={ name="Queller Rod", augments={'MP+80','"Cure" potency +15%','Enmity-5',}},
	    sub="Sors Shield",
	    ammo="Hedgehog Bomb",
	    head="Aya. Zucchetto +1",
	    body="Ayanmo Corazza +1",
	    hands="Aya. Manopolas +1",
	    legs="Aya. Cosciales +1",
	    feet="Aya. Gambieras +1",
        neck="Aife's Medal",
	    waist="Porous Rope",
	    left_ear="Spellbr. Earring",
	    right_ear="Astral Earring",
	    left_ring="Mephitas's Ring",
	    right_ring="Mephitas's Ring +1",
        back={ name="Alaunus's Cape", augments={'MND+20','MND+10','"Cure" potency +10%',}},
	} -- end sets.melee


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Precast : Fastcast
	-- Fast Cast: 56%
	sets.precast.fastcast = {
        main="Winged Wand",
	    sub="Chanter's Shield",
        ammo="Incantor Stone",
	    head="Haruspex Hat",
	    body="Inyanga Jubbah +2",
	    hands={ name="Chironic Gloves", augments={'"Fast Cast"+5',}},
	    legs="Aya. Cosciales +1",
        feet="Regal Pumps +1",
        neck="Orison Locket",
	    back={ name="Alaunus's Cape", augments={'"Fast Cast"+10',}},
	} -- end sets.precast.fastcast


	----------------------------------------------------------------------
	-- Magic set
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}
	sets.midcast.magic = {}

	-- Magic : Default
	sets.midcast.magic.default = {
	    main={ name="Queller Rod", augments={'MP+80','"Cure" potency +15%','Enmity-5',}},
	    sub="Sors Shield",
	    ammo="Hydrocera",
	    head={ name="Vanya Hood", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
	    body={ name="Vanya Robe", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
	    hands={ name="Vanya Cuffs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
	    legs={ name="Vanya Slops", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
	    feet={ name="Vanya Clogs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
        neck="Aife's Medal",
	    waist="Porous Rope",
	    left_ear="Nourish. Earring",
	    right_ear="Nourish. Earring +1",
	    left_ring="Mephitas's Ring",
	    right_ring="Mephitas's Ring +1",
        back={ name="Alaunus's Cape", augments={'MND+20','MND+10','"Cure" potency +10%',}},
	} -- end sets.magic.default

	-- Magic : Healing
	sets.midcast.magic.healing = sets.midcast.magic.default
	-- end sets.magic.healing

	-- Magic : Enhancing
	sets.midcast.magic.enhancing = sets.midcast.magic.default
	-- end sets.magic.enhancing

	-- Magic : Enfeebling
	sets.midcast.magic.enfeebling = sets.midcast.magic.default
	-- end sets.magic.enfeebling
	

end -- end get_sets()


----------------------------------------------------------------------
-- Spell arrays
----------------------------------------------------------------------
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


----------------------------------------------------------------------
-- Callback for when casting begins
----------------------------------------------------------------------
function precast(spell)
    if spell.action_type == 'Magic' then
		equip(sets.precast.fastcast)
	end
end -- end precast()


----------------------------------------------------------------------
-- Callback for after casting begins, but before it fires
----------------------------------------------------------------------
function midcast(spell)

	-- Check if the action is a specified weapon skill
	if spell.action_type == 'Magic' then

		-- Check if this is healing magic
		if MagicEnfeebling[spell.name] then
			equip(sets.midcast.magic.enfeebling)
		elseif MagicEnhancing[spell.name] then
			equip(sets.midcast.magic.enhancing)
		elseif MagicHealing[spell.name] then
			equip(sets.midcast.magic.healing)
		else
			equip(sets.midcast.magic.default)
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