if select(2, UnitClass('player')) ~= "SHAMAN" then
	return
end

local BlizzardCallSpells = TOTEM_MULTI_CAST_SUMMON_SPELLS

local WeaponImbues = 
{	
	"Rockbiter Weapon",
	"Flametongue Weapon",
	"Frostbrand Weapon",
	"Windfury Weapon"
}

function GetDefaultTotem(spellGroup)
	if(spellGroup == SPELL_GROUP_IMBUE) then
		return 8017, 1, nil
	end

	if(spellGroup == "Earth") then
		return 8071, 4, 1518
	end

	if(spellGroup == "Fire") then
		return 3599, 10, 1527
	end

	if(spellGroup == "Water") then
		return 5394, 20, 96
	end

	if(spellGroup == "Air") then
		return 8177, 30, 1531
	end
end

local Earth =
{
	"Earthbind Totem",
	"Stoneclaw Totem",
	"Stoneskin Totem",
	"Strength of Earth Totem",
	"Tremor Totem"
}

local Fire = 
{
	"Fire Nova Totem",
	"Flametongue Totem",
	"Magma Totem",
	"Searing Totem",
	"Frost Resistance Totem"
}

local Water = 
{
	"Healing Stream Totem",
	"Mana Spring Totem",
	"Fire Resistance Totem",
	"Poison Cleansing Totem",
	"Disease Cleansing Totem"
}

local Air = 
{
	"Windfury Totem",
	"Windwall Totem",
	"Tranquil Air Totem",
	"Grace of Air Totem",
	"Grounding Totem",
	"Sentry Totem",
	"Nature Resistance Totem"
}

