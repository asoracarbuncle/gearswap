function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c equip idle set')

	----------------------------------------------------------------------
	-- Idle set(s)
	----------------------------------------------------------------------
	sets.idle = {
		-- PASTE GEARSWAP EXPORT GEAR HERE
	} -- end Idle


	----------------------------------------------------------------------
	-- Engaged set(s)
	----------------------------------------------------------------------
	sets.engaged = {
		-- PASTE GEARSWAP EXPORT GEAR HERE
	} -- end Engaged


	----------------------------------------------------------------------
	-- Precast set(s)
	sets.precast = {}
	----------------------------------------------------------------------
	-- Precast : Fast Cast
	sets.precast.fastCast = {
		-- PASTE GEARSWAP EXPORT GEAR HERE
	} -- end Fast Cast


	----------------------------------------------------------------------
	-- Weapon Skill set(s)
	sets.midcast = {}
	sets.midcast.ws = {}
	----------------------------------------------------------------------
	-- Default
	sets.midcast.ws.default = {
		-- PASTE GEARSWAP EXPORT GEAR HERE
	} -- end Weaponskill Default

	-- Dimidiation
	sets.midcast.ws["Dimidiation"] = set_combine(sets.midcast.ws.default, {
		-- PASTE GEARSWAP EXPORT GEAR HERE
	}) -- end Dimidiation

	-- Resolution
	sets.midcast.ws["Resolution"] = set_combine(sets.midcast.ws.default, {
		-- PASTE GEARSWAP EXPORT GEAR HERE
	}) -- end Resolution


	----------------------------------------------------------------------
	-- Magic set(s)
	sets.midcast.magic = {}
	----------------------------------------------------------------------
	-- Dark Magic
	sets.midcast.magic.dark = {
	} -- end Dark Magic

	-- Elemental Magic
	sets.midcast.magic.elemental = {
	} -- end Elemental Magic

	-- Enhancing Magic
	sets.midcast.magic.enhancing = {
	} -- end Enhancing Magic

	-- Enfeebling Magic
	sets.midcast.magic.enfeebling = {
	} -- end Enfeebling Magic

	-- Enmity Magic
	sets.midcast.magic.enmity = {
	} -- end Enmity Magic

	-- Phalanx Magic
	sets.midcast.magic.phalanx = {
	} -- end Phalanx Magic

	-- Regen Magic
	sets.midcast.magic.regen = {
	} -- end Regen Magic

	-- Stoneskin Magic
	sets.midcast.magic.stoneskin = {
	} -- end Stoneskin Magic


	----------------------------------------------------------------------
	-- Job Ability set(s)
	sets.midcast.ja = {}
	----------------------------------------------------------------------
	-- Elemental Sforzo
	sets.midcast.ja['Elemental Sforzo'] = {
	} -- end Elemental Sforzo

	-- Embolden
	sets.midcast.ja['Embolden'] = {
	} -- end Embolden

	-- Odyllic Subterfuge
	sets.midcast.ja['Odyllic Subterfuge'] = {
	} -- end Odyllic Subterfuge

	-- One for All
	sets.midcast.ja['One for All'] = {
	} -- end One for All

	-- Swordplay
	sets.midcast.ja['Swordplay'] = {
	} -- end Swordplay

	-- Vivacious Pulse
	sets.midcast.ja['Vivacious Pulse'] = {
	} -- end Vivacious Pulse

	----------------------------------------------------------------------
	-- Runes
	sets.midcast.ja.rune = {}
	----------------------------------------------------------------------
	-- Flabra
	sets.midcast.ja.rune['Flabra'] = {
	} -- end Flabra

	-- Gelus
	sets.midcast.ja.rune['Gelus'] = {
	} -- end Gelus

	-- Ignis
	sets.midcast.ja.rune['Ignis'] = {
	} -- end Ignis

	-- Lux
	sets.midcast.ja.rune['Lux'] = {
	} -- end Lux

	-- Sulpor
	sets.midcast.ja.rune['Sulpor'] = {
	} -- end Sulpor

	-- Tellus
	sets.midcast.ja.rune['Tellus'] = {
	} -- end Tellus

	-- Tenebrae
	sets.midcast.ja.rune['Tenebrae'] = {
	} -- end Tenebrae

	-- Unda
	sets.midcast.ja.rune['Unda'] = {
	} -- end Unda

	----------------------------------------------------------------------
	-- Effusions
	sets.midcast.ja.effusion = {}
	----------------------------------------------------------------------
	-- Gambit
	sets.midcast.ja.effusion['Gambit'] = {
	} -- end Gambit

	-- Lunge
	sets.midcast.ja.effusion['Lunge'] = {
	} -- end Lunge

	-- Rayke
	sets.midcast.ja.effusion['Rayke'] = {
	} -- end Rayke

	-- Swipe
	sets.midcast.ja.effusion['Swipe'] = {
	} -- end Swipe

	----------------------------------------------------------------------
	-- Wards
	sets.midcast.ja.ward = {}
	----------------------------------------------------------------------
	-- Battuta
	sets.midcast.ja.ward['Battuta'] = {
	} -- end Battuta

	-- Liement
	sets.midcast.ja.ward['Liement'] = {
	} -- end Liement

	-- Pflug
	sets.midcast.ja.ward['Pflug'] = {
	} -- end Pflug

	-- Valiance
	sets.midcast.ja.ward['Valiance'] = {
	} -- end Valiance

	-- Vallation
	sets.midcast.ja.ward['Vallation'] = {
	} -- end Vallation


	----------------------------------------------------------------------
	-- Utility set(s)
	sets.utility = {}
	----------------------------------------------------------------------
	-- Enmity
	sets.utility.enmity = {
	} -- end Enmity


	----------------------------------------------------------------------
	-- Spell arrays
	----------------------------------------------------------------------
	MagicDark = {
		["Absorb-Agi"] = true,
		["Absorb-CHR"] = true,
		["Absorb-DEX"] = true,
		["Absorb-INT"] = true,
		["Absorb-MND"] = true,
		["Absorb-STR"] = true,
		["Absorb-TP"] = true,
		["Absorb-VIT"] = true,
		["Aspir"] = true,
		["Bio"] = true,
		["Bio II"] = true,
		["Drain"] = true,
		["Stun"] = true,
		["Tractor"] = true,
	}

	MagicElemental = {
		["Aero"] = true,
		["Blizzard"] = true,
		["Fire"] = true,
		["Stone"] = true,
		["Stone II"] = true,
		["Thunder"] = true,
		["Water"] = true,
		["Water II"] = true,
	}

	MagicEnfeebling = {
		["Bind"] = true,
		["Poison"] = true,
		["Poison II"] = true,
		["Poisonga"] = true,
		["Sleep"] = true,
	}

	MagicEnhancing = {
		["Aquaveil"] = true,
		["Baraero"] = true,
		["Baramnesia"] = true,
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
		["Crusade"] = true,
		["Foil"] = true,
		["Ice Spikes"] = true,
		["Phalanx"] = true,
		["Protect"] = true,
		["Protect II"] = true,
		["Protect III"] = true,
		["Protect IV"] = true,
		["Refresh"] = true,
		["Shell"] = true,
		["Shell II"] = true,
		["Shell III"] = true,
		["Shell IV"] = true,
		["Shell V"] = true,
		["Shock Spikes"] = true,
		["Temper"] = true,
	}

	MagicEnmity = {
		["Blank Gaze"] = true,
		["Flash"] = true,
		["Geist Wall"] = true,
		["Grand Slam"] = true,
		["Healing Breeze"] = true,
		["Jettatura"] = true,
		["Sheep Song"] = true,
		["Soporific"] = true,
		["Stinking Gas"] = true,
		["Terror Touch"] = true,
	}

	MagicPhalanx = {
		["Phalanx"] = true,
	}

	MagicRegen = {
		["Regen"] = true,
		["Regen II"] = true,
		["Regen III"] = true,
		["Regen IV"] = true,
	}

	MagicStoneskin = {
		["Stoneskin"] = true,
	}


