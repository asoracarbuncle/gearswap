function get_sets()

	----------------------------------------------------------------------
	-- Bind the keys you wish to use with GearSwap
	----------------------------------------------------------------------
	send_command('bind f9 gs c toggle idle set')


	----------------------------------------------------------------------
	-- Idle set
	----------------------------------------------------------------------
	sets.idle = {
        ammo="Ginsen",
        head="Malignance Chapeau",
        body="Hiza. Haramaki +2",
        hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
        legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet="Malignance Boots",
        neck="Loricate Torque +1",
        waist="Grunfeld Rope",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
	    left_ring="Fortified Ring",
	    right_ring="Defending Ring",
        back="Moonbeam Cape",
	} -- end Idle


	----------------------------------------------------------------------
	-- Melee set
	----------------------------------------------------------------------
	sets.melee = {
        ammo="Ginsen",
        head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
        body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
        hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
        legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+2','DEX+6','Accuracy+7','Attack+14',}},
        neck="Moonlight Nodowa",
        waist="Windbuffet Belt +1",
        left_ear="Telos Earring",
        right_ear="Dedition Earring",
        left_ring="Epona's Ring",
        right_ring="Gere Ring",
        back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Damage taken-5%',}},
	} -- end Melee


	----------------------------------------------------------------------
	-- Precast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.precast = {}
	sets.precast.fastCast = {}

	-- Precast : Fast Cast (61%)
	sets.precast.fastCast.default = {
        ammo="Sapience Orb",
        head={ name="Herculean Helm", augments={'Mag. Acc.+4','"Fast Cast"+6','MND+5',}},
        body={ name="Herculean Vest", augments={'Mag. Acc.+9','"Fast Cast"+5','"Mag.Atk.Bns."+7',}},
        hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="Arjuna Breeches",
        feet={ name="Herculean Boots", augments={'"Fast Cast"+5','INT+13','"Mag.Atk.Bns."+13',}},
        neck="Orunmila's Torque",
        left_ear="Loquac. Earring",
        right_ear="Etiolation Earring",
        left_ring="Kishar Ring",
        right_ring="Prolix Ring",
        back={ name="Andartia's Mantle", augments={'"Fast Cast"+10',}},
	} -- end Fast Cast

	-- Precast : Utsusemi Fast Cast
	sets.precast.fastCast.utsusemi = set_combine(sets.precast.fastCast.default, {
        neck="Magoraga Beads",
	})


	----------------------------------------------------------------------
	-- Midcast sets
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.midcast = {}
	sets.midcast.ws = {}

	-- Midcast : Magic
	sets.midcast.magic = {
        ammo="Impatiens",
	} -- end Magic

	-- Midcast : Weapon Skill : Default
	sets.midcast.ws.default = {
        ammo="Expeditious Pinion",
        head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
        body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
        hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
        legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+2','DEX+6','Accuracy+7','Attack+14',}},
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Telos Earring",
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="Epona's Ring",
        right_ring="Gere Ring",
        back={ name="Andartia's Mantle", augments={'AGI+20','Accuracy+20 Attack+20','AGI+10','Weapon skill damage +10%',}},
	} -- end Weapon Skill Default

	-- Midcast : Weapon Skill : Blade: Hi
	sets.midcast.ws["Blade: Hi"] = {
        ammo="Expeditious Pinion",
        head="Mummu Bonnet +2",
        body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
        hands="Mummu Wrists +2",
        legs="Mummu Kecks +2",
        feet="Mummu Gamash. +2",
        neck="Moonlight Nodowa",
        waist="Windbuffet Belt +1",
        left_ear="Ishvara Earring",
        right_ear="Brutal Earring",
        left_ring="Mummu Ring",
        right_ring="Regal Ring",
        back={ name="Andartia's Mantle", augments={'AGI+20','Accuracy+20 Attack+20','AGI+10','Weapon skill damage +10%',}},
	} -- end Blade: Hi

	-- Midcast : Weapon Skill : Blade: Ku
	sets.midcast.ws["Blade: Ku"] = {
        ammo="Expeditious Pinion",
        head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
        body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
        hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
        legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+2','DEX+6','Accuracy+7','Attack+14',}},
        neck="Caro Necklace",
        waist="Fotia Belt",
        left_ear="Lugra Earring",
        right_ear="Lugra Earring +1",
        left_ring="Regal Ring",
        right_ring="Gere Ring",
        back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
	} -- end Blade: Ku

	-- Midcast : Weapon Skill : Blade: Shun
	sets.midcast.ws["Blade: Shun"] = {
        ammo="Expeditious Pinion",
        head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
        body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
        hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
        legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','"Triple Atk."+2','DEX+6','Accuracy+7','Attack+14',}},
        neck="Caro Necklace",
        waist="Fotia Belt",
        left_ear="Lugra Earring",
        right_ear="Lugra Earring +1",
        left_ring="Regal Ring",
        right_ring="Gere Ring",
        back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
	} -- end Blade: Shun


	----------------------------------------------------------------------
	-- Utility Sets (not bound to a key)
	----------------------------------------------------------------------
	-- Initialize an array to begin storing set data
	sets.utility = {}

	-- Futae set
	sets.utility.futae = {
	} -- end Futae

	-- Innin set
	sets.utility.innin = {
	} -- end Innin

	-- Migawari set
	sets.utility.migawari = {
	} -- end Migawari

	-- Mikage set
	sets.utility.mikage = {
	    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
	} -- end Mikage

	-- Utsusemi set
	sets.utility.utsusemi = {
        feet="Iga Kyahan +2",
	    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10',}},
	} -- end Utsusemi Fast Cast

	-- Utsusemi set
	sets.utility.utsusemiFastCast = set_combine(sets.precast.fastCast, {
        neck="Magoraga Beads",
	})

	-- Yonin set
	sets.utility.yonin = {
	} -- end Yonin


	----------------------------------------------------------------------
	-- Spell arrays
	----------------------------------------------------------------------
	MigawariSpells = {
		["Migawari: Ichi"] = true,
	}

	UtsusemiSpells = {
		["Utsusemi: Ichi"] = true,
		["Utsusemi: Ni"] = true,
		["Utsusemi: San"] = true,
	}

