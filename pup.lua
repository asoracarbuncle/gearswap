function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c cycle idle sets')
	send_command('bind f10 gs c cycle melee sets')


	----------------------------------------------------------------------
	-- Idle set
	----------------------------------------------------------------------
	-- Initializes an array to begin storing set data
	sets.idle = {}
	idleSetIndex = table.getn(sets.idle) + 1
	idleSetNames= {
		[0] = "Idle (Default)",
		[1] = "Damage Taken",
		[2] = "Damage Dealer",
	}

	-- Idle : Idle (Default)
	sets.idle[0] = {
		Head="Pitre Taj +1",
        Neck="Adad Necklace",
        Ear1="Infused Earring",
        Ear2="Enmerkar Earring",
        Body="Rao Togi",
        Hands="Rao Kote",
        Ring1="Varar Ring",
        Ring2="Varar Ring",
        Back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Attack+6 Pet: Rng.Atk.+6','Pet: Haste+10','Pet: Damage taken -5%',}},
        Waist="Isa Belt",
        Legs="Tali'ah Sera. +1",
        Feet="Hermes' Sandals"
	} -- end sets.idle[0]

	-- Idle : Damage Taken
	sets.idle[1] = {
		Head={ name="Anwig Salade", augments={'Attack+3','Pet: Damage taken -10%','Accuracy+3','Pet: Haste+5',}},
		Neck="Shepherd's Chain",
		Ear1="Rimeice Earring",
		Ear2="Enmerkar Earring",
		Body="Rao Togi",
		Hands="Rao Kote",
		Ring1="Varar Ring",
		Ring2="Varar Ring",
		Back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Attack+6 Pet: Rng.Atk.+6','Pet: Haste+10','Pet: Damage taken -5%',}},
		Waist="Isa Belt",
		Legs="Tali'ah Sera. +1",
		Feet="Rao Sune-Ate"
	} -- end sets.idle[1]

	-- Idle : Damage Dealer
	sets.idle[2] = {
		Head="Tali'ah Turban +1",
		Neck="Shulmanu Collar",
		Ear1="Domes. Earring",
		Ear2="Enmerkar Earring",
		Body="Tali'ah Manteel +1",
		Hands="Tali'ah Gages +1",
		Ring1="Varar Ring",
		Ring2="Varar Ring",
		Back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Attack+6 Pet: Rng.Atk.+6','Pet: Haste+10','Pet: Damage taken -5%',}},
		Waist="Ukko Sash",
		Legs="Tali'ah Seraweels",
		Feet="Tali'ah Crackows +1"
	} -- end sets.idle[2]


	----------------------------------------------------------------------
	-- Melee set
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.melee = {}
	meleeSetIndex = table.getn(sets.melee) + 1
	meleeSetNames = {
		[0] = "Tank (Default)",
		[1] = "Damage Dealer",
		[2] = "Healer",
	}

	-- Melee : Tank (Default)
	sets.melee[0] = {
		Head="Tali'ah Turban +1",
		Neck="Empath Necklace",
		Ear1="Domes. Earring",
		Ear2="Brutal Earring",
		Body="Tali'ah Manteel +1",
		Hands="Tali'ah Gages +1",
		Ring1="Epona's Ring",
		Ring2="Rajas Ring",
		Back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Attack+6 Pet: Rng.Atk.+6','Pet: Haste+10','Pet: Damage taken -5%',}},
		Waist="Ukko Sash",
		Legs="Tali'ah Seraweels",					
		Feet="Tali'ah Crackows +1"
	} -- end sets.melee[0]

	-- Melee : Damage Dealer
	sets.melee[1] = {
		Head="Tali'ah Turban +1",
		Neck="Empath Necklace",
		Ear1="Domes. Earring",
		Ear2="Brutal Earring",
		Body="Tali'ah Manteel +1",
		Hands="Tali'ah Gages +1",
		Ring1="Epona's Ring",
		Ring2="Rajas Ring",
		Back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Attack+6 Pet: Rng.Atk.+6','Pet: Haste+10','Pet: Damage taken -5%',}},
		Waist="Ukko Sash",
		Legs="Tali'ah Seraweels",					
		Feet="Tali'ah Crackows +1"			 
	} -- end sets.melee[1]

	-- Melee : Healer
	sets.melee[2] = {
		Head={ name="Naga Somen", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
		Neck="Empath Necklace",
		Ear1="Domes. Earring",
		Ear2="Brutal Earring",
		Body={ name="Naga Samue", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},					
		Hands={ name="Naga Tekko", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
		Ring1="Varar Ring",
		Ring2="Varar Ring",
		Waist="Ukko Sash",
		Back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Attack+6 Pet: Rng.Atk.+6','Pet: Haste+10','Pet: Damage taken -5%',}},
		Legs={ name="Naga Hakama", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},					 
		Feet={ name="Naga Kyahan", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}}
	} -- end sets.melee[2]


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}

	-- Precast : Fast Cast
	sets.precast.fastCast = {
		Ear2="Loquac. Earring"
	} -- end sets.precast.fastCast


	----------------------------------------------------------------------
	-- Midcast: Weapon skill sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}
	sets.midcast.ws = {}

	-- Midcast : Weapon Skill : Default
	sets.midcast.ws.default = {
		Head="Tali'ah Turban +1",
		Neck="Fotia Gorget",
		Ear1="Domes. Earring",
		Ear2="Brutal Earring",
		Body="Tali'ah Manteel +1",
		Hands="Tali'ah Gages +1",
		Ring1="Epona's Ring",
		Ring2="Rajas Ring",
		Back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Attack+6 Pet: Rng.Atk.+6','Pet: Haste+10','Pet: Damage taken -5%',}},
		Waist="Fotia Belt",
		Legs="Tali'ah Seraweels",					
		Feet="Tali'ah Crackows +1"
	} -- end sets.midcast.ws.default

	-- Midcast : Weapon Skill : Combo
	sets.midcast.ws["Combo"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Shoulder Tackle
	sets.midcast.ws["Shoulder Tackle"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : One Inch Punch
	sets.midcast.ws["One Inch Punch"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Backhand Blow
	sets.midcast.ws["Backhand Blow"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Raging Fists
	sets.midcast.ws["Raging Fists"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Spinning Attack
	sets.midcast.ws["Spinning Attack"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Howling Fist
	sets.midcast.ws["Howling Fist"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Dragon Kick
	sets.midcast.ws["Dragon Kick"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Asuran Fists
	sets.midcast.ws["Asuran Fists"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Tornado Kick
	sets.midcast.ws["Tornado Kick"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Shijin Spiral
	sets.midcast.ws["Shijin Spiral"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Final Heaven
	sets.midcast.ws["Final Heaven"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Victory Smite
	sets.midcast.ws["Victory Smite"] = {
		Head="Tali'ah Turban +1",
		Neck="Fotia Gorget",
		Ear1="Domes. Earring",
		Ear2="Brutal Earring",
		Body="Tali'ah Manteel +1",
		Hands="Tali'ah Gages +1",
		Ring1="Epona's Ring",
		Ring2="Rajas Ring",
		Back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Attack+6 Pet: Rng.Atk.+6','Pet: Haste+10','Pet: Damage taken -5%',}},
		Waist="Fotia Belt",
		Legs="Tali'ah Seraweels",					
		Feet="Tali'ah Crackows +1"
	}

	-- Midcast : Weapon Skill : Ascetic's Fury
	sets.midcast.ws["Ascetic's Fury"] = sets.midcast.ws.default

	-- Midcast : Weapon Skill : Stringing Pummel
	sets.midcast.ws["Stringing Pummel"] = {
		Head="Tali'ah Turban +1",
		Neck="Fotia Gorget",
		Ear1="Domes. Earring",
		Ear2="Brutal Earring",
		Body="Tali'ah Manteel +1",
		Hands="Tali'ah Gages +1",
		Ring1="Epona's Ring",
		Ring2="Rajas Ring",
		Back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Attack+6 Pet: Rng.Atk.+6','Pet: Haste+10','Pet: Damage taken -5%',}},
		Waist="Fotia Belt",
		Legs="Tali'ah Seraweels",					
		Feet="Tali'ah Crackows +1"
	}
	                 


	----------------------------------------------------------------------
	-- Midcast: Job ability sets (not bound to a key)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast.ja = {}

	-- Overdrive set
	sets.midcast.ja["Overdrive"] = {
		Body="Pitre Tobe +1"
	} -- end sets.midcast.ja["Overdrive"]

	-- Activate set
	sets.midcast.ja["Activate"] = {
		Body="Karagoz Farsetto",
		Neck="Buffoon's Collar +1",
		Hands="Foire Dastanas"
	} -- end sets.midcast.ja["Activate"]

	-- Deus Ex Automata set
	sets.midcast.ja["Deus Ex Automata"] = {
		Body="Karagoz Farsetto",
		Neck="Buffoon's Collar +1",
		Hands="Foire Dastanas"
	} -- end sets.midcast.ja["Deus Ex Automata"]
	
	-- Repair set
	sets.midcast.ja["Repair"] = {
		Head="Tali'ah Turban +1",
		Neck="Fotia Gorget",
		Ear1="Guignol Earring",
		Ear2="Pratik Earring",
		Body="Tali'ah Manteel +1",
		Hands="Tali'ah Gages +1",
		Ring1="Epona's Ring",
		Ring2="Rajas Ring",
		Back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Attack+6 Pet: Rng.Atk.+6','Pet: Haste+10','Pet: Damage taken -5%',}},
		Waist="Fotia Belt",
		Legs={ name="Desultor Tassets", augments={'"Repair" potency +10%','Movement speed +8%+2',}},					
		Feet="Tali'ah Crackows +1"
	} -- end sets.midcast.ja["Repair"]

	-- Maintenance set
	sets.midcast.ja["Maintenance"] = {	
	} -- end sets.midcast.ja["Maintenance"]

	-- Ventriloquy set
	sets.midcast.ja["Ventriloquy"] = {
		Legs="Pitre Churidars +1"
	} -- end sets.midcast.ja["Ventriloquy"]

	-- Role Reversal set
	sets.midcast.ja["Role Reversal"] = {
		Feet="Pitre Babouches +1"
	} -- end sets.midcast.ja["Role Reversal"]

	-- Tactical Switch set
	sets.midcast.ja["Tactical Switch"] = {
		Feet="Karagoz scarpe +1"
	} -- end sets.midcast.ja["Tactical Switch"]

	-- Cooldown set
	sets.midcast.ja["Cooldown"] = {
	} -- end sets.midcast.ja["Cooldown"]

	-- Heady Artifice set
	sets.midcast.ja["Heady Artifice"] = {
	} -- end sets.midcast.ja["Heady Artifice"]

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
    	
		-- Equip the default set
		equip(sets.midcast.ws.default)

		-- Check if the weapon skill has a set
		if sets.midcast.ws[spell.english] then
			equip(sets.midcast.ws[spell.english])
		end

	end

	-- Check if the action is a job ability
	if spell.type == 'JobAbility' then

		-- Check if the action is a specified job ability
		if sets.midcast.ja[spell.english] then
			equip(sets.midcast.ja[spell.english])
		end

	end

end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)

	-- Check the player status
	if player.status =='Engaged' then
		equip(sets.melee[meleeSetIndex])
	else
		equip(sets.idle[idleSetIndex])
	end

end -- end aftercast()


----------------------------------------------------------------------
-- Callback for whenever engagment status changes
----------------------------------------------------------------------
function status_change(new,old)

	-- Check the player status
	if new == 'Engaged' then
		equip(sets.melee[meleeSetIndex])
	elseif new == 'Idle' then
		equip(sets.idle[idleSetIndex])
	end

end -- end status_change()


----------------------------------------------------------------------
-- In game alerts to gear set changes
----------------------------------------------------------------------
function self_command(command)

	-- Cycle the idle set
	if command == 'cycle idle sets' then
		-- Increment the index
		idleSetIndex = idleSetIndex + 1
		-- Cycle back to zero if out of range
		if idleSetIndex > table.getn(sets.idle) then
			idleSetIndex = 0
		end
		-- Equip the set
		equip(sets.idle[idleSetIndex])
		-- Alert the user which set is currently being equipped
		send_command('@input /echo <----- Idle: '..idleSetNames[idleSetIndex]..' Mode Engaged ----->')
	end -- end if

	-- Cycle the melee set
	if command == 'cycle melee sets' then
		-- Increment the index
		meleeSetIndex = meleeSetIndex + 1
		-- Cycle back to zero if out of range
		if meleeSetIndex > table.getn(sets.melee) then
			meleeSetIndex = 0
		end
		-- Equip the set
		equip(sets.melee[meleeSetIndex])
		-- Alert the user which set is currently being equipped
		send_command('@input /echo <----- Melee: '..meleeSetNames[meleeSetIndex]..' Mode Engaged ----->')
	end -- end if

end -- end self_command()
