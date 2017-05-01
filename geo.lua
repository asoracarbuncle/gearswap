function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')
	send_command('bind f11 gs c toggle capacity set')


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
	    main={ name="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
        range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
	    head="Azimuth Hood +1",
        body="Jhakri Robe +2",
        hands="Geo. Mitaines +1",
	    legs={ name="Lengo Pants", augments={'INT+7','Mag. Acc.+7','"Mag.Atk.Bns."+3','"Refresh"+1',}},
        feet="Mallquis Clogs +1",
	    neck="Twilight Torque",
        waist="Fucho-no-Obi",
	    left_ear="Handler's Earring",
	    right_ear="Handler's Earring +1",
        left_ring="Defending Ring",
	    right_ring="Vocane Ring",
	    back={ name="Lifestream Cape", augments={'Geomancy Skill +10','Indi. eff. dur. +19','Pet: Damage taken -2%',}},
	} -- end sets.idle.default


	----------------------------------------------------------------------
	-- Melee set
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.melee = {}

	-- Melee : Default
	sets.melee.default = {
	    main={ name="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
	    head="Azimuth Hood +1",
        body="Jhakri Robe +2",
	    hands="Jhakri Cuffs +1",
	    legs={ name="Lengo Pants", augments={'INT+7','Mag. Acc.+7','"Mag.Atk.Bns."+3','"Refresh"+1',}},
        feet="Mallquis Clogs +1",
	    neck="Asperity Necklace",
	    waist="Eschan Stone",
	    left_ear="Handler's Earring",
	    right_ear="Hecate's Earring",
	    left_ring="Prolix Ring",
        right_ring="Defending Ring",
	    back={ name="Lifestream Cape", augments={'Geomancy Skill +10','Indi. eff. dur. +19','Pet: Damage taken -2%',}},
	} -- end sets.melee.default


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Precast : Fastcast
	sets.precast.fastcast = {
	    main={ name="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
	    head={ name="Amalric Coif", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
	    body="Vrikodara Jupon",
	    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
	    feet="Tutyr Sabots",
	    neck="Voltsurge Torque",
	    waist="Witful Belt",
	    left_ear="Loquac. Earring",
        right_ear="Etiolation Earring",
	    left_ring="Prolix Ring",
	    back={ name="Lifestream Cape", augments={'Geomancy Skill +10','Indi. eff. dur. +19','Pet: Damage taken -2%',}},
	} -- end sets.precast.fastcast


	----------------------------------------------------------------------
	-- Magic set
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.magic = {}

	-- Magic : Default
	sets.magic.default = {
	    main={ name="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
	    head={ name="Merlinic Hood", augments={'Mag. Acc.+13 "Mag.Atk.Bns."+13','Magic burst dmg.+10%','Mag. Acc.+8','"Mag.Atk.Bns."+3',}},
        body={ name="Amalric Doublet", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
        hands={ name="Amalric Gages", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
	    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst dmg.+1%','INT+9','Mag. Acc.+11','"Mag.Atk.Bns."+11',}},
        feet={ name="Merlinic Crackows", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Occult Acumen"+10','Mag. Acc.+7','"Mag.Atk.Bns."+14',}},
	    neck="Mizu. Kubikazari",
	    waist="Refoccilation Stone",
        left_ear="Friomisi Earring",
        right_ear="Hecate's Earring",
        left_ring="Mujin Band",
        right_ring="Locus Ring",
        back="Izdubar Mantle",
	} -- end sets.magic.default


	----------------------------------------------------------------------
	-- Utility Sets (not bound to a key)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.utility = {}

	-- Geomancer magic skill
	sets.utility.geoSkill = {
	    main={ name="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
	    head="Azimuth Hood +1",
	    body={ name="Bagua Tunic +1", augments={'Enhances "Bolster" effect',}},
	    hands="Geo. Mitaines +1",
	    feet={ name="Medium's Sabots", augments={'MP+50','MND+8','"Conserve MP"+6','"Cure" potency +3%',}},
        neck="Reti Pendant",
	    back={ name="Lifestream Cape", augments={'Geomancy Skill +10','Indi. eff. dur. +19','Pet: Damage taken -2%',}},
	} -- end sets.Utility.blueMagicSkill

	-- Dark magic
	sets.utility.darkMagic = {
        waist="Fucho-no-Obi",
		right_ring="Archon Ring",
	} -- end sets.Utility.darkMagic

	-- Capacity points
	capacityPoints = false;
	sets.utility.capacityPoints = {
	    back={ name="Mecisto. Mantle", augments={'Cap. Point+43%','Mag. Acc.+3','DEF+1',}},
	} -- end sets.Utility.capacityPoints
	

end -- end get_sets()


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

    	-- Equip base magic set
		equip(sets.magic.default)

		-- Crank up the Geomancy skill
		if spell.skill == 'Geomancy' or spell.skill == 'Handbell' then
			equip(sets.utility.geoSkill)
		end -- end if

		-- Crank up the dark elemental magic
		if spell.english == 'Aspir'
			or spell.english == 'Aspir II'
			or spell.english == 'Aspir III' then
			equip(sets.utility.darkMagic)
		end -- end if

    end -- end if

end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)
	if player.status =='Engaged' then
		equip(sets.melee.default)
		-- Check if capacity points is enabled
		if capacityPoints == true then
			equip(sets.utility.capacityPoints)
		end
	else
		equip(sets.melee.default)
		equip(sets.idle.default)
		-- Check if capacity points is enabled
		if capacityPoints == true then
			equip(sets.utility.capacityPoints)
		end
	end
end -- end aftercast()


----------------------------------------------------------------------
-- Callback for whenever engagment status changes
----------------------------------------------------------------------
function status_change(new,old)
	if new == 'Idle' then
		equip(sets.idle.default)
		-- Check if capacity points is enabled
		if capacityPoints == true then
			equip(sets.utility.capacityPoints)
		end
	elseif new == 'Engaged' then
		equip(sets.melee.default)
		-- Check if capacity points is enabled
		if capacityPoints == true then
			equip(sets.utility.capacityPoints)
		end
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

	-- Equip the melee set
	if command == 'toggle melee set' then
		-- Alert the user which set is currently being equipped
		send_command('@input /echo <----- Melee: Default Set Equipped ----->')
		-- Equip the set
		equip(sets.melee.default)
	end -- end if

	-- Toggle on or off the capacity points utility set
	if command == 'toggle capacity set' then

		-- Start by equipping the current melee set
		-- equip(sets.melee.default)

		-- Check the status of treasure hunter
		if capacityPoints == false then
			-- Alert the user which set is currently being equipped
			send_command('@input /echo <----- Capacity Points Enabled ----->')
			-- Toggle the treasure hunter variable
			capacityPoints = true;
			-- Equip the treasure hunter set
			equip(sets.utility.capacityPoints)
		elseif capacityPoints == true then
			-- Alert the user which set is currently being equipped
			send_command('@input /echo <----- Capacity Points Disabled ----->')
			-- Toggle the treasure hunter variable
			capacityPoints = false;
			-- Equip the melee set
			equip(sets.melee.default)
		end

	end -- end if

end -- end self_command()