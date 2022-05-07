function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')


	----------------------------------------------------------------------
	-- Idle sets
	----------------------------------------------------------------------
	sets.idle = {
        main="Idris",
        sub="Genmei Shield",
	    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
        head={ name="Bagua Galero +2", augments={'Enhances "Primeval Zeal" effect',}},
        body={ name="Witching Robe", augments={'MP+50','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Refresh"+1',}},
        hands="Geo. Mitaines +3",
        legs="Assid. Pants +1",
        feet={ name="Bagua Sandals +2", augments={'Enhances "Radial Arcana" effect',}},
	    neck="Loricate Torque +1",
        waist="Isa Belt",
	    left_ear="Handler's Earring",
	    right_ear="Handler's Earring +1",
	    left_ring="Fortified Ring",
	    right_ring="Defending Ring",
        back={ name="Nantosuelta's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: Damage taken -3%',}},
	} -- end Idle


	----------------------------------------------------------------------
	-- Melee sets
	----------------------------------------------------------------------
	sets.melee = sets.idle


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Precast : Fastcast
	sets.precast.fastCast = {
	    head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
	    legs="Geo. Pants +1",
	    feet="Regal Pumps +1",
	    neck="Voltsurge Torque",
	    waist="Witful Belt",
	    left_ring="Weather. Ring",
	    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10',}},
	} -- end Fast Cast


	----------------------------------------------------------------------
	-- Midcast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}

	-- Magic : Default
	sets.midcast.magic = {}
	sets.midcast.magic.default = {
        sub="Culminus",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
	    neck="Mizu. Kubikazari",
	    waist="Latria Sash",
	    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10',}},
	} -- end Magic

	-- Magic : Cure Potency
	sets.midcast.magic.curePotency = {
	} -- end Cure Potency


	----------------------------------------------------------------------
	-- Utility Sets (not bound to a key)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.utility = {}

	-- Dark magic
	sets.utility.darkMagic = {
	} -- end Dark Magic

	-- Geomancer magic skill
	sets.utility.geoSkill = {
	    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
        head="Azimuth Hood +1",
	    body={ name="Bagua Tunic", augments={'Enhances "Bolster" effect',}},
        hands="Geo. Mitaines +3",
	    legs={ name="Bagua Pants", augments={'Enhances "Mending Halation" effect',}},
		feet="Azimuth Gaiters",
        neck="Melic Torque",
	    back="Lifestream Cape",
	} -- end Geomancy Skill


	----------------------------------------------------------------------
	-- Job Ability Sets (not bound to a key)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.jobAbility = {}

	-- Bolster set
	sets.jobAbility.bolster = {
        body={ name="Bagua Tunic", augments={'Enhances "Bolster" effect',}},
	} -- end sets.jobAbility.bolster

	-- Full circle set
	sets.jobAbility.fullCircle = {
        head="Azimuth Hood +1",
	} -- end sets.jobAbility.fullCircle

	-- Life cycle set
	sets.jobAbility.lifeCycle = {
	    body="Geomancy Tunic",
	    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10',}},
	} -- end sets.jobAbility.lifeCycle

	-- Mending halation set
	sets.jobAbility.mendingHalation = {
	} -- end sets.jobAbility.mendingHalation

	-- Radial arcana set
	sets.jobAbility.radialArcana = {
        feet={ name="Bagua Sandals +2", augments={'Enhances "Radial Arcana" effect',}},
	} -- end sets.jobAbility.radialArcana


	----------------------------------------------------------------------
	-- Spell arrays
	----------------------------------------------------------------------
	CureSpells = {
		["Cure"] = true,
		["Cure II"] = true,
		["Cure III"] = true,
		["Cure IV"] = true,
	}

	DarkSpells = {
		["Aspir"] = true,
		["Aspir II"] = true,
		["Aspir III"] = true,
		["Drain"] = true,
	}

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

	-- Check if the action is magic
	if spell.action_type == 'Magic' then

		-- Check if the spell is a geo spell
		if spell.skill == 'Geomancy' or spell.skill == 'Handbell' then
			equip(set_combine(sets.midcast.magic.default, sets.utility.geoSkill))
		-- Check if the spell is a cure
    	elseif CureSpells[spell.english] then
			equip(set_combine(sets.midcast.magic.default, sets.midcast.magic.curePotency))
		-- Check if the spell is dark magic
		elseif DarkSpells[spell.english] then
			equip(set_combine(sets.midcast.magic.default, sets.utility.darkMagic))
		-- For all other spells that do not meet the above conditions
		else
			equip(sets.midcast.magic.default)
		end

	-- Check if the action is a job ability
	elseif spell.type == 'JobAbility' then

		if spell.name == 'Bolster' then
			equip(sets.jobAbility.bolster)
		elseif spell.name == 'Full Circle' then
			equip(sets.jobAbility.fullCircle)
		elseif spell.name == 'Life Cycle' then
			equip(sets.jobAbility.lifeCycle)
		elseif spell.name == 'Mending Halation' then
			equip(sets.jobAbility.mendingHalation)
		elseif spell.name == 'Radial Arcana' then
			equip(sets.jobAbility.radialArcana)
		end

	end
end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)
	-- Check if the player is still engaged after the cast
	if player.status =='Engaged' then
		equip(sets.melee)
	-- Check if the player is not still engaged after the cast
	else
		equip(sets.idle)
	end
end -- end aftercast()


----------------------------------------------------------------------
-- Callback for whenever engagment status changes
----------------------------------------------------------------------
function status_change(newStatus, oldStatus)
	-- Check if player status has switched to engaged
	if newStatus == 'Engaged' then
		equip(sets.melee)
	-- Check if player status has switched to idle
	else
		equip(sets.idle)
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
		equip(sets.idle)
	end -- end if

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
	    coroutine.schedule(function() send_command('input /macro book 3;wait .5;input /macro set 1;input /lockstyleset 3') end, 10)
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