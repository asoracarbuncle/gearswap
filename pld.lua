function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle dt set')
	send_command('bind f10 gs c toggle accuracy set')


	----------------------------------------------------------------------
	-- DamageTaken set
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.dt = {}

	-- DamageTaken
	sets.dt = {
	    ammo="Angha Gem",
	    head={ name="Souveran Schaller", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
        body="Rev. Surcoat +3",
	    hands={ name="Souv. Handschuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
	    legs={ name="Souveran Diechlings", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
	    feet={ name="Souveran Schuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
        neck="Loricate Torque +1",
	    waist="Nierenschutz",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Defending Ring",
	    right_ring="Vocane Ring",
	    back="Reiki Cloak",
	} -- end sets.dt


	----------------------------------------------------------------------
	-- Midcast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}
	sets.midcast.ws = {}

	-- Midcast : Weaponskill : Default
	sets.midcast.ws.default = {
	    ammo="Ginsen",
	    head="Flam. Zucchetto +2",
	    body="Flamma Korazin +1",
	    hands="Flam. Manopolas +1",
        legs="Flamma Dirs +2",
	    feet="Flam. Gambieras +2",
	    neck="Fotia Gorget",
	    waist="Fotia Belt",
	    left_ear="Brutal Earring",
	    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
	    left_ring="Ramuh Ring",
	    right_ring="Begrudging Ring",
        back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
	} -- end sets.midcast.ws.default

	-- Midcast : enmity
	sets.midcast.enmity = {
	    ammo="Sapience Orb",
	    head="Loess Barbuta",
        body="Rev. Surcoat +3",
	    hands={ name="Souv. Handschuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
	    legs={ name="Souveran Diechlings", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
	    feet={ name="Souveran Schuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
        waist="Creed Baudrier",
	    left_ear="Friomisi Earring",
	    left_ring="Supershear Ring",
	    right_ring="Begrudging Ring",
	    back="Reiki Cloak",
	} -- end sets.utility.enmity


	----------------------------------------------------------------------
	-- Spell arrays
	----------------------------------------------------------------------
	EnmityActions = {
		["Divine Emblem"] = true,
		["Flash"] = true,
		["Invincible"] = true,
		["Provoke"] = true,
		["Sentinel"] = true,
		["Warcry"] = true,
	}


end -- end get_sets()


----------------------------------------------------------------------
-- Callback for when casting begins
----------------------------------------------------------------------
function precast(spell)
end -- end precast()


----------------------------------------------------------------------
-- Callback for after casting begins, but before it fires
----------------------------------------------------------------------
function midcast(spell)

	-- Check if the action is a specified weapon skill
	if EnmityActions[spell.english] then
		equip(sets.midcast.enmity)
	elseif sets.midcast[spell.name] then
		equip(sets.midcast.ws[spell.name])
    elseif spell.type == 'WeaponSkill' then
		equip(sets.midcast.ws.default)
	elseif spell.action_type == 'Magic' then
		equip(sets.magic)
	end -- end if
end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)
	equip(sets.dt)
end -- end aftercast()


----------------------------------------------------------------------
-- Callback for whenever engagment status changes
----------------------------------------------------------------------
function status_change(new,old)
	equip(sets.dt)
end -- end status_change()


----------------------------------------------------------------------
-- In game alerts to gear set changes
----------------------------------------------------------------------
function self_command(command)

	-- Equip the dt set
	if command == 'toggle dt set' then
		-- Alert the user which set is currently being equipped
		send_command('@input /echo <----- DT: Default Set Equipped ----->')
		-- Equip the set
		equip(sets.dt)
	end -- end if

end -- end self_command()