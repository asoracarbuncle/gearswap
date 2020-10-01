function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')


	----------------------------------------------------------------------
	-- Idle set
	----------------------------------------------------------------------
	sets.idle = {
        ammo="Hydrocera",
        head="Hjarrandi Helm",
        body="Hjarrandi Breast.",
        hands="Flam. Manopolas +2",
        legs="Flamma Dirs +2",
        feet="Flam. Gambieras +2",
        neck="Loricate Torque +1",
        waist="Nierenschutz",
        left_ear="Etiolation Earring",
        right_ear="Static Earring",
        left_ring="Fortified Ring",
        right_ring="Defending Ring",
        back="Moonbeam Cape",
	} -- end Idle


	----------------------------------------------------------------------
	-- Engaged set
	----------------------------------------------------------------------
	sets.engaged = {
	    ammo="Ginsen",
	    head="Flam. Zucchetto +2",
	    body="Hjarrandi Breast.",
	    hands="Flam. Manopolas +2",
	    legs="Flamma Dirs +2",
	    feet="Flam. Gambieras +2",
	    neck="Ainia Collar",
	    waist="Ioskeha Belt +1",
	    left_ear="Telos Earring",
	    right_ear="Dedition Earring",
	    left_ring="Flamma Ring",
	    right_ring="Rajas Ring",
	    back="Atheling Mantle",
	} -- end Engaged


	----------------------------------------------------------------------
	-- Precast set
	sets.precast = {}
	----------------------------------------------------------------------
	-- Precast : Fast Cast
	sets.precast.fastCast = {
        ammo="Impatiens",
        head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
        body="Sacro Breastplate",
        hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="Arjuna Breeches",
        feet={ name="Carmine Greaves", augments={'HP+60','MP+60','Phys. dmg. taken -3',}},
        neck="Orunmila's Torque",
        waist="Nierenschutz",
        left_ear="Etiolation Earring",
        right_ear="Malignance Earring",
        left_ring="Rahab Ring",
        right_ring="Kishar Ring",
        back="Moonbeam Cape",
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
        ammo="Knobkierrie",
        head="Flam. Zucchetto +2",
        body="Hjarrandi Breast.",
        hands="Flam. Manopolas +2",
        legs="Flamma Dirs +2",
        feet="Flam. Gambieras +2",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Ishvara Earring",
        right_ear="Thrud Earring",
        left_ring="Karieyh Ring",
        right_ring="Flamma Ring",
        back="Atheling Mantle",
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
		send_command('@input /echo Magic: General')
    	equip(sets.midcast.magic)
    	if DarkSpells[spell.english] then
			send_command('@input /echo Magic: Dark')
	    	equip(sets.utility.darkMagic)
    	elseif EnfeeblingSpells[spell.name] then
			send_command('@input /echo Magic: Enfeebling')
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