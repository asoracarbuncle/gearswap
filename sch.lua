function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')


	----------------------------------------------------------------------
	-- Idle set(s)
	----------------------------------------------------------------------
	sets.idle = {
        main="Malignance Pole",
        sub="Enki Strap",
        ammo="Homiliary",
        head={ name="Chironic Hat", augments={'AGI+8','"Resist Silence"+4','"Refresh"+2','Accuracy+6 Attack+6',}},
	    body="Jhakri Robe +2",
        hands={ name="Chironic Gloves", augments={'Mag. Acc.+19','"Fast Cast"+6','CHR+10','"Mag.Atk.Bns."+9',}},
	    legs="Assid. Pants +1",
        feet="Acad. Loafers +3",
        neck="Loricate Torque +1",
        waist="Fucho-no-Obi",
	    left_ear="Etiolation Earring",
	    right_ear="Static Earring",
	    left_ring="Fortified Ring",
	    right_ring="Defending Ring",
	    back="Moonbeam Cape",
	} -- end Idle


	----------------------------------------------------------------------
	-- Melee set(s)
	----------------------------------------------------------------------
	sets.melee = {
        main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
        sub="Enki Strap",
        ammo="Hydrocera",
        head="Jhakri Coronal +2",
        body="Jhakri Robe +2",
        hands="Jhakri Cuffs +2",
        legs="Jhakri Slops +2",
        feet="Jhakri Pigaches +2",
        neck="Loricate Torque +1",
        waist="Chaac Belt",
	    left_ear="Etiolation Earring",
	    right_ear="Static Earring",
	    left_ring="Fortified Ring",
	    right_ring="Defending Ring",
        back="Solemnity Cape",
	} -- end Melee


	----------------------------------------------------------------------
	-- Precast set(s)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Precast : FastCast
	-- Fast Cast: 78% + 10% Grimoire + 15% RDM Sub
	-- Haste: 34%
	sets.precast.fastCast = {
	    main="Oranyan",
	    sub="Enki Strap",
        ammo="Impatiens",
	    head={ name="Merlinic Hood", augments={'Mag. Acc.+16','"Fast Cast"+6','MND+9','"Mag.Atk.Bns."+4',}},
	    body="Zendik Robe",
	    hands={ name="Chironic Gloves", augments={'Mag. Acc.+19','"Fast Cast"+6','CHR+10','"Mag.Atk.Bns."+9',}},
	    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
	    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+26','"Fast Cast"+6','"Mag.Atk.Bns."+5',}},
        neck="Orunmila's Torque",
	    waist="Witful Belt",
        left_ear="Malignance Earring",
	    right_ear="Loquac. Earring",
	    left_ring="Rahab Ring",
	    right_ring="Kishar Ring",
        back={ name="Lugh's Cape", augments={'Haste+10',}},
	} -- end Fast Cast


	----------------------------------------------------------------------
	-- Midcast set(s)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}
	sets.midcast.magic = {}

	----------------------------------------------------------------------
	-- Midcast: Dark Magic
	----------------------------------------------------------------------
	sets.midcast.magic.dark = {}
	sets.midcast.magic.dark.default = {
        main={ name="Rubicundity", augments={'Mag. Acc.+10','"Mag.Atk.Bns."+10','Dark magic skill +10','"Conserve MP"+7',}},
        sub="Ammurapi Shield",
        body="Shango Robe",
	    neck="Erra Pendant",
        waist="Fucho-no-Obi",
        right_ear="Hirudinea Earring",
	    left_ring="Evanescence Ring",
		right_ring="Archon Ring",
	    back="Perimede Cape",
	} -- end Dark Magic

	-- Midcast: Dark: Light Arts
	sets.midcast.magic.dark.lightArts = set_combine(sets.midcast.magic.dark.default, {
	}) -- end Dark: Light Arts

	-- Midcast: Dark: Dark Arts
	sets.midcast.magic.dark.darkArts = set_combine(sets.midcast.magic.dark.default, {
	}) -- end Dark: Dark Arts


	----------------------------------------------------------------------
	-- Midcast: Elemental Magic
	----------------------------------------------------------------------
	sets.midcast.magic.elemental = {}
	sets.midcast.magic.elemental.default = {
	    main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
	    sub="Enki Strap",
        ammo="Pemphredo Tathlum",
        head="Jhakri Coronal +2",
        body="Jhakri Robe +2",
        hands="Jhakri Cuffs +2",
        legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst dmg.+1%','INT+9','Mag. Acc.+11','"Mag.Atk.Bns."+11',}},
        feet="Jhakri Pigaches +2",
        neck="Sanctity Necklace",
        waist="Refoccilation Stone",
        left_ear="Malignance Earring",
        right_ear="Regal Earring",
        left_ring="Jhakri Ring",
        right_ring="Freke Ring",
        back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
	} -- end Elemental Magic: Default

	-- Midcast: Elemental: Light Arts
	sets.midcast.magic.elemental.lightArts = set_combine(sets.midcast.magic.elemental.default, {
	}) -- end Elemental Magic: Light Arts

	-- Midcast: Elemental: Dark Arts
	sets.midcast.magic.elemental.darkArts = set_combine(sets.midcast.magic.elemental.default, {
	}) -- end Elemental Magic: Dark Arts


	----------------------------------------------------------------------
	-- Midcast: Enfeebling Magic
	----------------------------------------------------------------------
	sets.midcast.magic.enfeebling = {}
	sets.midcast.magic.enfeebling.default = {
        main="Oranyan",
        sub="Enki Strap",
        ammo="Pemphredo Tathlum",
        head="Acad. Mortar. +2",
        body="Acad. Gown +2",
        hands="Regal Cuffs",
        legs="Arbatel Pants +1",
        feet="Acad. Loafers +3",
        neck="Incanter's Torque",
        waist="Rumination Sash",
        left_ear="Malignance Earring",
        right_ear="Regal Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
	} -- end Enfeebling Magic

	-- Midcast: Enfeebling Magic: Light Arts
	sets.midcast.magic.enfeebling.lightArts = set_combine(sets.midcast.magic.enfeebling.default, {
	    legs="Acad. Pants +2",
	}) -- end Enfeebling Magic: Light Arts

	-- Midcast: Enfeebling Magic: Dark Arts
	sets.midcast.magic.enfeebling.darkArts = set_combine(sets.midcast.magic.enfeebling.default, {
	}) -- end Enfeebling Magic: Dark Arts


	----------------------------------------------------------------------
	-- Midcast: Enhancing Magic
	----------------------------------------------------------------------
	sets.midcast.magic.enhancing = {}
	sets.midcast.magic.enhancing.default = {
        main={ name="Gada", augments={'Enh. Mag. eff. dur. +5','MND+2','Mag. Acc.+11','"Mag.Atk.Bns."+12','DMG:+7',}},
	    sub="Ammurapi Shield",
        ammo="Hydrocera",
        head="Befouled Crown",
        body={ name="Peda. Gown +3", augments={'Enhances "Enlightenment" effect',}},
        hands={ name="Chironic Gloves", augments={'Mag. Acc.+19','"Fast Cast"+6','CHR+10','"Mag.Atk.Bns."+9',}},
        legs={ name="Lengo Pants", augments={'INT+7','Mag. Acc.+7','"Mag.Atk.Bns."+3','"Refresh"+1',}},
        feet="Regal Pumps +1",
	    neck="Incanter's Torque",
	    waist="Luminary Sash",
	    left_ear="Malignance Earring",
	    right_ear="Regal Earring",
	    left_ring="Rufescent Ring",
	    right_ring="Metamor. Ring +1",
	    back="Fi Follet Cape +1",
	} -- end Enhancing Magic

	-- Midcast: Enhancing Magic: Light Arts
	sets.midcast.magic.enhancing.lightArts = set_combine(sets.midcast.magic.enhancing.default, {
	    head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
        body={ name="Peda. Gown +3", augments={'Enhances "Enlightenment" effect',}},
	    hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +7',}},
	    legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
	    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
	}) -- end Enhancing Magic: Light Arts

	-- Midcast: Enhancing Magic: Dark Arts
	sets.midcast.magic.enhancing.darkArts = set_combine(sets.midcast.magic.enhancing.default, {
	}) -- end Enhancing Magic: Dark Arts


	----------------------------------------------------------------------
	-- Midcast: Healing Magic
	----------------------------------------------------------------------
	sets.midcast.magic.healing = {}
	sets.midcast.magic.healing.default = {
	    main={ name="Serenity", augments={'MP+50','Enha.mag. skill +10','"Cure" potency +5%','"Cure" spellcasting time -10%',}},
	    sub="Enki Strap",
	    ammo="Hydrocera",
	    head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
	    body="Zendik Robe",
	    hands="Acad. Bracers +2",
	    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
	    feet="Regal Pumps +1",
	    neck="Incanter's Torque",
	    waist="Luminary Sash",
	    left_ear="Lifestorm Earring",
	    right_ear="Regal Earring",
	    left_ring="Stikini Ring",
	    right_ring="Stikini Ring",
	    back={ name="Lugh's Cape", augments={'MND+20','MND+10','"Cure" potency +10%',}},
	} -- end Healing Magic

	-- Midcast: Healing: Light Arts
	sets.midcast.magic.healing.lightArts = set_combine(sets.midcast.magic.healing.default, {
	}) -- end Healing: Light Arts

	-- Midcast: Healing: Dark Arts
	sets.midcast.magic.healing.darkArts = set_combine(sets.midcast.magic.healing.default, {
	}) -- end Healing: Dark Arts


	----------------------------------------------------------------------
	-- Job Abilities
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.jobAbility = {}

	-- Dark Arts
	sets.jobAbility.darkArts = {
	    body="Acad. Gown +2",
	} -- end Dark Arts

	-- Ebullience
	sets.jobAbility.ebullience = {
        head="Arbatel Bonnet +1",
	} -- end Ebullience

	-- Immanence
	sets.jobAbility.immanence = {
        hands="Arbatel Bracers +1",
	} -- end Immanence

	-- Light Arts
	sets.jobAbility.lightArts = {
	    legs="Acad. Pants +2",
	} -- end Light Arts

	-- Perpetuance
	sets.jobAbility.perpetuance = {
	    hands="Arbatel Bracers +1",
	} -- end Perpetuance

	-- Sublimation
	sets.jobAbility.sublimation = {
	    head="Acad. Mortar. +2",
	    body={ name="Peda. Gown +3", augments={'Enhances "Enlightenment" effect',}},
        left_ear="Savant's Earring",
	} -- end Sublimation

	-- Tabula Rasa
	sets.jobAbility.tabulaRasa = {
        legs={ name="Peda. Pants +1", augments={'Enhances "Tabula Rasa" effect',}},
	} -- end Tabula Rasa


	----------------------------------------------------------------------
	-- Utility Sets (not bound to a key)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.utility = {}

	-- Aqyaveil
	sets.utility.aquaveil = {
        head={ name="Amalric Coif", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
	} -- end Aquaveil

	-- Element Bonus
	sets.utility.elementBonus = {
	    waist="Hachirin-no-Obi",
	} -- end Element Bonus

	-- Klimaform
	sets.utility.klimaform = {
        feet="Arbatel Loafers +1",
	} -- end Klimaform

	-- Regen
	sets.utility.regen = {
	    main="Bolelabunga",
	    sub="Ammurapi Shield",
        head="Arbatel Bonnet +1",
	    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
	} -- end Regen

	-- Stoneskin
	sets.utility.stoneskin = {
        waist="Siegel Sash",
	} -- end Stone Skin

	-- Stormsurge
	sets.utility.stormsurge = {
	    feet={ name="Peda. Loafers +1", augments={'Enhances "Stormsurge" effect',}},
	} -- end Storm Surge


	----------------------------------------------------------------------
	-- Spell arrays
	----------------------------------------------------------------------
	DarkSpells = {
		["Aspir"] = true,
		["Aspir II"] = true,
		["Bio"] = true,
		["Bio II"] = true,
		["Drain"] = true,
		["Kaustra"] = true,
	}

	ElementalSpells = {
		["Aero"] = true,
		["Aero II"] = true,
		["Aero III"] = true,
		["Aero IV"] = true,
		["Aero V"] = true,
		["Anemohelix"] = true,
		["Anemohelix II"] = true,
		["Blizzard"] = true,
		["Blizzard II"] = true,
		["Blizzard III"] = true,
		["Blizzard IV"] = true,
		["Blizzard V"] = true,
		["Cryohelix"] = true,
		["Cryohelix II"] = true,
		["Fire"] = true,
		["Fire II"] = true,
		["Fire III"] = true,
		["Fire IV"] = true,
		["Fire V"] = true,
		["Geohelix"] = true,
		["Geohelix II"] = true,
		["Hydrohelix"] = true,
		["Hydrohelix II"] = true,
		["Ionohelix"] = true,
		["Ionohelix II"] = true,
		["Luminohelix"] = true,
		["Luminohelix II"] = true,
		["Noctohelix"] = true,
		["Noctohelix II"] = true,
		["Pyrohelix"] = true,
		["Pyrohelix II"] = true,
		["Stone"] = true,
		["Stone II"] = true,
		["Stone III"] = true,
		["Stone IV"] = true,
		["Stone V"] = true,
		["Thunder"] = true,
		["Thunder II"] = true,
		["Thunder III"] = true,
		["Thunder IV"] = true,
		["Thunder V"] = true,
		["Water"] = true,
		["Water II"] = true,
		["Water III"] = true,
		["Water IV"] = true,
		["Water V"] = true,
	}

	EnfeeblingSpells = {
		["Bind"] = true,
		["Blind"] = true,
		["Break"] = true,
		["Dia"] = true,
		["Dia II"] = true,
		["Diaga"] = true,
		["Dispel"] = true,
		["Distract"] = true,
		["Frazzle"] = true,
		["Gravity"] = true,
		["Paralyze"] = true,
		["Poison"] = true,
		["Poison II"] = true,
		["Sleep"] = true,
		["Sleep II"] = true,
		["Silence"] = true,
		["Slow"] = true,
	}

	EnhancingSpells = {
		["Adloquium"] = true,
		["Animus Augeo"] = true,
		["Animus Minuo"] = true,
		["Aquaveil"] = true,
		["Aurorastorm"] = true,
		["Aurorastorm II"] = true,
		["Baraero"] = true,
		["Barblind"] = true,
		["Barblizzard"] = true,
		["Barfire"] = true,
		["Barparalyze"] = true,
		["Barpetrify"] = true,
		["Barpoison"] = true,
		["Barsilence"] = true,
		["Barsleep"] = true,
		["Barstone"] = true,
		["Barthunder"] = true,
		["Barvirus"] = true,
		["Barwater"] = true,
		["Blaze Spikes"] = true,
		["Blink"] = true,
		["Deoderize"] = true,
		["Embrava"] = true,
		["Enaero"] = true,
		["Enblizzard"] = true,
		["Enfire"] = true,
		["Enstone"] = true,
		["Enthunder"] = true,
		["Enwater"] = true,
		["Erase"] = true,
		["Firestorm"] = true,
		["Firestorm II"] = true,
		["Flurry"] = true,
		["Hailstorm"] = true,
		["Hailstorm II"] = true,
		["Haste"] = true,
		["Ice Spikes"] = true,
		["Invisible"] = true,
		["Phalanx"] = true,
		["Protect"] = true,
		["Protect II"] = true,
		["Protect III"] = true,
		["Protect IV"] = true,
		["Protect V"] = true,
		["Rainstorm"] = true,
		["Rainstorm II"] = true,
		["Refresh"] = true,
		["Regen"] = true,
		["Regen II"] = true,
		["Regen III"] = true,
		["Regen IV"] = true,
		["Regen V"] = true,
		["Sandstorm"] = true,
		["Sandstorm II"] = true,
		["Shell"] = true,
		["Shell II"] = true,
		["Shell III"] = true,
		["Shell IV"] = true,
		["Shell V"] = true,
		["Shock Spikes"] = true,
		["Sneak"] = true,
		["Stoneskin"] = true,
		["Thunderstorm"] = true,
		["Thunderstorm II"] = true,
		["Voidstorm"] = true,
		["Voidstorm II"] = true,
		["Windstorm"] = true,
		["Windstorm II"] = true,
	}

	HealingSpells = {
		["Blindna"] = true,
		["Cure"] = true,
		["Cure II"] = true,
		["Cure III"] = true,
		["Cure IV"] = true,
		["Cursna"] = true,
		["Paralyna"] = true,
		["Poisona"] = true,
		["Raise"] = true,
		["Raise II"] = true,
		["Raise III"] = true,
		["Reraise"] = true,
		["Reraise II"] = true,
		["Reraise III"] = true,
		["Silena"] = true,
		["Stona"] = true,
		["Viruna"] = true,
	}

	RegenSpells = {
		["Regen"] = true,
		["Regen II"] = true,
		["Regen III"] = true,
		["Regen IV"] = true,
		["Regen V"] = true,
	}

	StormsurgeSpells = {
		["Sandstorm"] = true,
		["Sandstorm II"] = true,
		["Rainstorm"] = true,
		["Rainstorm II"] = true,
		["Windstorm"] = true,
		["Windstorm II"] = true,
		["Firestorm"] = true,
		["Firestorm II"] = true,
		["Hailstorm"] = true,
		["Hailstorm II"] = true,
		["Thunderstorm"] = true,
		["Thunderstorm II"] = true,
		["Voidstorm"] = true,
		["Voidstorm II"] = true,
		["Aurorastorm"] = true,
		["Aurorastorm II"] = true,
	}

end -- end get_sets()


----------------------------------------------------------------------
-- When status changes
----------------------------------------------------------------------
function status_change(new, old)

	if new == 'Engaged' then
		equip(sets.melee)
		sublimationCheck(new)
	else
		equip(sets.idle)
		sublimationCheck(new)
    end
end -- end Status Change


----------------------------------------------------------------------
-- When buffs are gained or lost
----------------------------------------------------------------------
function buff_change(buffName, gained, buffDetails)
	sublimationCheck('Idle')
end -- end Buff Change


----------------------------------------------------------------------
-- When casting begins
----------------------------------------------------------------------
function precast(spell)
    if spell.action_type == 'Magic' then
		equip(sets.precast.fastCast)
    end -- end if
end -- end Precast


----------------------------------------------------------------------
-- After casting begins, but before spell actually fires
----------------------------------------------------------------------
function midcast(spell)
	
	-- Check if the current action is a job ability
	if spell.type == 'JobAbility' then

		-- Check for job ability
    	if spell.name == "Tabula Rasa" then
    		equip(sets.jobAbility.tabulaRasa)
	    end

	-- Check if the current action is magic
	elseif spell.action_type == 'Magic' then

		-- 1. Check what type of spell it is
		if DarkSpells[spell.english] then
			darkMagicEquip()
		    ebullienceCheck()
    	elseif ElementalSpells[spell.english] then
    		elementalMagicEquip()
		    ebullienceCheck()
		    immanenceCheck()
    	elseif EnfeeblingSpells[spell.english] then
    		enfeeblingMagicEquip()
		    ebullienceCheck()
    	elseif EnhancingSpells[spell.english] then
    		enhancingMagicEquip()
		    perpetuanceCheck()
    	elseif HealingSpells[spell.english] then
    		healingMagicEquip()
    	end

	    -- 3. Check for specific spell buffs
	    if spell.english == "Aquaveil" then
	    	equip(sets.utility.aquaveil)
	    elseif spell.english == "Klimaform" then
	    	equip(sets.utility.klimaform)
	    elseif RegenSpells[spell.english] then
	    	equip(sets.utility.regen)
	    elseif spell.english == "Stoneskin" then
	    	equip(sets.utility.stoneskin)
	    elseif StormsurgeSpells[spell.english] then
	    	equip(sets.utility.stormsurge)
	    end -- end if

	    -- 4. Check for element bonus
	    if ElementalSpells[spell.english] then
			if spell.element == world.weather_element or spell.element == world.day_element then
				equip(sets.utility.elementBonus)
			end
		end

    end -- end if

end -- end Midcast


----------------------------------------------------------------------
-- After casting has completed
----------------------------------------------------------------------
function aftercast(spell)
	if player.status =='Engaged' then
		equip(sets.melee)
		sublimationCheck(player.status)
	else
		equip(sets.idle)
		sublimationCheck(player.status)
	end
end -- end Aftercast


----------------------------------------------------------------------
-- Bound key commands
----------------------------------------------------------------------
function self_command(command)

	-- Equip the idle set
	if command == 'toggle idle set' then
		-- Alert the user which set is currently being equipped
		send_command('@input /echo <----- Idle: Default Set Equipped ----->')
		-- Equip the set
		equip(sets.idle)
		sublimationCheck('Idle')
	end -- end if

end -- end Self Command

----------------------------------------------------------------------
-- Equips the appropriate dark magic set
----------------------------------------------------------------------
function darkMagicEquip()
	if buffactive['Light Arts'] or buffactive['Addendum: White'] then
		equip(sets.midcast.magic.dark.lightArts)
	elseif buffactive['Dark Arts'] or buffactive['Addendum: Black'] then
		equip(sets.midcast.magic.dark.darkArts)
	else
		equip(sets.midcast.magic.dark.default)
	end
end

----------------------------------------------------------------------
-- Equips the appropriate elemental magic set
----------------------------------------------------------------------
function elementalMagicEquip()
	if buffactive['Light Arts'] or buffactive['Addendum: White'] then
		equip(sets.midcast.magic.elemental.lightArts)
	elseif buffactive['Dark Arts'] or buffactive['Addendum: Black'] then
		equip(sets.midcast.magic.elemental.darkArts)
	else
		equip(sets.midcast.magic.elemental.default)
	end
end

----------------------------------------------------------------------
-- Equips the appropriate enfeebling magic set
----------------------------------------------------------------------
function enfeeblingMagicEquip()
	if buffactive['Light Arts'] or buffactive['Addendum: White'] then
		equip(sets.midcast.magic.enfeebling.lightArts)
	elseif buffactive['Dark Arts'] or buffactive['Addendum: Black'] then
		equip(sets.midcast.magic.enfeebling.darkArts)
	else
		equip(sets.midcast.magic.enfeebling.default)
	end
end

----------------------------------------------------------------------
-- Equips the appropriate enhancing magic set
----------------------------------------------------------------------
function enhancingMagicEquip()
	if buffactive['Light Arts'] or buffactive['Addendum: White'] then
		equip(sets.midcast.magic.enhancing.lightArts)
	elseif buffactive['Dark Arts'] or buffactive['Addendum: Black'] then
		equip(sets.midcast.magic.enhancing.darkArts)
	else
		equip(sets.midcast.magic.enhancing.default)
	end
end

----------------------------------------------------------------------
-- Equips the appropriate enhancing magic set
----------------------------------------------------------------------
function healingMagicEquip()
	if buffactive['Light Arts'] or buffactive['Addendum: White'] then
		equip(sets.midcast.magic.healing.lightArts)
	elseif buffactive['Dark Arts'] or buffactive['Addendum: Black'] then
		equip(sets.midcast.magic.healing.darkArts)
	else
		equip(sets.midcast.magic.healing.default)
	end
end

----------------------------------------------------------------------
-- Checks for ebullience
----------------------------------------------------------------------
function ebullienceCheck()
	if buffactive['Ebullience'] then
		equip(sets.jobAbility.ebullience)
	end
end

----------------------------------------------------------------------
-- Checks for immmanence
----------------------------------------------------------------------
function immanenceCheck()
	if buffactive['Immanence'] then
		equip(sets.jobAbility.immanence)
	end
end

----------------------------------------------------------------------
-- Checks for perpetuance
----------------------------------------------------------------------
function perpetuanceCheck()
	if buffactive['Perpetuance'] then
		equip(sets.jobAbility.perpetuance)
	end
end

----------------------------------------------------------------------
-- Checks for sublimation activated
----------------------------------------------------------------------
function sublimationCheck(status)
	if buffactive['Sublimation: Activated'] then
		equip(sets.jobAbility.sublimation)
	elseif buffactive['Sublimation: Complete'] then
		if status == 'Engaged' then
			equip(sets.melee)
		else
			equip(sets.idle)
		end
	end
end