function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')


	----------------------------------------------------------------------
	-- Idle set
	----------------------------------------------------------------------
	-- Initializes an array to begin storing set data
	sets.idle = {}

	-- Idle : Default
	sets.idle = {
	    main={ name="Umaru", augments={'"Dbl.Atk."+2','STR+19','Accuracy+11','DMG:+6',}},
	    sub="Utu Grip",
	    range={ name="Cibitshavore", augments={'STR+12','Rng.Acc.+10','"Store TP"+7',}},
        head="Flam. Zucchetto +2",
        body="Hiza. Haramaki +1",
        hands="Flam. Manopolas +1",
        legs="Flamma Dirs +1",
        feet="Flam. Gambieras +2",
        neck="Loricate Torque",
        waist="Grunfeld Rope",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Defending Ring",
        right_ring="Vocane Ring",
        back="Reiki Cloak",
	} -- end sets.idle


	----------------------------------------------------------------------
	-- Melee set
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.melee = {}

	-- Melee : default
	sets.melee = {
        head="Flam. Zucchetto +2",
        body="Kasuga Domaru +1",
        hands="Wakido Kote +2",
        legs="Wakido Haidate +1",
        feet="Flam. Gambieras +2",
        neck="Moonbeam Nodowa",
        waist="Ioskeha Belt",
        left_ear="Telos Earring",
        right_ear="Cessance Earring",
        left_ring="Flamma Ring",
        right_ring="Regal Ring",
	    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
        -- back={ name="Takaha Mantle", augments={'STR+5','"Zanshin"+2','"Store TP"+2',}},
	} -- end sets.melee


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Precast : Fast Cast
	sets.precast.fastCast = {
        hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        neck="Voltsurge Torque",
        left_ear="Etiolation Earring",
        right_ear="Loquac. Earring",
        left_ring="Lebeche Ring",
        right_ring="Prolix Ring",
	} -- end sets.precast.fastCast


	----------------------------------------------------------------------
	-- Midcast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}
	sets.midcast.ws = {}

	-- Midcast : Weapon Skill : Default
	sets.midcast.ws.default = {
		head="Flam. Zucchetto +2",
        body="Flamma Korazin +1",
        hands="Wakido Kote +2",
        legs="Hiza. Hizayoroi +2",
        feet="Flam. Gambieras +2",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Ishvara Earring",
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
        left_ring="Flamma Ring",
        right_ring="Regal Ring",
        back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	} -- end sets.midcast.ws.default

	-- Midcast : Weapon Skill : Tachi: Fudo
	sets.midcast.ws["Tachi: Fudo"] = sets.midcast.ws.default
	-- end sets.midcast.ws["Tachi: Fudo"]

	-- Midcast : Weapon Skill : Tachi: Shoha
	sets.midcast.ws["Tachi: Shoha"] = sets.midcast.ws.default
	-- end sets.midcast.ws["Tachi: Shoha"]


end -- end get_sets()


----------------------------------------------------------------------
-- Callback for when casting begins
----------------------------------------------------------------------
function precast(spell)

    if spell.action_type == 'Magic' then
		equip(sets.precast.fastCast)
	end

end -- end precast()


----------------------------------------------------------------------
-- Callback for after casting begins, but before it fires
----------------------------------------------------------------------
function midcast(spell)

	-- Check if the action is a specified weapon skill
	if sets.midcast.ws[spell.name] then
		-- Equip the appropriate specific ws set
		equip(sets.midcast.ws[spell.name])
    else
    	-- Equip default ws set
		equip(sets.midcast.ws.default)
	end

end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)

	-- Check the player status
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

	-- Check the player status
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
		send_command('@input /echo <----- Idle Set Equipped ----->')
		-- Equip the set
		equip(sets.idle)
	end -- end if

end -- end self_command()