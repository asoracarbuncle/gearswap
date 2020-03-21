function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')
	send_command('bind f10 gs c toggle treasureHunter set')


	----------------------------------------------------------------------
	-- Idle set
	----------------------------------------------------------------------
	-- Initializes an array to begin storing set data
	sets.idle = {}

	-- Idle : Default
	sets.idle.default = {
	    ammo="Mantoptera Eye",
	    head="Mummu Bonnet +1",
	    body="Mummu Jacket +1",
	    hands="Mummu Wrists +1",
	    legs="Mummu Kecks +1",
	    feet="Mummu Gamash. +1",
	    neck="Loricate Torque +1",
	    waist="Windbuffet Belt +1",
	    left_ear="Etiolation Earring",
	    right_ear="Static Earring",
	    left_ring="Defending Ring",
	    right_ring="Vocane Ring",
	    back="Reiki Cloak",
	} -- end sets.idle.default


	----------------------------------------------------------------------
	-- Melee set
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.melee = {}

	-- Melee : default
	sets.melee = {
	    ammo="Ginsen",
	    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
	    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
	    hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
	    legs="Meg. Chausses +2",
	    feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+2','DEX+6','Accuracy+7','Attack+14',}},
	    neck="Clotharius Torque",
	    waist="Windbuffet Belt +1",
	    left_ear="Suppanomimi",
	    right_ear="Brutal Earring",
	    left_ring="Epona's Ring",
	    right_ring="Hetairoi Ring",
	    back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
	} -- end sets.melee


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Precast : Fastcast
	sets.precast.fastCast = {
	    ammo="Sapience Orb",
	    head="Herculean Helm",
	    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
	    legs="Limbo Trousers",
	    neck="Orunmila's Torque",
	    left_ear="Etiolation Earring",
	    right_ear="Loquac. Earring",
	    left_ring="Rahab Ring",
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
        ammo="Falcon Eye",
        head="Mummu Bonnet +1",
        body="Mummu Jacket +1",
        hands="Mummu Wrists +1",
        legs="Mummu Kecks +1",
        feet="Mummu Gamash. +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Telos Earring",
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="Regal Ring",
        right_ring="Begrudging Ring",
        back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
	} -- end sets.midcast.ws.default

	-- Midcast : Weapon Skill : Rudra's Storm
	sets.midcast.ws["Rudra's Storm"] = {
        ammo="Falcon Eye",
        head="Mummu Bonnet +1",
        body="Mummu Jacket +1",
	    hands="Meg. Gloves +2",
        legs="Mummu Kecks +1",
        feet="Mummu Gamash. +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Telos Earring",
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="Regal Ring",
        right_ring="Begrudging Ring",
        back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
	} -- end sets.midcast.ws["Rudra's Storm"]

	-- Midcast : Weapon Skill : Evisceration
	sets.midcast.ws['Evisceration'] = {
        ammo="Falcon Eye",
	    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
	    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
	    hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
	    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+2','DEX+6','Accuracy+7','Attack+14',}},
	    neck="Fotia Gorget",
	    waist="Fotia Belt",
	    left_ear="Telos Earring",
	    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="Regal Ring",
	    right_ring="Begrudging Ring",
	    back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
	} -- end sets.midcast.ws['Evisceration']

	-- Midcast : Weapon Skill : Mandalic Stab
	sets.midcast.ws['Mandalic Stab'] = {
        ammo="Falcon Eye",
	    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
	    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
	    hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
	    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+2','DEX+6','Accuracy+7','Attack+14',}},
	    neck="Fotia Gorget",
	    waist="Fotia Belt",
	    left_ear="Telos Earring",
	    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="Regal Ring",
	    right_ring="Begrudging Ring",
	    back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
	} -- end sets.midcast.ws['Evisceration']


	----------------------------------------------------------------------
	-- Utility sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.utility = {}

	-- Utility : TreasureHunter
	treasureHunter = false;
	sets.utility.treasureHunter = {
	    hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
	    feet="Skulk. Poulaines +1",
	} -- end sets.utility.treasureHunter


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

	-- Check if the action is a weapon skill
	if spell.type == 'WeaponSkill' then
		-- Equip specific weapon skill set
		if sets.midcast.ws[spell.english] then
			equip(sets.midcast.ws[spell.english])
		-- Equip default weapon skill set
		else
			equip(sets.midcast.ws.default)
		end
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
		equip(sets.melee)
		equip(sets.idle.default)
	end

	-- Check if treasure hunter is enabled
	if treasureHunter == true then
		equip(sets.utility.treasureHunter)
	end

end -- end aftercast()


----------------------------------------------------------------------
-- Callback for whenever engagment status changes
----------------------------------------------------------------------
function status_change(new,old)

	-- Check the player status
	if new == 'Idle' then
		equip(sets.idle.default)
	elseif new == 'Engaged' then
		equip(sets.melee)
	end

	-- Check if treasure hunter is enabled
	if treasureHunter == true then
		equip(sets.utility.treasureHunter)
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

	-- Toggle on or off the treasure hunter utility set
	if command == 'toggle treasureHunter set' then

		-- Start by equipping the current idle set
		equip(sets.idle.default)

		-- Check the status of treasure hunter
		if treasureHunter == false then
			-- Alert the user which set is currently being equipped
			send_command('@input /echo <----- Treasure Hunter Enabled ----->')
			-- Toggle the treasure hunter variable
			treasureHunter = true;
			-- Equip the treasure hunter set
			equip(sets.utility.treasureHunter)
		elseif treasureHunter == true then
			-- Alert the user which set is currently being equipped
			send_command('@input /echo <----- Treasure Hunter Disabled ----->')
			-- Toggle the treasure hunter variable
			treasureHunter = false;
			-- Equip the idle set
			equip(sets.idle.default)
		end

	end -- end if

end -- end self_command()