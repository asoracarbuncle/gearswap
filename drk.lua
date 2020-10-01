function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')


	----------------------------------------------------------------------
	-- Idle set
	----------------------------------------------------------------------
	sets.idle = {
		-- PASTE GEAR FROM //gs export OVER THIS LINE
		-- PASTE GEAR FROM //gs export OVER THIS LINE
		-- PASTE GEAR FROM //gs export OVER THIS LINE
	} -- end Idle


	----------------------------------------------------------------------
	-- Engaged set
	----------------------------------------------------------------------
	sets.engaged = {
		-- PASTE GEAR FROM //gs export OVER THIS LINE
		-- PASTE GEAR FROM //gs export OVER THIS LINE
		-- PASTE GEAR FROM //gs export OVER THIS LINE
	} -- end Engaged


	----------------------------------------------------------------------
	-- Precast set
	sets.precast = {}
	----------------------------------------------------------------------
	-- Precast : Fast Cast
	sets.precast.fastCast = {
		-- PASTE GEAR FROM //gs export OVER THIS LINE
		-- PASTE GEAR FROM //gs export OVER THIS LINE
		-- PASTE GEAR FROM //gs export OVER THIS LINE
	} -- end Fast Cast


	----------------------------------------------------------------------
	-- Weapon Skill set(s)
	sets.midcast = {}
	sets.midcast.ws = {}
	----------------------------------------------------------------------
	-- Midcast : Weapon Skill : Default
	-- This set will be used to every weapon skill that does NOT
	-- have a specific named set below.
	sets.midcast.ws.default = {
		-- PASTE GEAR FROM //gs export OVER THIS LINE
		-- PASTE GEAR FROM //gs export OVER THIS LINE
		-- PASTE GEAR FROM //gs export OVER THIS LINE
	} -- end Weaponskill Default

	-- Midcast : Weapon Skill : Resolution
	sets.midcast.ws["Resolution"] = {
		-- PASTE GEAR FROM //gs export OVER THIS LINE
		-- PASTE GEAR FROM //gs export OVER THIS LINE
		-- PASTE GEAR FROM //gs export OVER THIS LINE
	} -- end Tachi: Fudo


	----------------------------------------------------------------------
	-- Job Ability set(s)
	sets.midcast.ja = {}
	----------------------------------------------------------------------
	-- Midcast : Arcane Circle set
	sets.midcast.ja['Arcane Circle'] = {
	} -- end Arcane Circle

	-- Midcast : Arcane Crest set
	sets.midcast.ja['Arcane Crest'] = {
	} -- end Arcane Crest

	-- Midcast : Blood Weapon set
	sets.midcast.ja['Blood Weapon'] = {
	} -- end Blood Weapon

	-- Midcast : Consume Mana set
	sets.midcast.ja['Consume Mana'] = {
	} -- end Consume Mana

	-- Midcast : Dark Seal set
	sets.midcast.ja['Dark Seal'] = {
	} -- end Dark Seal

	-- Midcast : Diabolic Eye set
	sets.midcast.ja['Diabolic Eye'] = {
	} -- end Diabolic Eye

	-- Midcast : Last Resort set
	sets.midcast.ja['Last Resort'] = {
	} -- end Last Resort

	-- Midcast : Nether Void set
	sets.midcast.ja['Nether Void'] = {
	} -- end Nether Void

	-- Midcast : Scarlet Dilirium set
	sets.midcast.ja['Scarlet Dilirium'] = {
	} -- end Scarlet Dilirium

	-- Midcast : Souleater set
	sets.midcast.ja['Souleater'] = {
	} -- end Souleater

	-- Midcast : Soul Enslavement set
	sets.midcast.ja['Soul Enslavement'] = {
	} -- end Soul Enslavement

	-- Midcast : Weapon Bash set
	sets.midcast.ja['Weapon Bash'] = {
	} -- end Weapon Bash


	----------------------------------------------------------------------
	-- Magic set(s)
	----------------------------------------------------------------------
	-- Midcast : Magic
	sets.midcast.magic = {
	} -- end Magic


	----------------------------------------------------------------------
	-- Utility Sets (not bound to a key)
	sets.utility = {}
	----------------------------------------------------------------------
	-- Dark Magic set
	sets.utility.darkMagic = {
	} -- end Dark Magic

	-- Enfeebling Magic set
	sets.utility.enfeeblingMagic = {
	} -- end Enfeebling Magic


	----------------------------------------------------------------------
	-- Spell arrays
	----------------------------------------------------------------------
	DarkSpells = {
		["Absorb-ACC"] = true,
		["Absorb-AGI"] = true,
		["Absorb-Attri"] = true,
		["Absorb-CHR"] = true,
		["Absorb-DEX"] = true,
		["Absorb-INT"] = true,
		["Absorb-MND"] = true,
		["Absorb-STR"] = true,
		["Absorb-TP"] = true,
		["Absorb-VIT"] = true,
		["Aspir"] = true,
		["Aspir II"] = true,
		["Bio"] = true,
		["Bio II"] = true,
		["Endark"] = true,
		["Endark II"] = true,
		["Drain"] = true,
		["Drain II"] = true,
		["Drain III"] = true,
		["Dread Spikes"] = true,
		["Stun"] = true,
		["Tractor"] = true,
	}
	
	ElementalSpells = {
		["Aero"] = true,
		["Aero II"] = true,
		["Aero III"] = true,
		["Blizzard"] = true,
		["Blizzard II"] = true,
		["Blizzard III"] = true,
		["Fire"] = true,
		["Fire II"] = true,
		["Fire III"] = true,
		["Stone"] = true,
		["Stone II"] = true,
		["Stone III"] = true,
		["Thunder"] = true,
		["Thunder II"] = true,
		["Thunder III"] = true,
		["Water"] = true,
		["Water II"] = true,
		["Water III"] = true,
	}

	EnfeeblingSpells = {
		["Bind"] = true,
		["Break"] = true,
		["Poison"] = true,
		["Poison II"] = true,
		["Poisonga"] = true,
		["Sleep"] = true,
		["Sleep II"] = true,
	}

