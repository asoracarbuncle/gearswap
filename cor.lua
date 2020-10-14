function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c equip idle set')
	send_command('bind f10 gs c cycle weapon modes')

	----------------------------------------------------------------------
	-- Weapon Modes
	sets.weapons = {}
	weaponModeIndex = table.getn(sets.weapons) + 1
	----------------------------------------------------------------------

	-- Weapon Mode Names
	weaponModeNames = {
		[0] = 'Savage Blade',
		[1] = 'Leaden Salute',
		[2] = 'Last Stand',
		[3] = 'Wildfire',
	}

	-- Wepaon Mode Set: Savage Blade
	sets.weapons[0] = {
        main="Naegling",
        sub="Blurred Knife +1",
        range={ name="Anarchy +2", augments={'Delay:+60','TP Bonus +1000',}},
	} -- end Savage Blade

	-- Wepaon Mode Set: Leaden Salute
	sets.weapons[1] = {
        main="Naegling",
        sub="Tauret",
        range={ name="Anarchy +2", augments={'Delay:+60','TP Bonus +1000',}},
	} -- end Leaden Salute

	-- Wepaon Mode Set: Last Stand
	sets.weapons[2] = {
        main="Naegling",
        sub="Kustawi +1",
        range={ name="Holliday", augments={'Sklchn.dmg.+3%','AGI+12','Rng.Acc.+25','DMG:+11',}},
	} -- end Last Stand

	-- Wepaon Mode Set: Wildfire
	sets.weapons[3] = {
        main="Naegling",
        sub="Tauret",
        range={ name="Anarchy +2", augments={'Delay:+60','TP Bonus +1000',}},
	} -- end Wildfire


	----------------------------------------------------------------------
	-- Idle set(s)
	----------------------------------------------------------------------
	sets.idle = {
	    head="Mummu Bonnet +2",
	    body="Mummu Jacket +2",
	    hands="Mummu Wrists +2",
	    legs="Mummu Kecks +2",
	    feet="Mummu Gamash. +2",
	    neck="Loricate Torque +1",
	    waist="Sarissapho. Belt",
	    left_ear="Etiolation Earring",
	    right_ear="Crematio Earring",
	    left_ring="Fortified Ring",
	    right_ring="Defending Ring",
	    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Damage taken-5%',}},
	} -- end Idle


	----------------------------------------------------------------------
	-- Engaged set(s)
	----------------------------------------------------------------------
	sets.engaged = {
        head={ name="Dampening Tam", augments={'DEX+9','Accuracy+13','Mag. Acc.+14','Quadruple Attack +2',}},
        body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
        hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
        legs={ name="Samnuha Tights", augments={'STR+8','DEX+9','"Dbl.Atk."+3','"Triple Atk."+2',}},
        feet={ name="Herculean Boots", augments={'"Triple Atk."+4','DEX+10','Accuracy+10',}},
        neck="Clotharius Torque",
        waist="Sarissapho. Belt",
        left_ear="Steelflash Earring",
        right_ear="Cessance Earring",
        left_ring="Rajas Ring",
        right_ring="Epona's Ring",
        back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Damage taken-5%',}},
	} -- end Engaged


	----------------------------------------------------------------------
	-- Precast set(s)
	sets.precast = {}
	----------------------------------------------------------------------
	-- Precast : Fast Cast
	sets.precast.fastCast = {
        head="Herculean Helm",
        body={ name="Samnuha Coat", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
        hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        neck="Orunmila's Torque",
        waist="Sarissapho. Belt",
        left_ear="Etiolation Earring",
        right_ear="Loquac. Earring",
        left_ring="Prolix Ring",
        right_ring="Kishar Ring",
	} -- end Fast Cast

	-- Precast : Snap Shot
	sets.precast.snapShot = {
        hands={ name="Lanun Gants +1", augments={'Enhances "Fold" effect',}},
        neck={ name="Comm. Charm +1", augments={'Path: A',}},
        legs={ name="Lanun Trews +1", augments={'Enhances "Snake Eye" effect',}},
	} -- end Snap Shot


	----------------------------------------------------------------------
	-- Ranged set(s)
	sets.midcast = {}
	----------------------------------------------------------------------
	sets.midcast.rangedAttack = {
	    head="Meghanada Visor +2",
	    body="Meg. Cuirie +2",
	    hands="Meg. Gloves +2",
	    legs="Meg. Chausses +2",
	    feet="Meg. Jam. +2",
	    neck="Sanctity Necklace",
	    waist="Eschan Stone",
	    left_ear="Heartseeker Earring",
	    right_ear="Cessance Earring",
	    left_ring="Longshot Ring",
	    right_ring="Apate Ring",
	    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Damage taken-5%',}},
	} -- end Ranged


	----------------------------------------------------------------------
	-- Weapon Skill set(s)
	sets.midcast.ws = {}
	----------------------------------------------------------------------
	-- Default
	sets.midcast.ws.default = {
        head={ name="Lilitu Headpiece", augments={'STR+10','DEX+10','Attack+15','Weapon skill damage +3%',}},
        body="Meg. Cuirie +2",
        hands="Meg. Gloves +2",
        legs="Meg. Chausses +2",
        feet="Meg. Jam. +2",
        neck="Sanctity Necklace",
        waist="Prosilio Belt +1",
        left_ear="Ishvara Earring",
        right_ear="Cessance Earring",
        left_ring="Apate Ring",
        right_ring="Rufescent Ring",
        back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	} -- end Weaponskill Default

	----------------------------------------------------------------------
	-- Sword
	----------------------------------------------------------------------
	-- Savage Blade
	sets.midcast.ws["Savage Blade"] = {
        head={ name="Lilitu Headpiece", augments={'STR+10','DEX+10','Attack+15','Weapon skill damage +3%',}},
        body="Meg. Cuirie +2",
        hands="Meg. Gloves +2",
        legs="Meg. Chausses +2",
        feet="Meg. Jam. +2",
        neck="Sanctity Necklace",
        waist="Prosilio Belt +1",
        left_ear="Ishvara Earring",
        right_ear="Cessance Earring",
        left_ring="Apate Ring",
        right_ring="Rufescent Ring",
        back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	} -- end Savage Blade

	----------------------------------------------------------------------
	-- Marksmanship
	----------------------------------------------------------------------
	-- Leaden Salute
	sets.midcast.ws["Leaden Salute"] = {
        head="Pixie Hairpin +1",
        body={ name="Samnuha Coat", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
        hands="Meg. Gloves +2",
        legs={ name="Herculean Trousers", augments={'Mag. Acc.+23','AGI+10','"Mag.Atk.Bns."+14',}},
        feet={ name="Herculean Boots", augments={'Crit. hit damage +3%','AGI+6','Mag. Acc.+4','"Mag.Atk.Bns."+12',}},
        neck={ name="Comm. Charm +1", augments={'Path: A',}},
        waist="Eschan Stone",
        left_ear="Ishvara Earring",
        right_ear="Crematio Earring",
        left_ring="Apate Ring",
        right_ring="Petrov Ring",
        back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
	} -- end Leaden Salute

	-- Last Stand
	sets.midcast.ws["Last Stand"] = {
	    head="Meghanada Visor +2",
	    body="Meg. Cuirie +2",
	    hands="Meg. Gloves +2",
	    legs="Meg. Chausses +2",
	    feet="Meg. Jam. +2",
	    neck="Sanctity Necklace",
	    waist="Eschan Stone",
        left_ear="Ishvara Earring",
	    right_ear="Cessance Earring",
	    left_ring="Longshot Ring",
	    right_ring="Apate Ring",
        back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
	} -- end Last Stand

	-- Last Stand
	sets.midcast.ws["Wildfire"] = {
        head="Herculean Helm",
        body={ name="Samnuha Coat", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
        hands="Meg. Gloves +2",
        legs={ name="Herculean Trousers", augments={'Mag. Acc.+23','AGI+10','"Mag.Atk.Bns."+14',}},
        feet={ name="Herculean Boots", augments={'Crit. hit damage +3%','AGI+6','Mag. Acc.+4','"Mag.Atk.Bns."+12',}},
        neck={ name="Comm. Charm +1", augments={'Path: A',}},
        waist="Eschan Stone",
        left_ear="Ishvara Earring",
        right_ear="Crematio Earring",
        left_ring="Apate Ring",
        right_ring="Petrov Ring",
        back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
	} -- end Last Stand


	----------------------------------------------------------------------
	-- Job Ability set(s)
	sets.midcast.ja = {}
	----------------------------------------------------------------------
	-- Crooked Cards
	sets.midcast.ja['Crooked Cards'] = {
	} -- end Crooked Cards

	-- Cutting Cards
	sets.midcast.ja['Cutting Cards'] = {
	} -- end Cutting Cards

	-- Double Up
	sets.midcast.ja['Double-Up'] = {
	} -- end Double Up

	-- Fold
	sets.midcast.ja['Fold'] = {
        hands={ name="Lanun Gants +1", augments={'Enhances "Fold" effect',}},
	} -- end Fold

	-- Phantom Roll
	sets.midcast.ja['Phantom Roll'] = {
	    -- range="Compensator",
        head={ name="Lanun Tricorne +1", augments={'Enhances "Winning Streak" effect',}},
        hands="Chasseur's Gants +1",
	    left_ring="Barataria Ring",
	    right_ring="Luzaf's Ring",
	    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Damage taken-5%',}},
	} -- end Phantom Roll

	-- Quick Draw
	sets.midcast.ja['Quick Draw'] = {
	} -- end Quick Draw

	-- Random Deal
	sets.midcast.ja['Random Deal'] = {
	} -- end Random Deal

	-- Snake Eye
	sets.midcast.ja['Snake Eye'] = {
        legs={ name="Lanun Trews +1", augments={'Enhances "Snake Eye" effect',}},
	} -- end Snake Eye

	-- Triple Shot
	sets.midcast.ja['Triple Shot'] = {
	} -- end Triple Shot

	-- Wild Card
	sets.midcast.ja['Wild Card'] = {
	} -- end Wild Card


	----------------------------------------------------------------------
	-- Utility set(s)
	sets.utility = {}
	sets.utility.pr = {}
	----------------------------------------------------------------------
	-- Allies' Roll
	sets.utility.pr["Allies' Roll"] = set_combine(sets.midcast.ja.phantomRoll, {
        hands="Chasseur's Gants +1",
	}) -- end Allies' Roll

	-- Blitzer's Roll
	sets.utility.pr["Blitzer's Roll"] = set_combine(sets.midcast.ja.phantomRoll, {
	}) -- end Blitzer's Roll

	-- Caster's Roll
	sets.utility.pr["Caster's Roll"] = set_combine(sets.midcast.ja.phantomRoll, {
	}) -- end Caster's Roll

	-- Courser's Roll
	sets.utility.pr["Courser's Roll"] = set_combine(sets.midcast.ja.phantomRoll, {
	}) -- end Courser's Roll

	-- Tactician's Roll
	sets.utility.pr["Tactician's Roll"] = set_combine(sets.midcast.ja.phantomRoll, {
	}) -- end Tactician's Roll

	-- Dark Weather/Day Benefit
	sets.utility.darkBoost = {
        waist="Anrin Obi",
	} -- end Dark Weather/Day Benefit


end -- end get_sets()


----------------------------------------------------------------------
-- Callback for when casting begins
----------------------------------------------------------------------
function precast(spell)
	
	-- If the action is magic
    if spell.action_type == 'Magic' then
		equip(sets.precast.fastCast)

	-- If the action is a Ranged Attack
	elseif spell.action_type == 'Ranged Attack' then
		equip(sets.precast.snapShot)
	end

end -- end precast()


----------------------------------------------------------------------
-- Callback for after casting begins, but before it fires
----------------------------------------------------------------------
function midcast(spell)

	-- If the action is an Ability
	if spell.action_type == 'Ability' then

		-- If the ability was a Corsair Roll
		if spell.type == 'CorsairRoll' then
			-- Equip one of the specific roll sets
			if sets.utility.pr[spell.name] then
				equip(sets.utility.pr[spell.english])
			-- Equip the default roll set
			else
				equip(sets.midcast.ja['Phantom Roll'])
			end

		-- Check for job abilities
	    elseif spell.type == 'JobAbility' then
	    	if sets.midcast.ja[spell.english] then
				equip(sets.midcast.ja[spell.english])
	    	end

		-- Check for weapon skills
	    elseif spell.type == 'WeaponSkill' then
			-- Equip one of the specific weapon skill sets
			if sets.midcast.ws[spell.english] then
				equip(sets.midcast.ws[spell.english])
				-- Check if it's Leaden Salute
				if spell.english == 'Leaden Salute' then
					if world.weather_element == 'Dark' or world.day_element == 'Dark' then
						equip(sets.utility.darkBoost)
					end
				end
			-- Equip the default weapon skill set
		    else
				equip(sets.midcast.ws.default)
			end

		end

	-- If the action is an Item
	elseif spell.action_type == 'Item' then
		-- Ignore

	-- If the action is Magic
	elseif spell.action_type == 'Magic' then
		-- Ignore

	-- If the action is a Ranged Attack
	elseif spell.action_type == 'Ranged Attack' then
		equip(sets.midcast.rangedAttack)
	end

end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)
	if player.status =='Engaged' then
		equip(sets.engaged)
	else
		equip(sets.idle)
	end
	EquipWeapons()
end -- end aftercast()


----------------------------------------------------------------------
-- Callback for whenever engagment status changes
----------------------------------------------------------------------
function status_change(new, old)
	if new == 'Engaged' then
		equip(sets.engaged)
	else
		equip(sets.idle)
	end
end -- end status_change()


----------------------------------------------------------------------
-- In game alerts to gear set changes
----------------------------------------------------------------------
function self_command(command)

	-- Equip idle set
	if command == 'equip idle set' then
		equip(sets.idle)
		EquipWeapons()
		send_command('@input /echo <----- Idle Set Equipped ----->')
	end -- end if

	-- Cycle weapon modes
	if command == 'cycle weapon modes' then
		-- Increment the weapon index
		weaponModeIndex = weaponModeIndex + 1
		-- Check if the weaopn index is out of range
		if weaponModeIndex > table.getn(sets.weapons) then
			weaponModeIndex = 0
		end
		-- Equip the appropriate set
		EquipWeapons()
		-- Alert the user which set is currently being equipped
		send_command('@input /echo <----- Weapon Mode: '..weaponModeNames[weaponModeIndex]..' ----->')
	end -- end if

end -- end self_command()


----------------------------------------------------------------------
-- Equips the appropriate guns
----------------------------------------------------------------------
function EquipWeapons()
	equip(sets.weapons[weaponModeIndex])
end


----------------------------------------------------------------------
-- Event Listener
----------------------------------------------------------------------
-- Callback for when the job is changed
----------------------------------------------------------------------
isInitialChange = true
function job_change(mainId, mainLvl, subId, subLvl)
	equip(sets.idle)
	if isInitialChange then
	    coroutine.schedule(function() send_command('input /macro book 6;wait .5;input /macro set 1;input /lockstyleset 7') end, 10)
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