end -- end get_sets()


----------------------------------------------------------------------
-- Callback for when casting begins
----------------------------------------------------------------------
function precast(spell)
	
	-- If the action type is magic
    if spell.action_type == 'Magic' then
		equip(sets.precast.fastCast)
	end

end -- end precast()


----------------------------------------------------------------------
-- Callback for after casting begins, but before it fires
----------------------------------------------------------------------
function midcast(spell)

	-- If the action is an Ability
	if spell.action_type == 'Ability' then

		-- Check for effusions
	    if spell.type == 'Effusion' then
			equip(sets.midcast.ja.effusion[spell.english])

		-- Check for job abilities
	    elseif spell.type == 'JobAbility' then
			equip(sets.midcast.ja[spell.english])

		-- Check for runes
	    elseif spell.type == 'Rune' then
			equip(sets.midcast.ja.rune[spell.english])

		-- Check for wards
	    elseif spell.type == 'Ward' then
			equip(sets.midcast.ja.ward[spell.english])

		-- Check for weapon skills
	    elseif spell.type == 'WeaponSkill' then
			-- Equip one of the specific weapon skill sets
			if sets.midcast.ws[spell.english] then
				equip(sets.midcast.ws[spell.english])
			-- Equip the default weapon skill set
		    else
				equip(sets.midcast.ws.default)
			end

		end

	-- If the action is an Item
	elseif spell.action_type == 'Item' then
		-- Ignore

	-- If the action is Magic
	elseif spell.action_type == 'Magic' then
		-- Check for dark magic
		if MagicDark[spell.english] then
			equip(sets.midcast.magic.dark)
		-- Check for elemental magic
		elseif MagicElemental[spell.english] then
			equip(sets.midcast.magic.elemental)
		-- Check for enfeebling magic
		elseif MagicEnfeebling[spell.english] then
			equip(sets.midcast.magic.enfeebling)
		-- Check for enhancing magic
		elseif MagicEnhancing[spell.english] then
			equip(sets.midcast.magic.enhancing)
		-- Check for enmity magic
		elseif MagicEnmity[spell.english] then
			equip(sets.midcast.magic.enmity)
		-- Check for phalanx magic
		elseif MagicPhalanx[spell.english] then
			set_combine(sets.midcast.magic.enhancing, sets.midcast.magic.phalanx)
		-- Check for regen magic
		elseif MagicRegen[spell.english] then
			set_combine(sets.midcast.magic.enhancing, sets.midcast.magic.regen)
		-- Check for stoneskin magic
		elseif MagicStoneskin[spell.english] then
			set_combine(sets.midcast.magic.enhancing, sets.midcast.magic.stoneskin)
		end
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
-- In game alerts to gear set changes
----------------------------------------------------------------------
function self_command(command)

	-- Equip idle set
	if command == 'equip idle set' then
		equip(sets.idle)
		send_command('@input /echo <----- Idle Set Equipped ----->')
	end -- end if

end -- end self_command()