function Yata:InitTotems()
	self:GatherTotemData()
	if(#self.TotemData == 0) then 
		self:Print("No totems found, level too low?")
		return false
	end
	return true
end

function Yata:GetTotem(name)
	local result = nil
	for k,v in ipairs(Yata.TotemData) do
		local totem = Yata.TotemData[v]
		totem = totem[#totem]
		if totem.Name == name then		
			result = totem
			break
		end
	end
	return result
end

function Yata:GatherTotemData()
	if self.TotemData then
		table.wipe(self.TotemData)
	end
	
    self.TotemData = {}
    
	local name, rank, icon, globalId
	local defaultSpellId, defaultLevel, defaultQuestId
	local earthFound, fireFound, waterFound, airFound, imbueFound = false
	local count = 0
	
    for k, spellName in ipairs(Earth) do

		--name, rank, icon, cost, _, _, _, _, _ = GetSpellInfo(globalId)
		name, rank, icon, _, _, _, globalId = GetSpellInfo(spellName)

		if (name) then
			count = count + 1
			local totem = {}
			totem.GlobalId = globalId
			totem.Name = name
			totem.Texture = icon
			totem.ActionId = globalId
			
			totem.SpellGroup = "Earth"
			totem.Slot = ElementsMap["Earth"]
			
			if (not self.TotemData[name]) then
				self.TotemData[name] = {}
				table.insert(self.TotemData, name)
			end
		
			table.insert(self.TotemData[name],totem)

			earthFound = true
		end
	end
			
    for k, spellName in ipairs(Fire) do

		--name, rank, icon, cost, _, _, _, _, _ = GetSpellInfo(globalId)
		name, rank, icon, _, _, _, globalId = GetSpellInfo(spellName)

		if (name) then
			count = count + 1
			local totem = {}
			totem.GlobalId = globalId
			totem.Name = name
			totem.Texture = icon
			totem.ActionId = globalId
			
			totem.SpellGroup = "Fire" 
			totem.Slot = ElementsMap["Fire"]
			
			if (not self.TotemData[name]) then
				self.TotemData[name] = {}
				table.insert(self.TotemData, name)
			end
		
			table.insert(self.TotemData[name],totem)

			fireFound = true
		end
	end
	
    for k, spellName in ipairs(Water) do

		--name, rank, icon, cost, _, _, _, _, _ = GetSpellInfo(globalId)
		name, rank, icon, _, _, _, globalId = GetSpellInfo(spellName)

		if (name) then
			count = count + 1
			local totem = {}
			totem.GlobalId = globalId
			totem.Name = name
			totem.Texture = icon
			totem.ActionId = globalId
			
			totem.SpellGroup = "Water" 
			totem.Slot = ElementsMap["Water"]
			
			if (not self.TotemData[name]) then
				self.TotemData[name] = {}
				table.insert(self.TotemData, name)
			end
		
			table.insert(self.TotemData[name],totem)

			waterFound = true
		end
	end

    for k, spellName in ipairs(Air) do

		--name, rank, icon, cost, _, _, _, _, _ = GetSpellInfo(globalId)
		name, rank, icon, _, _, _, globalId = GetSpellInfo(spellName)


		if (name) then
			count = count + 1
			local totem = {}
			totem.GlobalId = globalId
			totem.Name = name
			totem.Texture = icon
			totem.ActionId = globalId
			
			totem.SpellGroup = "Air" 
			totem.Slot = ElementsMap["Air"]
			
			if (not self.TotemData[name]) then
				self.TotemData[name] = {}
				table.insert(self.TotemData, name)
			end
		
			table.insert(self.TotemData[name],totem)

			airFound = true
		end
	end
	
    -- local multicastbase = 133
    -- for k, spellId in ipairs(BlizzardCallSpells) do
    -- 	local totem = {}
	-- 	totem.GlobalId = spellId
	    
	-- 	name, _, icon, cost, _, _, _, _, _ = GetSpellInfo(totem.GlobalId)
		
	-- 	-- Get again by name to make sure this character knows the spell
	-- 	--name, _, icon, cost, _, _, _, _, _ = GetSpellInfo(name)

	-- 	if (name) then
	-- 		totem.Name = name
	-- 		totem.Texture = icon
	-- 		totem.SpellGroup = SPELL_GROUP_CALL
	-- 		totem.CallIndex = k
	-- 		totem.CallActionBase = multicastbase + ((k - 1) * 4)
			
	-- 		if not self.TotemData[totem.Name] then
	-- 			self.TotemData[totem.Name] = {}
	-- 			table.insert(self.TotemData, totem.Name)
	-- 		end
			
	-- 		table.insert(self.TotemData[totem.Name], totem)
					
	-- 		count = count + 1
	-- 	end
	-- end
		
	for k, spellName in ipairs(WeaponImbues) do
    	local totem = {}
	    
		--name, _, icon, cost, _, _, _, _, _ = GetSpellInfo(spellId)

		-- Get again by name to make sure this character knows the spell
		name, rank, icon, _, _, _, globalId = GetSpellInfo(spellName)

		if(name) then
			totem.GlobalId = globalId
			totem.Name = name
			totem.Texture = icon
			totem.SpellGroup = SPELL_GROUP_IMBUE
			
			if not self.TotemData[totem.Name] then
				self.TotemData[totem.Name] = {}
				table.insert(self.TotemData, totem.Name)
			end
			
			table.insert(self.TotemData[totem.Name], totem)
					
			count = count + 1

			imbueFound = true
		end
	end

	if(not earthFound) then
		defaultSpellId, defaultLevel, defaultQuestId = GetDefaultTotem("Earth")

		--name, rank, icon, cost, _, _, _, _, _ = GetSpellInfo(globalId)
		name, rank, icon, _, _, _, globalId = GetSpellInfo(defaultSpellId)

		if (name) then
			count = count + 1
			local totem = {}
			totem.GlobalId = globalId
			totem.Name = name
			totem.Texture = icon
			totem.ActionId = globalId
			
			totem.IsDefault = true
			totem.Level = defaultLevel
			totem.Quest = defaultQuestId

			totem.SpellGroup = "Earth" 
			totem.Slot = ElementsMap["Earth"]
			
			if (not self.TotemData[name]) then
				self.TotemData[name] = {}
				table.insert(self.TotemData, name)
			end
		
			table.insert(self.TotemData[name],totem)
		end
	end

	if(not fireFound) then
		defaultSpellId, defaultLevel, defaultQuestId = GetDefaultTotem("Fire")

		--name, rank, icon, cost, _, _, _, _, _ = GetSpellInfo(globalId)
		name, rank, icon, _, _, _, globalId = GetSpellInfo(defaultSpellId)

		if (name) then
			count = count + 1
			local totem = {}
			totem.GlobalId = globalId
			totem.Name = name
			totem.Texture = icon
			totem.ActionId = globalId
			
			totem.IsDefault = true
			totem.Level = defaultLevel
			totem.Quest = defaultQuestId

			totem.SpellGroup = "Fire" 
			totem.Slot = ElementsMap["Fire"]
			
			if (not self.TotemData[name]) then
				self.TotemData[name] = {}
				table.insert(self.TotemData, name)
			end
		
			table.insert(self.TotemData[name],totem)
		end
	end

	if(not waterFound) then
		defaultSpellId, defaultLevel, defaultQuestId = GetDefaultTotem("Water")

		--name, rank, icon, cost, _, _, _, _, _ = GetSpellInfo(globalId)
		name, rank, icon, _, _, _, globalId = GetSpellInfo(defaultSpellId)

		if (name) then
			count = count + 1
			local totem = {}
			totem.GlobalId = globalId
			totem.Name = name
			totem.Texture = icon
			totem.ActionId = globalId
			
			totem.IsDefault = true
			totem.Level = defaultLevel
			totem.Quest = defaultQuestId

			totem.SpellGroup = "Water" 
			totem.Slot = ElementsMap["Water"]
			
			if (not self.TotemData[name]) then
				self.TotemData[name] = {}
				table.insert(self.TotemData, name)
			end
		
			table.insert(self.TotemData[name],totem)
		end
	end

	if(not airFound) then
		defaultSpellId, defaultLevel, defaultQuestId = GetDefaultTotem("Air")

		--name, rank, icon, cost, _, _, _, _, _ = GetSpellInfo(globalId)
		name, rank, icon, _, _, _, globalId = GetSpellInfo(defaultSpellId)

		if (name) then
			count = count + 1
			local totem = {}
			totem.GlobalId = globalId
			totem.Name = name
			totem.Texture = icon
			totem.ActionId = globalId
			
			totem.IsDefault = true
			totem.Level = defaultLevel
			totem.Quest = defaultQuestId

			totem.SpellGroup = "Air" 
			totem.Slot = ElementsMap["Air"]
			
			if (not self.TotemData[name]) then
				self.TotemData[name] = {}
				table.insert(self.TotemData, name)
			end
		
			table.insert(self.TotemData[name],totem)
		end
	end

	if(not imbueFound) then
		defaultSpellId, defaultLevel, defaultQuestId = GetDefaultTotem(SPELL_GROUP_IMBUE)

		local totem = {}
	    
		--name, _, icon, cost, _, _, _, _, _ = GetSpellInfo(spellId)

		-- Get again by name to make sure this character knows the spell
		name, rank, icon, _, _, _, globalId = GetSpellInfo(defaultSpellId)

		if(name) then
			totem.GlobalId = globalId
			totem.Name = name
			totem.Texture = icon
			totem.SpellGroup = SPELL_GROUP_IMBUE
			
			totem.IsDefault = true
			totem.Level = defaultLevel
			totem.Quest = defaultQuestId

			if not self.TotemData[totem.Name] then
				self.TotemData[totem.Name] = {}
				table.insert(self.TotemData, totem.Name)
			end
			
			table.insert(self.TotemData[totem.Name], totem)
					
			count = count + 1
		end
	end


    self.TotemData.Count = count
end
