function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c equip idle set')
	send_command('bind f10 gs c toggle run mode')
	send_command('bind f11 gs c toggle turtle mode')


	----------------------------------------------------------------------
	-- Idle Set
	----------------------------------------------------------------------
	-- Idle
	turtleMode = false;
	sets.idle = {
        ammo="Angha Gem",
        head={ name="Souveran Schaller", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
        body="Rev. Surcoat +3",
        hands={ name="Souv. Handschuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
        legs={ name="Souveran Diechlings", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
        feet={ name="Souveran Schuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
        neck="Loricate Torque +1",
        waist="Creed Baudrier",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
	    left_ring="Fortified Ring",
	    right_ring="Defending Ring",
        back="Moonbeam Cape",
	} -- end Idle


	----------------------------------------------------------------------
	-- Melee Set
	----------------------------------------------------------------------
	-- Melee
	sets.melee = set_combine(sets.idle, {
	    ammo="Ginsen",
        head="Hjarrandi Helm",
        body="Hjarrandi Breast.",
		waist="Grunfeld Rope",
	}) -- end Melee


	----------------------------------------------------------------------
	-- Precast Sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Fast Cast
	-- 54% Fast Cast
	sets.precast.fastCast = {
        ammo="Impatiens",
        head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
        body="Sacro Breastplate",
        hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="Arjuna Breeches",
        feet={ name="Carmine Greaves", augments={'HP+60','MP+60','Phys. dmg. taken -3',}},
        neck="Orunmila's Torque",
	} -- end Fast Cast


	----------------------------------------------------------------------
	-- Midcast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}
	sets.midcast.magic = {}
	sets.midcast.ws = {}

	-- Midcast : Magic : Default
	sets.midcast.magic.default = {
        ammo="Impatiens",
        head={ name="Souveran Schaller", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
        body="Sacro Breastplate",
        legs={ name="Founder's Hose", augments={'MND+5','Mag. Acc.+5','Attack+7','Breath dmg. taken -2%',}},
        feet="Odyssean Greaves",
        waist="Rumination Sash",
        right_ring="Evanescence Ring",
        back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10','Spell interruption rate down-10%',}},
	} -- end Magic : Default

	-- Midcast : Weaponskill : Default
	sets.midcast.ws.default = {
	    ammo="Ginsen",
        head="Hjarrandi Helm",
        body="Hjarrandi Breast.",
	    hands="Flam. Manopolas +2",
	    legs="Flamma Dirs +2",
	    feet="Flam. Gambieras +2",
        neck="Fotia Gorget",
	    waist="Fotia Belt",
	    left_ear="Odnowa Earring",
	    right_ear="Odnowa Earring +1",
        left_ring="Shukuyu Ring",
	    right_ring="Regal Ring",
	    back="Moonbeam Cape",
	} -- end Weaponskill : Default

	-- Midcast : Weaponskill : Chant du Cygne
	sets.midcast.ws['Chant du Cygne'] = set_combine(sets.midcast.ws.default, {
	}) -- end Chant du Cygne

	-- Midcast : Weaponskill : Savage Blade
	sets.midcast.ws['Savage Blade'] = set_combine(sets.midcast.ws.default, {
	}) -- end Savage Blade


	----------------------------------------------------------------------
	-- Utility Sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.utility = {}

	-- Utility : Enmity
	sets.utility.enmity = {
	    ammo="Sapience Orb",
	    head="Loess Barbuta",
	    body={ name="Souveran Cuirass", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
	    hands={ name="Souv. Handschuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
	    legs={ name="Odyssean Cuisses", augments={'Enmity+6',}},
        feet={ name="Eschite Greaves", augments={'Mag. Evasion+15','Spell interruption rate down +15%','Enmity+7',}},
	    neck="Unmoving Collar",
	    waist="Creed Baudrier",
        left_ear="Cryptic Earring",
        right_ear="Trux Earring",
	    left_ring="Supershear Ring",
	    right_ring="Odium Ring",
	    back="Reiki Cloak",
	} -- end Enmity

	-- Utility : Run
	runToggle = false
	sets.utility.run = {
        legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
	} -- end Run


	----------------------------------------------------------------------
	-- Spell Arrays
	----------------------------------------------------------------------
	EnmityActions = {
		["Divine Emblem"] = true,
		["Flash"] = true,
		["Intervene"] = true,
		["Invincible"] = true,
		["Provoke"] = true,
		["Rampart"] = true,
		["Sentinel"] = true,
		["Shield Bash"] = true,
		["Warcry"] = true,
	}


end -- end get_sets()


----------------------------------------------------------------------
-- Callback for when casting begins
----------------------------------------------------------------------
function precast(spell)
	if turtleMode == false then
	    if spell.action_type == 'Magic' then
			equip(sets.precast.fastCast)
		end
	end
end -- end precast()


----------------------------------------------------------------------
-- Callback for after casting begins, but before it fires
----------------------------------------------------------------------
function midcast(spell)

	-- Only act if turtle mode is off
	if turtleMode == false then

		-- Check the action type prioritizing enmity actions
		if EnmityActions[spell.english] then
			equip(sets.utility.enmity)
	    elseif spell.type == 'WeaponSkill' then
	    	if sets.midcast.ws[spell.english] then
	    		equip(sets.midcast.ws[spell.english])
	    	else
	    		equip(sets.midcast.ws.default)
	    	end
		elseif spell.action_type == 'Magic' then
			equip(sets.midcast.magic.default)
		end -- end action types

	end -- end if turtle mode

end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)

	-- Only act if turtle mode is off
	if turtleMode == false then

		-- Check the status mode
		if player.status == 'Engaged' then
			equip(sets.melee)
		else
			equip(sets.idle)
		end -- end status mode check

		if runToggle == true then
			equip(sets.utility.run)
		end -- end run toggle check

	end -- end turtle mode check

end -- end aftercast()


----------------------------------------------------------------------
-- Callback for whenever engagement status changes
----------------------------------------------------------------------
function status_change(new,old)

	-- Only act if turtle mode is off
	if turtleMode == false then

		-- Check the status mode
		if new == 'Engaged' then
			equip(sets.melee)
		else
			equip(sets.idle)
		end -- end status mode check

		if runToggle == true then
			equip(sets.utility.run)
		end -- end run toggle check

	end -- end turtle mode check

end -- end status_change()


----------------------------------------------------------------------
-- In game alerts to gear set changes
----------------------------------------------------------------------
function self_command(command)

	-- Equip the idle set
	if command == 'equip idle set' then

		-- Only act if turtle mode is off
		if turtleMode == false then

			equip(sets.idle)
			if runToggle == true then
				equip(sets.utility.run)
			end
			send_command('@input /echo <----- Idle Set Equipped ----->')

		else
			send_command('@input /echo <----- ERROR: Turtle Mode On ----->')
		end -- end turtle mode check

	end -- end idle set

	-- Toggle run mode
	if command == 'toggle run mode' then

		-- Only act if turtle mode is off
		if turtleMode == false then

			-- Check current run mode
			if runToggle == false then
				runToggle = true
				equip(sets.utility.run)
				send_command('@input /echo <----- Run Mode On ----->')
			else
				runToggle = false
				if player.status == 'Engaged' then
					equip(sets.melee)
				else
					equip(sets.idle)
				end
				send_command('@input /echo <----- Run Mode Off ----->')
			end -- end run mode check

		else
			send_command('@input /echo <----- ERROR: Turtle Mode On ----->')
		end -- end turtle mode check

	end -- end run mode

	-- Toggle turtle mode
	if command == "toggle turtle mode" then
		if turtleMode == false then
			turtleMode = true
			equip(sets.idle)
			send_command('@input /echo <----- Turtle Mode On ----->')
		else
			turtleMode = false
			if player.status == 'Engaged' then
				equip(sets.melee)
			else
				equip(sets.idle)
			end
			if runToggle == true then
				equip(sets.utility.run)
			end
			send_command('@input /echo <----- Turtle Mode Off ----->')
		end
	end -- end turtle mode

end -- end self_command()


----------------------------------------------------------------------
-- Event Listener
----------------------------------------------------------------------
-- Callback for when the job is changed
----------------------------------------------------------------------
isInitialChange = true
function job_change(mainId, mainLvl, subId, subLvl)
	equip(sets.idle)
	if isInitialChange then
	    coroutine.schedule(function() send_command('input /macro book 19;wait .5;input /macro set 3;input /lockstyleset 20') end, 10)
	    isInitialChange = false
	end
end -- end job_change()
windower.register_event('job change', job_change)


----------------------------------------------------------------------
-- Event Listener
----------------------------------------------------------------------
-- Callback for when entering a zone
----------------------------------------------------------------------
windower.register_event('zone change', function() equip(sets.idle) end)