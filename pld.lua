function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle dt set')
	send_command('bind f10 gs c toggle accuracy set')


	----------------------------------------------------------------------
	-- Unload key bindings upon file unload
	----------------------------------------------------------------------
	require "remove_bindings"


	----------------------------------------------------------------------
	-- DamageTaken set
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.dt = {}

	-- DamageTaken : Default
	sets.dt.default = {
	    ammo="Angha Gem",
	    head={ name="Souveran Schaller", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
	    body={ name="Souveran Cuirass", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
	    hands={ name="Souv. Handschuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
	    legs={ name="Souveran Diechlings", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
	    feet={ name="Souveran Schuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
        neck="Loricate Torque",
	    waist="Nierenschutz",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Defending Ring",
	    right_ring="Vocane Ring",
	    back="Reiki Cloak",
	    -- back={ name="Mecisto. Mantle", augments={'Cap. Point+43%','Mag. Acc.+3','DEF+1',}},
	} -- end sets.dt.default


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Precast : Fastcast
	sets.precast.fastcast = {
        ammo="Sapience Orb",
        head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
        body={ name="Jumalik Mail", augments={'HP+50','Attack+15','Enmity+9','"Refresh"+2',}},
        hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
	    feet="Carmine Greaves",
	    neck="Voltsurge Torque",
	    left_ear="Loquac. Earring",
	    right_ear="Etiolation Earring",
	    left_ring="Prolix Ring",
	    right_ring="Kishar Ring",
	} -- end sets.precast.fastcast


	----------------------------------------------------------------------
	-- Magic set
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.magic = {}

	-- Magic : Default
	sets.magic.default = {
        head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
        body={ name="Jumalik Mail", augments={'HP+50','Attack+15','Enmity+9','"Refresh"+2',}},
	    left_ring="Kunaji Ring",
	} -- end sets.magic.default


	----------------------------------------------------------------------
	-- Midcast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}
	sets.midcast.ws = {}

	-- Midcast : Weaponskill : Default
	sets.midcast.ws.default = {
	    ammo="Ginsen",
	    head="Flam. Zucchetto +1",
	    body="Flamma Korazin +1",
	    hands="Flam. Manopolas +1",
        legs="Flamma Dirs +1",
	    feet="Flam. Gambieras +1",
	    neck="Fotia Gorget",
	    waist="Fotia Belt",
	    left_ear="Brutal Earring",
	    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
	    left_ring="Ramuh Ring",
	    right_ring="Begrudging Ring",
        back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
	} -- end sets.midcast.ws.default

	-- Midcast : enmity
	sets.midcast.enmity = {
	    ammo="Sapience Orb",
	    head={ name="Souveran Schaller", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
	    body={ name="Souveran Cuirass", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
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
	-- Utility sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.utility = {}

	-- Utility : Accuracy
	accuracy = false;
	sets.utility.accuracy = {
	    neck="Subtlety Spec.",
	    waist="Grunfeld Rope",
	    left_ear="Steelflash Earring",
	    right_ear="Bladeborn Earring",
	    right_ring="Patricius Ring",
	    -- back={ name="Mecisto. Mantle", augments={'Cap. Point+43%','Mag. Acc.+3','DEF+1',}},
	} -- end sets.utility.accuracy


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
    if spell.action_type == 'Magic' then
	end
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
		equip(sets.magic.default)
	end -- end if
end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)
	equip(sets.dt.default)
		-- Check if accuracy is enabled
	if accuracy == true then
		equip(sets.utility.accuracy)
	end
end -- end aftercast()


----------------------------------------------------------------------
-- Callback for whenever engagment status changes
----------------------------------------------------------------------
function status_change(new,old)
	equip(sets.dt.default)
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
		equip(sets.dt.default)
	end -- end if

	-- Toggle the accuracy set
	if command == 'toggle accuracy set' then

		-- Start by equipping the current melee set
		equip(sets.dt.default)

		-- Check the status of treasure hunter
		if accuracy == false then
			-- Alert the user which set is currently being equipped
			send_command('@input /echo <----- Accuracy Enabled ----->')
			-- Toggle the accuracy variable
			accuracy = true;
			-- Equip the accuracy set
			equip(sets.utility.accuracy)
		elseif accuracy == true then
			-- Alert the user which set is currently being equipped
			send_command('@input /echo <----- Accuracy Disabled ----->')
			-- Toggle the accuracy variable
			accuracy = false;
			-- Equip the dt set
			equip(sets.dt.default)
		end -- end if

	end -- end if

end -- end self_command()