end -- end get_sets()


----------------------------------------------------------------------
-- Callback for before casting begins
----------------------------------------------------------------------
function precast(spell)
    if spell.action_type == 'Magic' then
		equip(sets.precast.fastCast)
	end
end


----------------------------------------------------------------------
-- Callback for after casting begins, but before it fires
----------------------------------------------------------------------
function midcast(spell)
	if spell.type == 'JobAbility' then
		equip(sets.midcast.ja[spell.name])
    elseif spell.action_type == 'Magic' then
    	equip(sets.midcast.magic)
    	if DarkSpells[spell.english] then
	    	equip(sets.utility.darkMagic)
    	elseif EnfeeblingSpells[spell.name] then
	    	equip(sets.utility.enfeeblingMagic)
    	end
    elseif spell.type == 'WeaponSkill' then
    	if sets.midcast.ws[spell.english] then
			equip(sets.midcast.ws[spell.name])
		else
			equip(sets.midcast.ws.default)
    	end
	end
end


----------------------------------------------------------------------
-- Callback for after casting has finished
----------------------------------------------------------------------
function aftercast(spell)
	-- Engaged
	if player.status =='Engaged' then
		equip(sets.engaged)
	-- Everything else
	else
		equip(sets.idle)
	end
end


----------------------------------------------------------------------
-- Callback for whenever engagment status changes
----------------------------------------------------------------------
function status_change(new, old)
	-- Engaged
	if new == 'Engaged' then
		equip(sets.engaged)
	-- Everything else
	else
		equip(sets.idle)
	end
end


----------------------------------------------------------------------
-- In game alerts to gear set changes
----------------------------------------------------------------------
function self_command(command)
	-- Equip idle set
	if command == 'toggle idle set' then
		send_command('@input /echo <----- Idle Set Equipped ----->')
		equip(sets.idle)
	end -- end if
end