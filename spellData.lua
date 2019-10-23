local _, addon = ...

-- database of buff spells and reagents
addon.spells = {
	DRUID = {
		{	
			spells = {20484}, -- Rebirth (Rank 1)
			reagent = 17034, -- Maple Seed
		},
		{	
			spells = {20739}, -- Rebirth (Rank 2)
			reagent = 17035, -- Stranglethorn Seed
		},
		{	
			spells = {20742}, -- Rebirth (Rank 3)
			reagent = 17036, -- Ashwood Seed
		},
		{	
			spells = {20747}, -- Rebirth (Rank 1)
			reagent = 17037, -- Hornbeam Seed
		},
		{	
			spells = {20748}, -- Rebirth (Rank 5)
			reagent = 17038, -- Maple Seed
		},
		{	
			spells = {21849}, -- Gift of the Wild (Rank 1)
			reagent = 17021, -- Wild Berries
		},
		{	
			spells = {21850}, -- Gift of the Wild (Rank 2)
			reagent = 17026, -- Wild Thornroot
		},
	},
	MAGE = {
		{	-- Teleports
			spells = {
				3567,	-- Orgrimmar
				3563,	-- Undercity
				3566,	-- Thunder Bluff
				3561,	-- Stormwind
				3562,	-- Ironforge
				3565,	-- Darnassus
			},
			reagent = 17031,
		},
		{	-- Portals
			spells = {
				11417,	-- Orgrimmar
				11418,	-- Undercity
				11420,	-- Thunder Bluff
				10059,	-- Stormwind
				11416,	-- Ironforge
				11419,	-- Darnassus
			},
			reagent = 17032,
		},
		{	-- Slow fall
			spells = {130},
			reagent = 17056,
		},
		{	-- Arcane Brilliance
			spells = {23028},
			reagent = 17020,
		},
	},
	PALADIN = {
		{	-- Divine Intervention
			spells = {19752},
			reagent = 17033,	-- Symbol of Divinity
		},	
		{	-- Greater Blessings
			spells = {
				25782,	-- Might (Rank 1)
				25916,	-- Might (Rank 2)
				25894,	-- Wisdom (Rank 1)
				25918,	-- Wisdom (Rank 2)
				25898,	-- Kings
				25895,	-- Salvation
				25899,	-- Sanctuary
				25890,	-- Light
			},
			reagent = 21177,	--Symbol of Kings
		},
	},
	PRIEST = {
		{	-- Levitate
			spells = {1706},
			reagent = 17056,	-- Light Feather
		},
		{	-- Prayer of Fortitude (Rank 1)
			spells = {21562},
			reagent = 17028,	-- Holy Candle
		},
		{
			spells = {
				27683,	-- Prayer of Shadow Protection
				27681,	-- Prayer of Spirit
				21564,	-- Prayer of Fortitude (Rank 2)
			},
			reagent = 17029,	-- Sacred Candle
		},
	},
	-- using the "Poisons" skill for all poisons
	ROGUE = {
		{	-- Instant
			spells = {2842},
			reagent = 6947,
		},
		{	-- Instant II
			spells = {2842},
			reagent = 6949,
		},
		{	-- Instant III
			spells = {2842},
			reagent = 6950,
		},
		{	-- Instant IV
			spells = {2842},
			reagent = 8926,
		},
		{	-- Instant V
			spells = {2842},
			reagent = 8927,
		},
		{	-- Instant VI
			spells = {2842},
			reagent = 8928,
		},
		{	-- Crippling
			spells = {2842},
			reagent = 3775,
		},
		{	-- Crippling II
			spells = {2842},
			reagent = 3776,
		},		
		{	-- Mind-numbing
			spells = {2842},
			reagent = 5237,
		},
		{	-- Mind-numbing II
			spells = {2842},
			reagent = 6951,
		},
		{	-- Mind-numbing III
			spells = {2842},
			reagent = 9186,
		},		
		{	-- Deadly
			spells = {2842},
			reagent = 2892,
		},
		{	-- Deadly II
			spells = {2842},
			reagent = 2893,
		},
		{	-- Deadly III
			spells = {2842},
			reagent = 8984,
		},
		{	-- Deadly IV
			spells = {2842},
			reagent = 8985,
		},
		{	-- Deadly V
			spells = {2842},
			reagent = 20844,
		},		
		{	-- Wound
			spells = {2842},
			reagent = 10918,
		},
		{	-- Wound II
			spells = {2842},
			reagent = 10920,
		},
		{	-- Wound III
			spells = {2842},
			reagent = 10921,
		},
		{	-- Wound IV
			spells = {2842},
			reagent = 10922,
		},
		{	--Vanish
			spells = {
					1856,
					1857,
				},
			reagent = 5140,		-- Flash Powder
		},
		{	-- Blind
			spells = {2094},
			reagent = 5530,		-- Blinding Powder
		},
	},
	SHAMAN = {
		{	-- Reincarnation
			spells = {20608},
			reagent = 17030,
		},
		{	-- Water breathing
			spells = {131},
			reagent = 17057,
		},
		{	-- Water walking
			spells = {546},
			reagent = 17058,
		},
	},
	WARLOCK = {
		{	-- Does everything a warlock does require Soul Shards? Basically, yes, that is correct.
			spells = {
				697,	-- Summon Voidwalker
				698,	-- Ritual of Summoning
				712,	-- Summon Succubus
				691,	-- Summon Felhunter
				6353,	-- Soul Fire
				17924,	-- Soul Fire (Rank 2)
				693,	-- Create Soulstone (Minor)
				20752,	-- Create Soulstone (Lesser)
				20755,	-- Create Soulstone
				20756,	-- Create Soulstone (Greater)
				20757,	-- Create Soulstone (Major)
				6201,	-- Create Healthstone (Minor)
				6202,	-- Create Healthstone (Lesser)
				5699,	-- Create Healthstone
				11729,	-- Create Healthstone (Greater)
				11730,	-- Create Healthstone (Major)
				6366,	-- Create Firestone (Lesser)
				17951,	-- Create Firestone
				17952,	-- Create Firestone (Greater)				
				17953,	-- Create Firestone (Major)
				2362,	-- Create Spellstone
				17727,	-- Create Spellstone (Greater)				
				17728,	-- Create Spellstone (Major)
				1098,	-- Enslave Demon
				11725,	-- Enslave Demon (Rank 2)
				11726,	-- Enslave Demon (Rank 3)				
			},
			reagent = 6265,
		},
		{	-- You'd think that, but there are two others.
			spells = {1122},	-- Inferno
			reagent = 5565,		-- Infernal Stone
		},
		{
			spells = {18540},	-- Ritual of Doom
			reagent = 16583,	-- Demonic Figurine
		},
	},
}