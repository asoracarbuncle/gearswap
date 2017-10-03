function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')
	send_command('bind f10 gs c cycle DT sets')


	----------------------------------------------------------------------
	-- Idle sets
	----------------------------------------------------------------------
	-- Initializes an array to begin storing set data
	sets.idle = {}

	-- Default idle set
	idleSetEnabled = false
	sets.idle = {
	    head="Azimuth Hood +1",
        body="Jhakri Robe +2",
        hands="Geo. Mitaines +1",
	    legs={ name="Lengo Pants", augments={'INT+7','Mag. Acc.+7','"Mag.Atk.Bns."+3','"Refresh"+1',}},
        feet="Mallquis Clogs +1",
        neck="Loricate Torque",
        waist="Fucho-no-Obi",
	    left_ear="Handler's Earring",
	    right_ear="Handler's Earring +1",
        left_ring="Defending Ring",
	    right_ring="Vocane Ring",
	    back={ name="Lifestream Cape", augments={'Geomancy Skill +10','Indi. eff. dur. +19','Pet: Damage taken -2%',}},
	} -- end sets.idle.default


	----------------------------------------------------------------------
	-- Melee sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.melee = {}

	-- Default melee set
	meleeSetEnabled = false
	sets.melee = {
        head="Jhakri Coronal +2",
        body="Jhakri Robe +2",
        hands="Jhakri Cuffs +2",
        legs="Jhakri Slops +2",
        feet="Jhakri Pigaches +2",
        neck="Asperity Necklace",
        waist="Grunfeld Rope",
        left_ear="Brutal Earring",
        right_ear="Cessance Earring",
        left_ring="Rajas Ring",
        right_ring="Petrov Ring",
        back="Solemnity Cape",
	} -- end sets.melee.default


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Fast cast set
	sets.precast.fastCast = {
        head={ name="Amalric Coif", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
        body="Zendik Robe",
        hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+18','"Fast Cast"+4','CHR+8','"Mag.Atk.Bns."+7',}},
        legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet={ name="Amalric Nails", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
        neck="Voltsurge Torque",
        waist="Witful Belt",
        left_ear="Loquac. Earring",
        right_ear="Etiolation Earring",
        left_ring="Prolix Ring",
        right_ring="Kishar Ring",
        back="Swith Cape",
	} -- end sets.precast.fastcast


	----------------------------------------------------------------------
	-- Midcast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}

	-- Magic : Default
	sets.midcast.magic = {
        head={ name="Merlinic Hood", augments={'Mag. Acc.+13 "Mag.Atk.Bns."+13','Magic burst dmg.+10%','Mag. Acc.+8','"Mag.Atk.Bns."+3',}},
	    body="Jhakri Robe +2",
	    hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+17 "Mag.Atk.Bns."+17','Magic burst dmg.+9%','MND+6','Mag. Acc.+14',}},
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

	-- Dark magic
	sets.utility.darkMagic = {
	    neck="Erra Pendant",
        waist="Fucho-no-Obi",
	    left_ring="Evanescence Ring",
		right_ring="Archon Ring",
	    back="Perimede Cape",
	} -- end sets.utility.darkMagic

	-- Geomancer magic skill
	sets.utility.geoSkill = {
	    head="Azimuth Hood +1",
	    body={ name="Bagua Tunic +1", augments={'Enhances "Bolster" effect',}},
	    hands="Geo. Mitaines +1",
	    feet={ name="Medium's Sabots", augments={'MP+50','MND+8','"Conserve MP"+6','"Cure" potency +3%',}},
        neck="Reti Pendant",
	    back={ name="Lifestream Cape", augments={'Geomancy Skill +10','Indi. eff. dur. +19','Pet: Damage taken -2%',}},
	} -- end sets.utility.geoSkill

	-- PDT
	sets.utility.pdt = {
	} -- end sets.utility.pdt

	-- MDT
	sets.utility.mdt = {
	} -- end sets.utility.mdt


	----------------------------------------------------------------------
	-- Spell arrays
	----------------------------------------------------------------------
	DarkSpells = {
		["Aspir"] = true,
		["Aspir II"] = true,
		["Aspir III"] = true,
		["Drain"] = true,
	}
	
	-- Setup some variables used to handle DT logic
	dtSetEnabled = false;
	dtSetIndex = -1;
	dtSetCount = 2;


end -- end get_sets()


----------------------------------------------------------------------
-- Callback function for when the lua is unloaded
----------------------------------------------------------------------
function file_unload()

	-- Upon unloading this lua file, remove commonly used key binds
    send_command('unbind f9')
    send_command('unbind f10')

end    


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

		-- Check if the spell is a geo spell
		if spell.skill == 'Geomancy' or spell.skill == 'Handbell' then
			equip(sets.utility.geoSkill)
		-- Check if the spell is dark magic
		elseif DarkSpells[spell.english] then
			equip(set_combine(sets.midcast.magic, sets.utility.darkMagic))
		-- For all other spells that do not meet the above conditions
		else
			equip(sets.midcast.magic)
		end

    end -- end if

end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)
	-- Check if the player is still engaged after the cast
	if player.status =='Engaged' then
		equip(sets.melee)
		idleSetEnabled = false
		meleeSetEnabled = true
	-- Check if the player is not still engaged after the cast
	else
		equip(sets.idle)
		idleSetEnabled = true
		meleeSetEnabled = false
	end
	-- Check if DT is on
	if dtSetEnabled == true then
		if dtSetIndex == 0 then
			equip(sets.utility.mdt)
		else
			equip(sets.utility.pdt)
		end
	end
end -- end aftercast()


----------------------------------------------------------------------
-- Callback for whenever engagment status changes
----------------------------------------------------------------------
function status_change(newStatus, oldStatus)
	-- Check if player status has switched to engaged
	if newStatus == 'Engaged' then
		equip(sets.melee)
		idleSetEnabled = false
		meleeSetEnabled = true
	-- Check if player status has switched to idle
	else
		equip(sets.idle)
		idleSetEnabled = true
		meleeSetEnabled = false
	end
	-- Check if DT is on
	if dtSetEnabled == true then
		if dtSetIndex == 0 then
			equip(sets.utility.mdt)
		else
			equip(sets.utility.pdt)
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
		equip(sets.idle)
		idleSetEnabled = true
		meleeSetEnabled = false
	end -- end if

	-- Cycle through DT sets
	if command == 'cycle DT sets' then
		-- First, increment the DT index
		dtSetIndex = dtSetIndex + 1
		-- Now check the index bounds
		if dtSetIndex < dtSetCount then
			-- Enable the dt set toggle
			dtSetEnabled = true;
			-- Equip the appropriate set
			if dtSetIndex == 0 then
				send_command('@input /echo <----- MDT Set Engaged ----->')
				-- First equip the apropriate main set
				if idleSetEnabled == true then
					equip(sets.idle)
				else
					equip(sets.melee)
				end
				equip(sets.utility.mdt)
			else
				send_command('@input /echo <----- PDT Set Engaged ----->')
				-- First equip the apropriate main set
				if idleSetEnabled == true then
					equip(sets.idle)
				else
					equip(sets.melee)
				end
				equip(sets.utility.pdt)
			end
		else
			send_command('@input /echo <----- DT Sets Off ----->')
			-- Equip the apropriate main set
			if idleSetEnabled == true then
				equip(sets.idle)
			else
				equip(sets.melee)
			end
			dtSetEnabled = false
			dtSetIndex = -1
		end
	end -- end if

end -- end self_command()