end -- end get_sets()


----------------------------------------------------------------------
-- Callback for when casting begins
----------------------------------------------------------------------
function precast(spell)

	-- Check if the action is a magic spell
    if spell.action_type == 'Magic' then
    	if UtsusemiSpells[spell.english] then
			equip(sets.precast.fastCast.utsusemi)
    	else
    		equip(sets.precast.fastCast.default)
    	end
	end

end -- end precast()


----------------------------------------------------------------------
-- Callback for after casting begins, but before it fires
----------------------------------------------------------------------
function midcast(spell)

	-- Check if the action is a weapon skill
    if spell.type == 'WeaponSkill' then
		if sets.midcast.ws[spell.english] then
			equip(sets.midcast.ws[spell.english])
	    else
			equip(sets.midcast.ws.default)
		end

	-- Check if the action is a magic spell
    elseif spell.action_type == 'Magic' then
    	if MigawariSpells[spell.english] then
			equip(sets.utility.migawari)
    	elseif UtsusemiSpells[spell.english] then
			equip(sets.utility.utsusemi)
    	else
			equip(sets.midcast.magic)
		end
		
	-- Check if the action is a job ability
	elseif spell.type == 'JobAbility' then
		if spell.english == 'Futae' then
			equip(sets.utility.futae)
		elseif spell.english == 'Innin' then
			equip(sets.utility.innin)
		elseif spell.english == 'Mikage' then
			equip(sets.utility.mikage)
		elseif spell.english == 'Yonin' then
			equip(sets.utility.yonin)
		end
	end

end -- end midcast()


----------------------------------------------------------------------
-- Callback for after casting has fired
----------------------------------------------------------------------
function aftercast(spell)

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

	if new =='Engaged' then
		equip(sets.melee)
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
		send_command('@input /echo <----- Idle Set Equipped ----->')
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
	    coroutine.schedule(function() send_command('input /macro book 7;wait .5;input /macro set 1;input /lockstyleset 2') end, 10)
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