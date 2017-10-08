function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')
	send_command('bind f10 gs c cycle melee sets')


	----------------------------------------------------------------------
	-- Idle set
	----------------------------------------------------------------------
	-- Initializes an array to begin storing set data
	sets.idle = {}

	-- Idle : Default
	sets.idle = {
	    main="Perun +1",
	    sub="Nusku Shield",
	    range="Yoichinoyumi",
	    ammo="Yoichi's Arrow",
	    head="Meghanada Visor +1",
	    body="Meg. Cuirie +1",
	    hands="Meg. Gloves +1",
	    legs="Meg. Chausses +1",
	    feet="Fajin Boots",
	    neck="Loricate Torque +1",
	    waist="Flume Belt +1",
	    left_ear="Odnowa Earring +1",
	    right_ear="Odnowa Earring",
	    left_ring="Defending Ring",
	    right_ring="Karieyh Ring",
	    back="Moonbeam Cape",
	} -- end sets.idle


	----------------------------------------------------------------------
	-- Melee set
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.melee = {}
	meleeSetIndex = table.getn(sets.melee) + 1

	-- Weapon: Index Names
	meleeSetNames = {
		[0] = 'Melee',
		[1] = 'Range',
	}

	-- Melee : Default mode
	sets.melee[0] = {
        main="Perun +1",
        sub="Kustawi +1",
        range="Yoichinoyumi",
        ammo="Yoichi's Arrow",
        head={ name="Taeon Chapeau", augments={'Accuracy+20 Attack+20','"Triple Atk."+2','Crit. hit damage +3%',}},
        body="Meg. Cuirie +1",
        hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
        legs={ name="Carmine Cuisses", augments={'Accuracy+15','Attack+10','"Dual Wield"+5',}},
        feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+3','DEX+3',}},
        neck="Erudit. Necklace",
        waist="Hurch'lan Sash",
        left_ear="Brutal Earring",
        right_ear="Suppanomimi",
        left_ring="Epona's Ring",
        right_ring="Rajas Ring",
        back="Lupine Cape",
	} -- end sets.melee[0]

	-- Melee : Ranged mode
	sets.melee[1] = {
        main="Perun +1",
        sub="Nusku Shield",
        range="Yoichinoyumi",
        ammo="Yoichi's Arrow",
        head={ name="Pursuer's Beret", augments={'DEX+7','AGI+10','"Recycle"+15',}},
        body={ name="Pursuer's Doublet", augments={'HP+50','Crit. hit rate+4%','"Snapshot"+6',}},
        hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
        legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
        feet="Meg. Jam. +1",
        neck="Erudit. Necklace",
        waist="Yemaya Belt",
        left_ear="Telos Earring",
        right_ear="Volley Earring",
        left_ring="Petrov Ring",
        right_ring="Rajas Ring",
        back={ name="Lutian Cape", augments={'STR+2','AGI+1','"Store TP"+3',}},
	} -- end sets.melee[0]


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Precast : Fast Cast
	sets.precast.fastCast = {
	} -- end sets.precast.fastCast

	-- Precast : Preshot
	sets.precast.preShot = {
        main="Perun +1",
        sub="Nusku Shield",
        range="Yoichinoyumi",
        ammo="Yoichi's Arrow",
        head={ name="Taeon Chapeau", augments={'"Snapshot"+5','"Snapshot"+5',}},
        body={ name="Pursuer's Doublet", augments={'HP+50','Crit. hit rate+4%','"Snapshot"+6',}},
        hands="Carmine Fin. Ga.",
        legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
        feet="Meg. Jam. +1",
        neck="Erudit. Necklace",
        waist="Yemaya Belt",
        left_ear="Telos Earring",
        right_ear="Volley Earring",
        left_ring="Petrov Ring",
        right_ring="Rajas Ring",
        back={ name="Lutian Cape", augments={'STR+2','AGI+1','"Store TP"+3',}},
	} -- end sets.precast.preShot


	----------------------------------------------------------------------
	-- Midcast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}
	sets.midcast.ws = {}

	-- Midcast : Weapon Skill : Default
	sets.midcast.ws.default = {
	    main="Perun +1",
	    sub="Nusku Shield",
	    range="Yoichinoyumi",
	    ammo="Yoichi's Arrow",
	    head={ name="Herculean Helm", augments={'Rng.Atk.+18','Crit.hit rate+2','DEX+7','Rng.Acc.+10',}},
	    body="Meg. Cuirie +1",
	    hands={ name="Herculean Gloves", augments={'Rng.Acc.+23','Crit. hit damage +1%','DEX+3','Rng.Atk.+13',}},
	    legs={ name="Herculean Trousers", augments={'Rng.Acc.+18 Rng.Atk.+18','Crit.hit rate+3','VIT+5','Rng.Atk.+13',}},
	    feet="Thereoid Greaves",
	    neck="Fotia Gorget",
	    waist="Fotia Belt",
	    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
	    right_ear="Telos Earring",
	    left_ring="Begrudging Ring",
	    right_ring="Regal Ring",
	    back={ name="Lutian Cape", augments={'STR+2','AGI+1','"Store TP"+3',}},
	} -- end sets.midcast.ws.default

	-- Midcast : Weapon Skill : Namas Arrow
	sets.midcast.ws["Namas Arrow"] = {
        main="Perun +1",
        sub="Nusku Shield",
        range="Yoichinoyumi",
        ammo="Yoichi's Arrow",
        head="Meghanada Visor +1",
        body="Meg. Cuirie +1",
        hands="Meg. Gloves +1",
        legs="Meg. Chausses +1",
        feet="Meg. Jam. +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Flame Pearl",
        right_ear="Ishvara Earring",
        left_ring="Karieyh Ring",
        right_ring="Regal Ring",
        back={ name="Lutian Cape", augments={'STR+2','AGI+1','"Store TP"+3',}},
	} -- end sets.midcast.ws["Namas Arrow"]

	-- Midcast : Weapon Skill : Jishnu's Radiance
	sets.midcast.ws["Jishnu's Radiance"] = {
	    main="Perun +1",
	    sub="Nusku Shield",
	    range="Yoichinoyumi",
	    ammo="Yoichi's Arrow",
	    head={ name="Herculean Helm", augments={'Rng.Atk.+18','Crit.hit rate+2','DEX+7','Rng.Acc.+10',}},
	    body="Meg. Cuirie +1",
	    hands={ name="Herculean Gloves", augments={'Rng.Acc.+23','Crit. hit damage +1%','DEX+3','Rng.Atk.+13',}},
	    legs={ name="Herculean Trousers", augments={'Rng.Acc.+18 Rng.Atk.+18','Crit.hit rate+3','VIT+5','Rng.Atk.+13',}},
	    feet="Thereoid Greaves",
	    neck="Fotia Gorget",
	    waist="Fotia Belt",
	    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
	    right_ear="Telos Earring",
	    left_ring="Begrudging Ring",
	    right_ring="Regal Ring",
	    back={ name="Lutian Cape", augments={'STR+2','AGI+1','"Store TP"+3',}},
	} -- end sets.midcast.ws["Jishnu's Radiance"]


	----------------------------------------------------------------------
	-- Job ability Sets (not bound to a key)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.jobAbilities = {}

	-- Barrage
	sets.jobAbilities.barrage = {
	} -- end sets.jobAbilities.barrage


end -- end get_sets()


----------------------------------------------------------------------
-- Callback for when casting begins
----------------------------------------------------------------------
function precast(spell)

    if spell.action_type == 'Magic' then
		equip(sets.precast.fastCast)
	else
		equip(sets.precast.preShot)
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

	-- Check for barrage
	if buffactive['Barrage'] then
		equip(sets.jobAbilities.barrage)
	end -- end if

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

	-- Cycle melee sets
	if command == 'cycle melee sets' then
		-- Increment the set index
		meleeSetIndex = meleeSetIndex + 1
		-- Check if the set index is out of range
		if meleeSetIndex > table.getn(sets.melee) then
			meleeSetIndex = 0
		end
		-- Equip the appropriate set
		equip(sets.melee[meleeSetIndex])
		-- Alert the user which set is currently being equipped
		send_command('@input /echo <----- Melee: '..meleeSetNames[meleeSetIndex]..' Equipped ----->')
	end -- end if

end -- end self_command()