local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
AL = AL or setmetatable({}, { __index = function(t, k) return k end })
local BabbleBoss = LibStub("LibBabble-Boss-3.0"):GetUnstrictLookupTable()
local BabbleFaction = LibStub("LibBabble-Faction-3.0"):GetUnstrictLookupTable()
local BabbleInventory = LibStub("LibBabble-Inventory-3.0"):GetUnstrictLookupTable()
local BabbleItemSet = LibStub("LibBabble-ItemSet-3.0"):GetUnstrictLookupTable()
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetUnstrictLookupTable()
local moduleName = "SynastriaLootWotlk"
Synastria_Data = Synastria_Data or {}

-- Index
--- Dungeons & Raids
---- Utgarde Keep
---- The Nexus
---- Azjol-Nerub
---- Ahn'kahet: The Old Kingdom
---- Drak'Tharon Keep
---- The Violet Hold
---- Gundrak
---- Halls of Stone
---- Halls of Lightning
---- Caverns of Time: The Culling of Stratholme
---- Utgarde Pinnacle
---- The Oculus
---- Vault of Archavon
---- Naxxramas
----- Construct Quarter
----- Arachnid Quarter
----- Military Quarter
----- Plague Quarter
----- Frostwyrm Lair
---- Obsidian Sanctum
---- The Eye of Eternity
---- Ulduar
---- Trial of the Champion
---- Trial of the Crusader
---- Trial of the Grand Crusader
---- Onyxia (Level 80)
---- The Forge of Souls
---- Pit of Saron
---- Halls of Reflection
---- Icecrown Citadel
----- Lower Spire
----- The Plagueworks
----- The Crimson Hall
----- Frostwing Halls
----- The Frozen Throne
---- Ruby Sanctum
--- Factions
---- Alliance Vanguard
---- Argent Crusade
---- Argent Tournament Factions
---- Frenzyheart Tribe
---- Horde Expedition
---- Kirin Tor
---- Knights of the Ebon Blade
---- The Ashen Verdict
---- The Kalu'ak
---- The Oracles
---- The Sons of Hodir
---- The Wyrmrest Accord
---- Winterfin Retreat
--- PvP
---- Armor Sets
---- Level 80 Epic Non-Sets
---- Level 80 PVP Weapons
---- World PvP - Wintergrasp
---- World PvP - Grizzly Hills: Venture Bay
--- Sets & Collections
---- Naxx Sets (T7)/Ulduar Sets (T8)
---- Tier 9 Sets (T9)
---- Tier 10 Sets (T10)
---- Wrath Of The Lich King Sets
---- BoE World Epics
---- Emblem of Heroism Items
---- Emblem of Valor Items
---- Emblem of Conquest Items
---- Emblem of Triumph Items
---- Emblem of Frost Items

------------------------
--- Dungeons & Raids ---
------------------------

--------------------
--- Utgarde Keep ---
--------------------

Synastria_Data["UtgardeKeepPrinceKeleseth"] = {
	["Normal"] = {
		{
			{ 1, 35571, "", "=q3=Dragon Stabler's Gauntlets",    "=ds=#s9#, #a3#",                             "", "33.3%" },
			{ 2, 35570, "", "=q3=Keleseth's Blade of Evocation", "=ds=#h3#, #w4#",                             "", "33.3%" },
			{ 3, 35572, "", "=q3=Reinforced Velvet Helm",        "=ds=#s1#, #a1#",                             "", "33.3%" },
			{ 5, 44731, "", "=q2=Bouquet of Ebon Roses",         "=ds=#s15# =q1=" .. AL["Love is in the Air"], "", "50%" },
			{ 6, 22206, "", "=q2=Bouquet of Red Roses",          "=ds=#s15# =q1=" .. AL["Love is in the Air"], "", "50%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37180, "", "=q3=Battlemap Hide Helm",    "=ds=#s1#, #a2#",                             "", "25%" },
			{ 2, 37179, "", "=q3=Infantry Assault Blade", "=ds=#h1#, #w10#",                            "", "25%" },
			{ 3, 37178, "", "=q3=Strategist's Belt",      "=ds=#s10#, #a4#",                            "", "25%" },
			{ 4, 37177, "", "=q3=Wand of the San'layn",   "=ds=#w12#",                                  "", "25%" },
			{ 6, 44731, "", "=q2=Bouquet of Ebon Roses",  "=ds=#s15# =q1=" .. AL["Love is in the Air"], "", "50%" },
			{ 7, 22206, "", "=q2=Bouquet of Red Roses",   "=ds=#s15# =q1=" .. AL["Love is in the Air"], "", "50%" },
		},
	},
	info = {
		name = BabbleBoss["Prince Keleseth"],
		module = moduleName,
		instance = "UtgardeKeep",
	},
};

Synastria_Data["UtgardeKeepSkarvaldAndDalronn"] = {
	["Normal"] = {
		{
			{ 1, 35573, "", "=q3=Arm Blade of Augelmir",             "=ds=#h3#, #w13#", "", "33.3%" },
			{ 2, 35574, "", "=q3=Chestplate of the Northern Lights", "=ds=#s5#, #a4#",  "", "33.3%" },
			{ 3, 35575, "", "=q3=Skarvald's Dragonskin Habergeon",   "=ds=#s5#, #a2#",  "", "33.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37183, "", "=q3=Bindings of the Tunneler",  "=ds=#s8#, #a2#", "", "25%" },
			{ 2, 37181, "", "=q3=Dagger of Betrayal",        "=ds=#h1#, #w4#", "", "25%" },
			{ 3, 37184, "", "=q3=Dalronn's Jerkin",          "=ds=#s5#, #a3#", "", "25%" },
			{ 4, 37182, "", "=q3=Helmet of the Constructor", "=ds=#s1#, #a4#", "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Skarvald the Constructor"] .. " / " .. BabbleBoss["Dalronn the Controller"],
		module = moduleName,
		instance = "UtgardeKeep",
	},
};

Synastria_Data["UtgardeKeepIngvarThePlunderer"] = {
	["Normal"] = {
		{
			{ 1, 35577, "", "=q3=Holistic Patchwork Breeches", "=ds=#s11#, #a2#", "", "33.3%" },
			{ 2, 35576, "", "=q3=Ingvar's Monolithic Cleaver", "=ds=#h2#, #w1#",  "", "33.3%" },
			{ 3, 35578, "", "=q3=Overlaid Chain Spaulders",    "=ds=#s3#, #a3#",  "", "33.3%" },
			{ 5, 33330, "", "=q1=Ingvar's Head",               "=ds=#m3#",        "", "100%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  37192, "", "=q4=Annhylde's Ring",              "=ds=#s13#",       "", "25%" },
			{ 2,  37189, "", "=q3=Breeches of the Caller",       "=ds=#s11#, #a1#", "", "25%" },
			{ 3,  37191, "", "=q4=Drake-Mounted Crossbow",       "=ds=#w3#",        "", "25%" },
			{ 4,  37190, "", "=q3=Enraged Feral Staff",          "=ds=#w9#",        "", "25%" },
			{ 5,  37188, "", "=q3=Plunderer's Helmet",           "=ds=#s1#, #a3#",  "", "25%" },
			{ 6,  37194, "", "=q4=Sharp-Barbed Leather Belt",    "=ds=#s10#, #a2#", "", "25%" },
			{ 7,  37193, "", "=q4=Staggering Legplates",         "=ds=#s11#, #a4#", "", "25%" },
			{ 8,  37186, "", "=q3=Unsmashable Heavy Band",       "=ds=#s13#",       "", "25%" },
			{ 10, 33330, "", "=q1=Ingvar's Head",                "=ds=#m3#",        "", "100%" },
			{ 11, 43662, "", "=q1=Axe of the Plunderer",         "=ds=#m3#",        "", "100%" },
			{ 16, 41793, "", "=q3=Design: Fierce Monarch Topaz", "=ds=#p12# (390)", "", "100%" },
			{ 18, 43102, "", "=q3=Frozen Orb",                   "=ds=#e6#",        "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Ingvar the Plunderer"],
		module = moduleName,
		instance = "UtgardeKeep",
	},
};

Synastria_Data["UtgardeKeepTrash"] = {
	["Normal"] = {
		{
			{ 1, 37290, "", "=q3=Dragon Prow Amulet",    "=ds=#s2#",       "", "0.1%" },
			{ 2, 37196, "", "=q3=Runecaster's Mantle",   "=ds=#s3#, #a1#", "", "0.1%" },
			{ 3, 35580, "", "=q3=Skein Woven Mantle",    "=ds=#s3#, #a1#", "", "~2.15%" },
			{ 4, 37197, "", "=q3=Tattered Castle Drape", "=ds=#s4#",       "", "0.1%" },
			{ 5, 35579, "", "=q3=Vrykul Shackles",       "=ds=#s8#, #a2#", "", "~2%" },
		},
	},
	info = {
		name = AL["Trash Mobs"],
		module = moduleName,
		instance = "UtgardeKeep",
	},
};

-----------------
--- The Nexus ---
-----------------

Synastria_Data["TheNexusCommander"] = {
	["Heroic"] = {
		{
			{ 1, 37730, "", "=q3=Cleric's Linen Shoes",        "=ds=#s12#, #a1#", "", "25%" },
			{ 2, 37728, "", "=q3=Cloak of the Enemy",          "=ds=#s4#",        "", "25%" },
			{ 3, 37729, "", "=q3=Grips of Sculptured Icicles", "=ds=#s9#, #a4#",  "", "25%" },
			{ 4, 37731, "", "=q3=Opposed Stasis Leggings",     "=ds=#s11#, #a1#", "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Commander Kolurg"] .. " / " .. BabbleBoss["Commander Stoutbeard"],
		module = moduleName,
		instance = "TheNexus",
	},
};

Synastria_Data["TheNexusGrandMagusTelestra"] = {
	["Normal"] = {
		{
			{ 1, 35605, "", "=q3=Belt of Draconic Runes",    "=ds=#s10#, #a2#",                                   "", "33.3%" },
			{ 2, 35604, "", "=q3=Insulating Bindings",       "=ds=#s8#, #a4#",                                    "", "33.3%" },
			{ 3, 35617, "", "=q3=Wand of Shimmering Scales", "=ds=#w12#",                                         "", "33.3%" },
			{ 5, 21524, "", "=q2=Red Winter Hat",            "=ds=#s1#, #a1# =q1=" .. AL["Feast of Winter Veil"], "", "100%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37135, "", "=q3=Arcane-Shielded Helm",            "=ds=#s1#, #a4#",                                    "", "25%" },
			{ 2, 37138, "", "=q3=Bands of Channeled Energy",       "=ds=#s8#, #a3#",                                    "", "25%" },
			{ 3, 37139, "", "=q3=Spaulders of the Careless Thief", "=ds=#s3#, #a2#",                                    "", "25%" },
			{ 4, 37134, "", "=q3=Telestra's Journal",              "=ds=#s15#",                                         "", "25%" },
			{ 6, 21524, "", "=q2=Red Winter Hat",                  "=ds=#s1#, #a1# =q1=" .. AL["Feast of Winter Veil"], "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Grand Magus Telestra"],
		module = moduleName,
		instance = "TheNexus",
	},
};

Synastria_Data["TheNexusAnomalus"] = {
	["Normal"] = {
		{
			{ 1, 35600, "", "=q3=Cleated Ice Boots",           "=ds=#s12#, #a3#", "", "33.3%" },
			{ 2, 35599, "", "=q3=Gauntlets of Serpent Scales", "=ds=#s9#, #a3#",  "", "33.3%" },
			{ 3, 35598, "", "=q3=Tome of the Lore Keepers",    "=ds=#s15#",       "", "33.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37141, "", "=q3=Amulet of Dazzling Light",     "=ds=#s2#",        "", "25%" },
			{ 2, 37144, "", "=q3=Hauberk of the Arcane Wraith", "=ds=#s5#, #a3#",  "", "25%" },
			{ 3, 37149, "", "=q3=Helm of Anomalus",             "=ds=#s1#, #a2#",  "", "25%" },
			{ 4, 37150, "", "=q3=Rift Striders",                "=ds=#s12#, #a4#", "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Anomalus"],
		module = moduleName,
		instance = "TheNexus",
	},
};

Synastria_Data["TheNexusOrmorokTheTreeShaper"] = {
	["Normal"] = {
		{
			{ 1, 35602, "", "=q3=Chiseled Stalagmite Pauldrons", "=ds=#s3#, #a4#",  "", "33.3%" },
			{ 2, 35601, "", "=q3=Drakonid Arm Blade",            "=ds=#h4#, #w13#", "", "33.3%" },
			{ 3, 35603, "", "=q3=Greaves of the Blue Flight",    "=ds=#s12#, #a4#", "", "33.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37151, "", "=q3=Band of Frosted Thorns",         "=ds=#s13#",       "", "25%" },
			{ 2, 37155, "", "=q3=Frozen Forest Kilt",             "=ds=#s11#, #a3#", "", "25%" },
			{ 3, 37152, "", "=q3=Girdle of Ice",                  "=ds=#s10#, #a4#", "", "25%" },
			{ 4, 37153, "", "=q3=Gloves of the Crystal Gardener", "=ds=#s9#, #a1#",  "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Ormorok the Tree-Shaper"],
		module = moduleName,
		instance = "TheNexus",
	},
};

Synastria_Data["TheNexusKeristrasza"] = {
	["Normal"] = {
		{
			{ 1, 35596, "", "=q3=Attuned Crystalline Boots",     "=ds=#s12#, #a1#", "", "33.3%" },
			{ 2, 35597, "", "=q3=Band of Glittering Permafrost", "=ds=#s13#",       "", "33.3%" },
			{ 3, 35595, "", "=q3=Glacier Sharpened Vileblade",   "=ds=#h1#, #w4#",  "", "33.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  37162, "", "=q3=Bulwark of the Noble Protector", "=ds=#w8#",        "", "25%" },
			{ 2,  37165, "", "=q3=Crystal-Infused Tunic",          "=ds=#s5#, #a2#",  "", "25%" },
			{ 3,  37167, "", "=q3=Dragon Slayer's Sabatons",       "=ds=#s12#, #a3#", "", "25%" },
			{ 4,  37171, "", "=q4=Flame-Bathed Steel Girdle",      "=ds=#s10#, #a4#", "", "25%" },
			{ 5,  37172, "", "=q4=Gloves of Glistening Runes",     "=ds=#s9#, #a1#",  "", "25%" },
			{ 6,  37170, "", "=q4=Interwoven Scale Bracers",       "=ds=#s8#, #a3#",  "", "25%" },
			{ 7,  37166, "", "=q3=Sphere of Red Dragon's Blood",   "=ds=#s14#",       "", "25%" },
			{ 8,  37169, "", "=q4=War Mace of Unrequited Love",    "=ds=#h3#, #w6#",  "", "25%" },
			{ 10, 43665, "", "=q1=Keristrasza's Broken Heart",     "=ds=#m3#",        "", "100%" },
			{ 16, 41794, "", "=q3=Design: Deadly Monarch Topaz",   "=ds=#p12# (390)", "", "100%" },
			{ 18, 43102, "", "=q3=Frozen Orb",                     "=ds=#e6#",        "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Keristrasza"],
		module = moduleName,
		instance = "TheNexus",
	},
};

Synastria_Data["TheNexusTrash"] = {
	["Normal"] = {
		{
			{ 1, 37365, "", "=q3=Bands of the Sky Ring",    "=ds=#s8#, #a3#", "", "0.1%" },
			{ 2, 37366, "", "=q3=Drake-Champion's Bracers", "=ds=#s8#, #a2#", "", "0.1%" },
			{ 3, 37364, "", "=q3=Frostbridge Orb",          "=ds=#s15#",      "", "0.1%" },
		},
	},
	info = {
		name = AL["Trash Mobs"],
		module = moduleName,
		instance = "TheNexus",
	},
};

-------------------
--- Azjol-Nerub ---
-------------------

Synastria_Data["AzjolNerubKrikthirTheGatewatcher"] = {
	["Normal"] = {
		{
			{ 1, 35656, "", "=q3=Aura Focused Gauntlets",          "=ds=#s9#, #a4#",  "", "33.3%" },
			{ 2, 35655, "", "=q3=Cobweb Machete",                  "=ds=#h1#, #w4#",  "", "33.3%" },
			{ 3, 35657, "", "=q3=Exquisite Spider-Silk Footwraps", "=ds=#s12#, #a1#", "", "33.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37219, "", "=q3=Custodian's Chestpiece",  "=ds=#s5#, #a2#",  "", "25%" },
			{ 2, 37216, "", "=q3=Facade Shield of Glyphs", "=ds=#w8#",        "", "25%" },
			{ 3, 37217, "", "=q3=Golden Limb Bands",       "=ds=#s8#, #a4#",  "", "25%" },
			{ 4, 37218, "", "=q3=Stone-Worn Footwraps",    "=ds=#s12#, #a1#", "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Krik'thir the Gatewatcher"],
		module = moduleName,
		instance = "AzjolNerub",
	},
};

Synastria_Data["AzjolNerubHadronox"] = {
	["Normal"] = {
		{
			{ 1, 35658, "", "=q3=Life-Staff of the Web Lair", "=ds=#w9#",        "", "33.3%" },
			{ 2, 35660, "", "=q3=Spinneret Epaulets",         "=ds=#s3#, #a2#",  "", "33.3%" },
			{ 3, 35659, "", "=q3=Treads of Aspiring Heights", "=ds=#s12#, #a2#", "", "33.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37222, "", "=q3=Egg Sac Robes",               "=ds=#s5#, #a1#",  "", "25%" },
			{ 2, 37220, "", "=q3=Essence of Gossamer",         "=ds=#s14#",       "", "25%" },
			{ 3, 37230, "", "=q3=Grotto Mist Gloves",          "=ds=#s9#, #a2#",  "", "25%" },
			{ 4, 37221, "", "=q3=Hollowed Mandible Legplates", "=ds=#s11#, #a3#", "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Hadronox"],
		module = moduleName,
		instance = "AzjolNerub",
	},
};

Synastria_Data["AzjolNerubAnubarak"] = {
	["Normal"] = {
		{
			{ 1, 35663, "", "=q3=Charmed Silken Cord",           "=ds=#s10#, #a1#", "", "33.3%" },
			{ 2, 35661, "", "=q3=Signet of Arachnathid Command", "=ds=#s13#",       "", "33.3%" },
			{ 3, 35662, "", "=q3=Wing Cover Girdle",             "=ds=#s10#, #a3#", "", "33.3%" },
			{ 5, 43411, "", "=q1=Anub'arak's Broken Husk",       "=ds=#m3#",        "", "100%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  37241, "", "=q4=Ancient Aligned Girdle",      "=ds=#s10#, #a4#", "", "25%" },
			{ 2,  37237, "", "=q3=Chitin Shell Greathelm",      "=ds=#s1#, #a4#",  "", "25%" },
			{ 3,  37235, "", "=q3=Crypt Lord's Deft Blade",     "=ds=#h1#, #w10#", "", "25%" },
			{ 4,  37240, "", "=q4=Flamebeard's Bracers",        "=ds=#s8#, #a4#",  "", "25%" },
			{ 5,  37236, "", "=q3=Insect Vestments",            "=ds=#s5#, #a2#",  "", "25%" },
			{ 6,  37232, "", "=q3=Ring of the Traitor King",    "=ds=#s13#",       "", "25%" },
			{ 7,  37238, "", "=q4=Rod of the Fallen Monarch",   "=ds=#w12#",       "", "25%" },
			{ 8,  37242, "", "=q4=Sash of the Servant",         "=ds=#s10#, #a1#", "", "25%" },
			{ 10, 43411, "", "=q1=Anub'arak's Broken Husk",     "=ds=#m3#",        "", "100%" },
			{ 11, 43726, "", "=q1=The Idle Crown of Anub'arak", "=ds=#m3#",        "", "100%" },
			{ 16, 43102, "", "=q3=Frozen Orb",                  "=ds=#e6#",        "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Anub'arak"],
		module = moduleName,
		instance = "AzjolNerub",
	},
};

Synastria_Data["AzjolNerubTrash"] = {
	["Normal"] = {
		{
			{ 1, 37624, "", "=q3=Stained-Glass Shard Ring", "=ds=#s13#",       "", "0.1%" },
			{ 2, 37243, "", "=q3=Treasure Seeker's Belt",   "=ds=#s10#, #a2#", "", "0.1%" },
			{ 3, 37625, "", "=q3=Web Winder Gloves",        "=ds=#s9#, #a4#",  "", "0.1%" },
		},
	},
	info = {
		name = AL["Trash Mobs"],
		module = moduleName,
		instance = "AzjolNerub",
	},
};

----------------------------------
--- Ahn'kahet: The Old Kingdom ---
----------------------------------

Synastria_Data["AhnkahetElderNadox"] = {
	["Normal"] = {
		{
			{ 1, 35607, "", "=q3=Ahn'kahar Handwraps", "=ds=#s9#, #a2#",  "", "33.3%" },
			{ 2, 35606, "", "=q3=Blade of Nadox",      "=ds=#h1#, #w4#",  "", "33.3%" },
			{ 3, 35608, "", "=q3=Crawler-Emblem Belt", "=ds=#s10#, #a4#", "", "33.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37592, "", "=q3=Brood Plague Helmet",    "=ds=#s1#, #a3#", "", "25%" },
			{ 2, 37594, "", "=q3=Elder Headpiece",        "=ds=#s1#, #a1#", "", "25%" },
			{ 3, 37591, "", "=q3=Nerubian Shield Ring",   "=ds=#s13#",      "", "25%" },
			{ 4, 37593, "", "=q3=Sprinting Shoulderpads", "=ds=#s3#, #a2#", "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Elder Nadox"],
		module = moduleName,
		instance = "AhnKahet",
	},
};

Synastria_Data["AhnkahetPrinceTaldaram"] = {
	["Normal"] = {
		{
			{ 1, 35611, "", "=q3=Gloves of the Blood Prince",  "=ds=#s9#, #a1#",                             "", "33.3%" },
			{ 2, 35610, "", "=q3=Slasher's Amulet",            "=ds=#s2#",                                   "", "33.3%" },
			{ 3, 35609, "", "=q3=Talisman of Scourge Command", "=ds=#s15#",                                  "", "33.3%" },
			{ 5, 44731, "", "=q2=Bouquet of Ebon Roses",       "=ds=#s15# =q1=" .. AL["Love is in the Air"], "", "50%" },
			{ 6, 22206, "", "=q2=Bouquet of Red Roses",        "=ds=#s15# =q1=" .. AL["Love is in the Air"], "", "50%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37612, "", "=q3=Bonegrinder Breastplate",           "=ds=#s5#, #a4#",                             "", "25%" },
			{ 2, 37613, "", "=q3=Flame Sphere Bindings",             "=ds=#s8#, #a1#",                             "", "25%" },
			{ 3, 37614, "", "=q3=Gauntlets of the Plundering Geist", "=ds=#s9#, #a3#",                             "", "25%" },
			{ 4, 37595, "", "=q3=Necklace of Taldaram",              "=ds=#s2#",                                   "", "25%" },
			{ 6, 44731, "", "=q2=Bouquet of Ebon Roses",             "=ds=#s15# =q1=" .. AL["Love is in the Air"], "", "50%" },
			{ 7, 22206, "", "=q2=Bouquet of Red Roses",              "=ds=#s15# =q1=" .. AL["Love is in the Air"], "", "50%" },
		},
	},
	info = {
		name = BabbleBoss["Prince Taldaram"],
		module = moduleName,
		instance = "AhnKahet",
	},
};

Synastria_Data["AhnkahetAmanitar"] = {
	["Heroic"] = {
		{
			{ 1, 43284, "", "=q3=Amanitar Skullbow",             "=ds=#w3#",        "", "25%" },
			{ 2, 43285, "", "=q3=Amulet of the Spell Flinger",   "=ds=#s2#",        "", "25%" },
			{ 3, 43286, "", "=q3=Legguards of Swarming Attacks", "=ds=#s11#, #a2#", "", "25%" },
			{ 4, 43287, "", "=q3=Silken Bridge Handwraps",       "=ds=#s9#, #a1#",  "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Amanitar"],
		module = moduleName,
		instance = "AhnKahet",
	},
};

Synastria_Data["AhnkahetJedogaShadowseeker"] = {
	["Normal"] = {
		{
			{ 1, 43279, "", "=q3=Battlechest of the Twilight Cult", "=ds=#s5#, #a4#",                                    "", "33.3%" },
			{ 2, 43278, "", "=q3=Cloak of the Darkcaster",          "=ds=#s4#",                                          "", "33.3%" },
			{ 3, 43277, "", "=q3=Jedoga's Greatring",               "=ds=#s13#",                                         "", "33.3%" },
			{ 5, 21524, "", "=q2=Red Winter Hat",                   "=ds=#s1#, #a1# =q1=" .. AL["Feast of Winter Veil"], "", "100%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 43281, "", "=q3=Edge of Oblivion",              "=ds=#h2#, #w1#",                                    "", "25%" },
			{ 2, 43280, "", "=q3=Faceguard of the Hammer Clan",  "=ds=#s1#, #a4#",                                    "", "25%" },
			{ 3, 43282, "", "=q3=Shadowseeker's Pendant",        "=ds=#s2#",                                          "", "25%" },
			{ 4, 43283, "", "=q3=Subterranean Waterfall Shroud", "=ds=#s4#",                                          "", "25%" },
			{ 6, 21524, "", "=q2=Red Winter Hat",                "=ds=#s1#, #a1# =q1=" .. AL["Feast of Winter Veil"], "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Jedoga Shadowseeker"],
		module = moduleName,
		instance = "AhnKahet",
	},
};

Synastria_Data["AhnkahetHeraldVolazj"] = {
	["Normal"] = {
		{
			{ 1, 35612, "", "=q3=Mantle of Echoing Bats", "=ds=#s3#, #a1#",  "", "33.3%" },
			{ 2, 35613, "", "=q3=Pyramid Embossed Belt",  "=ds=#s10#, #a2#", "", "33.3%" },
			{ 3, 35614, "", "=q3=Volazj's Sabatons",      "=ds=#s12#, #a4#", "", "33.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  37620, "", "=q4=Bracers of the Herald",         "=ds=#s8#, #a4#",  "", "25%" },
			{ 2,  37623, "", "=q4=Fiery Obelisk Handguards",      "=ds=#s9#, #a3#",  "", "25%" },
			{ 3,  37618, "", "=q3=Greaves of Ancient Evil",       "=ds=#s12#, #a4#", "", "25%" },
			{ 4,  37616, "", "=q3=Kilt of the Forgotten One",     "=ds=#s11#, #a2#", "", "25%" },
			{ 5,  37622, "", "=q4=Skirt of the Old Kingdom",      "=ds=#s11#, #a1#", "", "25%" },
			{ 6,  37617, "", "=q3=Staff of Sinister Claws",       "=ds=#w9#",        "", "25%" },
			{ 7,  37615, "", "=q3=Titanium Compound Bow",         "=ds=#w2#",        "", "25%" },
			{ 8,  37619, "", "=q4=Wand of Ahn'kahet",             "=ds=#w12#",       "", "25%" },
			{ 10, 43821, "", "=q1=Faceless One's Withered Brain", "=ds=#m3#",        "", "100%" },
			{ 16, 41790, "", "=q3=Design: Precise Scarlet Ruby",  "=ds=#p12# (390)", "", "100%" },
			{ 18, 43102, "", "=q3=Frozen Orb",                    "=ds=#e6#",        "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Herald Volazj"],
		module = moduleName,
		instance = "AhnKahet",
	},
};

Synastria_Data["AhnkahetTrash"] = {
	["Normal"] = {
		{
			{ 1, 35615, "", "=q3=Glowworm Cavern Bindings",  "=ds=#s8#, #a3#", "", "~1.75%" },
			{ 2, 35616, "", "=q3=Spored Tendrils Spaulders", "=ds=#s3#, #a3#", "", "~1.8%" },
			{ 3, 37624, "", "=q3=Stained-Glass Shard Ring",  "=ds=#s13#",      "", "0.1%" },
			{ 4, 37625, "", "=q3=Web Winder Gloves",         "=ds=#s9#, #a4#", "", "0.1%" },
		},
	},
	info = {
		name = AL["Trash Mobs"],
		module = moduleName,
		instance = "AhnKahet",
	},
};

------------------------
--- Drak'Tharon Keep ---
------------------------

Synastria_Data["DrakTharonKeepTrollgore"] = {
	["Normal"] = {
		{
			{ 1, 35620, "", "=q3=Berserker's Horns",             "=ds=#s1#, #a2#",  "", "33.3%" },
			{ 2, 35619, "", "=q3=Infection Resistant Legguards", "=ds=#s11#, #a3#", "", "33.3%" },
			{ 3, 35618, "", "=q3=Troll Butcherer",               "=ds=#h2#, #w10#", "", "33.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37714, "", "=q3=Batrider's Cord",               "=ds=#s10#, #a2#", "", "25%" },
			{ 2, 37715, "", "=q3=Cowl of the Dire Troll",        "=ds=#s1#, #a1#",  "", "25%" },
			{ 3, 37717, "", "=q3=Legs of Physical Regeneration", "=ds=#s11#, #a4#", "", "25%" },
			{ 4, 37712, "", "=q3=Terrace Defence Boots",         "=ds=#s12#, #a4#", "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Trollgore"],
		module = moduleName,
		instance = "DrakTharonKeep",
	},
};

Synastria_Data["DrakTharonKeepNovosTheSummoner"] = {
	["Normal"] = {
		{
			{ 1, 35631, "", "=q3=Crystal Pendant of Warding", "=ds=#s2#",       "", "33.3%" },
			{ 2, 35632, "", "=q3=Robes of Novos",             "=ds=#s5#, #a1#", "", "33.3%" },
			{ 3, 35630, "", "=q3=Summoner's Stone Gavel",     "=ds=#h1#, #w6#", "", "33.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37722, "", "=q3=Breastplate of Undeath",  "=ds=#s5#, #a4#",  "", "25%" },
			{ 2, 37721, "", "=q3=Cursed Lich Blade",       "=ds=#h3#, #w10#", "", "25%" },
			{ 3, 40490, "", "=q3=Necromantic Wristguards", "=ds=#s8#, #a3#",  "", "25%" },
			{ 4, 37718, "", "=q3=Temple Crystal Fragment", "=ds=#s15#",       "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Novos the Summoner"],
		module = moduleName,
		instance = "DrakTharonKeep",
	},
};

Synastria_Data["DrakTharonKeepKingDred"] = {
	["Normal"] = {
		{
			{ 1, 35634, "", "=q3=Scabrous-Hide Helm",         "=ds=#s1#, #a2#",  "", "33.3%" },
			{ 2, 35635, "", "=q3=Stable Master's Breeches",   "=ds=#s11#, #a1#", "", "33.3%" },
			{ 3, 35633, "", "=q3=Staff of the Great Reptile", "=ds=#w9#",        "", "33.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37724, "", "=q3=Handler's Arm Strap", "=ds=#s8#, #a2#", "", "25%" },
			{ 2, 37723, "", "=q3=Incisor Fragment",    "=ds=#s14#",      "", "25%" },
			{ 3, 37726, "", "=q3=King Dred's Helm",    "=ds=#s1#, #a3#", "", "25%" },
			{ 4, 37725, "", "=q3=Savage Wound Wrap",   "=ds=#s8#, #a1#", "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["King Dred"],
		module = moduleName,
		instance = "DrakTharonKeep",
	},
};

Synastria_Data["DrakTharonKeepTheProphetTharonja"] = {
	["Normal"] = {
		{
			{ 1, 35638, "", "=q3=Helmet of Living Flesh", "=ds=#s1#, #a3#",  "", "33.3%" },
			{ 2, 35637, "", "=q3=Muradin's Lost Greaves", "=ds=#s11#, #a4#", "", "33.3%" },
			{ 3, 35636, "", "=q3=Tharon'ja's Aegis",      "=ds=#w8#",        "", "33.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  37784, "", "=q4=Keystone Great-Ring",            "=ds=#s13#",       "", "25%" },
			{ 2,  37791, "", "=q4=Leggings of the Winged Serpent", "=ds=#s11#, #a2#", "", "25%" },
			{ 3,  37788, "", "=q4=Limb Regeneration Bracers",      "=ds=#s8#, #a3#",  "", "25%" },
			{ 4,  37733, "", "=q3=Mojo Masked Crusher",            "=ds=#h2#, #w6#",  "", "25%" },
			{ 5,  37798, "", "=q4=Overlook Handguards",            "=ds=#s9#, #a1#",  "", "25%" },
			{ 6,  37732, "", "=q3=Spectral Seal of the Prophet",   "=ds=#s13#",       "", "25%" },
			{ 7,  37734, "", "=q3=Talisman of Troll Divinity",     "=ds=#s14#",       "", "25%" },
			{ 8,  37735, "", "=q3=Ziggurat Imprinted Chestguard",  "=ds=#s5#, #a4#",  "", "25%" },
			{ 10, 43670, "", "=q1=Prophet's Enchanted Tiki",       "=ds=#m3#",        "", "100%" },
			{ 16, 41795, "", "=q3=Design: Timeless Twilight Opal", "=ds=#p12# (390)", "", "100%" },
			{ 18, 43102, "", "=q3=Frozen Orb",                     "=ds=#e6#",        "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["The Prophet Tharon'ja"],
		module = moduleName,
		instance = "DrakTharonKeep",
	},
};

Synastria_Data["DrakTharonKeepTrash"] = {
	["Normal"] = {
		{
			{ 1, 37800, "", "=q3=Aviary Guardsman's Hauberk",     "=ds=#s5#, #a3#",  "", "0.1%" },
			{ 2, 35639, "", "=q3=Brighthelm of Guarding",         "=ds=#s1#, #a4#",  "", "~1.8%" },
			{ 3, 35640, "", "=q3=Darkweb Bindings",               "=ds=#s8#, #a3#",  "", "~1.6%" },
			{ 4, 37799, "", "=q3=Reanimator's Cloak",             "=ds=#s4#",        "", "0.1%" },
			{ 5, 35641, "", "=q3=Scytheclaw Boots",               "=ds=#s12#, #a2#", "", "~1.4%" },
			{ 6, 37801, "", "=q3=Waistguard of the Risen Knight", "=ds=#s10#, #a4#", "", "0.1%" },
		},
	},
	info = {
		name = AL["Trash Mobs"],
		module = moduleName,
		instance = "DrakTharonKeep",
	},
};

-----------------------
--- The Violet Hold ---
-----------------------

Synastria_Data["TheVioletHoldErekem"] = {
	["Normal"] = {
		{
			{ 1, 43363, "", "=q3=Screeching Cape",         "=ds=#s4#",        "", "50%" },
			{ 2, 43375, "", "=q3=Trousers of the Arakkoa", "=ds=#s11#, #a1#", "", "50%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 43406, "", "=q3=Cloak of the Gushing Wound", "=ds=#s4#",        "", "33.3%" },
			{ 2, 43405, "", "=q3=Sabatons of Erekem",         "=ds=#s12#, #a4#", "", "33.3%" },
			{ 3, 43407, "", "=q3=Stormstrike Mace",           "=ds=#h1#, #w6#",  "", "33.3%" },
		},
	},
	info = {
		name = BabbleBoss["Erekem"],
		module = moduleName,
		instance = "VioletHold",
	},
};

Synastria_Data["TheVioletHoldIchoron"] = {
	["Normal"] = {
		{
			{ 1, 35647, "", "=q3=Handguards of Rapid Pursuit", "=ds=#s9#, #a2#", "", "50%" },
			{ 2, 35643, "", "=q3=Spaulders of Ichoron",        "=ds=#s3#, #a4#", "", "50%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37862, "", "=q3=Gauntlets of the Water Revenant", "=ds=#s9#, #a4#", "", "33.3%" },
			{ 2, 37869, "", "=q3=Globule Signet",                  "=ds=#s13#",      "", "33.3%" },
			{ 3, 43401, "", "=q3=Water-Drenched Robe",             "=ds=#s5#, #a1#", "", "33.3%" },
		},
	},
	info = {
		name = BabbleBoss["Ichoron"],
		module = moduleName,
		instance = "VioletHold",
	},
};

Synastria_Data["TheVioletHoldLavanthor"] = {
	["Normal"] = {
		{
			{ 1, 35646, "", "=q3=Lava Burn Gloves",        "=ds=#s9#, #a1#", "", "50%" },
			{ 2, 35645, "", "=q3=Prison Warden's Shotgun", "=ds=#w5#",       "", "50%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37872, "", "=q3=Lavanthor's Talisman", "=ds=#s14#",       "", "33.3%" },
			{ 2, 37871, "", "=q3=The Key",              "=ds=#h1#, #w1#",  "", "33.3%" },
			{ 3, 37870, "", "=q3=Twin-Headed Boots",    "=ds=#s12#, #a3#", "", "33.3%" },
		},
	},
	info = {
		name = BabbleBoss["Lavanthor"],
		module = moduleName,
		instance = "VioletHold",
	},
};

Synastria_Data["TheVioletHoldMoragg"] = {
	["Normal"] = {
		{
			{ 1, 43382, "", "=q3=Band of Eyes",                   "=ds=#s13#",      "", "50%" },
			{ 2, 43387, "", "=q3=Shoulderplates of the Beholder", "=ds=#s3#, #a4#", "", "50%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 43410, "", "=q3=Moragg's Chestguard",          "=ds=#s5#, #a3#", "", "33.3%" },
			{ 2, 43409, "", "=q3=Saliva Corroded Pike",         "=ds=#w7#",       "", "33.3%" },
			{ 3, 43408, "", "=q3=Solitare of Reflecting Beams", "=ds=#s13#",      "", "33.3%" },
		},
	},
	info = {
		name = BabbleBoss["Moragg"],
		module = moduleName,
		instance = "VioletHold",
	},
};

Synastria_Data["TheVioletHoldXevozz"] = {
	["Normal"] = {
		{
			{ 1, 35642, "", "=q3=Riot Shield",   "=ds=#w8#",        "", "50%" },
			{ 2, 35644, "", "=q3=Xevozz's Belt", "=ds=#s10#, #a3#", "", "50%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37867, "", "=q3=Footwraps of Teleportation", "=ds=#s12#, #a1#", "", "33.3%" },
			{ 2, 37868, "", "=q3=Girdle of the Ethereal",     "=ds=#s10#, #a3#", "", "33.3%" },
			{ 3, 37861, "", "=q3=Necklace of Arcane Spheres", "=ds=#s2#",        "", "33.3%" },
		},
	},
	info = {
		name = BabbleBoss["Xevozz"],
		module = moduleName,
		instance = "VioletHold",
	},
};

Synastria_Data["TheVioletHoldZuramatTheObliterator"] = {
	["Normal"] = {
		{
			{ 1, 43358, "", "=q3=Pendant of Shadow Beams", "=ds=#s2#",        "", "50%" },
			{ 2, 43353, "", "=q3=Void Sentry Legplates",   "=ds=#s11#, #a4#", "", "50%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 43403, "", "=q3=Shroud of Darkness",      "=ds=#s1#, #a2#",  "", "33.3%" },
			{ 2, 43402, "", "=q3=The Obliterator Greaves", "=ds=#s12#, #a4#", "", "33.3%" },
			{ 3, 43404, "", "=q3=Zuramat's Necklace",      "=ds=#s2#",        "", "33.3%" },
		},
	},
	info = {
		name = BabbleBoss["Zuramat the Obliterator"],
		module = moduleName,
		instance = "VioletHold",
	},
};

Synastria_Data["TheVioletHoldCyanigosa"] = {
	["Normal"] = {
		{
			{ 1, 35650, "", "=q3=Boots of the Portal Guardian", "=ds=#s12#, #a3#", "", "33.3%" },
			{ 2, 35649, "", "=q3=Jailer's Baton",               "=ds=#w9#",        "", "33.3%" },
			{ 3, 35651, "", "=q3=Plate Claws of the Dragon",    "=ds=#s9#, #a4#",  "", "33.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  37884, "", "=q4=Azure Cloth Bindings",             "=ds=#s8#, #a1#",  "", "25%" },
			{ 2,  43500, "", "=q4=Bolstered Legplates",              "=ds=#s11#, #a4#", "", "25%" },
			{ 3,  37876, "", "=q3=Cyanigosa's Leggings",             "=ds=#s11#, #a1#", "", "25%" },
			{ 4,  37874, "", "=q3=Gauntlets of Capture",             "=ds=#s9#, #a4#",  "", "25%" },
			{ 5,  37886, "", "=q4=Handgrips of the Savage Emissary", "=ds=#s9#, #a3#",  "", "25%" },
			{ 6,  37873, "", "=q3=Mark of the War Prisoner",         "=ds=#s14#",       "", "25%" },
			{ 7,  37875, "", "=q3=Spaulders of the Violet Hold",     "=ds=#s3#, #a3#",  "", "25%" },
			{ 8,  37883, "", "=q4=Staff of Trickery",                "=ds=#w9#",        "", "25%" },
			{ 10, 43823, "", "=q1=Head of Cyanigosa",                "=ds=#m3#",        "", "100%" },
			{ 16, 41791, "", "=q3=Design: Thick Autumn's Glow",      "=ds=#p12# (390)", "", "100%" },
			{ 18, 43102, "", "=q3=Frozen Orb",                       "=ds=#e6#",        "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Cyanigosa"],
		module = moduleName,
		instance = "VioletHold",
	},
};

Synastria_Data["TheVioletHoldTrash"] = {
	["Normal"] = {
		{
			{ 1, 35654, "", "=q3=Bindings of the Bastille",      "=ds=#s8#, #a1#",  "", "~1.35%" },
			{ 2, 37890, "", "=q3=Chain Gang Legguards",          "=ds=#s11#, #a2#", "", "0.1%" },
			{ 3, 35653, "", "=q3=Girdle of the Mystical Prison", "=ds=#s10#, #a4#", "", "~1.25%" },
			{ 4, 35652, "", "=q3=Incessant Torch",               "=ds=#w12#",       "", "~1.15%" },
			{ 5, 37889, "", "=q3=Prison Manifest",               "=ds=#s15#",       "", "0.1%" },
		},
	},
	info = {
		name = AL["Trash Mobs"],
		module = moduleName,
		instance = "VioletHold",
	},
};

---------------
--- Gundrak ---
---------------

Synastria_Data["GundrakMoorabi"] = {
	["Normal"] = {
		{
			{ 1, 35589, "", "=q3=Arcane Focal Signet",          "=ds=#s13#",      "", "33.3%" },
			{ 2, 35588, "", "=q3=Forlorn Breastplate of War",   "=ds=#s5#, #a4#", "", "33.3%" },
			{ 3, 35587, "", "=q3=Frozen Scepter of Necromancy", "=ds=#h3#, #w6#", "", "33.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37631, "", "=q3=Fist of the Deity",   "=ds=#h3#, #w13#", "", "25%" },
			{ 2, 37633, "", "=q3=Ground Tremor Helm",  "=ds=#s1#, #a4#",  "", "25%" },
			{ 3, 37632, "", "=q3=Mojo Frenzy Greaves", "=ds=#s12#, #a4#", "", "25%" },
			{ 4, 37630, "", "=q3=Shroud of Moorabi",   "=ds=#s4#",        "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Moorabi"],
		module = moduleName,
		instance = "Gundrak",
	},
};

Synastria_Data["GundrakEckTheFerocious"] = {
	["Heroic"] = {
		{
			{ 1, 43310, "", "=q3=Engraved Chestplate of Eck",    "=ds=#s5#, #a4#",  "", "25%" },
			{ 2, 43312, "", "=q3=Gorloc Muddy Footwraps",        "=ds=#s12#, #a2#", "", "25%" },
			{ 3, 43311, "", "=q3=Helmet of the Shrine",          "=ds=#s1#, #a3#",  "", "25%" },
			{ 4, 43313, "", "=q3=Leggings of the Ruins Dweller", "=ds=#s11#, #a1#", "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Eck the Ferocious"],
		module = moduleName,
		instance = "Gundrak",
	},
};

Synastria_Data["GundrakDrakkariColossus"] = {
	["Normal"] = {
		{
			{ 1, 35590, "", "=q3=Drakkari Hunting Bow",            "=ds=#w2#",       "", "33.3%" },
			{ 2, 35592, "", "=q3=Hauberk of Totemic Mastery",      "=ds=#s5#, #a3#", "", "33.3%" },
			{ 3, 35591, "", "=q3=Shoulderguards of the Ice Troll", "=ds=#s3#, #a2#", "", "33.3%" },
			{ 5, 43158, "", "=q1=Drakkari Colossus Fragment",      "=ds=#m3#",       "", "100%" },
		}
	},
	["Heroic"] = {
		{
			{ 1, 37634, "", "=q3=Bracers of the Divine Elemental", "=ds=#s8#, #a2#",  "", "25%" },
			{ 2, 37636, "", "=q3=Helm of Cheated Fate",            "=ds=#s1#, #a2#",  "", "25%" },
			{ 3, 37637, "", "=q3=Living Mojo Belt",                "=ds=#s10#, #a1#", "", "25%" },
			{ 4, 37635, "", "=q3=Pauldrons of the Colossus",       "=ds=#s3#, #a4#",  "", "25%" },
			{ 6, 43158, "", "=q1=Drakkari Colossus Fragment",      "=ds=#m3#",        "", "100%" },
		}
	},
	info = {
		name = BabbleBoss["Drakkari Colossus"],
		module = moduleName,
		instance = "Gundrak",
	},
};

Synastria_Data["GundrakSladran"] = {
	["Normal"] = {
		{
			{ 1, 35585, "", "=q3=Cannibal's Legguards",         "=ds=#s11#, #a3#", "", "33.3%" },
			{ 2, 35584, "", "=q3=Embroidered Gown of Zul'Drak", "=ds=#s5#, #a1#",  "", "33.3%" },
			{ 3, 35583, "", "=q3=Witch Doctor's Wildstaff",     "=ds=#w9#",        "", "33.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37628, "", "=q3=Slad'ran's Coiled Cord", "=ds=#s10#, #a3#", "", "25%" },
			{ 2, 37629, "", "=q3=Slithering Slippers",    "=ds=#s12#, #a1#", "", "25%" },
			{ 3, 37627, "", "=q3=Snake Den Spaulders",    "=ds=#s3#, #a4#",  "", "25%" },
			{ 4, 37626, "", "=q3=Wand of Sseratus",       "=ds=#w12#",       "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Slad'ran"],
		module = moduleName,
		instance = "Gundrak",
	},
};

Synastria_Data["GundrakGaldarah"] = {
	["Normal"] = {
		{
			{ 1, 43309, "", "=q3=Amulet of the Stampede", "=ds=#s2#",  "", "33.3%" },
			{ 2, 43306, "", "=q3=Gal'darah's Signet",     "=ds=#s13#", "", "33.3%" },
			{ 3, 43305, "", "=q3=Shroud of Akali",        "=ds=#s4#",  "", "33.3%" },
		}
	},
	["Heroic"] = {
		{
			{ 1,  37641, "", "=q3=Arcane Flame Altar-Garb", "=ds=#s5#, #a1#",  "", "25%" },
			{ 2,  37640, "", "=q3=Boots of Transformation", "=ds=#s12#, #a2#", "", "25%" },
			{ 3,  37644, "", "=q4=Gored Hide Legguards",    "=ds=#s11#, #a2#", "", "25%" },
			{ 4,  37639, "", "=q3=Grips of the Beast God",  "=ds=#s9#, #a3#",  "", "25%" },
			{ 5,  37642, "", "=q4=Hemorrhaging Circle",     "=ds=#s13#",       "", "25%" },
			{ 6,  37645, "", "=q4=Horn-Tipped Gauntlets",   "=ds=#s9#, #a4#",  "", "25%" },
			{ 7,  37638, "", "=q3=Offering of Sacrifice",   "=ds=#s14#",       "", "25%" },
			{ 8,  37643, "", "=q4=Sash of Blood Removal",   "=ds=#s10#, #a2#", "", "25%" },
			{ 10, 43693, "", "=q1=Mojo Remnant of Akali",   "=ds=#m3#",        "", "100%" },
			{ 16, 43102, "", "=q3=Frozen Orb",              "=ds=#e6#",        "", "100%" },
		}
	},
	info = {
		name = BabbleBoss["Gal'darah"],
		module = moduleName,
		instance = "Gundrak",
	},
};

Synastria_Data["GundrakTrash"] = {
	["Normal"] = {
		{
			{ 1, 37648, "", "=q3=Belt of Tasseled Lanterns", "=ds=#s10#, #a3#", "", "0.1%" },
			{ 2, 37646, "", "=q3=Burning Skull Pendant",     "=ds=#s2#",        "", "0.1%" },
			{ 3, 37647, "", "=q3=Cloak of Bloodied Waters",  "=ds=#s4#",        "", "0.1%" },
			{ 4, 35593, "", "=q3=Steel Bear Trap Bracers",   "=ds=#s8#, #a4#",  "", "~1.75%" },
			{ 5, 35594, "", "=q3=Snowmelt Silken Cinch",     "=ds=#s10#, #a1#", "", "~4.05%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37648, "", "=q3=Belt of Tasseled Lanterns", "=ds=#s10#, #a3#", "", "0.1%" },
			{ 2, 37646, "", "=q3=Burning Skull Pendant",     "=ds=#s2#",        "", "0.1%" },
			{ 3, 37647, "", "=q3=Cloak of Bloodied Waters",  "=ds=#s4#",        "", "0.1%" },
			{ 4, 35593, "", "=q3=Steel Bear Trap Bracers",   "=ds=#s8#, #a4#",  "", "~1.75%" },
			{ 5, 35594, "", "=q3=Snowmelt Silken Cinch",     "=ds=#s10#, #a1#", "", "~4.05%" },
		},
	},
	info = {
		name = BabbleBoss["Gundrak Trash"],
		module = moduleName,
		instance = "Gundrak",
	},
};

----------------------
--- Halls of Stone ---
----------------------

Synastria_Data["HallsOfStoneKrystallus"] = {
	["Normal"] = {
		{
			{ 1, 35670, "", "=q3=Brann's Lost Mining Helmet", "=ds=#s1#, #a4#",  "", "33.3%" },
			{ 2, 35672, "", "=q3=Hollow Geode Helm",          "=ds=#s1#, #a3#",  "", "33.3%" },
			{ 3, 35673, "", "=q3=Leggings of Burning Gleam",  "=ds=#s11#, #a1#", "", "33.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37650, "", "=q3=Shardling Legguards",     "=ds=#s11#, #a4#", "", "33.3%" },
			{ 2, 37652, "", "=q3=Spaulders of Krystallus", "=ds=#s3#, #a2#",  "", "33.3%" },
			{ 3, 37651, "", "=q3=The Prospector's Prize",  "=ds=#s13#",       "", "33.3%" },
		},
	},
	info = {
		name = BabbleBoss["Krystallus"],
		module = moduleName,
		instance = "UlduarHallsofStone",
	},
};

Synastria_Data["HallsOfStoneMaidenOfGrief"] = {
	["Normal"] = {
		{
			{ 1, 38613, "", "=q3=Chain of Fiery Orbs",   "=ds=#s2#",                                   "", "33.3%" },
			{ 2, 38614, "", "=q3=Embrace of Sorrow",     "=ds=#s4#",                                   "", "33.3%" },
			{ 3, 38611, "", "=q3=Ringlet of Repose",     "=ds=#s13#",                                  "", "33.3%" },
			{ 5, 44731, "", "=q2=Bouquet of Ebon Roses", "=ds=#s15# =q1=" .. AL["Love is in the Air"], "", "50%" },
			{ 6, 22206, "", "=q2=Bouquet of Red Roses",  "=ds=#s15# =q1=" .. AL["Love is in the Air"], "", "50%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 38618, "", "=q3=Hammer of Grief",          "=ds=#h2#, #w6#",                             "", "25%" },
			{ 2, 38615, "", "=q3=Lightning-Charged Gloves", "=ds=#s9#, #a3#",                             "", "25%" },
			{ 3, 38616, "", "=q3=Maiden's Girdle",          "=ds=#s10#, #a2#",                            "", "25%" },
			{ 4, 38617, "", "=q3=Woeful Band",              "=ds=#s13#",                                  "", "25%" },
			{ 6, 44731, "", "=q2=Bouquet of Ebon Roses",    "=ds=#s15# =q1=" .. AL["Love is in the Air"], "", "50%" },
			{ 7, 22206, "", "=q2=Bouquet of Red Roses",     "=ds=#s15# =q1=" .. AL["Love is in the Air"], "", "50%" },
		},
	},
	info = {
		name = BabbleBoss["Maiden of Grief"],
		module = moduleName,
		instance = "UlduarHallsofStone",
	},
};

Synastria_Data["HallsOfStoneTribunalOfTheAges"] = {
	["Normal"] = {
		{
			{ 1, 35676, "", "=q3=Constellation Leggings",     "=ds=#s11#, #a2#", "", "33.3%" },
			{ 2, 35677, "", "=q3=Cosmos Vestments",           "=ds=#s5#, #a2#",  "", "33.3%" },
			{ 3, 35675, "", "=q3=Linked Armor of the Sphere", "=ds=#s5#, #a3#",  "", "33.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37655, "", "=q3=Mantle of the Tribunal", "=ds=#s3#, #a1#",  "", "25%" },
			{ 2, 37656, "", "=q3=Raging Construct Bands", "=ds=#s8#, #a3#",  "", "25%" },
			{ 3, 37654, "", "=q3=Sabatons of the Ages",   "=ds=#s12#, #a3#", "", "25%" },
			{ 4, 37653, "", "=q3=Sword of Justice",       "=ds=#h2#, #w10#", "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["The Tribunal of Ages"],
		module = moduleName,
		instance = "UlduarHallsofStone",
	},
};

Synastria_Data["HallsOfStoneSjonnirTheIronshaper"] = {
	["Normal"] = {
		{
			{ 1, 35680, "", "=q3=Amulet of Wills",        "=ds=#s2#",        "", "33.3%" },
			{ 2, 35678, "", "=q3=Ironshaper's Legplates", "=ds=#s11#, #a4#", "", "33.3%" },
			{ 3, 35679, "", "=q3=Static Cowl",            "=ds=#s1#, #a1#",  "", "33.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  37668, "", "=q4=Bands of the Stoneforge",     "=ds=#s8#, #a4#",  "", "25%" },
			{ 2,  37666, "", "=q3=Boots of the Whirling Mist",  "=ds=#s12#, #a2#", "", "25%" },
			{ 3,  37660, "", "=q3=Forge Ember",                 "=ds=#s14#",       "", "25%" },
			{ 4,  37669, "", "=q4=Leggings of the Stone Halls", "=ds=#s11#, #a3#", "", "25%" },
			{ 5,  37670, "", "=q4=Sjonnir's Girdle",            "=ds=#s10#, #a4#", "", "25%" },
			{ 6,  37657, "", "=q3=Spark of Life",               "=ds=#s14#",       "", "25%" },
			{ 7,  37658, "", "=q3=Sun-Emblazoned Chestplate",   "=ds=#s5#, #a4#",  "", "25%" },
			{ 8,  37667, "", "=q4=The Fleshshaper",             "=ds=#h1#, #w4#",  "", "25%" },
			{ 10, 43699, "", "=q1=The Curse of Flesh Disc",     "=ds=#m3#",        "", "100%" },
			{ 16, 41792, "", "=q3=Design: Deft Monarch Topaz",  "=ds=#p12# (390)", "", "100%" },
			{ 18, 43102, "", "=q3=Frozen Orb",                  "=ds=#e6#",        "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Sjonnir The Ironshaper"],
		module = moduleName,
		instance = "UlduarHallsofStone",
	},
};

Synastria_Data["HallsOfStoneTrash"] = {
	["Normal"] = {
		{
			{ 1, 37673, "", "=q3=Dark Runic Mantle",         "=ds=#s3#, #a1#", "", "0.1%" },
			{ 2, 35683, "", "=q3=Palladium Ring",            "=ds=#s13#",      "", "~1.65%" },
			{ 3, 37672, "", "=q3=Patina-Coated Breastplate", "=ds=#s5#, #a4#", "", "0.1%" },
			{ 4, 37671, "", "=q3=Refined Ore Gloves",        "=ds=#s9#, #a4#", "", "0.1%" },
			{ 5, 35682, "", "=q3=Rune Giant Bindings",       "=ds=#s8#, #a1#", "", "~1.2%" },
			{ 6, 35681, "", "=q3=Unrelenting Blade",         "=ds=#h1#, #w4#", "", "~1.35%" },
		},
	},
	info = {
		name = AL["Trash Mobs"],
		module = moduleName,
		instance = "UlduarHallsofStone",
	},
};

--------------------------
--- Halls of Lightning ---
--------------------------

Synastria_Data["HallsOfLightningGeneralBjarngrim"] = {
	["Normal"] = {
		{
			{ 1, 36979, "", "=q3=Bjarngrim Family Signet",      "=ds=#s13#",      "", "25%" },
			{ 2, 36981, "", "=q3=Hardened Vrykul Throwing Axe", "=ds=#w11#",      "", "25%" },
			{ 3, 36980, "", "=q3=Hewn Sparring Quarterstaff",   "=ds=#w9#",       "", "25%" },
			{ 4, 36982, "", "=q3=Mantle of Electrical Charges", "=ds=#s3#, #a1#", "", "25%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37814, "", "=q3=Iron Dwarf Smith Pauldrons",    "=ds=#s3#, #a4#",  "", "25%" },
			{ 2, 37818, "", "=q3=Patroller's War-Kilt",          "=ds=#s11#, #a3#", "", "25%" },
			{ 3, 37826, "", "=q3=The General's Steel Girdle",    "=ds=#s10#, #a4#", "", "25%" },
			{ 4, 37825, "", "=q3=Traditionally Dyed Handguards", "=ds=#s9#, #a1#",  "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["General Bjarngrim"],
		module = moduleName,
		instance = "UlduarHallsofLightning",
	},
};

Synastria_Data["HallsOfLightningVolkhan"] = {
	["Normal"] = {
		{
			{ 1, 36983, "", "=q3=Cape of Seething Steam", "=ds=#s4#",        "", "25%" },
			{ 2, 36984, "", "=q3=Eternally Folded Blade", "=ds=#h1#, #w10#", "", "25%" },
			{ 3, 36986, "", "=q3=Kilt of Molten Golems",  "=ds=#s11#, #a3#", "", "25%" },
			{ 4, 36985, "", "=q3=Volkhan's Hood",         "=ds=#s1#, #a1#",  "", "25%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37842, "", "=q3=Belt of Vivacity",        "=ds=#s10#, #a2#", "", "25%" },
			{ 2, 37843, "", "=q3=Giant-Hair Woven Gloves", "=ds=#s9#, #a1#",  "", "25%" },
			{ 3, 37840, "", "=q3=Shroud of Reverberation", "=ds=#s4#",        "", "25%" },
			{ 4, 37841, "", "=q3=Slag Footguards",         "=ds=#s12#, #a2#", "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Volkhan"],
		module = moduleName,
		instance = "UlduarHallsofLightning",
	},
};

Synastria_Data["HallsOfLightningIonar"] = {
	["Normal"] = {
		{
			{ 1, 39535, "", "=q3=Ionar's Girdle",                      "=ds=#s10#, #a4#", "", "25%" },
			{ 2, 39534, "", "=q3=Pauldrons of the Lightning Revenant", "=ds=#s3#, #a4#",  "", "25%" },
			{ 3, 39536, "", "=q3=Thundercloud Grasps",                 "=ds=#s9#, #a1#",  "", "25%" },
			{ 4, 39657, "", "=q3=Tornado Cuffs",                       "=ds=#s8#, #a3#",  "", "25%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37846, "", "=q3=Charged-Bolt Grips",     "=ds=#s9#, #a2#",  "", "25%" },
			{ 2, 37845, "", "=q3=Cord of Swirling Winds", "=ds=#s10#, #a3#", "", "25%" },
			{ 3, 37847, "", "=q3=Skywall Striders",       "=ds=#s12#, #a4#", "", "25%" },
			{ 4, 37844, "", "=q3=Winged Talisman",        "=ds=#s14#",       "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Ionar"],
		module = moduleName,
		instance = "UlduarHallsofLightning",
	},
};

Synastria_Data["HallsOfLightningLoken"] = {
	["Normal"] = {
		{
			{ 1,  36989, "", "=q3=Ancient Measuring Rod",              "=ds=#w12#",       "", "12.5%" },
			{ 2,  36988, "", "=q3=Chaotic Spiral Amulet",              "=ds=#s2#",        "", "12.5%" },
			{ 3,  36995, "", "=q3=Fists of Loken",                     "=ds=#s9#, #a4#",  "", "12.5%" },
			{ 4,  36996, "", "=q3=Hood of the Furtive Assassin",       "=ds=#s1#, #a2#",  "", "12.5%" },
			{ 5,  36992, "", "=q3=Leather-Braced Chain Leggings",      "=ds=#s11#, #a3#", "", "12.5%" },
			{ 6,  36994, "", "=q3=Projectile Activator",               "=ds=#w5#",        "", "12.5%" },
			{ 7,  36991, "", "=q3=Raiments of the Titans",             "=ds=#s5#, #a1#",  "", "12.5%" },
			{ 8,  36993, "", "=q3=Seal of the Pantheon",               "=ds=#s14#",       "", "12.5%" },
			{ 10, 43151, "", "=q1=Loken's Tongue",                     "=ds=#m3#",        "", "100%" },
			{ 16, 41799, "", "=q3=Design: Eternal Earthsiege Diamond", "=ds=#p12# (420)", "", "100%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  37853, "", "=q4=Advanced Tooled-Leather Bands",      "=ds=#s8#, #a2#",  "", "25%" },
			{ 2,  37852, "", "=q4=Colossal Skull-Clad Cleaver",        "=ds=#h2#, #w1#",  "", "25%" },
			{ 3,  37850, "", "=q3=Flowing Sash of Order",              "=ds=#s10#, #a1#", "", "25%" },
			{ 4,  37848, "", "=q3=Lightning Giant Staff",              "=ds=#w9#",        "", "25%" },
			{ 5,  37855, "", "=q4=Mail Girdle of the Audient Earth",   "=ds=#s10#, #a3#", "", "25%" },
			{ 6,  37851, "", "=q3=Ornate Woolen Stola",                "=ds=#s5#, #a1#",  "", "25%" },
			{ 7,  37849, "", "=q3=Planetary Helm",                     "=ds=#s1#, #a4#",  "", "25%" },
			{ 8,  37854, "", "=q4=Woven Bracae Leggings",              "=ds=#s11#, #a1#", "", "25%" },
			{ 10, 43151, "", "=q1=Loken's Tongue",                     "=ds=#m3#",        "", "100%" },
			{ 11, 43724, "", "=q1=Celestial Ruby Ring",                "=ds=#m3#",        "", "100%" },
			{ 16, 41799, "", "=q3=Design: Eternal Earthsiege Diamond", "=ds=#p12# (420)", "", "100%" },
			{ 18, 43102, "", "=q3=Frozen Orb",                         "=ds=#e6#",        "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Loken"],
		module = moduleName,
		instance = "UlduarHallsofLightning",
	},
};

Synastria_Data["HallsOfLightningTrash"] = {
	["Normal"] = {
		{
			{ 1, 37858, "", "=q3=Awakened Handguards",               "=ds=#s9#, #a2#",  "", "0.1%" },
			{ 2, 36999, "", "=q3=Boots of the Terrestrial Guardian", "=ds=#s12#, #a3#", "", "~1.9%" },
			{ 3, 37857, "", "=q3=Helm of the Lightning Halls",       "=ds=#s1#, #a3#",  "", "0.1%" },
			{ 4, 37856, "", "=q3=Librarian's Paper Cutter",          "=ds=#h1#, #w4#",  "", "0.1%" },
			{ 5, 36997, "", "=q3=Sash of the Hardened Watcher",      "=ds=#s10#, #a1#", "", "~1.6%" },
			{ 6, 37000, "", "=q3=Storming Vortex Bracers",           "=ds=#s8#, #a2#",  "", "~1.6%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37858, "", "=q3=Awakened Handguards",               "=ds=#s9#, #a2#",  "", "0.1%" },
			{ 2, 36999, "", "=q3=Boots of the Terrestrial Guardian", "=ds=#s12#, #a3#", "", "~1.9%" },
			{ 3, 37857, "", "=q3=Helm of the Lightning Halls",       "=ds=#s1#, #a3#",  "", "0.1%" },
			{ 4, 37856, "", "=q3=Librarian's Paper Cutter",          "=ds=#h1#, #w4#",  "", "0.1%" },
			{ 5, 36997, "", "=q3=Sash of the Hardened Watcher",      "=ds=#s10#, #a1#", "", "~1.6%" },
			{ 6, 37000, "", "=q3=Storming Vortex Bracers",           "=ds=#s8#, #a2#",  "", "~1.6%" },
		},
	},
	info = {
		name = BabbleBoss["HallsOfLightningTrash"],
		module = moduleName,
		instance = "UlduarHallsofLightning",
	},
};

--------------------------------------------------
--- Caverns of Time: The Culling of Stratholme ---
--------------------------------------------------

Synastria_Data["TheCullingOfStratholmeMeathook"] = {
	["Normal"] = {
		{
			{ 1, 37079, "", "=q3=Enchanted Wire Stitching", "=ds=#s13#",       "", "25%" },
			{ 2, 37083, "", "=q3=Kilt of Sewn Flesh",       "=ds=#s11#, #a2#", "", "25%" },
			{ 3, 37081, "", "=q3=Meathook's Slicer",        "=ds=#h1#, #w10#", "", "25%" },
			{ 4, 37082, "", "=q3=Slaughterhouse Sabatons",  "=ds=#s12#, #a4#", "", "25%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37680, "", "=q3=Belt of Unified Souls",        "=ds=#s10#, #a1#", "", "25%" },
			{ 2, 37678, "", "=q3=Bile-Cured Gloves",            "=ds=#s9#, #a2#",  "", "25%" },
			{ 3, 37675, "", "=q3=Legplates of Steel Implants",  "=ds=#s11#, #a4#", "", "25%" },
			{ 4, 37679, "", "=q3=Spaulders of the Abomination", "=ds=#s3#, #a3#",  "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Meathook"],
		module = moduleName,
		instance = "CoTCullingOfStratholme",
	},
};

Synastria_Data["TheCullingOfStratholmeSalrammTheFleshcrafter"] = {
	["Normal"] = {
		{
			{ 1, 37084, "", "=q3=Flowing Cloak of Command",  "=ds=#s4#",        "", "25%" },
			{ 2, 37088, "", "=q3=Spiked Metal Cilice",       "=ds=#s10#, #a4#", "", "25%" },
			{ 3, 37086, "", "=q3=Tome of Salramm",           "=ds=#s15#",       "", "25%" },
			{ 4, 37095, "", "=q3=Waistband of the Thuzadin", "=ds=#s10#, #a3#", "", "25%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37682, "", "=q3=Bindings of Dark Will",     "=ds=#s8#, #a4#", "", "25%" },
			{ 2, 37684, "", "=q3=Forgotten Shadow Hood",     "=ds=#s1#, #a1#", "", "25%" },
			{ 3, 37681, "", "=q3=Gavel of the Fleshcrafter", "=ds=#h3#, #w6#", "", "25%" },
			{ 4, 37683, "", "=q3=Necromancer's Amulet",      "=ds=#s2#",       "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Salramm the Fleshcrafter"],
		module = moduleName,
		instance = "CoTCullingOfStratholme",
	},
};

Synastria_Data["TheCullingOfStratholmeChronoLordEpoch"] = {
	["Normal"] = {
		{
			{ 1, 37096, "", "=q3=Necklace of the Chrono-Lord", "=ds=#s2#",        "", "25%" },
			{ 2, 37106, "", "=q3=Ouroboros Belt",              "=ds=#s10#, #a2#", "", "25%" },
			{ 3, 37099, "", "=q3=Sempiternal Staff",           "=ds=#w9#",        "", "25%" },
			{ 4, 37105, "", "=q3=Treads of Altered History",   "=ds=#s12#, #a3#", "", "25%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37686, "", "=q3=Cracked Epoch Grasps",               "=ds=#s9#, #a3#",  "", "25%" },
			{ 2, 37687, "", "=q3=Gloves of Distorted Time",           "=ds=#s9#, #a1#",  "", "25%" },
			{ 3, 37688, "", "=q3=Legplates of the Infinite Drakonid", "=ds=#s11#, #a4#", "", "25%" },
			{ 4, 37685, "", "=q3=Mobius Band",                        "=ds=#s13#",       "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Chrono-Lord Epoch"],
		module = moduleName,
		instance = "CoTCullingOfStratholme",
	},
};

Synastria_Data["TheCullingOfStratholmeMalGanis"] = {
	["Normal"] = {
		{
			{ 1, 37112, "", "=q3=Beguiling Scepter",            "=ds=#h3#, #w6#",  "", "12.5%" },
			{ 2, 37113, "", "=q3=Demonic Fabric Bands",         "=ds=#s8#, #a1#",  "", "12.5%" },
			{ 3, 37108, "", "=q3=Dreadlord's Blade",            "=ds=#h2#, #w10#", "", "12.5%" },
			{ 4, 37110, "", "=q3=Gauntlets of Dark Conversion", "=ds=#s9#, #a3#",  "", "12.5%" },
			{ 5, 37114, "", "=q3=Gloves of Northern Lordaeron", "=ds=#s9#, #a2#",  "", "12.5%" },
			{ 6, 37107, "", "=q3=Leeka's Shield",               "=ds=#w8#",        "", "12.5%" },
			{ 7, 37111, "", "=q3=Soul Preserver",               "=ds=#s14#",       "", "12.5%" },
		}
	},
	["Heroic"] = {
		{
			{ 1,  37691, "", "=q3=Mantle of Deceit",                      "=ds=#s3#, #a1#",  "", "25%" },
			{ 2,  37690, "", "=q3=Pauldrons of Destiny",                  "=ds=#s3#, #a4#",  "", "25%" },
			{ 3,  37689, "", "=q3=Pendant of the Nathrezim",              "=ds=#s2#",        "", "25%" },
			{ 4,  37692, "", "=q3=Pierce's Pistol",                       "=ds=#w5#",        "", "25%" },
			{ 5,  37694, "", "=q4=Band of Guile",                         "=ds=#s13#",       "", "20%" },
			{ 6,  37693, "", "=q4=Greed",                                 "=ds=#h3#, #w13#", "", "20%" },
			{ 7,  37695, "", "=q4=Legguards of Nature's Power",           "=ds=#s11#, #a3#", "", "20%" },
			{ 8,  37696, "", "=q4=Plague-Infected Bracers",               "=ds=#s8#, #a2#",  "", "20%" },
			{ 9,  43085, "", "=q4=Royal Crest of Lordaeron",              "=ds=#w8#",        "", "20%" },
			{ 11, 43697, "", "=q1=Artifact from the Nathrezim Homeworld", "=ds=#m3#",        "", "100%" },
			{ 16, 43102, "", "=q3=Frozen Orb",                            "=ds=#e6#",        "", "100%" },
		}
	},
	info = {
		name = BabbleBoss["Mal'Ganis"],
		module = moduleName,
		instance = "CoTCullingOfStratholme",
	},
};

Synastria_Data["TheCullingOfStratholmeTrash"] = {
	["Normal"] = {
		{
			{ 1,  37115, "",           "=q3=Crusader's Square Pauldrons",          "=ds=#s3#, #a4#",      "", "~1.6%" },
			{ 2,  37116, "",           "=q3=Epaulets of Market Row",               "=ds=#s3#, #a3#",      "", "~1.45%" },
			{ 3,  37117, "",           "=q3=King's Square Bracers",                "=ds=#s8#, #a2#",      "", "~1.7%" },
			{ 16, 0,     "inv_box_04", "=q6=" .. BabbleBoss["Infinite Corruptor"], "#ACHIEVEMENTID:1817#" },
			{ 17, 43951, "",           "=q4=Reins of the Bronze Drake",            "=ds=#e27#",           "", "100%" },
		}
	},
	info = {
		name = AL["Trash Mobs"],
		module = moduleName,
		instance = "CoTCullingOfStratholme",
	},
};

------------------------
--- Utgarde Pinnacle ---
------------------------

Synastria_Data["UtgardePinnacleSvalaSorrowgrave"] = {
	["Normal"] = {
		{
			{ 1, 37038, "", "=q3=Brazier Igniter",           "=ds=#w12#",      "", "25%" },
			{ 2, 37037, "", "=q3=Ritualistic Athame",        "=ds=#h1#, #w4#", "", "25%" },
			{ 3, 37040, "", "=q3=Svala's Bloodied Shackles", "=ds=#s8#, #a4#", "", "25%" },
			{ 4, 37043, "", "=q3=Tear-Linked Gauntlets",     "=ds=#s9#, #a3#", "", "25%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37370, "", "=q3=Cuffs of the Trussed Hall",     "=ds=#s8#, #a1#",  "", "25%" },
			{ 2, 37367, "", "=q3=Echoing Stompers",              "=ds=#s12#, #a4#", "", "25%" },
			{ 3, 37368, "", "=q3=Silent Spectator Shoulderpads", "=ds=#s3#, #a2#",  "", "25%" },
			{ 4, 37369, "", "=q3=Sorrowgrave's Breeches",        "=ds=#s11#, #a1#", "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Svala Sorrowgrave"],
		module = moduleName,
		instance = "UtgardePinnacle",
	},
};

Synastria_Data["UtgardePinnacleGortokPalehoof"] = {
	["Normal"] = {
		{
			{ 1, 37052, "", "=q3=Reanimated Armor",       "=ds=#s5#, #a4#", "", "25%" },
			{ 2, 37051, "", "=q3=Seal of Valgarde",       "=ds=#s15#",      "", "25%" },
			{ 3, 37048, "", "=q3=Shroud of Resurrection", "=ds=#s4#",       "", "25%" },
			{ 4, 37050, "", "=q3=Trophy Gatherer",        "=ds=#w2#",       "", "25%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37376, "", "=q3=Ferocious Pauldrons of the Rhino",   "=ds=#s3#, #a4#",  "", "25%" },
			{ 2, 37373, "", "=q3=Massive Spaulders of the Jormungar", "=ds=#s3#, #a3#",  "", "25%" },
			{ 3, 37374, "", "=q3=Ravenous Leggings of the Furbolg",   "=ds=#s11#, #a2#", "", "25%" },
			{ 4, 37371, "", "=q3=Ring of the Frenzied Wolvar",        "=ds=#s13#",       "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Gortok Palehoof"],
		module = moduleName,
		instance = "UtgardePinnacle",
	},
};

Synastria_Data["UtgardePinnacleSkadiTheRuthless"] = {
	["Normal"] = {
		{
			{ 1, 37053, "", "=q3=Amulet of Deflected Blows",   "=ds=#s2#",        "", "25%" },
			{ 2, 37057, "", "=q3=Drake Rider's Tunic",         "=ds=#s5#, #a2#",  "", "25%" },
			{ 3, 37056, "", "=q3=Harpooner's Striders",        "=ds=#s12#, #a4#", "", "25%" },
			{ 4, 37055, "", "=q3=Silken Amice of the Ymirjar", "=ds=#s3#, #a1#",  "", "25%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37389, "", "=q3=Crenelation Leggings",          "=ds=#s11#, #a2#", "", "25%" },
			{ 2, 37377, "", "=q3=Netherbreath Spellblade",       "=ds=#h3#, #w4#",  "", "25%" },
			{ 3, 37379, "", "=q3=Skadi's Iron Belt",             "=ds=#s10#, #a4#", "", "25%" },
			{ 4, 37384, "", "=q3=Staff of Wayward Principles",   "=ds=#w9#",        "", "25%" },
			{ 6, 44151, "", "=q4=Reins of the Blue Proto-Drake", "=ds=#e27#",       "", "1.5%" },
		},
	},
	info = {
		name = BabbleBoss["Skadi the Ruthless"],
		module = moduleName,
		instance = "UtgardePinnacle",
	},
};

Synastria_Data["UtgardePinnacleKingYmiron"] = {
	["Normal"] = {
		{
			{ 1,  37066, "", "=q3=Ancient Royal Legguards",            "=ds=#s11#, #a4#", "", "12.5%" },
			{ 2,  37067, "", "=q3=Ceremonial Pyre Mantle",             "=ds=#s3#, #a2#",  "", "12.5%" },
			{ 3,  37062, "", "=q3=Crown of Forgotten Kings",           "=ds=#s1#, #a4#",  "", "12.5%" },
			{ 4,  37060, "", "=q3=Jeweled Coronation Sword",           "=ds=#h3#, #w10#", "", "12.5%" },
			{ 5,  37058, "", "=q3=Signet of Ranulf",                   "=ds=#s13#",       "", "12.5%" },
			{ 6,  37061, "", "=q3=Tor's Crest",                        "=ds=#w8#",        "", "12.5%" },
			{ 7,  37064, "", "=q3=Vestige of Haldor",                  "=ds=#s14#",       "", "12.5%" },
			{ 8,  37065, "", "=q3=Ymiron's Blade",                     "=ds=#h1#, #w10#", "", "12.5%" },
			{ 16, 41797, "", "=q3=Design: Austere Earthsiege Diamond", "=ds=#p12# (420)", "", "100%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  37409, "", "=q4=Gilt-Edged Leather Gauntlets",       "=ds=#s9#, #a2#",  "", "25%" },
			{ 3,  37408, "", "=q4=Girdle of Bane",                     "=ds=#s10#, #a1#", "", "25%" },
			{ 2,  37397, "", "=q3=Gold Amulet of Kings",               "=ds=#s2#",        "", "25%" },
			{ 4,  37398, "", "=q3=Mantle of Discarded Ways",           "=ds=#s3#, #a3#",  "", "25%" },
			{ 5,  37390, "", "=q3=Meteorite Whetstone",                "=ds=#s14#",       "", "25%" },
			{ 6,  37395, "", "=q3=Ornamented Plate Regalia",           "=ds=#s5#, #a4#",  "", "25%" },
			{ 7,  37401, "", "=q4=Red Sword of Courage",               "=ds=#h1#, #w10#", "", "25%" },
			{ 8,  37407, "", "=q4=Sovereign's Belt",                   "=ds=#s10#, #a3#", "", "25%" },
			{ 10, 43669, "", "=q1=Locket of the Deceased Queen",       "=ds=#m3#",        "", "100%" },
			{ 16, 41797, "", "=q3=Design: Austere Earthsiege Diamond", "=ds=#p12# (420)", "", "100%" },
			{ 18, 43102, "", "=q3=Frozen Orb",                         "=ds=#e6#",        "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["King Ymiron"],
		module = moduleName,
		instance = "UtgardePinnacle",
	},
};

Synastria_Data["UtgardePinnacleTrash"] = {
	["Normal"] = {
		{
			{ 1, 37590, "", "=q3=Bands of Fading Light",        "=ds=#s8#, #a4#",  "", "0.1%" },
			{ 2, 37068, "", "=q3=Berserker's Sabatons",         "=ds=#s12#, #a4#", "", "~1.245%" },
			{ 3, 37069, "", "=q3=Dragonflayer Seer's Bindings", "=ds=#s8#, #a3#",  "", "~1.295%" },
			{ 4, 37070, "", "=q3=Tundra Wolf Boots",            "=ds=#s12#, #a2#", "", "~1.045%" },
			{ 5, 37587, "", "=q3=Ymirjar Physician's Robe",     "=ds=#s5#, #a2#",  "", "0.1%" },
		},
	},
	info = {
		name = AL["Trash Mobs"],
		module = moduleName,
		instance = "UtgardePinnacle",
	},
};

------------------
--- The Oculus ---
------------------

Synastria_Data["TheOculusDrakosTheInterrogator"] = {
	["Normal"] = {
		{
			{ 1, 36944, "", "=q3=Lifeblade of Belgaristrasz",  "=ds=#h1#, #w4#", "", "25%" },
			{ 2, 36946, "", "=q3=Runic Cage Chestpiece",       "=ds=#s5#, #a3#", "", "25%" },
			{ 3, 36943, "", "=q3=Timeless Beads of Eternos",   "=ds=#s2#",       "", "25%" },
			{ 4, 36945, "", "=q3=Verdisa's Cuffs of Dreaming", "=ds=#s8#, #a1#", "", "25%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37257, "", "=q3=Band of Torture",        "=ds=#s13#",       "", "25%" },
			{ 2, 37258, "", "=q3=Drakewing Raiments",     "=ds=#s5#, #a1#",  "", "25%" },
			{ 3, 37256, "", "=q3=Scaled Armor of Drakos", "=ds=#s5#, #a3#",  "", "25%" },
			{ 4, 37255, "", "=q3=The Interrogator",       "=ds=#h1#, #w10#", "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Drakos the Interrogator"],
		module = moduleName,
		instance = "The Oculus",
	},
};

Synastria_Data["TheOculusVarosCloudstrider"] = {
	["Normal"] = {
		{
			{ 1, 36947, "", "=q3=Centrifuge Core Cloak",        "=ds=#s4#",       "", "25%" },
			{ 2, 36949, "", "=q3=Gloves of the Azure-Lord",     "=ds=#s9#, #a1#", "", "25%" },
			{ 3, 36948, "", "=q3=Horned Helm of Varos",         "=ds=#s1#, #a2#", "", "25%" },
			{ 4, 36950, "", "=q3=Wing Commander's Breastplate", "=ds=#s5#, #a4#", "", "25%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37262, "", "=q3=Azure Ringmail Leggings",          "=ds=#s11#, #a3#", "", "25%" },
			{ 2, 37260, "", "=q3=Cloudstrider's Waraxe",            "=ds=#h1#, #w1#",  "", "25%" },
			{ 3, 37261, "", "=q3=Gloves of Radiant Light",          "=ds=#s9#, #a2#",  "", "25%" },
			{ 4, 37263, "", "=q3=Legplates of the Oculus Guardian", "=ds=#s11#, #a4#", "", "25%" },
		},
	},
	info = {
		name = BabbleBoss["Varos Cloudstrider"],
		module = moduleName,
		instance = "TheOculus",
	},
};

Synastria_Data["TheOculusMageLordUrom"] = {
	["Normal"] = {
		{
			{ 1, 36952, "", "=q3=Girdle of Obscuring",             "=ds=#s10#, #a4#",                                   "", "25%" },
			{ 2, 36951, "", "=q3=Sidestepping Handguards",         "=ds=#s9#, #a2#",                                    "", "25%" },
			{ 3, 36953, "", "=q3=Spaulders of Skillful Maneuvers", "=ds=#s3#, #a3#",                                    "", "25%" },
			{ 4, 36954, "", "=q3=The Conjurer's Slippers",         "=ds=#s12#, #a1#",                                   "", "25%" },
			{ 6, 21525, "", "=q2=Green Winter Hat",                "=ds=#s1#, #a1# =q1=" .. AL["Feast of Winter Veil"], "", "100%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 37195, "", "=q3=Band of Enchanted Growth",      "=ds=#s13#",                                         "", "25%" },
			{ 2, 37288, "", "=q3=Catalytic Bands",               "=ds=#s8#, #a4#",                                    "", "25%" },
			{ 3, 37264, "", "=q3=Pendulum of Telluric Currents", "=ds=#s14#",                                         "", "25%" },
			{ 4, 37289, "", "=q3=Sash of Phantasmal Images",     "=ds=#s10#, #a1#",                                   "", "25%" },
			{ 6, 21525, "", "=q2=Green Winter Hat",              "=ds=#s1#, #a1# =q1=" .. AL["Feast of Winter Veil"], "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Mage-Lord Urom"],
		module = moduleName,
		instance = "TheOculus",
	},
};

Synastria_Data["TheOculusLeyGuardianEregos"] = {
	["Normal"] = {
		{
			{ 1,  36961, "", "=q3=Dragonflight Great-Ring",            "=ds=#s13#",       "", "12.5%" },
			{ 2,  36974, "", "=q3=Eregos' Ornamented Chestguard",      "=ds=#s5#, #a4#",  "", "12.5%" },
			{ 3,  36971, "", "=q3=Headguard of Westrift",              "=ds=#s1#, #a3#",  "", "12.5%" },
			{ 4,  36969, "", "=q3=Helm of the Ley-Guardian",           "=ds=#s1#, #a4#",  "", "12.5%" },
			{ 5,  36975, "", "=q3=Malygos's Favor",                    "=ds=#w9#",        "", "12.5%" },
			{ 6,  36972, "", "=q3=Tome of Arcane Phenomena",           "=ds=#s14#",       "", "12.5%" },
			{ 7,  36973, "", "=q3=Vestments of the Scholar",           "=ds=#s5#, #a1#",  "", "12.5%" },
			{ 8,  36962, "", "=q3=Wyrmclaw Battleaxe",                 "=ds=#h2#, #w1#",  "", "12.5%" },
			{ 16, 41798, "", "=q3=Design: Bracing Earthsiege Diamond", "=ds=#p12# (420)", "", "100%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  37291, "", "=q3=Ancient Dragon Spirit Cape",         "=ds=#s4#",                           "", "25%" },
			{ 2,  37294, "", "=q3=Crown of Unbridled Magic",           "=ds=#s1#, #a1#",                     "", "25%" },
			{ 3,  37361, "", "=q4=Cuffs of Winged Levitation",         "=ds=#s8#, #a1#",                     "", "25%" },
			{ 4,  37363, "", "=q4=Gauntlets of Dragon Wrath",          "=ds=#s9#, #a4#",                     "", "25%" },
			{ 5,  37362, "", "=q4=Leggings of Protective Auras",       "=ds=#s11#, #a4#",                    "", "25%" },
			{ 6,  37292, "", "=q3=Ley-Guardian's Legguards",           "=ds=#s11#, #a4#",                    "", "25%" },
			{ 7,  37293, "", "=q3=Mask of the Watcher",                "=ds=#s1#, #a2#",                     "", "25%" },
			{ 8,  37360, "", "=q4=Staff of Draconic Combat",           "=ds=#w9#",                           "", "25%" },
			{ 10, 43668, "", "=q1=Ley Line Tuner",                     "=ds=#m3#",                           "", "100%" },
			{ 16, 41798, "", "=q3=Design: Bracing Earthsiege Diamond", "=ds=#p12# (420)",                    "", "100%" },
			{ 18, 43102, "", "=q3=Frozen Orb",                         "=ds=#e6#",                           "", "100%" },
			{ 20, 52676, "", "=q2=Cache of the Ley-Guardian",          "=ds=" .. AL["Random Heroic Reward"], "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Ley-Guardian Eregos"],
		module = moduleName,
		instance = "TheOculus",
	},
};

Synastria_Data["TheOculusTrash"] = {
	["Normal"] = {
		{
			{ 1, 37365, "", "=q3=Bands of the Sky Ring",     "=ds=#s8#, #a3#",  "", "0.1%" },
			{ 2, 36977, "", "=q3=Bindings of the Construct", "=ds=#s8#, #a4#",  "", "~1.8%" },
			{ 3, 37366, "", "=q3=Drake-Champion's Bracers",  "=ds=#s8#, #a2#",  "", "0.1%" },
			{ 4, 37364, "", "=q3=Frostbridge Orb",           "=ds=#s15#",       "", "0.1%" },
			{ 5, 36978, "", "=q3=Ley-Whelphide Belt",        "=ds=#s10#, #a2#", "", "~1.35%" },
			{ 6, 36976, "", "=q3=Ring-Lord's Leggings",      "=ds=#s11#, #a1#", "", "~1.55%" },
		},
	},
	info = {
		name = AL["Trash Mobs"],
		module = moduleName,
		instance = "TheOculus",
	},
};

-------------------------
--- Vault of Archavon ---
-------------------------

Synastria_Data["Archavon"] = {
	["Normal"] = {
		{
			{ 1,  39617, "", "=q4=Heroes' Scourgeborne Battleplate",          "=ds=#s5#, #a4#",  "", "0.99%" },
			{ 2,  39618, "", "=q4=Heroes' Scourgeborne Gauntlets",            "=ds=#s9#, #a4#",  "", "0.99%" },
			{ 3,  39620, "", "=q4=Heroes' Scourgeborne Legplates",            "=ds=#s11#, #a4#", "", "0.99%" },
			{ 4,  39623, "", "=q4=Heroes' Scourgeborne Chestguard",           "=ds=#s5#, #a4#",  "", "0.99%" },
			{ 5,  39624, "", "=q4=Heroes' Scourgeborne Handguards",           "=ds=#s9#, #a4#",  "", "0.99%" },
			{ 6,  39626, "", "=q4=Heroes' Scourgeborne Legguards",            "=ds=#s11#, #a4#", "", "0.99%" },
			{ 7, 40781, "", "=q4=Hateful Gladiator's Dreadplate Chestpiece", "=ds=#s5#, #a4#",  "", "0.99%" },
			{ 8, 40803, "", "=q4=Hateful Gladiator's Dreadplate Gauntlets",  "=ds=#s9#, #a4#",  "", "0.99%" },
			{ 9, 40841, "", "=q4=Hateful Gladiator's Dreadplate Legguards",  "=ds=#s11#, #a4#", "", "0.99%" },
		},
		{
			{ 1,  39547, "", "=q4=Heroes' Dreamwalker Vestments",            "=ds=#s5#, #a2#",  "", "0.99%" },
			{ 2,  39544, "", "=q4=Heroes' Dreamwalker Gloves",               "=ds=#s9#, #a2#",  "", "0.99%" },
			{ 3,  39546, "", "=q4=Heroes' Dreamwalker Trousers",             "=ds=#s11#, #a2#", "", "0.99%" },
			{ 4,  39554, "", "=q4=Heroes' Dreamwalker Raiments",             "=ds=#s5#, #a2#",  "", "0.99%" },
			{ 5,  39557, "", "=q4=Heroes' Dreamwalker Handgrips",            "=ds=#s9#, #a2#",  "", "0.99%" },
			{ 6,  39555, "", "=q4=Heroes' Dreamwalker Legguards",            "=ds=#s11#, #a2#", "", "0.99%" },
			{ 7,  39538, "", "=q4=Heroes' Dreamwalker Robe",                 "=ds=#s5#, #a2#",  "", "0.99%" },
			{ 8,  39543, "", "=q4=Heroes' Dreamwalker Handguards",           "=ds=#s9#, #a2#",  "", "0.99%" },
			{ 9,  39539, "", "=q4=Heroes' Dreamwalker Leggings",             "=ds=#s11#, #a2#", "", "0.99%" },
			{ 10, 41314, "", "=q4=Hateful Gladiator's Wyrmhide Robes",       "=ds=#s5#, #a2#",  "", "0.99%" },
			{ 11, 41291, "", "=q4=Hateful Gladiator's Wyrmhide Gloves",      "=ds=#s9#, #a2#",  "", "0.99%" },
			{ 12, 41302, "", "=q4=Hateful Gladiator's Wyrmhide Legguards",   "=ds=#s11#, #a2#", "", "0.99%" },
			{ 13, 41659, "", "=q4=Hateful Gladiator's Dragonhide Robes",     "=ds=#s5#, #a2#",  "", "0.99%" },
			{ 14, 41771, "", "=q4=Hateful Gladiator's Dragonhide Gloves",    "=ds=#s9#, #a2#",  "", "0.99%" },
			{ 15, 41665, "", "=q4=Hateful Gladiator's Dragonhide Legguards", "=ds=#s11#, #a2#", "", "0.99%" },
			{ 16, 41308, "", "=q4=Hateful Gladiator's Kodohide Robes",       "=ds=#s5#, #a2#",  "", "0.99%" },
			{ 17, 41284, "", "=q4=Hateful Gladiator's Kodohide Gloves",      "=ds=#s9#, #a2#",  "", "0.99%" },
			{ 18, 41296, "", "=q4=Hateful Gladiator's Kodohide Legguards",   "=ds=#s11#, #a2#", "", "0.99%" },
		},
		{
			{ 1,  39579, "", "=q4=Heroes' Crypstalker Tunic",           "=ds=#s5#, #a3#",  "", "0.99%" },
			{ 2,  39582, "", "=q4=Heroes' Crypstalker Handguards",      "=ds=#s9#, #a3#",  "", "0.99%" },
			{ 3,  39580, "", "=q4=Heroes' Crypstalker Legguards",       "=ds=#s11#, #a3#", "", "0.99%" },
			{ 4,  39492, "", "=q4=Heroes' Frostfire Robe",              "=ds=#s5#, #a1#",  "", "0.99%" },
			{ 5,  39495, "", "=q4=Heroes' Frostfire Gloves",            "=ds=#s9#, #a1#",  "", "0.99%" },
			{ 6,  39493, "", "=q4=Heroes' Frostfire Leggings",          "=ds=#s11#, #a1#", "", "0.99%" },
			{ 7,  41085, "", "=q4=Hateful Gladiator's Chain Armor",     "=ds=#s5#, #a3#",  "", "0.99%" },
			{ 8,  41141, "", "=q4=Hateful Gladiator's Chain Gauntlets", "=ds=#s9#, #a3#",  "", "0.99%" },
			{ 9,  41203, "", "=q4=Hateful Gladiator's Chain Leggings",  "=ds=#s11#, #a3#", "", "0.99%" },
			{ 10, 41950, "", "=q4=Hateful Gladiator's Silk Raiment",    "=ds=#s5#, #a1#",  "", "0.99%" },
			{ 11, 41969, "", "=q4=Hateful Gladiator's Silk Handguards", "=ds=#s9#, #a1#",  "", "0.99%" },
			{ 12, 41957, "", "=q4=Hateful Gladiator's Silk Trousers",   "=ds=#s11#, #a1#", "", "0.99%" },
		},
		{
			{ 1,  39629, "", "=q4=Heroes' Redemption Tunic",                  "=ds=#s5#, #a4#",  "", "0.99%" },
			{ 2,  39632, "", "=q4=Heroes' Redemption Gloves",                 "=ds=#s9#, #a4#",  "", "0.99%" },
			{ 3,  39630, "", "=q4=Heroes' Redemption Greaves",                "=ds=#s11#, #a4#", "", "0.99%" },
			{ 4,  39633, "", "=q4=Heroes' Redemption Chestpiece",             "=ds=#s5#, #a4#",  "", "0.99%" },
			{ 5,  39634, "", "=q4=Heroes' Redemption Gauntlets",              "=ds=#s9#, #a4#",  "", "0.99%" },
			{ 6,  39636, "", "=q4=Heroes' Redemption Legplates",              "=ds=#s11#, #a4#", "", "0.99%" },
			{ 7,  39638, "", "=q4=Heroes' Redemption Breastplate",            "=ds=#s5#, #a4#",  "", "0.99%" },
			{ 8,  39639, "", "=q4=Heroes' Redemption Handguards",             "=ds=#s9#, #a4#",  "", "0.99%" },
			{ 9,  39641, "", "=q4=Heroes' Redemption Legguards",              "=ds=#s11#, #a4#", "", "0.99%" },
			{ 10, 40904, "", "=q4=Hateful Gladiator's Ornamented Chestguard", "=ds=#s5#, #a4#",  "", "0.99%" },
			{ 11, 40925, "", "=q4=Hateful Gladiator's Ornamented Gloves",     "=ds=#s9#, #a4#",  "", "0.99%" },
			{ 12, 40937, "", "=q4=Hateful Gladiator's Ornamented Legplates",  "=ds=#s11#, #a4#", "", "0.99%" },
			{ 13, 40782, "", "=q4=Hateful Gladiator's Scaled Chestpiece",     "=ds=#s5#, #a4#",  "", "0.99%" },
			{ 14, 40802, "", "=q4=Hateful Gladiator's Scaled Gauntlets",      "=ds=#s11#, #a4#", "", "0.99%" },
			{ 15, 40842, "", "=q4=Hateful Gladiator's Scaled Legguards",      "=ds=#s11#, #a4#", "", "0.99%" },
		},
		{
			{ 1,  39515, "", "=q4=Heroes' Robe of Faith",                  "=ds=#s5#, #a1#",  "", "0.99%" },
			{ 2,  39519, "", "=q4=Heroes' Gloves of Faith",                "=ds=#s9#, #a1#",  "", "0.99%" },
			{ 3,  39517, "", "=q4=Heroes' Leggings of Faith",              "=ds=#s11#, #a1#", "", "0.99%" },
			{ 4,  39523, "", "=q4=Heroes' Raiments of Faith",              "=ds=#s5#, #a1#",  "", "0.99%" },
			{ 5,  39530, "", "=q4=Heroes' Handwraps of Faith",             "=ds=#s9#, #a1#",  "", "0.99%" },
			{ 6,  39528, "", "=q4=Heroes' Pants of Faith",                 "=ds=#s11#, #a1#", "", "0.99%" },
			{ 7,  39558, "", "=q4=Heroes' Bonescythe Breastplate",         "=ds=#s5#, #a2#",  "", "0.99%" },
			{ 8,  39560, "", "=q4=Heroes' Bonescythe Gauntlets",           "=ds=#s9#, #a2#",  "", "0.99%" },
			{ 9,  39564, "", "=q4=Heroes' Bonescythe Legplates",           "=ds=#s11#, #a2#", "", "0.99%" },
			{ 10, 41857, "", "=q4=Hateful Gladiator's Mooncloth Robe",     "=ds=#s5#, #a1#",  "", "0.99%" },
			{ 11, 41872, "", "=q4=Hateful Gladiator's Mooncloth Gloves",   "=ds=#s9#, #a1#",  "", "0.99%" },
			{ 12, 41862, "", "=q4=Hateful Gladiator's Mooncloth Leggings", "=ds=#s11#, #a1#", "", "0.99%" },
			{ 13, 41919, "", "=q4=Hateful Gladiator's Satin Robe",         "=ds=#s5#, #a1#",  "", "0.99%" },
			{ 14, 41938, "", "=q4=Hateful Gladiator's Satin Gloves",       "=ds=#s9#, #a1#",  "", "0.99%" },
			{ 15, 41925, "", "=q4=Hateful Gladiator's Satin Leggings",     "=ds=#s11#, #a1#", "", "0.99%" },
			{ 16, 41648, "", "=q4=Hateful Gladiator's Leather Tunic",      "=ds=#s5#, #a2#",  "", "0.99%" },
			{ 17, 41765, "", "=q4=Hateful Gladiator's Leather Gloves",     "=ds=#s9#, #a2#",  "", "0.99%" },
			{ 18, 41653, "", "=q4=Hateful Gladiator's Leather Legguards",  "=ds=#s11#, #a2#", "", "0.99%" },
		},
		{
			{ 1,  39592, "", "=q4=Heroes' Earthshatter Hauberk",           "=ds=#s5#, #a3#",  "", "0.99%" },
			{ 2,  39593, "", "=q4=Heroes' Earthshatter Gloves",            "=ds=#s9#, #a3#",  "", "0.99%" },
			{ 3,  39595, "", "=q4=Heroes' Earthshatter Kilt",              "=ds=#s11#, #a3#", "", "0.99%" },
			{ 4,  39597, "", "=q4=Heroes' Earthshatter Chestguard",        "=ds=#s5#, #a3#",  "", "0.99%" },
			{ 5,  39601, "", "=q4=Heroes' Earthshatter Grips",             "=ds=#s9#, #a3#",  "", "0.99%" },
			{ 6,  39603, "", "=q4=Heroes' Earthshatter War-Kilt",          "=ds=#s11#, #a3#", "", "0.99%" },
			{ 7,  39588, "", "=q4=Heroes' Earthshatter Tunic",             "=ds=#s5#, #a3#",  "", "0.99%" },
			{ 8,  39591, "", "=q4=Heroes' Earthshatter Handguards",        "=ds=#s9#, #a3#",  "", "0.99%" },
			{ 9,  39589, "", "=q4=Heroes' Earthshatter Legguards",         "=ds=#s11#, #a3#", "", "0.99%" },
			{ 10, 40989, "", "=q4=Hateful Gladiator's Mail Armor",         "=ds=#s5#, #a3#",  "", "0.99%" },
			{ 11, 41005, "", "=q4=Hateful Gladiator's Mail Gauntlets",     "=ds=#s9#, #a3#",  "", "0.99%" },
			{ 12, 41031, "", "=q4=Hateful Gladiator's Mail Leggings",      "=ds=#s11#, #a3#", "", "0.99%" },
			{ 13, 41079, "", "=q4=Hateful Gladiator's Linked Armor",       "=ds=#s5#, #a3#",  "", "0.99%" },
			{ 14, 41135, "", "=q4=Hateful Gladiator's Linked Gauntlets",   "=ds=#s9#, #a3#",  "", "0.99%" },
			{ 15, 41162, "", "=q4=Hateful Gladiator's Linked Leggings",    "=ds=#s11#, #a3#", "", "0.99%" },
			{ 16, 40988, "", "=q4=Hateful Gladiator's Ringmail Armor",     "=ds=#s5#, #a3#",  "", "0.99%" },
			{ 17, 40999, "", "=q4=Hateful Gladiator's Ringmail Gauntlets", "=ds=#s9#, #a3#",  "", "0.99%" },
			{ 18, 41025, "", "=q4=Hateful Gladiator's Ringmail Leggings",  "=ds=#s11#, #a3#", "", "0.99%" },
		},
		{
			{ 1,  39497, "", "=q4=Heroes' Plagueheart Robe",                "=ds=#s5#, #a1#",  "", "0.99%" },
			{ 2,  39500, "", "=q4=Heroes' Plagueheart Gloves",              "=ds=#s9#, #a1#",  "", "0.99%" },
			{ 3,  39498, "", "=q4=Heroes' Plagueheart Leggings",            "=ds=#s11#, #a1#", "", "0.99%" },
			{ 4,  39606, "", "=q4=Heroes' Dreadnaught Battleplate",         "=ds=#s5#, #a4#",  "", "0.99%" },
			{ 5,  39609, "", "=q4=Heroes' Dreadnaught Gauntlets",           "=ds=#s9#, #a4#",  "", "0.99%" },
			{ 6,  39607, "", "=q4=Heroes' Dreadnaught Legplates",           "=ds=#s11#, #a4#", "", "0.99%" },
			{ 7,  39611, "", "=q4=Heroes' Dreadnaught Breastplate",         "=ds=#s5#, #a4#",  "", "0.99%" },
			{ 8,  39622, "", "=q4=Heroes' Dreadnaught Handguards",          "=ds=#s9#, #a4#",  "", "0.99%" },
			{ 9,  39612, "", "=q4=Heroes' Dreadnaught Legguards",           "=ds=#s11#, #a4#", "", "0.99%" },
			{ 10, 42001, "", "=q4=Hateful Gladiator's Felweave Raiment",    "=ds=#s5#, #a1#",  "", "0.99%" },
			{ 11, 42015, "", "=q4=Hateful Gladiator's Felweave Handguards", "=ds=#s9#, #a1#",  "", "0.99%" },
			{ 12, 42003, "", "=q4=Hateful Gladiator's Felweave Trousers",   "=ds=#s11#, #a1#", "", "0.99%" },
			{ 13, 40783, "", "=q4=Hateful Gladiator's Plate Chestpiece",    "=ds=#s5#, #a4#",  "", "0.99%" },
			{ 14, 40801, "", "=q4=Hateful Gladiator's Plate Gauntlets",     "=ds=#s9#, #a4#",  "", "0.99%" },
			{ 15, 40840, "", "=q4=Hateful Gladiator's Plate Legguards",     "=ds=#s11#, #a4#", "", "0.99%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  40550, "", "=q4=Valorous Scourgeborne Battleplate",        "=ds=#s5#, #a4#",  "", "0.95%" },
			{ 2,  40552, "", "=q4=Valorous Scourgeborne Gauntlets",          "=ds=#s9#, #a4#",  "", "0.95%" },
			{ 3,  40556, "", "=q4=Valorous Scourgeborne Legplates",          "=ds=#s11#, #a4#", "", "0.95%" },
			{ 4,  40559, "", "=q4=Valorous Scourgeborne Chestguard",         "=ds=#s5#, #a4#",  "", "0.95%" },
			{ 5,  40563, "", "=q4=Valorous Scourgeborne Handguards",         "=ds=#s9#, #a4#",  "", "0.95%" },
			{ 6,  40567, "", "=q4=Valorous Scourgeborne Legguards",          "=ds=#s11#, #a4#", "", "0.95%" },
			{ 7,  40784, "", "=q4=Deadly Gladiator's Dreadplate Chestpiece", "=ds=#s5#, #a4#",  "", "0.95%" },
			{ 8,  40806, "", "=q4=Deadly Gladiator's Dreadplate Gauntlets",  "=ds=#s9#, #a4#",  "", "0.95%" },
			{ 9,  40845, "", "=q4=Deadly Gladiator's Dreadplate Legguards",  "=ds=#s11#, #a4#", "", "0.95%" },
		},
		{
			{ 1,  40469, "", "=q4=Valorous Dreamwalker Vestments",          "=ds=#s5#, #a2#",  "", "0.95%" },
			{ 2,  40466, "", "=q4=Valorous Dreamwalker Gloves",             "=ds=#s9#, #a2#",  "", "0.95%" },
			{ 3,  40468, "", "=q4=Valorous Dreamwalker Trousers",           "=ds=#s11#, #a2#", "", "0.95%" },
			{ 4,  40471, "", "=q4=Valorous Dreamwalker Raiments",           "=ds=#s5#, #a2#",  "", "0.95%" },
			{ 5,  40472, "", "=q4=Valorous Dreamwalker Handgrips",          "=ds=#s9#, #a2#",  "", "0.95%" },
			{ 6,  40493, "", "=q4=Valorous Dreamwalker Legguards",          "=ds=#s11#, #a2#", "", "0.95%" },
			{ 7,  40463, "", "=q4=Valorous Dreamwalker Robe",               "=ds=#s5#, #a2#",  "", "0.95%" },
			{ 8,  40460, "", "=q4=Valorous Dreamwalker Handguards",         "=ds=#s9#, #a2#",  "", "0.95%" },
			{ 9,  40462, "", "=q4=Valorous Dreamwalker Leggings",           "=ds=#s11#, #a2#", "", "0.95%" },
			{ 10, 41315, "", "=q4=Deadly Gladiator's Wyrmhide Robes",       "=ds=#s5#, #a2#",  "", "0.95%" },
			{ 11, 41292, "", "=q4=Deadly Gladiator's Wyrmhide Gloves",      "=ds=#s9#, #a2#",  "", "0.95%" },
			{ 12, 41303, "", "=q4=Deadly Gladiator's Wyrmhide Legguards",   "=ds=#s11#, #a2#", "", "0.95%" },
			{ 13, 41660, "", "=q4=Deadly Gladiator's Dragonhide Robes",     "=ds=#s5#, #a2#",  "", "0.95%" },
			{ 14, 41772, "", "=q4=Deadly Gladiator's Dragonhide Gloves",    "=ds=#s9#, #a2#",  "", "0.95%" },
			{ 15, 41666, "", "=q4=Deadly Gladiator's Dragonhide Legguards", "=ds=#s11#, #a2#", "", "0.95%" },
			{ 16, 41309, "", "=q4=Deadly Gladiator's Kodohide Robes",       "=ds=#s5#, #a2#",  "", "0.95%" },
			{ 17, 41286, "", "=q4=Deadly Gladiator's Kodohide Gloves",      "=ds=#s9#, #a2#",  "", "0.95%" },
			{ 18, 41297, "", "=q4=Deadly Gladiator's Kodohide Legguards",   "=ds=#s11#, #a2#", "", "0.95%" },
		},
		{
			{ 1,  40503, "", "=q4=Valorous Crypstalker Tunic",         "=ds=#s5#, #a3#",  "", "0.95%" },
			{ 2,  40504, "", "=q4=Valorous Crypstalker Handguards",    "=ds=#s9#, #a3#",  "", "0.95%" },
			{ 3,  40506, "", "=q4=Valorous Crypstalker Legguards",     "=ds=#s11#, #a3#", "", "0.95%" },
			{ 4,  40418, "", "=q4=Valorous Frostfire Robe",            "=ds=#s5#, #a1#",  "", "0.95%" },
			{ 5,  40415, "", "=q4=Valorous Frostfire Gloves",          "=ds=#s9#, #a1#",  "", "0.95%" },
			{ 6,  40417, "", "=q4=Valorous Frostfire Leggings",        "=ds=#s11#, #a1#", "", "0.95%" },
			{ 7,  41086, "", "=q4=Deadly Gladiator's Chain Armor",     "=ds=#s5#, #a3#",  "", "0.95%" },
			{ 8,  41142, "", "=q4=Deadly Gladiator's Chain Gauntlets", "=ds=#s9#, #a3#",  "", "0.95%" },
			{ 9,  41204, "", "=q4=Deadly Gladiator's Chain Leggings",  "=ds=#s11#, #a3#", "", "0.95%" },
			{ 10, 41951, "", "=q4=Deadly Gladiator's Silk Raiment",    "=ds=#s5#, #a1#",  "", "0.95%" },
			{ 11, 41970, "", "=q4=Deadly Gladiator's Silk Handguards", "=ds=#s9#, #a1#",  "", "0.95%" },
			{ 12, 41958, "", "=q4=Deadly Gladiator's Silk Trousers",   "=ds=#s11#, #a1#", "", "0.95%" },

		},
		{
			{ 1,  40569, "", "=q4=Valorous Redemption Tunic",                "=ds=#s5#, #a4#",  "", "0.95%" },
			{ 2,  40570, "", "=q4=Valorous Redemption Gloves",               "=ds=#s9#, #a4#",  "", "0.95%" },
			{ 3,  40572, "", "=q4=Valorous Redemption Greaves",              "=ds=#s11#, #a4#", "", "0.95%" },
			{ 4,  40574, "", "=q4=Valorous Redemption Chestpiece",           "=ds=#s5#, #a4#",  "", "0.95%" },
			{ 5,  40575, "", "=q4=Valorous Redemption Gauntlets",            "=ds=#s9#, #a4#",  "", "0.95%" },
			{ 6,  40577, "", "=q4=Valorous Redemption Legplates",            "=ds=#s11#, #a4#", "", "0.95%" },
			{ 7,  40579, "", "=q4=Valorous Redemption Breastplate",          "=ds=#s5#, #a4#",  "", "0.95%" },
			{ 8,  40580, "", "=q4=Valorous Redemption Handguards",           "=ds=#s9#, #a4#",  "", "0.95%" },
			{ 9,  40583, "", "=q4=Valorous Redemption Legguards",            "=ds=#s11#, #a4#", "", "0.95%" },
			{ 10, 40905, "", "=q4=Deadly Gladiator's Ornamented Chestguard", "=ds=#s5#, #a4#",  "", "0.95%" },
			{ 11, 40926, "", "=q4=Deadly Gladiator's Ornamented Gloves",     "=ds=#s9#, #a4#",  "", "0.95%" },
			{ 12, 40938, "", "=q4=Deadly Gladiator's Ornamented Legplates",  "=ds=#s11#, #a4#", "", "0.95%" },
			{ 13, 40785, "", "=q4=Deadly Gladiator's Scaled Chestpiece",     "=ds=#s5#, #a4#",  "", "0.95%" },
			{ 14, 40805, "", "=q4=Deadly Gladiator's Scaled Gauntlets",      "=ds=#s9#, #a4#",  "", "0.95%" },
			{ 15, 40846, "", "=q4=Deadly Gladiator's Scaled Legguards",      "=ds=#s11#, #a4#", "", "0.95%" },
		},
		{
			{ 1,  40449, "", "=q4=Valorous Robe of Faith",                "=ds=#s5#, #a1#",  "", "0.95%" },
			{ 2,  40445, "", "=q4=Valorous Gloves of Faith",              "=ds=#s9#, #a1#",  "", "0.95%" },
			{ 3,  40448, "", "=q4=Valorous Leggings of Faith",            "=ds=#s11#, #a1#", "", "0.95%" },
			{ 4,  40458, "", "=q4=Valorous Raiments of Faith",            "=ds=#s5#, #a1#",  "", "0.95%" },
			{ 5,  40454, "", "=q4=Valorous Handwraps of Faith",           "=ds=#s9#, #a1#",  "", "0.95%" },
			{ 6,  40457, "", "=q4=Valorous Pants of Faith",               "=ds=#s11#, #a1#", "", "0.95%" },
			{ 7,  40495, "", "=q4=Valorous Bonescythe Breastplate",       "=ds=#s5#, #a2#",  "", "0.95%" },
			{ 8,  40496, "", "=q4=Valorous Bonescythe Gauntlets",         "=ds=#s9#, #a2#",  "", "0.95%" },
			{ 9,  40500, "", "=q4=Valorous Bonescythe Legplates",         "=ds=#s11#, #a2#", "", "0.95%" },
			{ 10, 41858, "", "=q4=Deadly Gladiator's Mooncloth Robe",     "=ds=#s5#, #a1#",  "", "0.95%" },
			{ 11, 41873, "", "=q4=Deadly Gladiator's Mooncloth Gloves",   "=ds=#s9#, #a1#",  "", "0.95%" },
			{ 12, 41863, "", "=q4=Deadly Gladiator's Mooncloth Leggings", "=ds=#s11#, #a1#", "", "0.95%" },
			{ 13, 41920, "", "=q4=Deadly Gladiator's Satin Robe",         "=ds=#s5#, #a1#",  "", "0.95%" },
			{ 14, 41939, "", "=q4=Deadly Gladiator's Satin Gloves",       "=ds=#s9#, #a1#",  "", "0.95%" },
			{ 15, 41926, "", "=q4=Deadly Gladiator's Satin Leggings",     "=ds=#s11#, #a1#", "", "0.95%" },
			{ 16, 41649, "", "=q4=Deadly Gladiator's Leather Tunic",      "=ds=#s5#, #a2#",  "", "0.95%" },
			{ 17, 41766, "", "=q4=Deadly Gladiator's Leather Gloves",     "=ds=#s9#, #a2#",  "", "0.95%" },
			{ 18, 41654, "", "=q4=Deadly Gladiator's Leather Legguards",  "=ds=#s11#, #a2#", "", "0.95%" },
		},
		{
			{ 1,  40514, "", "=q4=Valorous Earthshatter Hauberk",         "=ds=#s5#, #a3#",  "", "0.95%" },
			{ 2,  40515, "", "=q4=Valorous Earthshatter Gloves",          "=ds=#s9#, #a3#",  "", "0.95%" },
			{ 3,  40517, "", "=q4=Valorous Earthshatter Kilt",            "=ds=#s11#, #a3#", "", "0.95%" },
			{ 4,  40523, "", "=q4=Valorous Earthshatter Chestguard",      "=ds=#s5#, #a3#",  "", "0.95%" },
			{ 5,  40520, "", "=q4=Valorous Earthshatter Grips",           "=ds=#s9#, #a3#",  "", "0.95%" },
			{ 6,  40522, "", "=q4=Valorous Earthshatter War-Kilt",        "=ds=#s11#, #a3#", "", "0.95%" },
			{ 7,  40508, "", "=q4=Valorous Earthshatter Tunic",           "=ds=#s5#, #a3#",  "", "0.95%" },
			{ 8,  40509, "", "=q4=Valorous Earthshatter Handguards",      "=ds=#s9#, #a3#",  "", "0.95%" },
			{ 9,  40512, "", "=q4=Valorous Earthshatter Legguards",       "=ds=#s11#, #a3#", "", "0.95%" },
			{ 10, 40991, "", "=q4=Deadly Gladiator's Mail Armor",         "=ds=#s5#, #a3#",  "", "0.95%" },
			{ 11, 41006, "", "=q4=Deadly Gladiator's Mail Gauntlets",     "=ds=#s9#, #a3#",  "", "0.95%" },
			{ 12, 41032, "", "=q4=Deadly Gladiator's Mail Leggings",      "=ds=#s11#, #a3#", "", "0.95%" },
			{ 13, 41080, "", "=q4=Deadly Gladiator's Linked Armor",       "=ds=#s5#, #a3#",  "", "0.95%" },
			{ 14, 41136, "", "=q4=Deadly Gladiator's Linked Gauntlets",   "=ds=#s9#, #a3#",  "", "0.95%" },
			{ 15, 41198, "", "=q4=Deadly Gladiator's Linked Leggings",    "=ds=#s11#, #a3#", "", "0.95%" },
			{ 16, 40990, "", "=q4=Deadly Gladiator's Ringmail Armor",     "=ds=#s5#, #a3#",  "", "0.95%" },
			{ 17, 41000, "", "=q4=Deadly Gladiator's Ringmail Gauntlets", "=ds=#s9#, #a3#",  "", "0.95%" },
			{ 18, 41026, "", "=q4=Deadly Gladiator's Ringmail Leggings",  "=ds=#s11#, #a3#", "", "0.95%" },
		},
		{
			{ 1,  40423, "", "=q4=Valorous Plagueheart Robe",              "=ds=#s5#, #a1#",  "", "0.95%" },
			{ 2,  40420, "", "=q4=Valorous Plagueheart Gloves",            "=ds=#s9#, #a1#",  "", "0.95%" },
			{ 3,  40422, "", "=q4=Valorous Plagueheart Leggings",          "=ds=#s11#, #a1#", "", "0.95%" },
			{ 4,  40525, "", "=q4=Valorous Dreadnaught Battleplate",       "=ds=#s5#, #a4#",  "", "0.95%" },
			{ 5,  40527, "", "=q4=Valorous Dreadnaught Gauntlets",         "=ds=#s9#, #a4#",  "", "0.95%" },
			{ 6,  40529, "", "=q4=Valorous Dreadnaught Legplates",         "=ds=#s11#, #a4#", "", "0.95%" },
			{ 7,  40544, "", "=q4=Valorous Dreadnaught Breastplate",       "=ds=#s5#, #a4#",  "", "0.95%" },
			{ 8,  40545, "", "=q4=Valorous Dreadnaught Handguards",        "=ds=#s9#, #a4#",  "", "0.95%" },
			{ 9,  40547, "", "=q4=Valorous Dreadnaught Legguards",         "=ds=#s11#, #a4#", "", "0.95%" },
			{ 10, 41997, "", "=q4=Deadly Gladiator's Felweave Raiment",    "=ds=#s5#, #a1#",  "", "0.95%" },
			{ 11, 42016, "", "=q4=Deadly Gladiator's Felweave Handguards", "=ds=#s9#, #a1#",  "", "0.95%" },
			{ 12, 42004, "", "=q4=Deadly Gladiator's Felweave Trousers",   "=ds=#s11#, #a1#", "", "0.95%" },
			{ 13, 40786, "", "=q4=Deadly Gladiator's Plate Chestpiece",    "=ds=#s5#, #a4#",  "", "0.95%" },
			{ 14, 40804, "", "=q4=Deadly Gladiator's Plate Gauntlets",     "=ds=#s9#, #a4#",  "", "0.95%" },
			{ 15, 40844, "", "=q4=Deadly Gladiator's Plate Legguards",     "=ds=#s11#, #a4#", "", "0.95%" },
		},
	},
	info = {
		name = BabbleBoss["Archavon"],
		module = moduleName,
		instance = "Vault Of Archavon",
		menu = "ARCHAVON",
	},
};

Synastria_Data["Emalon"] = {
	["Normal"] = {
		{
			{ 1,  45341, "", "=q4=Valorous Darkruned Gauntlets",            "=ds=#s9#, #a4#",  "", "0.87%" },
			{ 2,  45343, "", "=q4=Valorous Darkruned Legplates",            "=ds=#s11#, #a4#", "", "0.87%" },
			{ 3,  45337, "", "=q4=Valorous Darkruned Handguards",           "=ds=#s9#, #a4#",  "", "0.87%" },
			{ 4,  45338, "", "=q4=Valorous Darkruned Legguards",            "=ds=#s11#, #a4#", "", "0.87%" },
			{ 5,  40806, "", "=q4=Deadly Gladiator's Dreadplate Gauntlets", "=ds=#s9#, #a4#",  "", "0.87%" },
			{ 6,  40845, "", "=q4=Deadly Gladiator's Dreadplate Legguards", "=ds=#s11#, #a4#", "", "0.87%" },
		},
		{

			{ 1,  45351, "", "=q4=Valorous Nightsong Gloves",               "=ds=#s9#, #a2#",  "", "0.87%" },
			{ 2,  45353, "", "=q4=Valorous Nightsong Trousers",             "=ds=#s11#, #a2#", "", "0.87%" },
			{ 3,  45355, "", "=q4=Valorous Nightsong Handgrips",            "=ds=#s9#, #a2#",  "", "0.87%" },
			{ 4,  45357, "", "=q4=Valorous Nightsong Legguards",            "=ds=#s11#, #a2#", "", "0.87%" },
			{ 5,  45345, "", "=q4=Valorous Nightsong Handguards",           "=ds=#s9#, #a2#",  "", "0.87%" },
			{ 6,  45347, "", "=q4=Valorous Nightsong Leggings",             "=ds=#s11#, #a2#", "", "0.87%" },
			{ 7,  41292, "", "=q4=Deadly Gladiator's Wyrmhide Gloves",      "=ds=#s9#, #a2#",  "", "0.87%" },
			{ 8,  41303, "", "=q4=Deadly Gladiator's Wyrmhide Legguards",   "=ds=#s11#, #a2#", "", "0.87%" },
			{ 9,  41772, "", "=q4=Deadly Gladiator's Dragonhide Gloves",    "=ds=#s9#, #a2#",  "", "0.87%" },
			{ 10, 41666, "", "=q4=Deadly Gladiator's Dragonhide Legguards", "=ds=#s11#, #a2#", "", "0.87%" },
			{ 11, 41286, "", "=q4=Deadly Gladiator's Kodohide Gloves",      "=ds=#s9#, #a2#",  "", "0.87%" },
			{ 12, 41297, "", "=q4=Deadly Gladiator's Kodohide Legguards",   "=ds=#s11#, #a2#", "", "0.87%" },
		},
		{
			{ 1,  45360, "", "=q4=Valorous Scourgestalker Handguards", "=ds=#s9#, #a3#",  "", "0.87%" },
			{ 2,  45362, "", "=q4=Valorous Scourgestalker Legguards",  "=ds=#s11#, #a3#", "", "0.87%" },
			{ 3,  46131, "", "=q4=Valorous Kirin Tor Gauntlets",       "=ds=#s9#, #a1#",  "", "0.87%" },
			{ 4,  45367, "", "=q4=Valorous Kirin Tor Leggings",        "=ds=#s11#, #a1#", "", "0.87%" },
			{ 5,  41142, "", "=q4=Deadly Gladiator's Chain Gauntlets", "=ds=#s9#, #a3#",  "", "0.87%" },
			{ 6,  41204, "", "=q4=Deadly Gladiator's Chain Leggings",  "=ds=#s11#, #a3#", "", "0.87%" },
			{ 7,  41970, "", "=q4=Deadly Gladiator's Silk Handguards", "=ds=#s9#, #a1#",  "", "0.87%" },
			{ 8,  41958, "", "=q4=Deadly Gladiator's Silk Trousers",   "=ds=#s11#, #a1#", "", "0.87%" },
		},
		{
			{ 1,  45370, "", "=q4=Valorous Aegis Gloves",                   "=ds=#s9#, #a4#",  "", "0.87%" },
			{ 2,  45371, "", "=q4=Valorous Aegis Greaves",                  "=ds=#s11#, #a4#", "", "0.87%" },
			{ 3,  45376, "", "=q4=Valorous Aegis Gauntlets",                "=ds=#s9#, #a4#",  "", "0.87%" },
			{ 4,  45379, "", "=q4=Valorous Aegis Legplates",                "=ds=#s11#, #a4#", "", "0.87%" },
			{ 5,  45383, "", "=q4=Valorous Aegis Handguards",               "=ds=#s9#, #a4#",  "", "0.87%" },
			{ 6,  45384, "", "=q4=Valorous Aegis Legguards",                "=ds=#s11#, #a4#", "", "0.87%" },
			{ 7,  40926, "", "=q4=Deadly Gladiator's Ornamented Gloves",    "=ds=#s9#, #a4#",  "", "0.87%" },
			{ 8,  40938, "", "=q4=Deadly Gladiator's Ornamented Legplates", "=ds=#s11#, #a4#", "", "0.87%" },
			{ 9,  40805, "", "=q4=Deadly Gladiator's Scaled Gauntlets",     "=ds=#s9#, #a4#",  "", "0.87%" },
			{ 10, 40846, "", "=q4=Deadly Gladiator's Scaled Legguards",     "=ds=#s11#, #a4#", "", "0.87%" },
		},
		{
			{ 1,  45387, "", "=q4=Valorous Gloves of Sanctification",     "=ds=#s9#, #a1#",  "", "0.87%" },
			{ 2,  45388, "", "=q4=Valorous Leggings of Sanctification",   "=ds=#s11#, #a1#", "", "0.87%" },
			{ 3,  45392, "", "=q4=Valorous Handwraps of Sanctification",  "=ds=#s9#, #a1#",  "", "0.87%" },
			{ 4,  45394, "", "=q4=Valorous Pants of Sanctification",      "=ds=#s11#, #a1#", "", "0.87%" },
			{ 5,  45397, "", "=q4=Valorous Terrorblade Gauntlets",        "=ds=#s9#, #a2#",  "", "0.87%" },
			{ 6,  45399, "", "=q4=Valorous Terrorblade Legplates",        "=ds=#s11#, #a2#", "", "0.87%" },
			{ 7,  41873, "", "=q4=Deadly Gladiator's Mooncloth Gloves",   "=ds=#s9#, #a1#",  "", "0.87%" },
			{ 8,  41863, "", "=q4=Deadly Gladiator's Mooncloth Leggings", "=ds=#s11#, #a1#", "", "0.87%" },
			{ 9,  41939, "", "=q4=Deadly Gladiator's Satin Gloves",       "=ds=#s9#, #a1#",  "", "0.87%" },
			{ 10, 41926, "", "=q4=Deadly Gladiator's Satin Leggings",     "=ds=#s11#, #a1#", "", "0.87%" },
			{ 11, 41766, "", "=q4=Deadly Gladiator's Leather Gloves",     "=ds=#s9#, #a2#",  "", "0.87%" },
			{ 12, 41654, "", "=q4=Deadly Gladiator's Leather Legguards",  "=ds=#s11#, #a2#", "", "0.87%" },
		},
		{
			{ 1,  45406, "", "=q4=Valorous Worldbreaker Gloves",          "=ds=#s9#, #a3#",  "", "0.87%" },
			{ 2,  45409, "", "=q4=Valorous Worldbreaker Kilt",            "=ds=#s11#, #a3#", "", "0.87%" },
			{ 3,  45414, "", "=q4=Valorous Worldbreaker Grips",           "=ds=#s9#, #a3#",  "", "0.87%" },
			{ 4,  45416, "", "=q4=Valorous Worldbreaker War-Kilt",        "=ds=#s11#, #a3#", "", "0.87%" },
			{ 5,  45401, "", "=q4=Valorous Worldbreaker Handguards",      "=ds=#s9#, #a3#",  "", "0.87%" },
			{ 6,  45403, "", "=q4=Valorous Worldbreaker Legguards",       "=ds=#s11#, #a3#", "", "0.87%" },
			{ 7,  41006, "", "=q4=Deadly Gladiator's Mail Gauntlets",     "=ds=#s9#, #a3#",  "", "0.87%" },
			{ 8,  41032, "", "=q4=Deadly Gladiator's Mail Leggings",      "=ds=#s11#, #a3#", "", "0.87%" },
			{ 9,  41136, "", "=q4=Deadly Gladiator's Linked Gauntlets",   "=ds=#s9#, #a3#",  "", "0.87%" },
			{ 10, 41198, "", "=q4=Deadly Gladiator's Linked Leggings",    "=ds=#s11#, #a3#", "", "0.87%" },
			{ 11, 41000, "", "=q4=Deadly Gladiator's Ringmail Gauntlets", "=ds=#s9#, #a3#",  "", "0.87%" },
			{ 12, 41026, "", "=q4=Deadly Gladiator's Ringmail Leggings",  "=ds=#s11#, #a3#", "", "0.87%" },
		},
		{
			{ 1,  45419, "", "=q4=Valorous Deathbringer Gloves",           "=ds=#s9#, #a1#",  "", "0.87%" },
			{ 2,  45420, "", "=q4=Valorous Deathbringer Leggings",         "=ds=#s11#, #a1#", "", "0.87%" },
			{ 3,  45430, "", "=q4=Valorous Siegebreaker Gauntlets",        "=ds=#s9#, #a4#",  "", "0.87%" },
			{ 4,  45432, "", "=q4=Valorous Siegebreaker Legplates",        "=ds=#s11#, #a4#", "", "0.87%" },
			{ 5,  45426, "", "=q4=Valorous Siegebreaker Handguards",       "=ds=#s9#, #a4#",  "", "0.87%" },
			{ 6,  45427, "", "=q4=Valorous Siegebreaker Legguards",        "=ds=#s11#, #a4#", "", "0.87%" },
			{ 7,  42016, "", "=q4=Deadly Gladiator's Felweave Handguards", "=ds=#s9#, #a1#",  "", "0.87%" },
			{ 8,  42004, "", "=q4=Deadly Gladiator's Felweave Trousers",   "=ds=#s11#, #a1#", "", "0.87%" },
			{ 9,  40804, "", "=q4=Deadly Gladiator's Plate Gauntlets",     "=ds=#s9#, #a4#",  "", "0.87%" },
			{ 10, 40844, "", "=q4=Deadly Gladiator's Plate Legguards",     "=ds=#s11#, #a4#", "", "0.87%" },
		},
		{
			{ 1,  41908, "", "=q4=Deadly Gladiator's Cuffs of Dominance",    "=ds=#s8#, #a1#",  "", "0.87%" },
			{ 2,  41897, "", "=q4=Deadly Gladiator's Cord of Dominance",     "=ds=#s10#, #a1#", "", "0.87%" },
			{ 3,  41902, "", "=q4=Deadly Gladiator's Treads of Dominance",   "=ds=#s12#, #a1#", "", "0.87%" },
			{ 4,  41892, "", "=q4=Deadly Gladiator's Cuffs of Salvation",    "=ds=#s8#, #a1#",  "", "0.87%" },
			{ 5,  41880, "", "=q4=Deadly Gladiator's Cord of Salvation",     "=ds=#s10#, #a1#", "", "0.87%" },
			{ 6,  41884, "", "=q4=Deadly Gladiator's Treads of Salvation",   "=ds=#s12#, #a1#", "", "0.87%" },
			{ 7,  41639, "", "=q4=Deadly Gladiator's Armwraps of Dominance", "=ds=#s8#, #a2#",  "", "0.87%" },
			{ 8,  41629, "", "=q4=Deadly Gladiator's Belt of Dominance",     "=ds=#s10#, #a2#", "", "0.87%" },
			{ 9,  41634, "", "=q4=Deadly Gladiator's Boots of Dominance",    "=ds=#s12#, #a2#", "", "0.87%" },
			{ 10, 41624, "", "=q4=Deadly Gladiator's Armwraps of Salvation", "=ds=#s8#, #a2#",  "", "0.87%" },
			{ 11, 41616, "", "=q4=Deadly Gladiator's Belt of Salvation",     "=ds=#s10#, #a2#", "", "0.87%" },
			{ 12, 41620, "", "=q4=Deadly Gladiator's Boots of Salvation",    "=ds=#s12#, #a2#", "", "0.87%" },
			{ 13, 41839, "", "=q4=Deadly Gladiator's Armwraps of Triumph",   "=ds=#s8#, #a2#",  "", "0.87%" },
			{ 14, 41831, "", "=q4=Deadly Gladiator's Belt of Triumph",       "=ds=#s10#, #a2#", "", "0.87%" },
			{ 15, 41835, "", "=q4=Deadly Gladiator's Boots of Triumph",      "=ds=#s12#, #a2#", "", "0.87%" },
		},
		{
			{ 1,  41064, "", "=q4=Deadly Gladiator's Wristguards of Dominance", "=ds=#s8#, #a3#",  "", "0.87%" },
			{ 2,  41069, "", "=q4=Deadly Gladiator's Waistguard of Dominance",  "=ds=#s10#, #a3#", "", "0.87%" },
			{ 3,  41074, "", "=q4=Deadly Gladiator's Sabatons of Dominance",    "=ds=#s12#, #a3#", "", "0.87%" },
			{ 4,  41059, "", "=q4=Deadly Gladiator's Wristguards of Salvation", "=ds=#s8#, #a3#",  "", "0.87%" },
			{ 5,  41048, "", "=q4=Deadly Gladiator's Waistguard of Salvation",  "=ds=#s10#, #a3#", "", "0.87%" },
			{ 6,  41054, "", "=q4=Deadly Gladiator's Sabatons of Salvation",    "=ds=#s12#, #a3#", "", "0.87%" },
			{ 7,  41224, "", "=q4=Deadly Gladiator's Wristguards of Triumph",   "=ds=#s8#, #a3#",  "", "0.87%" },
			{ 8,  41234, "", "=q4=Deadly Gladiator's Waistguard of Triumph",    "=ds=#s10#, #a3#", "", "0.87%" },
			{ 9,  41229, "", "=q4=Deadly Gladiator's Sabatons of Triumph",      "=ds=#s12#, #a3#", "", "0.87%" },
			{ 10, 40982, "", "=q4=Deadly Gladiator's Bracers of Salvation",     "=ds=#s8#, #a4#",  "", "0.87%" },
			{ 11, 40974, "", "=q4=Deadly Gladiator's Girdle of Salvation",      "=ds=#s10#, #a4#", "", "0.87%" },
			{ 12, 40975, "", "=q4=Deadly Gladiator's Greaves of Salvation",     "=ds=#s12#, #a4#", "", "0.87%" },
			{ 13, 40888, "", "=q4=Deadly Gladiator's Bracers of Triumph",       "=ds=#s8#, #a4#",  "", "0.87%" },
			{ 14, 40879, "", "=q4=Deadly Gladiator's Girdle of Triumph",        "=ds=#s10#, #a4#", "", "0.87%" },
			{ 15, 40880, "", "=q4=Deadly Gladiator's Greaves of Triumph",       "=ds=#s12#, #a4#", "", "0.87%" },
		},
		{
			{ 1,  42064, "", "=q4=Deadly Gladiator's Cloak of Ascendancy",    "=ds=#s4#",  "", "0.87%" },
			{ 2,  42066, "", "=q4=Deadly Gladiator's Cloak of Deliverance",   "=ds=#s4#",  "", "0.87%" },
			{ 3,  42062, "", "=q4=Deadly Gladiator's Cloak of Dominance",     "=ds=#s4#",  "", "0.87%" },
			{ 4,  42065, "", "=q4=Deadly Gladiator's Cloak of Salvation",     "=ds=#s4#",  "", "0.87%" },
			{ 5,  42063, "", "=q4=Deadly Gladiator's Cloak of Subjugation",   "=ds=#s4#",  "", "0.87%" },
			{ 6,  42067, "", "=q4=Deadly Gladiator's Cloak of Triumph",       "=ds=#s4#",  "", "0.87%" },
			{ 7,  42068, "", "=q4=Deadly Gladiator's Cloak of Victory",       "=ds=#s4#",  "", "0.87%" },
			{ 8,  42114, "", "=q4=Deadly Gladiator's Band of Ascendancy",     "=ds=#s13#", "", "0.87%" },
			{ 9,  42115, "", "=q4=Deadly Gladiator's Band of Victory",        "=ds=#s13#", "", "0.87%" },
			{ 10, 42030, "", "=q4=Deadly Gladiator's Pendant of Ascendancy",  "=ds=#s2#",  "", "0.87%" },
			{ 11, 42032, "", "=q4=Deadly Gladiator's Pendant of Deliverance", "=ds=#s2#",  "", "0.87%" },
			{ 12, 42029, "", "=q4=Deadly Gladiator's Pendant of Dominance",   "=ds=#s2#",  "", "0.87%" },
			{ 13, 42033, "", "=q4=Deadly Gladiator's Pendant of Salvation",   "=ds=#s2#",  "", "0.87%" },
			{ 14, 42031, "", "=q4=Deadly Gladiator's Pendant of Subjugation", "=ds=#s2#",  "", "0.87%" },
			{ 15, 42028, "", "=q4=Deadly Gladiator's Pendant of Victory",     "=ds=#s2#",  "", "0.87%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  46113, "", "=q4=Conqueror's Darkruned Gauntlets",          "=ds=#s9#, #a4#",  "", "0.86%" },
			{ 2,  46116, "", "=q4=Conqueror's Darkruned Legplates",          "=ds=#s11#, #a4#", "", "0.86%" },
			{ 3,  46119, "", "=q4=Conqueror's Darkruned Handguards",         "=ds=#s9#, #a4#",  "", "0.86%" },
			{ 4,  46121, "", "=q4=Conqueror's Darkruned Legguards",          "=ds=#s11#, #a4#", "", "0.86%" },
			{ 5,  40809, "", "=q4=Furious Gladiator's Dreadplate Gauntlets", "=ds=#s9#, #a4#",  "", "0.86%" },
			{ 6,  40848, "", "=q4=Furious Gladiator's Dreadplate Legguards", "=ds=#s11#, #a4#", "", "0.86%" },
		},
		{
			{ 1,  46189, "", "=q4=Conqueror's Nightsong Gloves",             "=ds=#s9#, #a2#",  "", "0.86%" },
			{ 2,  46192, "", "=q4=Conqueror's Nightsong Trousers",           "=ds=#s11#, #a2#", "", "0.86%" },
			{ 3,  46158, "", "=q4=Conqueror's Nightsong Handgrips",          "=ds=#s9#, #a2#",  "", "0.86%" },
			{ 4,  46160, "", "=q4=Conqueror's Nightsong Legguards",          "=ds=#s11#, #a2#", "", "0.86%" },
			{ 5,  41293, "", "=q4=Furious Gladiator's Wyrmhide Gloves",      "=ds=#s9#, #a2#",  "", "0.86%" },
			{ 6,  41304, "", "=q4=Furious Gladiator's Wyrmhide Legguards",   "=ds=#s11#, #a2#", "", "0.86%" },
			{ 7,  41773, "", "=q4=Furious Gladiator's Dragonhide Gloves",    "=ds=#s9#, #a2#",  "", "0.86%" },
			{ 8,  41667, "", "=q4=Furious Gladiator's Dragonhide Legguards", "=ds=#s11#, #a2#", "", "0.86%" },
			{ 9,  41287, "", "=q4=Furious Gladiator's Kodohide Gloves",      "=ds=#s9#, #a2#",  "", "0.86%" },
			{ 10, 41298, "", "=q4=Furious Gladiator's Kodohide Legguards",   "=ds=#s11#, #a2#", "", "0.86%" },
		},
		{
			{ 1,  46142, "", "=q4=Conqueror's Scourgestalker Handguards", "=ds=#s9#, #a3#",  "", "0.86%" },
			{ 2,  46144, "", "=q4=Conqueror's Scourgestalker Legguards",  "=ds=#s11#, #a3#", "", "0.86%" },
			{ 3,  46132, "", "=q4=Conqueror's Kirin Tor Gauntlets",       "=ds=#s9#, #a1#",  "", "0.86%" },
			{ 4,  46133, "", "=q4=Conqueror's Kirin Tor Leggings",        "=ds=#s11#, #a1#", "", "0.86%" },
			{ 5,  41143, "", "=q4=Furious Gladiator's Chain Gauntlets",   "=ds=#s9#, #a3#",  "", "0.86%" },
			{ 6,  41205, "", "=q4=Furious Gladiator's Chain Leggings",    "=ds=#s11#, #a3#", "", "0.86%" },
			{ 7,  41971, "", "=q4=Furious Gladiator's Silk Handguards",   "=ds=#s9#, #a1#",  "", "0.86%" },
			{ 8,  41959, "", "=q4=Furious Gladiator's Silk Trousers",     "=ds=#s11#, #a1#", "", "0.86%" },
		},
		{
			{ 1,  46179, "", "=q4=Conqueror's Aegis Gloves",                 "=ds=#s9#, #a4#",  "", "0.86%" },
			{ 2,  46181, "", "=q4=Conqueror's Aegis Greaves",                "=ds=#s11#, #a4#", "", "0.86%" },
			{ 3,  46155, "", "=q4=Conqueror's Aegis Gauntlets",              "=ds=#s9#, #a4#",  "", "0.86%" },
			{ 4,  46153, "", "=q4=Conqueror's Aegis Legplates",              "=ds=#s11#, #a4#", "", "0.86%" },
			{ 5,  46174, "", "=q4=Conqueror's Aegis Handguards",             "=ds=#s9#, #a4#",  "", "0.86%" },
			{ 6,  46176, "", "=q4=Conqueror's Aegis Legguards",              "=ds=#s11#, #a4#", "", "0.86%" },
			{ 7,  40927, "", "=q4=Furious Gladiator's Ornamented Gloves",    "=ds=#s9#, #a4#",  "", "0.86%" },
			{ 8,  40939, "", "=q4=Furious Gladiator's Ornamented Legplates", "=ds=#s11#, #a4#", "", "0.86%" },
			{ 9,  40808, "", "=q4=Furious Gladiator's Scaled Gauntlets",     "=ds=#s9#, #a4#",  "", "0.86%" },
			{ 10, 40849, "", "=q4=Furious Gladiator's Scaled Legguards",     "=ds=#s11#, #a4#", "", "0.86%" },
		},
		{
			{ 1,  46188, "", "=q4=Conqueror's Gloves of Sanctification",    "=ds=#s9#, #a1#",  "", "0.86%" },
			{ 2,  46195, "", "=q4=Conqueror's Leggings of Sanctification",  "=ds=#s11#, #a1#", "", "0.86%" },
			{ 3,  46163, "", "=q4=Conqueror's Handwraps of Sanctification", "=ds=#s9#, #a1#",  "", "0.86%" },
			{ 4,  46170, "", "=q4=Conqueror's Pants of Sanctification",     "=ds=#s11#, #a1#", "", "0.86%" },
			{ 5,  46124, "", "=q4=Conqueror's Terrorblade Gauntlets",       "=ds=#s9#, #a2#",  "", "0.86%" },
			{ 6,  46126, "", "=q4=Conqueror's Terrorblade Legplates",       "=ds=#s11#, #a2#", "", "0.86%" },
			{ 7,  41874, "", "=q4=Furious Gladiator's Mooncloth Gloves",    "=ds=#s9#, #a1#",  "", "0.86%" },
			{ 8,  41864, "", "=q4=Furious Gladiator's Mooncloth Leggings",  "=ds=#s11#, #a1#", "", "0.86%" },
			{ 9,  41940, "", "=q4=Furious Gladiator's Satin Gloves",        "=ds=#s9#, #a1#",  "", "0.86%" },
			{ 10, 41927, "", "=q4=Furious Gladiator's Satin Leggings",      "=ds=#s11#, #a1#", "", "0.86%" },
			{ 11, 41767, "", "=q4=Furious Gladiator's Leather Gloves",      "=ds=#s9#, #a2#",  "", "0.86%" },
			{ 12, 41655, "", "=q4=Furious Gladiator's Leather Legguards",   "=ds=#s11#, #a2#", "", "0.86%" },
		},
		{
			{ 1,  46207, "", "=q4=Conqueror's Worldbreaker Gloves",        "=ds=#s9#, #a3#",  "", "0.86%" },
			{ 2,  46210, "", "=q4=Conqueror's Worldbreaker Kilt",          "=ds=#s11#, #a3#", "", "0.86%" },
			{ 3,  46200, "", "=q4=Conqueror's Worldbreaker Grips",         "=ds=#s9#, #a3#",  "", "0.86%" },
			{ 4,  46208, "", "=q4=Conqueror's Worldbreaker War-Kilt",      "=ds=#s11#, #a3#", "", "0.86%" },
			{ 5,  46199, "", "=q4=Conqueror's Worldbreaker Handguards",    "=ds=#s9#, #a3#",  "", "0.86%" },
			{ 6,  46202, "", "=q4=Conqueror's Worldbreaker Legguards",     "=ds=#s11#, #a3#", "", "0.86%" },
			{ 7,  41007, "", "=q4=Furious Gladiator's Mail Gauntlets",     "=ds=#s9#, #a3#",  "", "0.86%" },
			{ 8,  41033, "", "=q4=Furious Gladiator's Mail Leggings",      "=ds=#s11#, #a3#", "", "0.86%" },
			{ 9,  41137, "", "=q4=Furious Gladiator's Linked Gauntlets",   "=ds=#s9#, #a3#",  "", "0.86%" },
			{ 10, 41199, "", "=q4=Furious Gladiator's Linked Leggings",    "=ds=#s11#, #a3#", "", "0.86%" },
			{ 11, 41001, "", "=q4=Furious Gladiator's Ringmail Gauntlets", "=ds=#s9#, #a3#",  "", "0.86%" },
			{ 12, 41027, "", "=q4=Furious Gladiator's Ringmail Leggings",  "=ds=#s11#, #a3#", "", "0.86%" },
		},
		{
			{ 1,  46135, "", "=q4=Conqueror's Deathbringer Gloves",         "=ds=#s9#, #a1#",  "", "0.86%" },
			{ 2,  46139, "", "=q4=Conqueror's Deathbringer Leggings",       "=ds=#s11#, #a1#", "", "0.86%" },
			{ 3,  46148, "", "=q4=Conqueror's Siegebreaker Gauntlets",      "=ds=#s9#, #a4#",  "", "0.86%" },
			{ 4,  46150, "", "=q4=Conqueror's Siegebreaker Legplates",      "=ds=#s11#, #a4#", "", "0.86%" },
			{ 5,  46164, "", "=q4=Conqueror's Siegebreaker Handguards",     "=ds=#s9#, #a4#",  "", "0.86%" },
			{ 6,  46169, "", "=q4=Conqueror's Siegebreaker Legguards",      "=ds=#s11#, #a4#", "", "0.86%" },
			{ 7,  42017, "", "=q4=Furious Gladiator's Felweave Handguards", "=ds=#s9#, #a1#",  "", "0.86%" },
			{ 8,  42005, "", "=q4=Furious Gladiator's Felweave Trousers",   "=ds=#s11#, #a1#", "", "0.86%" },
			{ 9,  40807, "", "=q4=Furious Gladiator's Plate Gauntlets",     "=ds=#s9#, #a4#",  "", "0.86%" },
			{ 10, 40847, "", "=q4=Furious Gladiator's Plate Legguards",     "=ds=#s11#, #a4#", "", "0.86%" },
		},
		{
			{ 1,  41909, "", "=q4=Furious Gladiator's Cuffs of Dominance",    "=ds=#s8#, #a1#",  "", "0.86%" },
			{ 2,  41898, "", "=q4=Furious Gladiator's Cord of Dominance",     "=ds=#s10#, #a1#", "", "0.86%" },
			{ 3,  41903, "", "=q4=Furious Gladiator's Slippers of Dominance", "=ds=#s12#, #a1#", "", "0.86%" },
			{ 4,  41893, "", "=q4=Furious Gladiator's Cuffs of Salvation",    "=ds=#s8#, #a1#",  "", "0.86%" },
			{ 5,  41881, "", "=q4=Furious Gladiator's Cord of Salvation",     "=ds=#s10#, #a1#", "", "0.86%" },
			{ 6,  41885, "", "=q4=Furious Gladiator's Slippers of Salvation", "=ds=#s12#, #a1#", "", "0.86%" },
			{ 7,  41640, "", "=q4=Furious Gladiator's Armwraps of Dominance", "=ds=#s8#, #a2#",  "", "0.86%" },
			{ 8,  41630, "", "=q4=Furious Gladiator's Belt of Dominance",     "=ds=#s10#, #a2#", "", "0.86%" },
			{ 9,  41635, "", "=q4=Furious Gladiator's Boots of Dominance",    "=ds=#s12#, #a2#", "", "0.86%" },
			{ 10, 41625, "", "=q4=Furious Gladiator's Armwraps of Salvation", "=ds=#s8#, #a2#",  "", "0.86%" },
			{ 11, 41617, "", "=q4=Furious Gladiator's Belt of Salvation",     "=ds=#s10#, #a2#", "", "0.86%" },
			{ 12, 41621, "", "=q4=Furious Gladiator's Boots of Salvation",    "=ds=#s12#, #a2#", "", "0.86%" },
			{ 13, 41840, "", "=q4=Furious Gladiator's Armwraps of Triumph",   "=ds=#s8#, #a2#",  "", "0.86%" },
			{ 14, 41832, "", "=q4=Furious Gladiator's Belt of Triumph",       "=ds=#s10#, #a2#", "", "0.86%" },
			{ 15, 41836, "", "=q4=Furious Gladiator's Boots of Triumph",      "=ds=#s12#, #a2#", "", "0.86%" },
		},
		{
			{ 1,  41065, "", "=q4=Furious Gladiator's Wristguards of Dominance", "=ds=#s8#, #a3#",  "", "0.86%" },
			{ 2,  41070, "", "=q4=Furious Gladiator's Waistguard of Dominance",  "=ds=#s10#, #a3#", "", "0.86%" },
			{ 3,  41075, "", "=q4=Furious Gladiator's Sabatons of Dominance",    "=ds=#s12#, #a3#", "", "0.86%" },
			{ 4,  41060, "", "=q4=Furious Gladiator's Wristguards of Salvation", "=ds=#s8#, #a3#",  "", "0.86%" },
			{ 5,  41051, "", "=q4=Furious Gladiator's Waistguard of Salvation",  "=ds=#s10#, #a3#", "", "0.86%" },
			{ 6,  41055, "", "=q4=Furious Gladiator's Sabatons of Salvation",    "=ds=#s12#, #a3#", "", "0.86%" },
			{ 7,  41225, "", "=q4=Furious Gladiator's Wristguards of Triumph",   "=ds=#s8#, #a3#",  "", "0.86%" },
			{ 8,  41235, "", "=q4=Furious Gladiator's Waistguard of Triumph",    "=ds=#s10#, #a3#", "", "0.86%" },
			{ 9,  41230, "", "=q4=Furious Gladiator's Sabatons of Triumph",      "=ds=#s12#, #a3#", "", "0.86%" },
			{ 10, 40983, "", "=q4=Furious Gladiator's Bracers of Salvation",     "=ds=#s8#, #a4#",  "", "0.86%" },
			{ 11, 40976, "", "=q4=Furious Gladiator's Girdle of Salvation",      "=ds=#s10#, #a4#", "", "0.86%" },
			{ 12, 40977, "", "=q4=Furious Gladiator's Greaves of Salvation",     "=ds=#s12#, #a4#", "", "0.86%" },
			{ 13, 40889, "", "=q4=Furious Gladiator's Bracers of Triumph",       "=ds=#s8#, #a4#",  "", "0.86%" },
			{ 14, 40881, "", "=q4=Furious Gladiator's Girdle of Triumph",        "=ds=#s10#, #a4#", "", "0.86%" },
			{ 15, 40882, "", "=q4=Furious Gladiator's Greaves of Triumph",       "=ds=#s12#, #a4#", "", "0.86%" },
		},
		{
			{ 1,  42071, "", "=q4=Furious Gladiator's Cloak of Ascendancy",    "=ds=#s4#",  "", "0.86%" },
			{ 2,  42073, "", "=q4=Furious Gladiator's Cloak of Deliverance",   "=ds=#s4#",  "", "0.86%" },
			{ 3,  42069, "", "=q4=Furious Gladiator's Cloak of Dominance",     "=ds=#s4#",  "", "0.86%" },
			{ 4,  42072, "", "=q4=Furious Gladiator's Cloak of Salvation",     "=ds=#s4#",  "", "0.86%" },
			{ 5,  42070, "", "=q4=Furious Gladiator's Cloak of Subjugation",   "=ds=#s4#",  "", "0.86%" },
			{ 6,  42074, "", "=q4=Furious Gladiator's Cloak of Triumph",       "=ds=#s4#",  "", "0.86%" },
			{ 7,  42075, "", "=q4=Furious Gladiator's Cloak of Victory",       "=ds=#s4#",  "", "0.86%" },
			{ 8,  42116, "", "=q4=Furious Gladiator's Band of Dominance",      "=ds=#s13#", "", "0.86%" },
			{ 9,  42117, "", "=q4=Furious Gladiator's Band of Triumph",        "=ds=#s13#", "", "0.86%" },
			{ 10, 42037, "", "=q4=Furious Gladiator's Pendant of Ascendancy",  "=ds=#s2#",  "", "0.86%" },
			{ 11, 42039, "", "=q4=Furious Gladiator's Pendant of Deliverance", "=ds=#s2#",  "", "0.86%" },
			{ 12, 42036, "", "=q4=Furious Gladiator's Pendant of Dominance",   "=ds=#s2#",  "", "0.86%" },
			{ 13, 42040, "", "=q4=Furious Gladiator's Pendant of Salvation",   "=ds=#s2#",  "", "0.86%" },
			{ 14, 42038, "", "=q4=Furious Gladiator's Pendant of Subjugation", "=ds=#s2#",  "", "0.86%" },
			{ 15, 46373, "", "=q4=Furious Gladiator's Pendant of Sundering",   "=ds=#s2#",  "", "0.86%" },
			{ 16, 42034, "", "=q4=Furious Gladiator's Pendant of Triumph",     "=ds=#s2#",  "", "0.86%" },
			{ 17, 42035, "", "=q4=Furious Gladiator's Pendant of Victory",     "=ds=#s2#",  "", "0.86%" },
		},
	},
	info = {
		name = BabbleBoss["Emalon"],
		module = moduleName,
		instance = "Vault Of Archavon",
		menu = "EMALON",
	},
};

Synastria_Data["Koralon"] = {
	["Normal"] = {
		{

			{ 2,  48480, "", "=q4=Thassarian's Gauntlets of Conquest",       "=ds=#s9#, #a4#",  "", "2.6%" },
			{ 3,  48476, "", "=q4=Thassarian's Legplates of Conquest",       "=ds=#s11#, #a4#", "", "2.6%" },

			{ 6,  48537, "", "=q4=Thassarian's Handguards of Conquest",      "=ds=#s9#, #a4#",  "", "2.6%" },
			{ 7,  48533, "", "=q4=Thassarian's Legguards of Conquest",       "=ds=#s11#, #a4#", "", "2.6%" },

			{ 17, 40809, "", "=q4=Furious Gladiator's Dreadplate Gauntlets", "=ds=#s9#, #a4#",  "", "1.27%" },
			{ 18, 40848, "", "=q4=Furious Gladiator's Dreadplate Legguards", "=ds=#s11#, #a4#", "", "1.27%" },
		},
		{

			{ 2,  48162, "", "=q4=Stormrage's Gloves of Conquest",           "=ds=#s9#, #a2#",  "", "2.6%" },
			{ 3,  48160, "", "=q4=Stormrage's Trousers of Conquest",         "=ds=#s11#, #a2#", "", "2.6%" },

			{ 6,  48213, "", "=q4=Stormrage's Handgrips of Conquest",        "=ds=#s9#, #a2#",  "", "2.6%" },
			{ 7,  48215, "", "=q4=Stormrage's Legguards of Conquest",        "=ds=#s11#, #a2#", "", "2.6%" },

			{ 10, 48132, "", "=q4=Stormrage's Handguards of Conquest",       "=ds=#s9#, #a2#",  "", "2.6%" },
			{ 11, 48130, "", "=q4=Stormrage's Leggings of Conquest",         "=ds=#s11#, #a2#", "", "2.6%" },

			{ 17, 41293, "", "=q4=Furious Gladiator's Wyrmhide Gloves",      "=ds=#s9#, #a2#",  "", "1.27%" },
			{ 18, 41304, "", "=q4=Furious Gladiator's Wyrmhide Legguards",   "=ds=#s11#, #a2#", "", "1.27%" },

			{ 21, 41773, "", "=q4=Furious Gladiator's Dragonhide Gloves",    "=ds=#s9#, #a2#",  "", "1.27%" },
			{ 22, 41667, "", "=q4=Furious Gladiator's Dragonhide Legguards", "=ds=#s11#, #a2#", "", "1.27%" },

			{ 25, 41287, "", "=q4=Furious Gladiator's Kodohide Gloves",      "=ds=#s9#, #a2#",  "", "1.27%" },
			{ 26, 41298, "", "=q4=Furious Gladiator's Kodohide Legguards",   "=ds=#s11#, #a2#", "", "1.27%" },
		},
		{

			{ 2,  48254, "", "=q4=Windrunner's Handguards of Conquest", "=ds=#s9#, #a3#",  "", "2.6%" },
			{ 3,  48252, "", "=q4=Windrunner's Legguards of Conquest",  "=ds=#s11#, #a3#", "", "2.6%" },

			{ 6,  47752, "", "=q4=Khadgar's Gauntlets of Conquest",     "=ds=#s9#, #a1#",  "", "2.6%" },
			{ 7,  47750, "", "=q4=Khadgar's Leggings of Conquest",      "=ds=#s11#, #a1#", "", "2.6%" },

			{ 17, 41143, "", "=q4=Furious Gladiator's Chain Gauntlets", "=ds=#s9#, #a3#",  "", "1.27%" },
			{ 18, 41205, "", "=q4=Furious Gladiator's Chain Leggings",  "=ds=#s11#, #a3#", "", "1.27%" },

			{ 21, 41971, "", "=q4=Furious Gladiator's Silk Handguards", "=ds=#s9#, #a1#",  "", "1.27%" },
			{ 22, 41959, "", "=q4=Furious Gladiator's Silk Trousers",   "=ds=#s11#, #a1#", "", "1.27%" },
		},
		{

			{ 2,  48574, "", "=q4=Turalyon's Gloves of Conquest",            "=ds=#s9#, #a4#",  "", "2.6%" },
			{ 3,  48568, "", "=q4=Turalyon's Greaves of Conquest",           "=ds=#s11#, #a4#", "", "2.6%" },

			{ 6,  48603, "", "=q4=Turalyon's Gauntlets of Conquest",         "=ds=#s9#, #a4#",  "", "2.6%" },
			{ 7,  48605, "", "=q4=Turalyon's Legplates of Conquest",         "=ds=#s11#, #a4#", "", "2.6%" },

			{ 10, 48633, "", "=q4=Turalyon's Handguards of Conquest",        "=ds=#s9#, #a4#",  "", "2.6%" },
			{ 11, 48635, "", "=q4=Turalyon's Legguards of Conquest",         "=ds=#s11#, #a4#", "", "2.6%" },

			{ 17, 40927, "", "=q4=Furious Gladiator's Ornamented Gloves",    "=ds=#s9#, #a4#",  "", "1.27%" },
			{ 18, 40939, "", "=q4=Furious Gladiator's Ornamented Legplates", "=ds=#s11#, #a4#", "", "1.27%" },

			{ 21, 40808, "", "=q4=Furious Gladiator's Scaled Gauntlets",     "=ds=#s9#, #a4#",  "", "1.27%" },
			{ 22, 40849, "", "=q4=Furious Gladiator's Scaled Legguards",     "=ds=#s11#, #a4#", "", "1.27%" },
		},
		{

			{ 2,  47982, "", "=q4=Velen's Gloves of Conquest",             "=ds=#s9#, #a1#",  "", "2.6%" },
			{ 3,  47980, "", "=q4=Velen's Leggings of Conquest",           "=ds=#s11#, #a1#", "", "2.6%" },

			{ 6,  48072, "", "=q4=Velen's Handwraps of Conquest",          "=ds=#s9#, #a1#",  "", "2.6%" },
			{ 7,  48074, "", "=q4=Velen's Pants of Conquest",              "=ds=#s11#, #a1#", "", "2.6%" },

			{ 10, 48222, "", "=q4=VanCleef's Gauntlets of Conquest",       "=ds=#s9#, #a2#",  "", "2.6%" },
			{ 11, 48220, "", "=q4=VanCleef's Legplates of Conquest",       "=ds=#s11#, #a2#", "", "2.6%" },

			{ 17, 41874, "", "=q4=Furious Gladiator's Mooncloth Gloves",   "=ds=#s9#, #a1#",  "", "1.27%" },
			{ 18, 41864, "", "=q4=Furious Gladiator's Mooncloth Leggings", "=ds=#s11#, #a1#", "", "1.27%" },

			{ 21, 41940, "", "=q4=Furious Gladiator's Satin Gloves",       "=ds=#s9#, #a1#",  "", "1.27%" },
			{ 22, 41927, "", "=q4=Furious Gladiator's Satin Leggings",     "=ds=#s11#, #a1#", "", "1.27%" },

			{ 25, 41767, "", "=q4=Furious Gladiator's Leather Gloves",     "=ds=#s9#, #a2#",  "", "1.27%" },
			{ 26, 41655, "", "=q4=Furious Gladiator's Leather Legguards",  "=ds=#s11#, #a2#", "", "1.27%" },
		},
		{

			{ 2,  48312, "", "=q4=Nobundo's Gloves of Conquest",           "=ds=#s9#, #a3#",  "", "2.6%" },
			{ 3,  48314, "", "=q4=Nobundo's Kilt of Conquest",             "=ds=#s11#, #a3#", "", "2.6%" },

			{ 6,  48342, "", "=q4=Nobundo's Grips of Conquest",            "=ds=#s9#, #a3#",  "", "2.6%" },
			{ 7,  48344, "", "=q4=Nobundo's War-Kilt of Conquest",         "=ds=#s11#, #a3#", "", "2.6%" },

			{ 10, 48284, "", "=q4=Nobundo's Handguards of Conquest",       "=ds=#s9#, #a3#",  "", "2.6%" },
			{ 11, 48282, "", "=q4=Nobundo's Legguards of Conquest",        "=ds=#s11#, #a3#", "", "2.6%" },

			{ 17, 41007, "", "=q4=Furious Gladiator's Mail Gauntlets",     "=ds=#s9#, #a3#",  "", "1.27%" },
			{ 18, 41033, "", "=q4=Furious Gladiator's Mail Leggings",      "=ds=#s11#, #a3#", "", "1.27%" },

			{ 21, 41137, "", "=q4=Furious Gladiator's Linked Gauntlets",   "=ds=#s9#, #a3#",  "", "1.27%" },
			{ 22, 41199, "", "=q4=Furious Gladiator's Linked Leggings",    "=ds=#s11#, #a3#", "", "1.27%" },

			{ 25, 41001, "", "=q4=Furious Gladiator's Ringmail Gauntlets", "=ds=#s9#, #a3#",  "", "1.27%" },
			{ 26, 41027, "", "=q4=Furious Gladiator's Ringmail Leggings",  "=ds=#s11#, #a3#", "", "1.27%" },
		},
		{

			{ 2,  47783, "", "=q4=Kel'Thuzad's Gloves of Conquest",         "=ds=#s9#, #a1#",  "", "2.6%" },
			{ 3,  47785, "", "=q4=Kel'Thuzad's Leggings of Conquest",       "=ds=#s11#, #a1#", "", "2.6%" },

			{ 6,  48375, "", "=q4=Wrynn's Gauntlets of Conquest",           "=ds=#s9#, #a4#",  "", "2.6%" },
			{ 7,  48373, "", "=q4=Wrynn's Legplates of Conquest",           "=ds=#s11#, #a4#", "", "2.6%" },

			{ 10, 48449, "", "=q4=Wrynn's Handguards of Conquest",          "=ds=#s9#, #a4#",  "", "2.6%" },
			{ 11, 48445, "", "=q4=Wrynn's Legguards of Conquest",           "=ds=#s11#, #a4#", "", "2.6%" },

			{ 17, 42017, "", "=q4=Furious Gladiator's Felweave Handguards", "=ds=#s9#, #a1#",  "", "1.27%" },
			{ 18, 42005, "", "=q4=Furious Gladiator's Felweave Trousers",   "=ds=#s11#, #a1#", "", "1.27%" },

			{ 21, 40807, "", "=q4=Furious Gladiator's Plate Gauntlets",     "=ds=#s9#, #a4#",  "", "1.27%" },
			{ 22, 40847, "", "=q4=Furious Gladiator's Plate Legguards",     "=ds=#s11#, #a4#", "", "1.27%" },
		},
		{

			{ 2,  41909, "", "=q4=Furious Gladiator's Cuffs of Dominance",    "=ds=#s8#, #a1#",  "", "1.27%" },
			{ 3,  41898, "", "=q4=Furious Gladiator's Cord of Dominance",     "=ds=#s10#, #a1#", "", "1.27%" },
			{ 4,  41903, "", "=q4=Furious Gladiator's Slippers of Dominance", "=ds=#s12#, #a1#", "", "1.27%" },
			{ 6,  41893, "", "=q4=Furious Gladiator's Cuffs of Salvation",    "=ds=#s8#, #a1#",  "", "1.27%" },
			{ 7,  41881, "", "=q4=Furious Gladiator's Cord of Salvation",     "=ds=#s10#, #a1#", "", "1.27%" },
			{ 8,  41885, "", "=q4=Furious Gladiator's Slippers of Salvation", "=ds=#s12#, #a1#", "", "1.27%" },

			{ 17, 41640, "", "=q4=Furious Gladiator's Armwraps of Dominance", "=ds=#s8#, #a2#",  "", "1.27%" },
			{ 18, 41630, "", "=q4=Furious Gladiator's Belt of Dominance",     "=ds=#s10#, #a2#", "", "1.27%" },
			{ 19, 41635, "", "=q4=Furious Gladiator's Boots of Dominance",    "=ds=#s12#, #a2#", "", "1.27%" },
			{ 21, 41625, "", "=q4=Furious Gladiator's Armwraps of Salvation", "=ds=#s8#, #a2#",  "", "1.27%" },
			{ 22, 41617, "", "=q4=Furious Gladiator's Belt of Salvation",     "=ds=#s10#, #a2#", "", "1.27%" },
			{ 23, 41621, "", "=q4=Furious Gladiator's Boots of Salvation",    "=ds=#s12#, #a2#", "", "1.27%" },
			{ 25, 41840, "", "=q4=Furious Gladiator's Armwraps of Triumph",   "=ds=#s8#, #a2#",  "", "1.27%" },
			{ 26, 41832, "", "=q4=Furious Gladiator's Belt of Triumph",       "=ds=#s10#, #a2#", "", "1.27%" },
			{ 27, 41836, "", "=q4=Furious Gladiator's Boots of Triumph",      "=ds=#s12#, #a2#", "", "1.27%" },
		},
		{

			{ 2,  41065, "", "=q4=Furious Gladiator's Wristguards of Dominance", "=ds=#s8#, #a3#",  "", "1.27%" },
			{ 3,  41070, "", "=q4=Furious Gladiator's Waistguard of Dominance",  "=ds=#s10#, #a3#", "", "1.27%" },
			{ 4,  41075, "", "=q4=Furious Gladiator's Sabatons of Dominance",    "=ds=#s12#, #a3#", "", "1.27%" },
			{ 6,  41060, "", "=q4=Furious Gladiator's Wristguards of Salvation", "=ds=#s8#, #a3#",  "", "1.27%" },
			{ 7,  41051, "", "=q4=Furious Gladiator's Waistguard of Salvation",  "=ds=#s10#, #a3#", "", "1.27%" },
			{ 8,  41055, "", "=q4=Furious Gladiator's Sabatons of Salvation",    "=ds=#s12#, #a3#", "", "1.27%" },
			{ 10, 41225, "", "=q4=Furious Gladiator's Wristguards of Triumph",   "=ds=#s8#, #a3#",  "", "1.27%" },
			{ 11, 41235, "", "=q4=Furious Gladiator's Waistguard of Triumph",    "=ds=#s10#, #a3#", "", "1.27%" },
			{ 12, 41230, "", "=q4=Furious Gladiator's Sabatons of Triumph",      "=ds=#s12#, #a3#", "", "1.27%" },

			{ 17, 40983, "", "=q4=Furious Gladiator's Bracers of Salvation",     "=ds=#s8#, #a4#",  "", "1.27%" },
			{ 18, 40976, "", "=q4=Furious Gladiator's Girdle of Salvation",      "=ds=#s10#, #a4#", "", "1.27%" },
			{ 19, 40977, "", "=q4=Furious Gladiator's Greaves of Salvation",     "=ds=#s12#, #a4#", "", "1.27%" },
			{ 21, 40889, "", "=q4=Furious Gladiator's Bracers of Triumph",       "=ds=#s8#, #a4#",  "", "1.27%" },
			{ 22, 40881, "", "=q4=Furious Gladiator's Girdle of Triumph",        "=ds=#s10#, #a4#", "", "1.27%" },
			{ 23, 40882, "", "=q4=Furious Gladiator's Greaves of Triumph",       "=ds=#s12#, #a4#", "", "1.27%" },
		},
		{

			{ 2,  42071, "", "=q4=Furious Gladiator's Cloak of Ascendancy",    "=ds=#s4#",  "", "1.27%" },
			{ 3,  42073, "", "=q4=Furious Gladiator's Cloak of Deliverance",   "=ds=#s4#",  "", "1.27%" },
			{ 4,  42069, "", "=q4=Furious Gladiator's Cloak of Dominance",     "=ds=#s4#",  "", "1.27%" },
			{ 5,  42072, "", "=q4=Furious Gladiator's Cloak of Salvation",     "=ds=#s4#",  "", "1.27%" },
			{ 6,  42070, "", "=q4=Furious Gladiator's Cloak of Subjugation",   "=ds=#s4#",  "", "1.27%" },
			{ 7,  42074, "", "=q4=Furious Gladiator's Cloak of Triumph",       "=ds=#s4#",  "", "1.27%" },
			{ 8,  42075, "", "=q4=Furious Gladiator's Cloak of Victory",       "=ds=#s4#",  "", "1.27%" },

			{ 11, 42116, "", "=q4=Furious Gladiator's Band of Dominance",      "=ds=#s13#", "", "1.27%" },
			{ 12, 42117, "", "=q4=Furious Gladiator's Band of Triumph",        "=ds=#s13#", "", "1.27%" },

			{ 17, 42037, "", "=q4=Furious Gladiator's Pendant of Ascendancy",  "=ds=#s2#",  "", "1.27%" },
			{ 18, 42039, "", "=q4=Furious Gladiator's Pendant of Deliverance", "=ds=#s2#",  "", "1.27%" },
			{ 19, 42036, "", "=q4=Furious Gladiator's Pendant of Dominance",   "=ds=#s2#",  "", "1.27%" },
			{ 20, 42040, "", "=q4=Furious Gladiator's Pendant of Salvation",   "=ds=#s2#",  "", "1.27%" },
			{ 21, 42038, "", "=q4=Furious Gladiator's Pendant of Subjugation", "=ds=#s2#",  "", "1.27%" },
			{ 22, 46373, "", "=q4=Furious Gladiator's Pendant of Sundering",   "=ds=#s2#",  "", "1.27%" },
			{ 23, 42034, "", "=q4=Furious Gladiator's Pendant of Triumph",     "=ds=#s2#",  "", "1.27%" },
			{ 24, 42035, "", "=q4=Furious Gladiator's Pendant of Victory",     "=ds=#s2#",  "", "1.27%" },
		},
		{

			{ 2,  48502, "", "=q4=Koltira's Gauntlets of Conquest",          "=ds=#s9#, #a4#",  "", "2.6%" },
			{ 3,  48504, "", "=q4=Koltira's Legplates of Conquest",          "=ds=#s11#, #a4#", "", "2.6%" },

			{ 6,  48559, "", "=q4=Koltira's Handguards of Conquest",         "=ds=#s9#, #a4#",  "", "2.6%" },
			{ 7,  48561, "", "=q4=Koltira's Legguards of Conquest",          "=ds=#s11#, #a4#", "", "2.6%" },

			{ 17, 40809, "", "=q4=Furious Gladiator's Dreadplate Gauntlets", "=ds=#s9#, #a4#",  "", "1.27%" },
			{ 18, 40848, "", "=q4=Furious Gladiator's Dreadplate Legguards", "=ds=#s11#, #a4#", "", "1.27%" },
		},
		{

			{ 2,  48183, "", "=q4=Runetotem's Gloves of Conquest",           "=ds=#s9#, #a2#",  "", "2.6%" },
			{ 3,  48185, "", "=q4=Runetotem's Trousers of Conquest",         "=ds=#s11#, #a2#", "", "2.6%" },

			{ 6,  48192, "", "=q4=Runetotem's Handgrips of Conquest",        "=ds=#s9#, #a2#",  "", "2.6%" },
			{ 7,  48190, "", "=q4=Runetotem's Legguards of Conquest",        "=ds=#s11#, #a2#", "", "2.6%" },

			{ 10, 48153, "", "=q4=Runetotem's Handguards of Conquest",       "=ds=#s9#, #a2#",  "", "2.6%" },
			{ 11, 48155, "", "=q4=Runetotem's Leggings of Conquest",         "=ds=#s11#, #a2#", "", "2.6%" },

			{ 17, 41293, "", "=q4=Furious Gladiator's Wyrmhide Gloves",      "=ds=#s9#, #a2#",  "", "1.27%" },
			{ 18, 41304, "", "=q4=Furious Gladiator's Wyrmhide Legguards",   "=ds=#s11#, #a2#", "", "1.27%" },

			{ 21, 41773, "", "=q4=Furious Gladiator's Dragonhide Gloves",    "=ds=#s9#, #a2#",  "", "1.27%" },
			{ 22, 41667, "", "=q4=Furious Gladiator's Dragonhide Legguards", "=ds=#s11#, #a2#", "", "1.27%" },

			{ 25, 41287, "", "=q4=Furious Gladiator's Kodohide Gloves",      "=ds=#s9#, #a2#",  "", "1.27%" },
			{ 26, 41298, "", "=q4=Furious Gladiator's Kodohide Legguards",   "=ds=#s11#, #a2#", "", "1.27%" },
		},
		{

			{ 2,  48276, "", "=q4=Windrunner's Handguards of Conquest", "=ds=#s9#, #a3#",  "", "2.6%" },
			{ 3,  48278, "", "=q4=Windrunner's Legguards of Conquest",  "=ds=#s11#, #a3#", "", "2.6%" },

			{ 6,  47773, "", "=q4=Sunstrider's Gauntlets of Conquest",  "=ds=#s9#, #a1#",  "", "2.6%" },
			{ 7,  47775, "", "=q4=Sunstrider's Leggings of Conquest",   "=ds=#s11#, #a1#", "", "2.6%" },

			{ 17, 41143, "", "=q4=Furious Gladiator's Chain Gauntlets", "=ds=#s9#, #a3#",  "", "1.27%" },
			{ 18, 41205, "", "=q4=Furious Gladiator's Chain Leggings",  "=ds=#s11#, #a3#", "", "1.27%" },

			{ 21, 41971, "", "=q4=Furious Gladiator's Silk Handguards", "=ds=#s9#, #a1#",  "", "1.27%" },
			{ 22, 41959, "", "=q4=Furious Gladiator's Silk Trousers",   "=ds=#s11#, #a1#", "", "1.27%" },
		},
		{

			{ 2,  48598, "", "=q4=Liadrin's Gloves of Conquest",             "=ds=#s9#, #a4#",  "", "2.6%" },
			{ 3,  48596, "", "=q4=Liadrin's Greaves of Conquest",            "=ds=#s11#, #a4#", "", "2.6%" },

			{ 6,  48630, "", "=q4=Liadrin's Gauntlets of Conquest",          "=ds=#s9#, #a4#",  "", "2.6%" },
			{ 7,  48628, "", "=q4=Liadrin's Legplates of Conquest",          "=ds=#s11#, #a4#", "", "2.6%" },

			{ 10, 48653, "", "=q4=Liadrin's Handguards of Conquest",         "=ds=#s9#, #a4#",  "", "2.6%" },
			{ 11, 48655, "", "=q4=Liadrin's Legguards of Conquest",          "=ds=#s11#, #a4#", "", "2.6%" },

			{ 17, 40927, "", "=q4=Furious Gladiator's Ornamented Gloves",    "=ds=#s9#, #a4#",  "", "1.27%" },
			{ 18, 40939, "", "=q4=Furious Gladiator's Ornamented Legplates", "=ds=#s11#, #a4#", "", "1.27%" },

			{ 21, 40808, "", "=q4=Furious Gladiator's Scaled Gauntlets",     "=ds=#s9#, #a4#",  "", "1.27%" },
			{ 21, 40849, "", "=q4=Furious Gladiator's Scaled Legguards",     "=ds=#s11#, #a4#", "", "1.27%" },
		},
		{

			{ 2,  48067, "", "=q4=Zabra's Gloves of Conquest",             "=ds=#s9#, #a1#",  "", "2.6%" },
			{ 3,  48069, "", "=q4=Zabra's Leggings of Conquest",           "=ds=#s11#, #a1#", "", "2.6%" },

			{ 6,  48097, "", "=q4=Zabra's Handwraps of Conquest",          "=ds=#s9#, #a1#",  "", "2.6%" },
			{ 7,  48099, "", "=q4=Zabra's Pants of Conquest",              "=ds=#s11#, #a1#", "", "2.6%" },

			{ 10, 48244, "", "=q4=Garona's Gauntlets of Conquest",         "=ds=#s9#, #a2#",  "", "2.6%" },
			{ 11, 48246, "", "=q4=Garona's Legplates of Conquest",         "=ds=#s11#, #a2#", "", "2.6%" },

			{ 17, 41874, "", "=q4=Furious Gladiator's Mooncloth Gloves",   "=ds=#s9#, #a1#",  "", "1.27%" },
			{ 18, 41864, "", "=q4=Furious Gladiator's Mooncloth Leggings", "=ds=#s11#, #a1#", "", "1.27%" },

			{ 21, 41940, "", "=q4=Furious Gladiator's Satin Gloves",       "=ds=#s9#, #a1#",  "", "1.27%" },
			{ 22, 41927, "", "=q4=Furious Gladiator's Satin Leggings",     "=ds=#s11#, #a1#", "", "1.27%" },

			{ 25, 41767, "", "=q4=Furious Gladiator's Leather Gloves",     "=ds=#s9#, #a2#",  "", "1.27%" },
			{ 26, 41655, "", "=q4=Furious Gladiator's Leather Legguards",  "=ds=#s11#, #a2#", "", "1.27%" },
		},
		{

			{ 2,  48337, "", "=q4=Thrall's Gloves of Conquest",            "=ds=#s9#, #a3#",  "", "2.6%" },
			{ 3,  48339, "", "=q4=Thrall's Kilt of Conquest",              "=ds=#s11#, #a3#", "", "2.6%" },

			{ 6,  48367, "", "=q4=Thrall's Grips of Conquest",             "=ds=#s9#, #a3#",  "", "2.6%" },
			{ 7,  48369, "", "=q4=Thrall's War-Kilt of Conquest",          "=ds=#s11#, #a3#", "", "2.6%" },

			{ 10, 48296, "", "=q4=Thrall's Handguards of Conquest",        "=ds=#s9#, #a3#",  "", "2.6%" },
			{ 11, 48298, "", "=q4=Thrall's Legguards of Conquest",         "=ds=#s11#, #a3#", "", "2.6%" },

			{ 17, 41007, "", "=q4=Furious Gladiator's Mail Gauntlets",     "=ds=#s9#, #a3#",  "", "1.27%" },
			{ 18, 41033, "", "=q4=Furious Gladiator's Mail Leggings",      "=ds=#s11#, #a3#", "", "1.27%" },

			{ 21, 41137, "", "=q4=Furious Gladiator's Linked Gauntlets",   "=ds=#s9#, #a3#",  "", "1.27%" },
			{ 22, 41199, "", "=q4=Furious Gladiator's Linked Leggings",    "=ds=#s11#, #a3#", "", "1.27%" },

			{ 25, 41001, "", "=q4=Furious Gladiator's Ringmail Gauntlets", "=ds=#s9#, #a3#",  "", "1.27%" },
			{ 26, 41027, "", "=q4=Furious Gladiator's Ringmail Leggings",  "=ds=#s11#, #a3#", "", "1.27%" },
		},
		{

			{ 2,  47802, "", "=q4=Gul'dan's Gloves of Conquest",            "=ds=#s9#, #a1#",  "", "2.6%" },
			{ 3,  47800, "", "=q4=Gul'dan's Leggings of Conquest",          "=ds=#s11#, #a1#", "", "2.6%" },

			{ 6,  48387, "", "=q4=Hellscream's Gauntlets of Conquest",      "=ds=#s9#, #a4#",  "", "2.6%" },
			{ 7,  48389, "", "=q4=Hellscream's Legplates of Conquest",      "=ds=#s11#, #a4#", "", "2.6%" },

			{ 10, 48457, "", "=q4=Hellscream's Handguards of Conquest",     "=ds=#s9#, #a4#",  "", "2.6%" },
			{ 11, 48459, "", "=q4=Hellscream's Legguards of Conquest",      "=ds=#s11#, #a4#", "", "2.6%" },

			{ 17, 42017, "", "=q4=Furious Gladiator's Felweave Handguards", "=ds=#s9#, #a1#",  "", "1.27%" },
			{ 18, 42005, "", "=q4=Furious Gladiator's Felweave Trousers",   "=ds=#s11#, #a1#", "", "1.27%" },

			{ 21, 40807, "", "=q4=Furious Gladiator's Plate Gauntlets",     "=ds=#s9#, #a4#",  "", "1.27%" },
			{ 22, 40847, "", "=q4=Furious Gladiator's Plate Legguards",     "=ds=#s11#, #a4#", "", "1.27%" },
		},
		{

			{ 2,  41909, "", "=q4=Furious Gladiator's Cuffs of Dominance",    "=ds=#s8#, #a1#",  "", "1.27%" },
			{ 3,  41898, "", "=q4=Furious Gladiator's Cord of Dominance",     "=ds=#s10#, #a1#", "", "1.27%" },
			{ 4,  41903, "", "=q4=Furious Gladiator's Slippers of Dominance", "=ds=#s12#, #a1#", "", "1.27%" },
			{ 6,  41893, "", "=q4=Furious Gladiator's Cuffs of Salvation",    "=ds=#s8#, #a1#",  "", "1.27%" },
			{ 7,  41881, "", "=q4=Furious Gladiator's Cord of Salvation",     "=ds=#s10#, #a1#", "", "1.27%" },
			{ 8,  41885, "", "=q4=Furious Gladiator's Slippers of Salvation", "=ds=#s12#, #a1#", "", "1.27%" },

			{ 17, 41640, "", "=q4=Furious Gladiator's Armwraps of Dominance", "=ds=#s8#, #a2#",  "", "1.27%" },
			{ 18, 41630, "", "=q4=Furious Gladiator's Belt of Dominance",     "=ds=#s10#, #a2#", "", "1.27%" },
			{ 19, 41635, "", "=q4=Furious Gladiator's Boots of Dominance",    "=ds=#s12#, #a2#", "", "1.27%" },
			{ 21, 41625, "", "=q4=Furious Gladiator's Armwraps of Salvation", "=ds=#s8#, #a2#",  "", "1.27%" },
			{ 22, 41617, "", "=q4=Furious Gladiator's Belt of Salvation",     "=ds=#s10#, #a2#", "", "1.27%" },
			{ 23, 41621, "", "=q4=Furious Gladiator's Boots of Salvation",    "=ds=#s12#, #a2#", "", "1.27%" },
			{ 25, 41840, "", "=q4=Furious Gladiator's Armwraps of Triumph",   "=ds=#s8#, #a2#",  "", "1.27%" },
			{ 26, 41832, "", "=q4=Furious Gladiator's Belt of Triumph",       "=ds=#s10#, #a2#", "", "1.27%" },
			{ 27, 41836, "", "=q4=Furious Gladiator's Boots of Triumph",      "=ds=#s12#, #a2#", "", "1.27%" },
		},
		{

			{ 2,  41065, "", "=q4=Furious Gladiator's Wristguards of Dominance", "=ds=#s8#, #a3#",  "", "1.27%" },
			{ 3,  41070, "", "=q4=Furious Gladiator's Waistguard of Dominance",  "=ds=#s10#, #a3#", "", "1.27%" },
			{ 4,  41075, "", "=q4=Furious Gladiator's Sabatons of Dominance",    "=ds=#s12#, #a3#", "", "1.27%" },
			{ 6,  41060, "", "=q4=Furious Gladiator's Wristguards of Salvation", "=ds=#s8#, #a3#",  "", "1.27%" },
			{ 7,  41051, "", "=q4=Furious Gladiator's Waistguard of Salvation",  "=ds=#s10#, #a3#", "", "1.27%" },
			{ 8,  41055, "", "=q4=Furious Gladiator's Sabatons of Salvation",    "=ds=#s12#, #a3#", "", "1.27%" },
			{ 10, 41225, "", "=q4=Furious Gladiator's Wristguards of Triumph",   "=ds=#s8#, #a3#",  "", "1.27%" },
			{ 11, 41235, "", "=q4=Furious Gladiator's Waistguard of Triumph",    "=ds=#s10#, #a3#", "", "1.27%" },
			{ 12, 41230, "", "=q4=Furious Gladiator's Sabatons of Triumph",      "=ds=#s12#, #a3#", "", "1.27%" },

			{ 17, 40983, "", "=q4=Furious Gladiator's Bracers of Salvation",     "=ds=#s8#, #a4#",  "", "1.27%" },
			{ 18, 40976, "", "=q4=Furious Gladiator's Girdle of Salvation",      "=ds=#s10#, #a4#", "", "1.27%" },
			{ 19, 40977, "", "=q4=Furious Gladiator's Greaves of Salvation",     "=ds=#s12#, #a4#", "", "1.27%" },
			{ 21, 40889, "", "=q4=Furious Gladiator's Bracers of Triumph",       "=ds=#s8#, #a4#",  "", "1.27%" },
			{ 22, 40881, "", "=q4=Furious Gladiator's Girdle of Triumph",        "=ds=#s10#, #a4#", "", "1.27%" },
			{ 23, 40882, "", "=q4=Furious Gladiator's Greaves of Triumph",       "=ds=#s12#, #a4#", "", "1.27%" },
		},
		{

			{ 2,  42071, "", "=q4=Furious Gladiator's Cloak of Ascendancy",    "=ds=#s4#",  "", "1.27%" },
			{ 3,  42073, "", "=q4=Furious Gladiator's Cloak of Deliverance",   "=ds=#s4#",  "", "1.27%" },
			{ 4,  42069, "", "=q4=Furious Gladiator's Cloak of Dominance",     "=ds=#s4#",  "", "1.27%" },
			{ 5,  42072, "", "=q4=Furious Gladiator's Cloak of Salvation",     "=ds=#s4#",  "", "1.27%" },
			{ 6,  42070, "", "=q4=Furious Gladiator's Cloak of Subjugation",   "=ds=#s4#",  "", "1.27%" },
			{ 7,  42074, "", "=q4=Furious Gladiator's Cloak of Triumph",       "=ds=#s4#",  "", "1.27%" },
			{ 8,  42075, "", "=q4=Furious Gladiator's Cloak of Victory",       "=ds=#s4#",  "", "1.27%" },

			{ 11, 42116, "", "=q4=Furious Gladiator's Band of Dominance",      "=ds=#s13#", "", "1.27%" },
			{ 12, 42117, "", "=q4=Furious Gladiator's Band of Triumph",        "=ds=#s13#", "", "1.27%" },

			{ 17, 42037, "", "=q4=Furious Gladiator's Pendant of Ascendancy",  "=ds=#s2#",  "", "1.27%" },
			{ 18, 42039, "", "=q4=Furious Gladiator's Pendant of Deliverance", "=ds=#s2#",  "", "1.27%" },
			{ 19, 42036, "", "=q4=Furious Gladiator's Pendant of Dominance",   "=ds=#s2#",  "", "1.27%" },
			{ 20, 42040, "", "=q4=Furious Gladiator's Pendant of Salvation",   "=ds=#s2#",  "", "1.27%" },
			{ 21, 42038, "", "=q4=Furious Gladiator's Pendant of Subjugation", "=ds=#s2#",  "", "1.27%" },
			{ 22, 46373, "", "=q4=Furious Gladiator's Pendant of Sundering",   "=ds=#s2#",  "", "1.27%" },
			{ 23, 42034, "", "=q4=Furious Gladiator's Pendant of Triumph",     "=ds=#s2#",  "", "1.27%" },
			{ 24, 42035, "", "=q4=Furious Gladiator's Pendant of Victory",     "=ds=#s2#",  "", "1.27%" },
		},
	},
	["25Man"] = {
		{

			{ 2,  48482, "", "=q4=Thassarian's Gauntlets of Triumph",           "=ds=#s9#, #a4#",  "", "2.6%" },
			{ 3,  48484, "", "=q4=Thassarian's Legplates of Triumph",           "=ds=#s11#, #a4#", "", "2.6%" },

			{ 6,  48539, "", "=q4=Thassarian's Handguards of Triumph",          "=ds=#s9#, #a4#",  "", "2.6%" },
			{ 7,  48541, "", "=q4=Thassarian's Legguards of Triumph",           "=ds=#s11#, #a4#", "", "2.6%" },

			{ 17, 40811, "", "=q4=Relentless Gladiator's Dreadplate Gauntlets", "=ds=#s9#, #a4#",  "", "1.28%" },
			{ 18, 40851, "", "=q4=Relentless Gladiator's Dreadplate Legguards", "=ds=#s11#, #a4#", "", "1.28%" },
		},
		{
			{ 1,  0,     "spell_nature_starfall",     "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],     "=q5=" .. AL["Balance"] },
			{ 2,  48163, "",                          "=q4=Stormrage's Gloves of Triumph",               "=ds=#s9#, #a2#",           "", "2.6%" },
			{ 3,  48165, "",                          "=q4=Stormrage's Trousers of Triumph",             "=ds=#s11#, #a2#",          "", "2.6%" },
			{ 5,  0,     "ability_racial_bearform",   "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],     "=q5=" .. AL["Feral"] },
			{ 6,  48212, "",                          "=q4=Stormrage's Handgrips of Triumph",            "=ds=#s9#, #a2#",           "", "2.6%" },
			{ 7,  48210, "",                          "=q4=Stormrage's Legguards of Triumph",            "=ds=#s11#, #a2#",          "", "2.6%" },
			{ 9,  0,     "spell_nature_healingtouch", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],     "=q5=" .. AL["Restoration"] },
			{ 10, 48133, "",                          "=q4=Stormrage's Handguards of Triumph",           "=ds=#s9#, #a2#",           "", "2.6%" },
			{ 11, 48135, "",                          "=q4=Stormrage's Leggings of Triumph",             "=ds=#s11#, #a2#",          "", "2.6%" },
			{ 16, 0,     "spell_nature_starfall",     "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],     "=q5=" .. AL["Balance"] },
			{ 17, 41294, "",                          "=q4=Relentless Gladiator's Wyrmhide Gloves",      "=ds=#s9#, #a2#",           "", "1.28%" },
			{ 18, 41305, "",                          "=q4=Relentless Gladiator's Wyrmhide Legguards",   "=ds=#s11#, #a2#",          "", "1.28%" },
			{ 20, 0,     "ability_racial_bearform",   "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],     "=q5=" .. AL["Feral"] },
			{ 21, 41774, "",                          "=q4=Relentless Gladiator's Dragonhide Gloves",    "=ds=#s9#, #a2#",           "", "1.28%" },
			{ 22, 41668, "",                          "=q4=Relentless Gladiator's Dragonhide Legguards", "=ds=#s11#, #a2#",          "", "1.28%" },
			{ 24, 0,     "spell_nature_healingtouch", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],     "=q5=" .. AL["Restoration"] },
			{ 25, 41288, "",                          "=q4=Relentless Gladiator's Kodohide Gloves",      "=ds=#s9#, #a2#",           "", "1.28%" },
			{ 26, 41299, "",                          "=q4=Relentless Gladiator's Kodohide Legguards",   "=ds=#s11#, #a2#",          "", "1.28%" },
		},
		{

			{ 2,  48256, "", "=q4=Windrunner's Handguards of Triumph",     "=ds=#s9#, #a3#",  "", "2.6%" },
			{ 3,  48258, "", "=q4=Windrunner's Legguards of Triumph",      "=ds=#s11#, #a3#", "", "2.6%" },

			{ 6,  47753, "", "=q4=Khadgar's Gauntlets of Triumph",         "=ds=#s9#, #a1#",  "", "2.6%" },
			{ 7,  47755, "", "=q4=Khadgar's Leggings of Triumph",          "=ds=#s11#, #a1#", "", "2.6%" },

			{ 17, 41144, "", "=q4=Relentless Gladiator's Chain Gauntlets", "=ds=#s9#, #a3#",  "", "1.28%" },
			{ 18, 41206, "", "=q4=Relentless Gladiator's Chain Leggings",  "=ds=#s11#, #a3#", "", "1.28%" },

			{ 21, 41972, "", "=q4=Relentless Gladiator's Silk Handguards", "=ds=#s9#, #a1#",  "", "1.28%" },
			{ 22, 41960, "", "=q4=Relentless Gladiator's Silk Trousers",   "=ds=#s11#, #a1#", "", "1.28%" },
		},
		{
			{ 1,  0,     "Spell_Holy_HolyBolt",     "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"],   "=q5=" .. AL["Holy"] },
			{ 2,  48576, "",                        "=q4=Turalyon's Gloves of Triumph",                "=ds=#s9#, #a4#",           "", "2.6%" },
			{ 3,  48578, "",                        "=q4=Turalyon's Greaves of Triumph",               "=ds=#s11#, #a4#",          "", "2.6%" },
			{ 5,  0,     "Spell_Holy_AuraOfLight",  "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"],   "=q5=" .. AL["Retribution"] },
			{ 6,  48608, "",                        "=q4=Turalyon's Gauntlets of Triumph",             "=ds=#s9#, #a4#",           "", "2.6%" },
			{ 7,  48610, "",                        "=q4=Turalyon's Legplates of Triumph",             "=ds=#s11#, #a4#",          "", "2.6%" },
			{ 9,  0,     "spell_holy_devotionaura", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"],   "=q5=" .. AL["Protection"] },
			{ 10, 48640, "",                        "=q4=Turalyon's Handguards of Triumph",            "=ds=#s9#, #a4#",           "", "2.6%" },
			{ 11, 48638, "",                        "=q4=Turalyon's Legguards of Triumph",             "=ds=#s11#, #a4#",          "", "2.6%" },
			{ 16, 0,     "Spell_Holy_HolyBolt",     "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"],   "=q5=" .. AL["Holy"] },
			{ 17, 40928, "",                        "=q4=Relentless Gladiator's Ornamented Gloves",    "=ds=#s9#, #a4#",           "", "1.28%" },
			{ 18, 40940, "",                        "=q4=Relentless Gladiator's Ornamented Legplates", "=ds=#s11#, #a4#",          "", "1.28%" },
			{ 20, 0,     "Spell_Holy_AuraOfLight",  "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"],   "=q5=" .. AL["Retribution"] },
			{ 21, 40812, "",                        "=q4=Relentless Gladiator's Scaled Gauntlets",     "=ds=#s9#, #a4#",           "", "1.28%" },
			{ 22, 40852, "",                        "=q4=Relentless Gladiator's Scaled Legguards",     "=ds=#s11#, #a4#",          "", "1.28%" },
		},
		{
			{ 1,  0,     "spell_holy_guardianspirit",   "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"],  "=q5=" .. AL["Holy"] },
			{ 2,  47983, "",                            "=q4=Velen's Gloves of Triumph",                 "=ds=#s9#, #a1#",          "", "2.6%" },
			{ 3,  47985, "",                            "=q4=Velen's Leggings of Triumph",               "=ds=#s11#, #a1#",         "", "2.6%" },
			{ 5,  0,     "spell_shadow_shadowwordpain", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"],  "=q5=" .. AL["Shadow"] },
			{ 6,  48077, "",                            "=q4=Velen's Handwraps of Triumph",              "=ds=#s9#, #a1#",          "", "2.6%" },
			{ 7,  48079, "",                            "=q4=Velen's Pants of Triumph",                  "=ds=#s11#, #a1#",         "", "2.6%" },
			{ 9,  0,     "inv_throwingknife_04",        "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"],   "" },
			{ 10, 48224, "",                            "=q4=VanCleef's Gauntlets of Triumph",           "=ds=#s9#, #a2#",          "", "2.6%" },
			{ 11, 48226, "",                            "=q4=VanCleef's Legplates of Triumph",           "=ds=#s11#, #a2#",         "", "2.6%" },
			{ 16, 0,     "spell_holy_powerwordshield",  "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"],  "=q5=" .. AL["Discipline"] },
			{ 17, 41875, "",                            "=q4=Relentless Gladiator's Mooncloth Gloves",   "=ds=#s9#, #a1#",          "", "1.28%" },
			{ 18, 41865, "",                            "=q4=Relentless Gladiator's Mooncloth Leggings", "=ds=#s11#, #a1#",         "", "1.28%" },
			{ 20, 0,     "spell_shadow_shadowwordpain", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"],  "=q5=" .. AL["Shadow"] },
			{ 21, 41941, "",                            "=q4=Relentless Gladiator's Satin Gloves",       "=ds=#s9#, #a1#",          "", "1.28%" },
			{ 22, 41928, "",                            "=q4=Relentless Gladiator's Satin Leggings",     "=ds=#s11#, #a1#",         "", "1.28%" },
			{ 24, 0,     "inv_throwingknife_04",        "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"],   "" },
			{ 25, 41768, "",                            "=q4=Relentless Gladiator's Leather Gloves",     "=ds=#s9#, #a2#",          "", "1.28%" },
			{ 26, 41656, "",                            "=q4=Relentless Gladiator's Leather Legguards",  "=ds=#s11#, #a2#",         "", "1.28%" },
		},
		{
			{ 1,  0,     "Spell_Nature_Lightning",       "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],  "=q5=" .. AL["Elemental"] },
			{ 2,  48317, "",                             "=q4=Nobundo's Gloves of Triumph",               "=ds=#s9#, #a3#",           "", "2.6%" },
			{ 3,  48319, "",                             "=q4=Nobundo's Kilt of Triumph",                 "=ds=#s11#, #a3#",          "", "2.6%" },
			{ 5,  0,     "spell_nature_lightningshield", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],  "=q5=" .. AL["Enhancement"] },
			{ 6,  48347, "",                             "=q4=Nobundo's Grips of Triumph",                "=ds=#s9#, #a3#",           "", "2.6%" },
			{ 7,  48349, "",                             "=q4=Nobundo's War-Kilt of Triumph",             "=ds=#s11#, #a3#",          "", "2.6%" },
			{ 9,  0,     "spell_nature_magicimmunity",   "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],  "=q5=" .. AL["Restoration"] },
			{ 10, 48286, "",                             "=q4=Nobundo's Handguards of Triumph",           "=ds=#s9#, #a3#",           "", "2.6%" },
			{ 11, 48288, "",                             "=q4=Nobundo's Legguards of Triumph",            "=ds=#s11#, #a3#",          "", "2.6%" },
			{ 16, 0,     "Spell_Nature_Lightning",       "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],  "=q5=" .. AL["Elemental"] },
			{ 17, 41008, "",                             "=q4=Relentless Gladiator's Mail Gauntlets",     "=ds=#s9#, #a3#",           "", "1.28%" },
			{ 18, 41034, "",                             "=q4=Relentless Gladiator's Mail Leggings",      "=ds=#s11#, #a3#",          "", "1.28%" },
			{ 20, 0,     "spell_nature_lightningshield", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],  "=q5=" .. AL["Enhancement"] },
			{ 21, 41138, "",                             "=q4=Relentless Gladiator's Linked Gauntlets",   "=ds=#s9#, #a3#",           "", "1.28%" },
			{ 22, 41200, "",                             "=q4=Relentless Gladiator's Linked Leggings",    "=ds=#s11#, #a3#",          "", "1.28%" },
			{ 24, 0,     "spell_nature_magicimmunity",   "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],  "=q5=" .. AL["Restoration"] },
			{ 25, 41002, "",                             "=q4=Relentless Gladiator's Ringmail Gauntlets", "=ds=#s9#, #a3#",           "", "1.28%" },
			{ 26, 41028, "",                             "=q4=Relentless Gladiator's Ringmail Leggings",  "=ds=#s11#, #a3#",          "", "1.28%" },
		},
		{
			{ 1,  0,     "spell_nature_drowsy",             "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],  "" },
			{ 2,  47782, "",                                "=q4=Kel'Thuzad's Gloves of Triumph",             "=ds=#s9#, #a1#",          "", "2.6%" },
			{ 3,  47780, "",                                "=q4=Kel'Thuzad's Leggings of Triumph",           "=ds=#s11#, #a1#",         "", "2.6%" },
			{ 5,  0,     "ability_warrior_innerrage",       "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"],  "=q5=" .. AL["DPS"] },
			{ 6,  48377, "",                                "=q4=Wrynn's Gauntlets of Triumph",               "=ds=#s9#, #a4#",          "", "2.6%" },
			{ 7,  48379, "",                                "=q4=Wrynn's Legplates of Triumph",               "=ds=#s11#, #a4#",         "", "2.6%" },
			{ 9,  0,     "ability_warrior_defensivestance", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"],  "=q5=" .. AL["Protection"] },
			{ 10, 48452, "",                                "=q4=Wrynn's Handguards of Triumph",              "=ds=#s9#, #a4#",          "", "2.6%" },
			{ 11, 48446, "",                                "=q4=Wrynn's Legguards of Triumph",               "=ds=#s11#, #a4#",         "", "2.6%" },
			{ 16, 0,     "spell_nature_drowsy",             "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],  "" },
			{ 17, 42018, "",                                "=q4=Relentless Gladiator's Felweave Handguards", "=ds=#s9#, #a1#",          "", "1.28%" },
			{ 18, 42006, "",                                "=q4=Relentless Gladiator's Felweave Trousers",   "=ds=#s11#, #a1#",         "", "1.28%" },

			{ 21, 40810, "",                                "=q4=Relentless Gladiator's Plate Gauntlets",     "=ds=#s9#, #a4#",          "", "1.28%" },
			{ 22, 40850, "",                                "=q4=Relentless Gladiator's Plate Legguards",     "=ds=#s11#, #a4#",         "", "1.28%" },
		},
		{
			{ 1,  0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                  "=q5=" .. BabbleInventory["Cloth"] },
			{ 2,  41910, "",           "=q4=Relentless Gladiator's Cuffs of Dominance",    "=ds=#s8#, #a1#",                    "", "1.28%" },
			{ 3,  41899, "",           "=q4=Relentless Gladiator's Cord of Dominance",     "=ds=#s10#, #a1#",                   "", "1.28%" },
			{ 4,  41904, "",           "=q4=Relentless Gladiator's Treads of Dominance",   "=ds=#s12#, #a1#",                   "", "1.28%" },
			{ 6,  41894, "",           "=q4=Relentless Gladiator's Cuffs of Salvation",    "=ds=#s8#, #a1#",                    "", "1.28%" },
			{ 7,  41882, "",           "=q4=Relentless Gladiator's Cord of Salvation",     "=ds=#s10#, #a1#",                   "", "1.28%" },
			{ 8,  41886, "",           "=q4=Relentless Gladiator's Treads of Salvation",   "=ds=#s12#, #a1#",                   "", "1.28%" },
			{ 10, 49181, "",           "=q4=Relentless Gladiator's Cuffs of Alacrity",     "=ds=#s8#, #a1#",                    "", "1.28%" },
			{ 11, 49179, "",           "=q4=Relentless Gladiator's Cord of Alacrity",      "=ds=#s10#, #a1#",                   "", "1.28%" },
			{ 12, 49183, "",           "=q4=Relentless Gladiator's Treads of Alacrity",    "=ds=#s12#, #a1#",                   "", "1.28%" },
			{ 16, 0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                  "=q5=" .. BabbleInventory["Leather"] },
			{ 17, 41641, "",           "=q4=Relentless Gladiator's Armwraps of Dominance", "=ds=#s8#, #a2#",                    "", "1.28%" },
			{ 18, 41631, "",           "=q4=Relentless Gladiator's Belt of Dominance",     "=ds=#s10#, #a2#",                   "", "1.28%" },
			{ 19, 41636, "",           "=q4=Relentless Gladiator's Boots of Dominance",    "=ds=#s12#, #a2#",                   "", "1.28%" },
			{ 21, 41626, "",           "=q4=Relentless Gladiator's Armwraps of Salvation", "=ds=#s8#, #a2#",                    "", "1.28%" },
			{ 22, 41618, "",           "=q4=Relentless Gladiator's Belt of Salvation",     "=ds=#s10#, #a2#",                   "", "1.28%" },
			{ 23, 41622, "",           "=q4=Relentless Gladiator's Boots of Salvation",    "=ds=#s12#, #a2#",                   "", "1.28%" },
			{ 25, 41841, "",           "=q4=Relentless Gladiator's Armwraps of Triumph",   "=ds=#s8#, #a2#",                    "", "1.28%" },
			{ 26, 41833, "",           "=q4=Relentless Gladiator's Belt of Triumph",       "=ds=#s10#, #a2#",                   "", "1.28%" },
			{ 27, 41837, "",           "=q4=Relentless Gladiator's Boots of Triumph",      "=ds=#s12#, #a2#",                   "", "1.28%" },
		},
		{
			{ 1,  0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                     "=q5=" .. BabbleInventory["Mail"] },
			{ 2,  41066, "",           "=q4=Relentless Gladiator's Wristguards of Dominance", "=ds=#s8#, #a3#",                  "", "1.28%" },
			{ 3,  41071, "",           "=q4=Relentless Gladiator's Waistguard of Dominance",  "=ds=#s10#, #a3#",                 "", "1.28%" },
			{ 4,  41076, "",           "=q4=Relentless Gladiator's Sabatons of Dominance",    "=ds=#s12#, #a3#",                 "", "1.28%" },
			{ 6,  41061, "",           "=q4=Relentless Gladiator's Wristguards of Salvation", "=ds=#s8#, #a3#",                  "", "1.28%" },
			{ 7,  41052, "",           "=q4=Relentless Gladiator's Waistguard of Salvation",  "=ds=#s10#, #a3#",                 "", "1.28%" },
			{ 8,  41056, "",           "=q4=Relentless Gladiator's Sabatons of Salvation",    "=ds=#s12#, #a3#",                 "", "1.28%" },
			{ 10, 41226, "",           "=q4=Relentless Gladiator's Wristguards of Triumph",   "=ds=#s8#, #a3#",                  "", "1.28%" },
			{ 11, 41236, "",           "=q4=Relentless Gladiator's Waistguard of Triumph",    "=ds=#s10#, #a3#",                 "", "1.28%" },
			{ 12, 41231, "",           "=q4=Relentless Gladiator's Sabatons of Triumph",      "=ds=#s12#, #a3#",                 "", "1.28%" },
			{ 16, 0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                     "=q5=" .. BabbleInventory["Plate"] },
			{ 17, 40984, "",           "=q4=Relentless Gladiator's Bracers of Salvation",     "=ds=#s8#, #a4#",                  "", "1.28%" },
			{ 18, 40978, "",           "=q4=Relentless Gladiator's Girdle of Salvation",      "=ds=#s10#, #a4#",                 "", "1.28%" },
			{ 19, 40979, "",           "=q4=Relentless Gladiator's Greaves of Salvation",     "=ds=#s12#, #a4#",                 "", "1.28%" },
			{ 21, 40890, "",           "=q4=Relentless Gladiator's Bracers of Triumph",       "=ds=#s8#, #a4#",                  "", "1.28%" },
			{ 22, 40883, "",           "=q4=Relentless Gladiator's Girdle of Triumph",        "=ds=#s10#, #a4#",                 "", "1.28%" },
			{ 23, 40884, "",           "=q4=Relentless Gladiator's Greaves of Triumph",       "=ds=#s12#, #a4#",                 "", "1.28%" },
		},
		{
			{ 1,  0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                   "=q5=" .. BabbleInventory["Back"] },
			{ 2,  42078, "",           "=q4=Relentless Gladiator's Cloak of Ascendancy",    "=ds=#s4#",                       "", "1.28%" },
			{ 3,  42080, "",           "=q4=Relentless Gladiator's Cloak of Deliverance",   "=ds=#s4#",                       "", "1.28%" },
			{ 4,  42076, "",           "=q4=Relentless Gladiator's Cloak of Dominance",     "=ds=#s4#",                       "", "1.28%" },
			{ 5,  42079, "",           "=q4=Relentless Gladiator's Cloak of Salvation",     "=ds=#s4#",                       "", "1.28%" },
			{ 6,  42077, "",           "=q4=Relentless Gladiator's Cloak of Subjugation",   "=ds=#s4#",                       "", "1.28%" },
			{ 7,  42081, "",           "=q4=Relentless Gladiator's Cloak of Triumph",       "=ds=#s4#",                       "", "1.28%" },
			{ 8,  42082, "",           "=q4=Relentless Gladiator's Cloak of Victory",       "=ds=#s4#",                       "", "1.28%" },
			{ 10, 0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                   "=q5=" .. BabbleInventory["Ring"] },
			{ 11, 42118, "",           "=q4=Relentless Gladiator's Band of Ascendancy",     "=ds=#s13#",                      "", "1.28%" },
			{ 12, 42119, "",           "=q4=Relentless Gladiator's Band of Victory",        "=ds=#s13#",                      "", "1.28%" },
			{ 16, 0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                   "=q5=" .. BabbleInventory["Neck"] },
			{ 17, 42044, "",           "=q4=Relentless Gladiator's Pendant of Ascendancy",  "=ds=#s2#",                       "", "1.28%" },
			{ 18, 42046, "",           "=q4=Relentless Gladiator's Pendant of Deliverance", "=ds=#s2#",                       "", "1.28%" },
			{ 19, 42043, "",           "=q4=Relentless Gladiator's Pendant of Dominance",   "=ds=#s2#",                       "", "1.28%" },
			{ 20, 42047, "",           "=q4=Relentless Gladiator's Pendant of Salvation",   "=ds=#s2#",                       "", "1.28%" },
			{ 21, 42045, "",           "=q4=Relentless Gladiator's Pendant of Subjugation", "=ds=#s2#",                       "", "1.28%" },
			{ 22, 46374, "",           "=q4=Relentless Gladiator's Pendant of Sundering",   "=ds=#s2#",                       "", "1.28%" },
			{ 23, 42041, "",           "=q4=Relentless Gladiator's Pendant of Triumph",     "=ds=#s2#",                       "", "1.28%" },
			{ 24, 42042, "",           "=q4=Relentless Gladiator's Pendant of Victory",     "=ds=#s2#",                       "", "1.28%" },
		},
		{

			{ 2,  48499, "", "=q4=Koltira's Gauntlets of Triumph",              "=ds=#s9#, #a4#",  "", "2.6%" },
			{ 3,  48497, "", "=q4=Koltira's Legplates of Triumph",              "=ds=#s11#, #a4#", "", "2.6%" },

			{ 6,  48556, "", "=q4=Koltira's Handguards of Triumph",             "=ds=#s9#, #a4#",  "", "2.6%" },
			{ 7,  48554, "", "=q4=Koltira's Legguards of Triumph",              "=ds=#s11#, #a4#", "", "2.6%" },

			{ 17, 40811, "", "=q4=Relentless Gladiator's Dreadplate Gauntlets", "=ds=#s9#, #a4#",  "", "1.28%" },
			{ 18, 40851, "", "=q4=Relentless Gladiator's Dreadplate Legguards", "=ds=#s11#, #a4#", "", "1.28%" },
		},
		{
			{ 1,  0,     "spell_nature_starfall",     "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],     "=q5=" .. AL["Balance"] },
			{ 2,  48182, "",                          "=q4=Runetotem's Gloves of Triumph",               "=ds=#s9#, #a2#",           "", "2.6%" },
			{ 3,  48180, "",                          "=q4=Runetotem's Trousers of Triumph",             "=ds=#s11#, #a2#",          "", "2.6%" },
			{ 5,  0,     "ability_racial_bearform",   "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],     "=q5=" .. AL["Feral"] },
			{ 6,  48193, "",                          "=q4=Runetotem's Handgrips of Triumph",            "=ds=#s9#, #a2#",           "", "2.6%" },
			{ 7,  48195, "",                          "=q4=Runetotem's Legguards of Triumph",            "=ds=#s11#, #a2#",          "", "2.6%" },
			{ 9,  0,     "spell_nature_healingtouch", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],     "=q5=" .. AL["Restoration"] },
			{ 10, 48152, "",                          "=q4=Runetotem's Handguards of Triumph",           "=ds=#s9#, #a2#",           "", "2.6%" },
			{ 11, 48150, "",                          "=q4=Runetotem's Leggings of Triumph",             "=ds=#s11#, #a2#",          "", "2.6%" },
			{ 16, 0,     "spell_nature_starfall",     "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],     "=q5=" .. AL["Balance"] },
			{ 17, 41294, "",                          "=q4=Relentless Gladiator's Wyrmhide Gloves",      "=ds=#s9#, #a2#",           "", "1.28%" },
			{ 18, 41305, "",                          "=q4=Relentless Gladiator's Wyrmhide Legguards",   "=ds=#s11#, #a2#",          "", "1.28%" },
			{ 20, 0,     "ability_racial_bearform",   "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],     "=q5=" .. AL["Feral"] },
			{ 21, 41774, "",                          "=q4=Relentless Gladiator's Dragonhide Gloves",    "=ds=#s9#, #a2#",           "", "1.28%" },
			{ 22, 41668, "",                          "=q4=Relentless Gladiator's Dragonhide Legguards", "=ds=#s11#, #a2#",          "", "1.28%" },
			{ 24, 0,     "spell_nature_healingtouch", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],     "=q5=" .. AL["Restoration"] },
			{ 25, 41288, "",                          "=q4=Relentless Gladiator's Kodohide Gloves",      "=ds=#s9#, #a2#",           "", "1.28%" },
			{ 26, 41299, "",                          "=q4=Relentless Gladiator's Kodohide Legguards",   "=ds=#s11#, #a2#",          "", "1.28%" },
		},
		{

			{ 2,  48273, "", "=q4=Windrunner's Handguards of Triumph",     "=ds=#s9#, #a3#",  "", "2.6%" },
			{ 3,  48271, "", "=q4=Windrunner's Legguards of Triumph",      "=ds=#s11#, #a3#", "", "2.6%" },

			{ 6,  47772, "", "=q4=Sunstrider's Gauntlets of Triumph",      "=ds=#s9#, #a1#",  "", "2.6%" },
			{ 7,  47770, "", "=q4=Sunstrider's Leggings of Triumph",       "=ds=#s11#, #a1#", "", "2.6%" },

			{ 17, 41144, "", "=q4=Relentless Gladiator's Chain Gauntlets", "=ds=#s9#, #a3#",  "", "1.28%" },
			{ 18, 41206, "", "=q4=Relentless Gladiator's Chain Leggings",  "=ds=#s11#, #a3#", "", "1.28%" },

			{ 21, 41972, "", "=q4=Relentless Gladiator's Silk Handguards", "=ds=#s9#, #a1#",  "", "1.28%" },
			{ 22, 41960, "", "=q4=Relentless Gladiator's Silk Trousers",   "=ds=#s11#, #a1#", "", "1.28%" },
		},
		{
			{ 1,  0,     "Spell_Holy_HolyBolt",     "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"],   "=q5=" .. AL["Holy"] },
			{ 2,  48593, "",                        "=q4=Liadrin's Gloves of Triumph",                 "=ds=#s9#, #a4#",           "", "2.6%" },
			{ 3,  48591, "",                        "=q4=Liadrin's Greaves of Triumph",                "=ds=#s11#, #a4#",          "", "2.6%" },
			{ 5,  0,     "Spell_Holy_AuraOfLight",  "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"],   "=q5=" .. AL["Retribution"] },
			{ 6,  48625, "",                        "=q4=Liadrin's Gauntlets of Triumph",              "=ds=#s9#, #a4#",           "", "2.6%" },
			{ 7,  48623, "",                        "=q4=Liadrin's Legplates of Triumph",              "=ds=#s11#, #a4#",          "", "2.6%" },
			{ 9,  0,     "spell_holy_devotionaura", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"],   "=q5=" .. AL["Protection"] },
			{ 10, 48658, "",                        "=q4=Liadrin's Handguards of Triumph",             "=ds=#s9#, #a4#",           "", "2.6%" },
			{ 11, 48660, "",                        "=q4=Liadrin's Legguards of Triumph",              "=ds=#s11#, #a4#",          "", "2.6%" },
			{ 16, 0,     "Spell_Holy_HolyBolt",     "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"],   "=q5=" .. AL["Holy"] },
			{ 17, 40928, "",                        "=q4=Relentless Gladiator's Ornamented Gloves",    "=ds=#s9#, #a4#",           "", "1.28%" },
			{ 18, 40940, "",                        "=q4=Relentless Gladiator's Ornamented Legplates", "=ds=#s11#, #a4#",          "", "1.28%" },
			{ 20, 0,     "Spell_Holy_AuraOfLight",  "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"],   "=q5=" .. AL["Retribution"] },
			{ 21, 40812, "",                        "=q4=Relentless Gladiator's Scaled Gauntlets",     "=ds=#s9#, #a4#",           "", "1.28%" },
			{ 22, 40852, "",                        "=q4=Relentless Gladiator's Scaled Legguards",     "=ds=#s11#, #a4#",          "", "1.28%" },
		},
		{
			{ 1,  0,     "spell_holy_guardianspirit",   "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"],  "=q5=" .. AL["Holy"] },
			{ 2,  48066, "",                            "=q4=Zabra's Gloves of Triumph",                 "=ds=#s9#, #a1#",          "", "2.6%" },
			{ 3,  48064, "",                            "=q4=Zabra's Leggings of Triumph",               "=ds=#s11#, #a1#",         "", "2.6%" },
			{ 5,  0,     "spell_shadow_shadowwordpain", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"],  "=q5=" .. AL["Shadow"] },
			{ 6,  48096, "",                            "=q4=Zabra's Handwraps of Triumph",              "=ds=#s9#, #a1#",          "", "2.6%" },
			{ 7,  48094, "",                            "=q4=Zabra's Pants of Triumph",                  "=ds=#s11#, #a1#",         "", "2.6%" },
			{ 9,  0,     "inv_throwingknife_04",        "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"],   "" },
			{ 10, 48241, "",                            "=q4=Garona's Gauntlets of Triumph",             "=ds=#s9#, #a2#",          "", "2.6%" },
			{ 11, 48239, "",                            "=q4=Garona's Legplates of Triumph",             "=ds=#s11#, #a2#",         "", "2.6%" },
			{ 16, 0,     "spell_holy_powerwordshield",  "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"],  "=q5=" .. AL["Discipline"] },
			{ 17, 41875, "",                            "=q4=Relentless Gladiator's Mooncloth Gloves",   "=ds=#s9#, #a1#",          "", "1.28%" },
			{ 18, 41865, "",                            "=q4=Relentless Gladiator's Mooncloth Leggings", "=ds=#s11#, #a1#",         "", "1.28%" },
			{ 20, 0,     "spell_shadow_shadowwordpain", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"],  "=q5=" .. AL["Shadow"] },
			{ 21, 41941, "",                            "=q4=Relentless Gladiator's Satin Gloves",       "=ds=#s9#, #a1#",          "", "1.28%" },
			{ 22, 41928, "",                            "=q4=Relentless Gladiator's Satin Leggings",     "=ds=#s11#, #a1#",         "", "1.28%" },
			{ 24, 0,     "inv_throwingknife_04",        "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"],   "" },
			{ 25, 41768, "",                            "=q4=Relentless Gladiator's Leather Gloves",     "=ds=#s9#, #a2#",          "", "1.28%" },
			{ 26, 41656, "",                            "=q4=Relentless Gladiator's Leather Legguards",  "=ds=#s11#, #a2#",         "", "1.28%" },
		},
		{
			{ 1,  0,     "Spell_Nature_Lightning",       "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],  "=q5=" .. AL["Elemental"] },
			{ 2,  48334, "",                             "=q4=Thrall's Gloves of Triumph",                "=ds=#s9#, #a3#",           "", "2.6%" },
			{ 3,  48332, "",                             "=q4=Thrall's Kilt of Triumph",                  "=ds=#s11#, #a3#",          "", "2.6%" },
			{ 5,  0,     "spell_nature_lightningshield", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],  "=q5=" .. AL["Enhancement"] },
			{ 6,  48364, "",                             "=q4=Thrall's Grips of Triumph",                 "=ds=#s9#, #a3#",           "", "2.6%" },
			{ 7,  48362, "",                             "=q4=Thrall's War-Kilt of Triumph",              "=ds=#s11#, #a3#",          "", "2.6%" },
			{ 9,  0,     "spell_nature_magicimmunity",   "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],  "=q5=" .. AL["Restoration"] },
			{ 10, 48301, "",                             "=q4=Thrall's Handguards of Triumph",            "=ds=#s9#, #a3#",           "", "2.6%" },
			{ 11, 48303, "",                             "=q4=Thrall's Legguards of Triumph",             "=ds=#s11#, #a3#",          "", "2.6%" },
			{ 16, 0,     "Spell_Nature_Lightning",       "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],  "=q5=" .. AL["Elemental"] },
			{ 17, 41008, "",                             "=q4=Relentless Gladiator's Mail Gauntlets",     "=ds=#s9#, #a3#",           "", "1.28%" },
			{ 18, 41034, "",                             "=q4=Relentless Gladiator's Mail Leggings",      "=ds=#s11#, #a3#",          "", "1.28%" },
			{ 20, 0,     "spell_nature_lightningshield", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],  "=q5=" .. AL["Enhancement"] },
			{ 21, 41138, "",                             "=q4=Relentless Gladiator's Linked Gauntlets",   "=ds=#s9#, #a3#",           "", "1.28%" },
			{ 22, 41200, "",                             "=q4=Relentless Gladiator's Linked Leggings",    "=ds=#s11#, #a3#",          "", "1.28%" },
			{ 24, 0,     "spell_nature_magicimmunity",   "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],  "=q5=" .. AL["Restoration"] },
			{ 25, 41002, "",                             "=q4=Relentless Gladiator's Ringmail Gauntlets", "=ds=#s9#, #a3#",           "", "1.28%" },
			{ 26, 41028, "",                             "=q4=Relentless Gladiator's Ringmail Leggings",  "=ds=#s11#, #a3#",          "", "1.28%" },
		},
		{
			{ 1,  0,     "spell_nature_drowsy",             "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],  "" },
			{ 2,  47803, "",                                "=q4=Gul'dan's Gloves of Triumph",                "=ds=#s9#, #a1#",          "", "2.6%" },
			{ 3,  47805, "",                                "=q4=Gul'dan's Leggings of Triumph",              "=ds=#s11#, #a1#",         "", "2.6%" },
			{ 5,  0,     "ability_warrior_innerrage",       "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"],  "=q5=" .. AL["DPS"] },
			{ 6,  48392, "",                                "=q4=Hellscream's Gauntlets of Triumph",          "=ds=#s9#, #a4#",          "", "2.6%" },
			{ 7,  48394, "",                                "=q4=Hellscream's Legplates of Triumph",          "=ds=#s11#, #a4#",         "", "2.6%" },
			{ 9,  0,     "ability_warrior_defensivestance", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"],  "=q5=" .. AL["Protection"] },
			{ 10, 48462, "",                                "=q4=Hellscream's Handguards of Triumph",         "=ds=#s9#, #a4#",          "", "2.6%" },
			{ 11, 48464, "",                                "=q4=Hellscream's Legguards of Triumph",          "=ds=#s11#, #a4#",         "", "2.6%" },
			{ 16, 0,     "spell_nature_drowsy",             "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],  "" },
			{ 17, 42018, "",                                "=q4=Relentless Gladiator's Felweave Handguards", "=ds=#s9#, #a1#",          "", "1.28%" },
			{ 18, 42006, "",                                "=q4=Relentless Gladiator's Felweave Trousers",   "=ds=#s11#, #a1#",         "", "1.28%" },

			{ 21, 40810, "",                                "=q4=Relentless Gladiator's Plate Gauntlets",     "=ds=#s9#, #a4#",          "", "1.28%" },
			{ 22, 40850, "",                                "=q4=Relentless Gladiator's Plate Legguards",     "=ds=#s11#, #a4#",         "", "1.28%" },
		},
		{
			{ 1,  0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                  "=q5=" .. BabbleInventory["Cloth"] },
			{ 2,  41910, "",           "=q4=Relentless Gladiator's Cuffs of Dominance",    "=ds=#s8#, #a1#",                    "", "1.28%" },
			{ 3,  41899, "",           "=q4=Relentless Gladiator's Cord of Dominance",     "=ds=#s19#, #a1#",                   "", "1.28%" },
			{ 4,  41904, "",           "=q4=Relentless Gladiator's Treads of Dominance",   "=ds=#s12#, #a1#",                   "", "1.28%" },
			{ 6,  41894, "",           "=q4=Relentless Gladiator's Cuffs of Salvation",    "=ds=#s8#, #a1#",                    "", "1.28%" },
			{ 7,  41882, "",           "=q4=Relentless Gladiator's Cord of Salvation",     "=ds=#s10#, #a1#",                   "", "1.28%" },
			{ 8,  41886, "",           "=q4=Relentless Gladiator's Treads of Salvation",   "=ds=#s12#, #a1#",                   "", "1.28%" },
			{ 10, 49181, "",           "=q4=Relentless Gladiator's Cuffs of Alacrity",     "=ds=#s8#, #a1#",                    "", "1.28%" },
			{ 11, 49179, "",           "=q4=Relentless Gladiator's Cord of Alacrity",      "=ds=#s10#, #a1#",                   "", "1.28%" },
			{ 12, 49183, "",           "=q4=Relentless Gladiator's Treads of Alacrity",    "=ds=#s12#, #a1#",                   "", "1.28%" },
			{ 16, 0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                  "=q5=" .. BabbleInventory["Leather"] },
			{ 17, 41641, "",           "=q4=Relentless Gladiator's Armwraps of Dominance", "=ds=#s8#, #a2#",                    "", "1.28%" },
			{ 18, 41631, "",           "=q4=Relentless Gladiator's Belt of Dominance",     "=ds=#s10#, #a2#",                   "", "1.28%" },
			{ 19, 41636, "",           "=q4=Relentless Gladiator's Boots of Dominance",    "=ds=#s12#, #a2#",                   "", "1.28%" },
			{ 21, 41626, "",           "=q4=Relentless Gladiator's Armwraps of Salvation", "=ds=#s8#, #a2#",                    "", "1.28%" },
			{ 22, 41618, "",           "=q4=Relentless Gladiator's Belt of Salvation",     "=ds=#s10#, #a2#",                   "", "1.28%" },
			{ 23, 41622, "",           "=q4=Relentless Gladiator's Boots of Salvation",    "=ds=#s12#, #a2#",                   "", "1.28%" },
			{ 25, 41841, "",           "=q4=Relentless Gladiator's Armwraps of Triumph",   "=ds=#s8#, #a2#",                    "", "1.28%" },
			{ 26, 41833, "",           "=q4=Relentless Gladiator's Belt of Triumph",       "=ds=#s10#, #a2#",                   "", "1.28%" },
			{ 27, 41837, "",           "=q4=Relentless Gladiator's Boots of Triumph",      "=ds=#s12#, #a2#",                   "", "1.28%" },
		},
		{
			{ 1,  0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                     "=q5=" .. BabbleInventory["Mail"] },
			{ 2,  41066, "",           "=q4=Relentless Gladiator's Wristguards of Dominance", "=ds=#s8#, #a3#",                  "", "1.28%" },
			{ 3,  41071, "",           "=q4=Relentless Gladiator's Waistguard of Dominance",  "=ds=#s10#, #a3#",                 "", "1.28%" },
			{ 4,  41076, "",           "=q4=Relentless Gladiator's Sabatons of Dominance",    "=ds=#s12#, #a3#",                 "", "1.28%" },
			{ 6,  41061, "",           "=q4=Relentless Gladiator's Wristguards of Salvation", "=ds=#s8#, #a3#",                  "", "1.28%" },
			{ 7,  41052, "",           "=q4=Relentless Gladiator's Waistguard of Salvation",  "=ds=#s10#, #a3#",                 "", "1.28%" },
			{ 8,  41056, "",           "=q4=Relentless Gladiator's Sabatons of Salvation",    "=ds=#s12#, #a3#",                 "", "1.28%" },
			{ 10, 41226, "",           "=q4=Relentless Gladiator's Wristguards of Triumph",   "=ds=#s8#, #a3#",                  "", "1.28%" },
			{ 11, 41236, "",           "=q4=Relentless Gladiator's Waistguard of Triumph",    "=ds=#s10#, #a3#",                 "", "1.28%" },
			{ 12, 41231, "",           "=q4=Relentless Gladiator's Sabatons of Triumph",      "=ds=#s12#, #a3#",                 "", "1.28%" },
			{ 16, 0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                     "=q5=" .. BabbleInventory["Plate"] },
			{ 17, 40984, "",           "=q4=Relentless Gladiator's Bracers of Salvation",     "=ds=#s8#, #a4#",                  "", "1.28%" },
			{ 18, 40978, "",           "=q4=Relentless Gladiator's Girdle of Salvation",      "=ds=#s10#, #a4#",                 "", "1.28%" },
			{ 19, 40979, "",           "=q4=Relentless Gladiator's Greaves of Salvation",     "=ds=#s12#, #a4#",                 "", "1.28%" },
			{ 21, 40890, "",           "=q4=Relentless Gladiator's Bracers of Triumph",       "=ds=#s8#, #a4#",                  "", "1.28%" },
			{ 22, 40883, "",           "=q4=Relentless Gladiator's Girdle of Triumph",        "=ds=#s10#, #a4#",                 "", "1.28%" },
			{ 23, 40884, "",           "=q4=Relentless Gladiator's Greaves of Triumph",       "=ds=#s12#, #a4#",                 "", "1.28%" },
		},
		{
			{ 1,  0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                   "=q5=" .. BabbleInventory["Back"] },
			{ 2,  42078, "",           "=q4=Relentless Gladiator's Cloak of Ascendancy",    "=ds=#s4#",                       "", "1.28%" },
			{ 3,  42080, "",           "=q4=Relentless Gladiator's Cloak of Deliverance",   "=ds=#s4#",                       "", "1.28%" },
			{ 4,  42076, "",           "=q4=Relentless Gladiator's Cloak of Dominance",     "=ds=#s4#",                       "", "1.28%" },
			{ 5,  42079, "",           "=q4=Relentless Gladiator's Cloak of Salvation",     "=ds=#s4#",                       "", "1.28%" },
			{ 6,  42077, "",           "=q4=Relentless Gladiator's Cloak of Subjugation",   "=ds=#s4#",                       "", "1.28%" },
			{ 7,  42081, "",           "=q4=Relentless Gladiator's Cloak of Triumph",       "=ds=#s4#",                       "", "1.28%" },
			{ 8,  42082, "",           "=q4=Relentless Gladiator's Cloak of Victory",       "=ds=#s4#",                       "", "1.28%" },
			{ 10, 0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                   "=q5=" .. BabbleInventory["Ring"] },
			{ 11, 42118, "",           "=q4=Relentless Gladiator's Band of Ascendancy",     "=ds=#s13#",                      "", "1.28%" },
			{ 12, 42119, "",           "=q4=Relentless Gladiator's Band of Victory",        "=ds=#s13#",                      "", "1.28%" },
			{ 16, 0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                   "=q5=" .. BabbleInventory["Neck"] },
			{ 17, 42044, "",           "=q4=Relentless Gladiator's Pendant of Ascendancy",  "=ds=#s2#",                       "", "1.28%" },
			{ 18, 42046, "",           "=q4=Relentless Gladiator's Pendant of Deliverance", "=ds=#s2#",                       "", "1.28%" },
			{ 19, 42043, "",           "=q4=Relentless Gladiator's Pendant of Dominance",   "=ds=#s2#",                       "", "1.28%" },
			{ 20, 42047, "",           "=q4=Relentless Gladiator's Pendant of Salvation",   "=ds=#s2#",                       "", "1.28%" },
			{ 21, 42045, "",           "=q4=Relentless Gladiator's Pendant of Subjugation", "=ds=#s2#",                       "", "1.28%" },
			{ 22, 46374, "",           "=q4=Relentless Gladiator's Pendant of Sundering",   "=ds=#s2#",                       "", "1.28%" },
			{ 23, 42041, "",           "=q4=Relentless Gladiator's Pendant of Triumph",     "=ds=#s2#",                       "", "1.28%" },
			{ 24, 42042, "",           "=q4=Relentless Gladiator's Pendant of Victory",     "=ds=#s2#",                       "", "1.28%" },
		},
	},
	info = {
		name = BabbleBoss["Koralon"],
		module = moduleName,
		instance = "Vault Of Archavon",
		menu = "KORALON",
	},
};

Synastria_Data["Toravon"] = {
	["Normal"] = {
		{

			{ 2,  50095, "", "=q4=Scourgelord Gauntlets",                       "=ds=#s9#, #a4#",  "", "0.85%" },
			{ 3,  50097, "", "=q4=Scourgelord Legplates",                       "=ds=#s11#, #a4#", "", "0.85%" },

			{ 6,  50856, "", "=q4=Scourgelord Handguards",                      "=ds=#s9#, #a4#",  "", "0.85%" },
			{ 7,  50854, "", "=q4=Scourgelord Legguards",                       "=ds=#s11#, #a4#", "", "0.85%" },

			{ 17, 40811, "", "=q4=Relentless Gladiator's Dreadplate Gauntlets", "=ds=#s9#, #a4#",  "", "0.85%" },
			{ 18, 40851, "", "=q4=Relentless Gladiator's Dreadplate Legguards", "=ds=#s11#, #a4#", "", "0.85%" },
		},
		{
			{ 1,  0,     "spell_nature_starfall",     "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],     "=q5=" .. AL["Balance"] },
			{ 2,  50822, "",                          "=q4=Lasherweave's Gloves",                        "=ds=#s9#, #a2#",           "", "0.85%" },
			{ 3,  50820, "",                          "=q4=Lasherweave's Trousers",                      "=ds=#s11#, #a2#",          "", "0.85%" },
			{ 5,  0,     "ability_racial_bearform",   "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],     "=q5=" .. AL["Feral"] },
			{ 6,  50827, "",                          "=q4=Lasherweave's Handgrips",                     "=ds=#s9#, #a2#",           "", "0.85%" },
			{ 7,  50825, "",                          "=q4=Lasherweave's Legguards",                     "=ds=#s11#, #a2#",          "", "0.85%" },
			{ 9,  0,     "spell_nature_healingtouch", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],     "=q5=" .. AL["Restoration"] },
			{ 10, 50107, "",                          "=q4=Lasherweave's Gauntlets",                     "=ds=#s9#, #a2#" },
			{ 11, 50109, "",                          "=q4=Lasherweave's Legplates",                     "=ds=#s11#, #a2#",          "", "0.85%" },
			{ 16, 0,     "spell_nature_starfall",     "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],     "=q5=" .. AL["Balance"] },
			{ 17, 41294, "",                          "=q4=Relentless Gladiator's Wyrmhide Gloves",      "=ds=#s9#, #a2#",           "", "0.85%" },
			{ 18, 41305, "",                          "=q4=Relentless Gladiator's Wyrmhide Legguards",   "=ds=#s11#, #a2#",          "", "0.85%" },
			{ 20, 0,     "ability_racial_bearform",   "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],     "=q5=" .. AL["Feral"] },
			{ 21, 41774, "",                          "=q4=Relentless Gladiator's Dragonhide Gloves",    "=ds=#s9#, #a2#",           "", "0.85%" },
			{ 22, 41668, "",                          "=q4=Relentless Gladiator's Dragonhide Legguards", "=ds=#s11#, #a2#",          "", "0.85%" },
			{ 24, 0,     "spell_nature_healingtouch", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],     "=q5=" .. AL["Restoration"] },
			{ 25, 41288, "",                          "=q4=Relentless Gladiator's Kodohide Gloves",      "=ds=#s9#, #a2#",           "", "0.85%" },
			{ 26, 41299, "",                          "=q4=Relentless Gladiator's Kodohide Legguards",   "=ds=#s11#, #a2#",          "", "0.85%" },
		},
		{

			{ 2,  50114, "", "=q4=Ahn'Kahar Blood Hunter's Handguards",    "=ds=#s9#, #a3#",  "", "0.85%" },
			{ 3,  50116, "", "=q4=Ahn'Kahar Blood Hunter's Legguards",     "=ds=#s11#, #a3#", "", "0.85%" },

			{ 6,  50275, "", "=q4=Bloodmage Gloves",                       "=ds=#s9#, #a1#",  "", "0.85%" },
			{ 7,  50277, "", "=q4=Bloodmage Leggings",                     "=ds=#s11#, #a1#", "", "0.85%" },

			{ 17, 41144, "", "=q4=Relentless Gladiator's Chain Gauntlets", "=ds=#s9#, #a3#",  "", "0.85%" },
			{ 18, 41206, "", "=q4=Relentless Gladiator's Chain Leggings",  "=ds=#s11#, #a3#", "", "0.85%" },

			{ 21, 41972, "", "=q4=Relentless Gladiator's Silk Handguards", "=ds=#s9#, #a1#",  "", "0.85%" },
			{ 22, 41960, "", "=q4=Relentless Gladiator's Silk Trousers",   "=ds=#s11#, #a1#", "", "0.85%" },
		},
		{
			{ 1,  0,     "Spell_Holy_HolyBolt",     "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"],   "=q5=" .. AL["Holy"] },
			{ 2,  50868, "",                        "=q4=Lightsworn Gloves",                           "=ds=#s9#, #a4#",           "", "0.85%" },
			{ 3,  50866, "",                        "=q4=Lightsworn Greaves",                          "=ds=#s11#, #a4#",          "", "0.85%" },
			{ 5,  0,     "Spell_Holy_AuraOfLight",  "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"],   "=q5=" .. AL["Retribution"] },
			{ 6,  50327, "",                        "=q4=Lightsworn Gauntlets",                        "=ds=#s9#, #a4#",           "", "0.85%" },
			{ 7,  50325, "",                        "=q4=Lightsworn Legplates",                        "=ds=#s11#, #a4#",          "", "0.85%" },
			{ 9,  0,     "spell_holy_devotionaura", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"],   "=q5=" .. AL["Protection"] },
			{ 10, 50863, "",                        "=q4=Lightsworn Handguards",                       "=ds=#s9#, #a4#",           "", "0.85%" },
			{ 11, 50861, "",                        "=q4=Lightsworn Legguards",                        "=ds=#s11#, #a4#",          "", "0.85%" },
			{ 16, 0,     "Spell_Holy_HolyBolt",     "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"],   "=q5=" .. AL["Holy"] },
			{ 17, 40928, "",                        "=q4=Relentless Gladiator's Ornamented Gloves",    "=ds=#s9#, #a4#",           "", "0.85%" },
			{ 18, 40940, "",                        "=q4=Relentless Gladiator's Ornamented Legplates", "=ds=#s11#, #a4#",          "", "0.85%" },
			{ 20, 0,     "Spell_Holy_AuraOfLight",  "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"],   "=q5=" .. AL["Retribution"] },
			{ 21, 40812, "",                        "=q4=Relentless Gladiator's Scaled Gauntlets",     "=ds=#s9#, #a4#",           "", "0.85%" },
			{ 22, 40852, "",                        "=q4=Relentless Gladiator's Scaled Legguards",     "=ds=#s11#, #a4#",          "", "0.85%" },
		},
		{
			{ 1,  0,     "spell_holy_guardianspirit",   "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"],  "=q5=" .. AL["Holy"] },
			{ 2,  50766, "",                            "=q4=Crimson Acolyte Gloves",                    "=ds=#s9#, #a1#",          "", "0.85%" },
			{ 3,  50769, "",                            "=q4=Crimson Acolyte Leggings",                  "=ds=#s11#, #a1#",         "", "0.85%" },
			{ 5,  0,     "spell_shadow_shadowwordpain", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"],  "=q5=" .. AL["Shadow"] },
			{ 6,  50391, "",                            "=q4=Crimson Acolyte Handwraps",                 "=ds=#s9#, #a1#",          "", "0.85%" },
			{ 7,  50393, "",                            "=q4=Crimson Acolyte Pants",                     "=ds=#s11#, #a1#",         "", "0.85%" },
			{ 9,  0,     "inv_throwingknife_04",        "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"],   "" },
			{ 10, 50088, "",                            "=q4=Shadowblade Gauntlets",                     "=ds=#s9#, #a2#",          "", "0.85%" },
			{ 11, 50090, "",                            "=q4=Shadowblade Legplates",                     "=ds=#s11#, #a2#",         "", "0.85%" },
			{ 16, 0,     "spell_holy_powerwordshield",  "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"],  "=q5=" .. AL["Discipline"] },
			{ 17, 41875, "",                            "=q4=Relentless Gladiator's Mooncloth Gloves",   "=ds=#s9#, #a1#",          "", "0.85%" },
			{ 18, 41865, "",                            "=q4=Relentless Gladiator's Mooncloth Leggings", "=ds=#s11#, #a1#",         "", "0.85%" },
			{ 20, 0,     "spell_shadow_shadowwordpain", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"],  "=q5=" .. AL["Shadow"] },
			{ 21, 41941, "",                            "=q4=Relentless Gladiator's Satin Gloves",       "=ds=#s9#, #a1#",          "", "0.85%" },
			{ 22, 41928, "",                            "=q4=Relentless Gladiator's Satin Leggings",     "=ds=#s11#, #a1#",         "", "0.85%" },
			{ 24, 0,     "inv_throwingknife_04",        "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"],   "" },
			{ 25, 41768, "",                            "=q4=Relentless Gladiator's Leather Gloves",     "=ds=#s9#, #a2#",          "", "0.85%" },
			{ 26, 41656, "",                            "=q4=Relentless Gladiator's Leather Legguards",  "=ds=#s11#, #a2#",         "", "0.85%" },
		},
		{
			{ 1,  0,     "Spell_Nature_Lightning",       "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],  "=q5=" .. AL["Elemental"] },
			{ 2,  50842, "",                             "=q4=Frost Witch's Gloves",                      "=ds=#s9#, #a3#",           "", "0.85%" },
			{ 3,  50844, "",                             "=q4=Frost Witch's Kilt",                        "=ds=#s11#, #a3#",          "", "0.85%" },
			{ 5,  0,     "spell_nature_lightningshield", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],  "=q5=" .. AL["Enhancement"] },
			{ 6,  50831, "",                             "=q4=Frost Witch's Grips",                       "=ds=#s9#, #a3#",           "", "0.85%" },
			{ 7,  50833, "",                             "=q4=Frost Witch's War-Kilt",                    "=ds=#s11#, #a3#",          "", "0.85%" },
			{ 9,  0,     "spell_nature_magicimmunity",   "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],  "=q5=" .. AL["Restoration"] },
			{ 10, 50836, "",                             "=q4=Frost Witch's Handguards",                  "=ds=#s9#, #a3#",           "", "0.85%" },
			{ 11, 50838, "",                             "=q4=Frost Witch's Legguards",                   "=ds=#s11#, #a3#",          "", "0.85%" },
			{ 16, 0,     "Spell_Nature_Lightning",       "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],  "=q5=" .. AL["Elemental"] },
			{ 17, 41008, "",                             "=q4=Relentless Gladiator's Mail Gauntlets",     "=ds=#s9#, #a3#",           "", "0.85%" },
			{ 18, 41034, "",                             "=q4=Relentless Gladiator's Mail Leggings",      "=ds=#s11#, #a3#",          "", "0.85%" },
			{ 20, 0,     "spell_nature_lightningshield", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],  "=q5=" .. AL["Enhancement"] },
			{ 21, 41138, "",                             "=q4=Relentless Gladiator's Linked Gauntlets",   "=ds=#s9#, #a3#",           "", "0.85%" },
			{ 22, 41200, "",                             "=q4=Relentless Gladiator's Linked Leggings",    "=ds=#s11#, #a3#",          "", "0.85%" },
			{ 24, 0,     "spell_nature_magicimmunity",   "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],  "=q5=" .. AL["Restoration"] },
			{ 25, 41002, "",                             "=q4=Relentless Gladiator's Ringmail Gauntlets", "=ds=#s9#, #a3#",           "", "0.85%" },
			{ 26, 41028, "",                             "=q4=Relentless Gladiator's Ringmail Leggings",  "=ds=#s11#, #a3#",          "", "0.85%" },
		},
		{
			{ 1,  0,     "spell_nature_drowsy",             "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],  "" },
			{ 2,  50240, "",                                "=q4=Dark Coven Gloves",                          "=ds=#s9#, #a1#",          "", "0.85%" },
			{ 3,  50242, "",                                "=q4=Dark Coven Leggings",                        "=ds=#s11#, #a1#",         "", "0.85%" },
			{ 5,  0,     "ability_warrior_innerrage",       "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"],  "=q5=" .. AL["DPS"] },
			{ 6,  50079, "",                                "=q4=Ymirjar Lord's Gauntlets",                   "=ds=#s9#, #a4#",          "", "0.85%" },
			{ 7,  50081, "",                                "=q4=Ymirjar Lord's Legplates",                   "=ds=#s11#, #a4#",         "", "0.85%" },
			{ 9,  0,     "ability_warrior_defensivestance", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"],  "=q5=" .. AL["Protection"] },
			{ 10, 50849, "",                                "=q4=Ymirjar Lord's Handguards",                  "=ds=#s9#, #a4#",          "", "0.85%" },
			{ 11, 50847, "",                                "=q4=Ymirjar Lord's Legguards",                   "=ds=#s11#, #a4#",         "", "0.85%" },
			{ 16, 0,     "spell_nature_drowsy",             "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"],  "" },
			{ 17, 42018, "",                                "=q4=Relentless Gladiator's Felweave Handguards", "=ds=#s9#, #a1#",          "", "0.85%" },
			{ 18, 42006, "",                                "=q4=Relentless Gladiator's Felweave Trousers",   "=ds=#s11#, #a1#",         "", "0.85%" },

			{ 21, 40810, "",                                "=q4=Relentless Gladiator's Plate Gauntlets",     "=ds=#s9#, #a4#",          "", "0.85%" },
			{ 22, 40850, "",                                "=q4=Relentless Gladiator's Plate Legguards",     "=ds=#s11#, #a4#",         "", "0.85%" },
		},
		{
			{ 1,  0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                  "=q5=" .. BabbleInventory["Cloth"] },
			{ 2,  41910, "",           "=q4=Relentless Gladiator's Cuffs of Dominance",    "=ds=#s8#, #a1#",                    "", "0.85%" },
			{ 3,  41899, "",           "=q4=Relentless Gladiator's Cord of Dominance",     "=ds=#s10#, #a1#",                   "", "0.85%" },
			{ 4,  41904, "",           "=q4=Relentless Gladiator's Treads of Dominance",   "=ds=#s12#, #a1#",                   "", "0.85%" },
			{ 6,  41894, "",           "=q4=Relentless Gladiator's Cuffs of Salvation",    "=ds=#s8#, #a1#",                    "", "0.85%" },
			{ 7,  41882, "",           "=q4=Relentless Gladiator's Cord of Salvation",     "=ds=#s10#, #a1#",                   "", "0.85%" },
			{ 8,  41886, "",           "=q4=Relentless Gladiator's Treads of Salvation",   "=ds=#s12#, #a1#",                   "", "0.85%" },
			{ 10, 49181, "",           "=q4=Relentless Gladiator's Cuffs of Alacrity",     "=ds=#s8#, #a1#",                    "", "0.85%" },
			{ 11, 49179, "",           "=q4=Relentless Gladiator's Cord of Alacrity",      "=ds=#s10#, #a1#",                   "", "0.85%" },
			{ 12, 49183, "",           "=q4=Relentless Gladiator's Treads of Alacrity",    "=ds=#s12#, #a1#",                   "", "0.85%" },
			{ 16, 0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                  "=q5=" .. BabbleInventory["Leather"] },
			{ 17, 41641, "",           "=q4=Relentless Gladiator's Armwraps of Dominance", "=ds=#s8#, #a2#",                    "", "0.85%" },
			{ 18, 41631, "",           "=q4=Relentless Gladiator's Belt of Dominance",     "=ds=#s10#, #a2#",                   "", "0.85%" },
			{ 19, 41636, "",           "=q4=Relentless Gladiator's Boots of Dominance",    "=ds=#s12#, #a2#",                   "", "0.85%" },
			{ 21, 41626, "",           "=q4=Relentless Gladiator's Armwraps of Salvation", "=ds=#s8#, #a2#",                    "", "0.85%" },
			{ 22, 41618, "",           "=q4=Relentless Gladiator's Belt of Salvation",     "=ds=#s10#, #a2#",                   "", "0.85%" },
			{ 23, 41622, "",           "=q4=Relentless Gladiator's Boots of Salvation",    "=ds=#s12#, #a2#",                   "", "0.85%" },
			{ 25, 41841, "",           "=q4=Relentless Gladiator's Armwraps of Triumph",   "=ds=#s8#, #a2#",                    "", "0.85%" },
			{ 26, 41833, "",           "=q4=Relentless Gladiator's Belt of Triumph",       "=ds=#s10#, #a2#",                   "", "0.85%" },
			{ 27, 41837, "",           "=q4=Relentless Gladiator's Boots of Triumph",      "=ds=#s12#, #a2#",                   "", "0.85%" },
		},
		{
			{ 1,  0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                     "=q5=" .. BabbleInventory["Mail"] },
			{ 2,  41066, "",           "=q4=Relentless Gladiator's Wristguards of Dominance", "=ds=#s8#, #a3#",                  "", "0.85%" },
			{ 3,  41071, "",           "=q4=Relentless Gladiator's Waistguard of Dominance",  "=ds=#s10#, #a3#",                 "", "0.85%" },
			{ 4,  41076, "",           "=q4=Relentless Gladiator's Sabatons of Dominance",    "=ds=#s12#, #a3#",                 "", "0.85%" },
			{ 6,  41061, "",           "=q4=Relentless Gladiator's Wristguards of Salvation", "=ds=#s8#, #a3#",                  "", "0.85%" },
			{ 7,  41052, "",           "=q4=Relentless Gladiator's Waistguard of Salvation",  "=ds=#s10#, #a3#",                 "", "0.85%" },
			{ 8,  41056, "",           "=q4=Relentless Gladiator's Sabatons of Salvation",    "=ds=#s12#, #a3#",                 "", "0.85%" },
			{ 10, 41226, "",           "=q4=Relentless Gladiator's Wristguards of Triumph",   "=ds=#s8#, #a3#",                  "", "0.85%" },
			{ 11, 41236, "",           "=q4=Relentless Gladiator's Waistguard of Triumph",    "=ds=#s10#, #a3#",                 "", "0.85%" },
			{ 12, 41231, "",           "=q4=Relentless Gladiator's Sabatons of Triumph",      "=ds=#s12#, #a3#",                 "", "0.85%" },
			{ 16, 0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                     "=q5=" .. BabbleInventory["Plate"] },
			{ 17, 40984, "",           "=q4=Relentless Gladiator's Bracers of Salvation",     "=ds=#s8#, #a4#",                  "", "0.85%" },
			{ 18, 40978, "",           "=q4=Relentless Gladiator's Girdle of Salvation",      "=ds=#s10#, #a4#",                 "", "0.85%" },
			{ 19, 40979, "",           "=q4=Relentless Gladiator's Greaves of Salvation",     "=ds=#s12#, #a4#",                 "", "0.85%" },
			{ 21, 40890, "",           "=q4=Relentless Gladiator's Bracers of Triumph",       "=ds=#s8#, #a4#",                  "", "0.85%" },
			{ 22, 40883, "",           "=q4=Relentless Gladiator's Girdle of Triumph",        "=ds=#s10#, #a4#",                 "", "0.85%" },
			{ 23, 40884, "",           "=q4=Relentless Gladiator's Greaves of Triumph",       "=ds=#s12#, #a4#",                 "", "0.85%" },
		},
		{
			{ 1,  0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                   "=q5=" .. BabbleInventory["Back"] },
			{ 2,  42078, "",           "=q4=Relentless Gladiator's Cloak of Ascendancy",    "=ds=#s4#",                       "", "0.85%" },
			{ 3,  42080, "",           "=q4=Relentless Gladiator's Cloak of Deliverance",   "=ds=#s4#",                       "", "0.85%" },
			{ 4,  42076, "",           "=q4=Relentless Gladiator's Cloak of Dominance",     "=ds=#s4#",                       "", "0.85%" },
			{ 5,  42079, "",           "=q4=Relentless Gladiator's Cloak of Salvation",     "=ds=#s4#",                       "", "0.85%" },
			{ 6,  42077, "",           "=q4=Relentless Gladiator's Cloak of Subjugation",   "=ds=#s4#",                       "", "0.85%" },
			{ 7,  42081, "",           "=q4=Relentless Gladiator's Cloak of Triumph",       "=ds=#s4#",                       "", "0.85%" },
			{ 8,  42082, "",           "=q4=Relentless Gladiator's Cloak of Victory",       "=ds=#s4#",                       "", "0.85%" },
			{ 10, 0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                   "=q5=" .. BabbleInventory["Ring"] },
			{ 11, 42118, "",           "=q4=Relentless Gladiator's Band of Ascendancy",     "=ds=#s13#",                      "", "0.85%" },
			{ 12, 42119, "",           "=q4=Relentless Gladiator's Band of Victory",        "=ds=#s13#",                      "", "0.85%" },
			{ 16, 0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                   "=q5=" .. BabbleInventory["Neck"] },
			{ 17, 42044, "",           "=q4=Relentless Gladiator's Pendant of Ascendancy",  "=ds=#s2#",                       "", "0.85%" },
			{ 18, 42046, "",           "=q4=Relentless Gladiator's Pendant of Deliverance", "=ds=#s2#",                       "", "0.85%" },
			{ 19, 42043, "",           "=q4=Relentless Gladiator's Pendant of Dominance",   "=ds=#s2#",                       "", "0.85%" },
			{ 20, 42047, "",           "=q4=Relentless Gladiator's Pendant of Salvation",   "=ds=#s2#",                       "", "0.85%" },
			{ 21, 42045, "",           "=q4=Relentless Gladiator's Pendant of Subjugation", "=ds=#s2#",                       "", "0.85%" },
			{ 22, 46374, "",           "=q4=Relentless Gladiator's Pendant of Sundering",   "=ds=#s2#",                       "", "0.85%" },
			{ 23, 42041, "",           "=q4=Relentless Gladiator's Pendant of Triumph",     "=ds=#s2#",                       "", "0.85%" },
			{ 24, 42042, "",           "=q4=Relentless Gladiator's Pendant of Victory",     "=ds=#s2#",                       "", "0.85%" },
		},
	},
	["25Man"] = {
		{

			{ 2,  51128, "", "=q4=Sanctified Scourgelord Gauntlets",          "=ds=#s9#, #a4#",  "", "0.85%" },
			{ 3,  51126, "", "=q4=Sanctified Scourgelord Legplates",          "=ds=#s11#, #a4#", "", "0.85%" },

			{ 6,  51132, "", "=q4=Sanctified Scourgelord Handguards",         "=ds=#s9#, #a4#",  "", "0.85%" },
			{ 7,  51131, "", "=q4=Sanctified Scourgelord Legguards",          "=ds=#s11#, #a4#", "", "0.85%" },

			{ 17, 51414, "", "=q4=Wrathful Gladiator's Dreadplate Gauntlets", "=ds=#s9#, #a4#",  "", "0.85%" },
			{ 18, 51416, "", "=q4=Wrathful Gladiator's Dreadplate Legguards", "=ds=#s11#, #a4#", "", "0.85%" },
		},
		{
			{ 1,  0,     "spell_nature_starfall",     "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],   "=q5=" .. AL["Balance"] },
			{ 2,  51148, "",                          "=q4=Sanctified Lasherweave's Gloves",           "=ds=#s9#, #a2#" },
			{ 3,  51146, "",                          "=q4=Sanctified Lasherweave's Trousers",         "=ds=#s11#, #a2#" },
			{ 5,  0,     "ability_racial_bearform",   "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],   "=q5=" .. AL["Feral"] },
			{ 6,  51144, "",                          "=q4=Sanctified Lasherweave's Handgrips",        "=ds=#s9#, #a2#" },
			{ 7,  51142, "",                          "=q4=Sanctified Lasherweave's Legguards",        "=ds=#s11#, #a2#" },
			{ 9,  0,     "spell_nature_healingtouch", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],   "=q5=" .. AL["Restoration"] },
			{ 10, 51138, "",                          "=q4=Sanctified Lasherweave's Gauntlets",        "=ds=#s9#, #a2#" },
			{ 11, 51136, "",                          "=q4=Sanctified Lasherweave's Legplates",        "=ds=#s11#, #a2#" },
			{ 16, 0,     "spell_nature_starfall",     "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],   "=q5=" .. AL["Balance"] },
			{ 17, 51434, "",                          "=q4=Wrathful Gladiator's Wyrmhide Gloves",      "=ds=#s9#, #a2#",           "", "0.85%" },
			{ 18, 51436, "",                          "=q4=Wrathful Gladiator's Wyrmhide Legguards",   "=ds=#s11#, #a2#",          "", "0.85%" },
			{ 20, 0,     "ability_racial_bearform",   "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],   "=q5=" .. AL["Feral"] },
			{ 21, 51426, "",                          "=q4=Wrathful Gladiator's Dragonhide Gloves",    "=ds=#s9#, #a2#",           "", "0.85%" },
			{ 22, 51428, "",                          "=q4=Wrathful Gladiator's Dragonhide Legguards", "=ds=#s11#, #a2#",          "", "0.85%" },
			{ 24, 0,     "spell_nature_healingtouch", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"],   "=q5=" .. AL["Restoration"] },
			{ 25, 51420, "",                          "=q4=Wrathful Gladiator's Kodohide Gloves",      "=ds=#s9#, #a2#",           "", "0.85%" },
			{ 26, 51422, "",                          "=q4=Wrathful Gladiator's Kodohide Legguards",   "=ds=#s11#, #a2#",          "", "0.85%" },
		},
		{
			{ 1,  0,     "inv_weapon_bow_07", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"],       "" },
			{ 2,  51154, "",                  "=q4=Sanctified Ahn'Kahar Blood Hunter's Handguards", "=ds=#s9#, #a3#",  "", "0.85%" },
			{ 3,  51152, "",                  "=q4=Sanctified Ahn'Kahar Blood Hunter's Legguards",  "=ds=#s11#, #a3#", "", "0.85%" },
			{ 5,  0,     "inv_staff_13",      "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"],         "" },
			{ 6,  51159, "",                  "=q4=Sanctified Bloodmage Gloves",                    "=ds=#s9#, #a1#",  "", "0.85%" },
			{ 7,  51157, "",                  "=q4=Sanctified Bloodmage Leggings",                  "=ds=#s11#, #a1#", "", "0.85%" },
			{ 16, 0,     "inv_weapon_bow_07", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"],       "" },
			{ 17, 51459, "",                  "=q4=Wrathful Gladiator's Chain Gauntlets",           "=ds=#s9#, #a3#",  "", "0.85%" },
			{ 18, 51461, "",                  "=q4=Wrathful Gladiator's Chain Leggings",            "=ds=#s11#, #a3#", "", "0.85%" },
			{ 20, 0,     "inv_staff_13",      "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"],         "" },
			{ 21, 51464, "",                  "=q4=Wrathful Gladiator's Silk Handguards",           "=ds=#s9#, #a1#",  "", "0.85%" },
			{ 22, 51466, "",                  "=q4=Wrathful Gladiator's Silk Trousers",             "=ds=#s11#, #a1#", "", "0.85%" },
		},
		{

			{ 2,  51169, "", "=q4=Sanctified Lightsworn Gloves",              "=ds=#s9#, #a4#" },
			{ 3,  51168, "", "=q4=Sanctified Lightsworn Greaves",             "=ds=#s11#, #a4#" },

			{ 6,  51163, "", "=q4=Sanctified Lightsworn Gauntlets",           "=ds=#s9#, #a4#" },
			{ 7,  51161, "", "=q4=Sanctified Lightsworn Legplates",           "=ds=#s11#, #a4#" },

			{ 10, 51172, "", "=q4=Sanctified Lightsworn Handguards",          "=ds=#s9#, #a4#" },
			{ 11, 51171, "", "=q4=Sanctified Lightsworn Legguards",           "=ds=#s11#, #a4#" },

			{ 17, 51469, "", "=q4=Wrathful Gladiator's Ornamented Gloves",    "=ds=#s9#, #a4#",  "", "0.85%" },
			{ 18, 51471, "", "=q4=Wrathful Gladiator's Ornamented Legplates", "=ds=#s11#, #a4#", "", "0.85%" },

			{ 21, 51475, "", "=q4=Wrathful Gladiator's Scaled Gauntlets",     "=ds=#s9#, #a4#",  "", "0.85%" },
			{ 22, 51477, "", "=q4=Wrathful Gladiator's Scaled Legguards",     "=ds=#s11#, #a4#", "", "0.85%" },
		},
		{

			{ 2,  51179, "", "=q4=Sanctified Crimson Acolyte Gloves",       "=ds=#s9#, #a1#",  "", "0.85%" },
			{ 3,  51177, "", "=q4=Sanctified Crimson Acolyte Leggings",     "=ds=#s11#, #a1#", "", "0.85%" },

			{ 6,  51183, "", "=q4=Sanctified Crimson Acolyte Handwraps",    "=ds=#s9#, #a1#",  "", "0.85%" },
			{ 7,  51181, "", "=q4=Sanctified Crimson Acolyte Pants",        "=ds=#s11#, #a1#", "", "0.85%" },

			{ 10, 51188, "", "=q4=Sanctified Shadowblade Gauntlets",        "=ds=#s9#, #a2#",  "", "0.85%" },
			{ 11, 51186, "", "=q4=Sanctified Shadowblade Legplates",        "=ds=#s11#, #a2#", "", "0.85%" },

			{ 17, 51483, "", "=q4=Wrathful Gladiator's Mooncloth Gloves",   "=ds=#s9#, #a1#",  "", "0.85%" },
			{ 18, 51485, "", "=q4=Wrathful Gladiator's Mooncloth Leggings", "=ds=#s11#, #a1#", "", "0.85%" },

			{ 21, 51488, "", "=q4=Wrathful Gladiator's Satin Gloves",       "=ds=#s9#, #a1#",  "", "0.85%" },
			{ 22, 51490, "", "=q4=Wrathful Gladiator's Satin Leggings",     "=ds=#s11#, #a1#", "", "0.85%" },

			{ 25, 51493, "", "=q4=Wrathful Gladiator's Leather Gloves",     "=ds=#s9#, #a2#",  "", "0.85%" },
			{ 26, 51495, "", "=q4=Wrathful Gladiator's Leather Legguards",  "=ds=#s11#, #a2#", "", "0.85%" },
		},
		{

			{ 2,  51201, "", "=q4=Sanctified Frost Witch's Gloves",         "=ds=#s9#, #a3#" },
			{ 3,  51203, "", "=q4=Sanctified Frost Witch's Kilt",           "=ds=#s11#, #a3#" },

			{ 6,  51196, "", "=q4=Sanctified Frost Witch's Grips",          "=ds=#s9#, #a3#" },
			{ 7,  51198, "", "=q4=Sanctified Frost Witch's War-Kilt",       "=ds=#s11#, #a3#" },

			{ 10, 51191, "", "=q4=Sanctified Frost Witch's Handguards",     "=ds=#s9#, #a3#" },
			{ 11, 51193, "", "=q4=Sanctified Frost Witch's Legguards",      "=ds=#s11#, #a3#" },

			{ 17, 51510, "", "=q4=Wrathful Gladiator's Mail Gauntlets",     "=ds=#s9#, #a3#",  "", "0.85%" },
			{ 18, 51512, "", "=q4=Wrathful Gladiator's Mail Leggings",      "=ds=#s11#, #a3#", "", "0.85%" },

			{ 21, 51504, "", "=q4=Wrathful Gladiator's Linked Gauntlets",   "=ds=#s9#, #a3#",  "", "0.85%" },
			{ 22, 51506, "", "=q4=Wrathful Gladiator's Linked Leggings",    "=ds=#s11#, #a3#", "", "0.85%" },

			{ 25, 51498, "", "=q4=Wrathful Gladiator's Ringmail Gauntlets", "=ds=#s9#, #a3#",  "", "0.85%" },
			{ 26, 51500, "", "=q4=Wrathful Gladiator's Ringmail Leggings",  "=ds=#s11#, #a3#", "", "0.85%" },
		},
		{

			{ 2,  51209, "", "=q4=Sanctified Dark Coven Gloves",             "=ds=#s9#, #a1#",  "", "0.85%" },
			{ 3,  51207, "", "=q4=Sanctified Dark Coven Leggings",           "=ds=#s11#, #a1#", "", "0.85%" },

			{ 6,  51213, "", "=q4=Ymirjar Lord's Gauntlets",                 "=ds=#s9#, #a4#",  "", "0.85%" },
			{ 7,  51211, "", "=q4=Ymirjar Lord's Legplates",                 "=ds=#s11#, #a4#", "", "0.85%" },

			{ 10, 51217, "", "=q4=Ymirjar Lord's Handguards",                "=ds=#s9#, #a4#",  "", "0.85%" },
			{ 11, 51216, "", "=q4=Ymirjar Lord's Legguards",                 "=ds=#s11#, #a4#", "", "0.85%" },

			{ 17, 51537, "", "=q4=Wrathful Gladiator's Felweave Handguards", "=ds=#s9#, #a1#",  "", "0.85%" },
			{ 18, 51539, "", "=q4=Wrathful Gladiator's Felweave Trousers",   "=ds=#s11#, #a1#", "", "0.85%" },

			{ 21, 51542, "", "=q4=Wrathful Gladiator's Plate Gauntlets",     "=ds=#s9#, #a4#",  "", "0.85%" },
			{ 22, 51544, "", "=q4=Wrathful Gladiator's Plate Legguards",     "=ds=#s11#, #a4#", "", "0.85%" },
		},
		{
			{ 1,  0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                "=q5=" .. BabbleInventory["Cloth"] },
			{ 2,  51329, "",           "=q4=Wrathful Gladiator's Cuffs of Dominance",    "=ds=#s8#, #a1#",                    "", "0.85%" },
			{ 3,  51327, "",           "=q4=Wrathful Gladiator's Cord of Dominance",     "=ds=#s10#, #a1#",                   "", "0.85%" },
			{ 4,  51328, "",           "=q4=Wrathful Gladiator's Treads of Dominance",   "=ds=#s12#, #a1#",                   "", "0.85%" },
			{ 6,  51367, "",           "=q4=Wrathful Gladiator's Cuffs of Salvation",    "=ds=#s8#, #a1#",                    "", "0.85%" },
			{ 7,  51365, "",           "=q4=Wrathful Gladiator's Cord of Salvation",     "=ds=#s10#, #a1#",                   "", "0.85%" },
			{ 8,  51366, "",           "=q4=Wrathful Gladiator's Treads of Salvation",   "=ds=#s12#, #a1#",                   "", "0.85%" },
			{ 10, 51339, "",           "=q4=Wrathful Gladiator's Cuffs of Alacrity",     "=ds=#s8#, #a1#",                    "", "0.85%" },
			{ 11, 51337, "",           "=q4=Wrathful Gladiator's Cord of Alacrity",      "=ds=#s10#, #a1#",                   "", "0.85%" },
			{ 12, 51338, "",           "=q4=Wrathful Gladiator's Treads of Alacrity",    "=ds=#s12#, #a1#",                   "", "0.85%" },
			{ 16, 0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                "=q5=" .. BabbleInventory["Leather"] },
			{ 17, 51345, "",           "=q4=Wrathful Gladiator's Armwraps of Dominance", "=ds=#s8#, #a2#",                    "", "0.85%" },
			{ 18, 51343, "",           "=q4=Wrathful Gladiator's Belt of Dominance",     "=ds=#s10#, #a2#",                   "", "0.85%" },
			{ 19, 51344, "",           "=q4=Wrathful Gladiator's Boots of Dominance",    "=ds=#s12#, #a2#",                   "", "0.85%" },
			{ 21, 51342, "",           "=q4=Wrathful Gladiator's Armwraps of Salvation", "=ds=#s8#, #a2#",                    "", "0.85%" },
			{ 22, 51340, "",           "=q4=Wrathful Gladiator's Belt of Salvation",     "=ds=#s10#, #a2#",                   "", "0.85%" },
			{ 23, 51341, "",           "=q4=Wrathful Gladiator's Boots of Salvation",    "=ds=#s12#, #a2#",                   "", "0.85%" },
			{ 25, 51370, "",           "=q4=Wrathful Gladiator's Armwraps of Triumph",   "=ds=#s8#, #a2#",                    "", "0.85%" },
			{ 26, 51368, "",           "=q4=Wrathful Gladiator's Belt of Triumph",       "=ds=#s10#, #a2#",                   "", "0.85%" },
			{ 27, 51369, "",           "=q4=Wrathful Gladiator's Boots of Triumph",      "=ds=#s12#, #a2#",                   "", "0.85%" },
		},
		{
			{ 1,  0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                   "=q5=" .. BabbleInventory["Mail"] },
			{ 2,  51376, "",           "=q4=Wrathful Gladiator's Wristguards of Dominance", "=ds=#s8#, #a3#",                  "", "0.85%" },
			{ 3,  51374, "",           "=q4=Wrathful Gladiator's Waistguard of Dominance",  "=ds=#s10#, #a3#",                 "", "0.85%" },
			{ 4,  51375, "",           "=q4=Wrathful Gladiator's Sabatons of Dominance",    "=ds=#s12#, #a3#",                 "", "0.85%" },
			{ 6,  51373, "",           "=q4=Wrathful Gladiator's Wristguards of Salvation", "=ds=#s8#, #a3#",                  "", "0.85%" },
			{ 7,  51371, "",           "=q4=Wrathful Gladiator's Waistguard of Salvation",  "=ds=#s10#, #a3#",                 "", "0.85%" },
			{ 8,  51372, "",           "=q4=Wrathful Gladiator's Sabatons of Salvation",    "=ds=#s12#, #a3#",                 "", "0.85%" },
			{ 10, 51352, "",           "=q4=Wrathful Gladiator's Wristguards of Triumph",   "=ds=#s8#, #a3#",                  "", "0.85%" },
			{ 11, 51350, "",           "=q4=Wrathful Gladiator's Waistguard of Triumph",    "=ds=#s10#, #a3#",                 "", "0.85%" },
			{ 12, 51351, "",           "=q4=Wrathful Gladiator's Sabatons of Triumph",      "=ds=#s12#, #a3#",                 "", "0.85%" },
			{ 16, 0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                   "=q5=" .. BabbleInventory["Plate"] },
			{ 17, 51361, "",           "=q4=Wrathful Gladiator's Bracers of Salvation",     "=ds=#s8#, #a4#",                  "", "0.85%" },
			{ 18, 51359, "",           "=q4=Wrathful Gladiator's Girdle of Salvation",      "=ds=#s10#, #a4#",                 "", "0.85%" },
			{ 19, 51360, "",           "=q4=Wrathful Gladiator's Greaves of Salvation",     "=ds=#s12#, #a4#",                 "", "0.85%" },
			{ 21, 51364, "",           "=q4=Wrathful Gladiator's Bracers of Triumph",       "=ds=#s8#, #a4#",                  "", "0.85%" },
			{ 22, 51362, "",           "=q4=Wrathful Gladiator's Girdle of Triumph",        "=ds=#s10#, #a4#",                 "", "0.85%" },
			{ 23, 51363, "",           "=q4=Wrathful Gladiator's Greaves of Triumph",       "=ds=#s12#, #a4#",                 "", "0.85%" },
		},
		{
			{ 1,  0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                 "=q5=" .. BabbleInventory["Back"] },
			{ 2,  51334, "",           "=q4=Wrathful Gladiator's Cloak of Ascendancy",    "=ds=#s4#",                       "", "0.85%" },
			{ 3,  51348, "",           "=q4=Wrathful Gladiator's Cloak of Deliverance",   "=ds=#s4#",                       "", "0.85%" },
			{ 4,  51330, "",           "=q4=Wrathful Gladiator's Cloak of Dominance",     "=ds=#s4#",                       "", "0.85%" },
			{ 5,  51346, "",           "=q4=Wrathful Gladiator's Cloak of Salvation",     "=ds=#s4#",                       "", "0.85%" },
			{ 6,  51332, "",           "=q4=Wrathful Gladiator's Cloak of Subjugation",   "=ds=#s4#",                       "", "0.85%" },
			{ 7,  51354, "",           "=q4=Wrathful Gladiator's Cloak of Triumph",       "=ds=#s4#",                       "", "0.85%" },
			{ 8,  51356, "",           "=q4=Wrathful Gladiator's Cloak of Victory",       "=ds=#s4#",                       "", "0.85%" },
			{ 10, 0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                 "=q5=" .. BabbleInventory["Ring"] },
			{ 11, 51336, "",           "=q4=Wrathful Gladiator's Band of Dominance",      "=ds=#s13#",                      "", "0.85%" },
			{ 12, 51358, "",           "=q4=Wrathful Gladiator's Band of Triumph",        "=ds=#s13#",                      "", "0.85%" },
			{ 16, 0,     "INV_Box_01", "=q6=" .. AL["PvP Non-Set Epics"],                 "=q5=" .. BabbleInventory["Neck"] },
			{ 17, 51335, "",           "=q4=Wrathful Gladiator's Pendant of Ascendancy",  "=ds=#s2#",                       "", "0.85%" },
			{ 18, 51349, "",           "=q4=Wrathful Gladiator's Pendant of Deliverance", "=ds=#s2#",                       "", "0.85%" },
			{ 19, 51331, "",           "=q4=Wrathful Gladiator's Pendant of Dominance",   "=ds=#s2#",                       "", "0.85%" },
			{ 20, 51347, "",           "=q4=Wrathful Gladiator's Pendant of Salvation",   "=ds=#s2#",                       "", "0.85%" },
			{ 21, 51333, "",           "=q4=Wrathful Gladiator's Pendant of Subjugation", "=ds=#s2#",                       "", "0.85%" },
			{ 22, 51353, "",           "=q4=Wrathful Gladiator's Pendant of Sundering",   "=ds=#s2#",                       "", "0.85%" },
			{ 23, 51355, "",           "=q4=Wrathful Gladiator's Pendant of Triumph",     "=ds=#s2#",                       "", "0.85%" },
			{ 24, 51357, "",           "=q4=Wrathful Gladiator's Pendant of Victory",     "=ds=#s2#",                       "", "0.85%" },
		},
	},
	info = {
		name = BabbleBoss["Toravon"],
		module = moduleName,
		instance = "Vault Of Archavon",
		menu = "TORAVON",
	},
};

-----------------
--- Naxxramas ---
-----------------

-------------------------
--- Construct Quarter ---
-------------------------

Synastria_Data["NaxxramasPatchwerk"] = {
	["Normal"] = {
		{
			{ 1,  39267, "",           "=q4=Abomination Shoulderblades",     "=ds=#s3#, #a4#",             "", "11.1%" },
			{ 2,  39271, "",           "=q4=Blade of Dormant Memories",      "=ds=#h3#, #w4#",             "", "11.1%" },
			{ 3,  39275, "",           "=q4=Contagion Gloves",               "=ds=#s9#, #a2#",             "", "11.1%" },
			{ 4,  39262, "",           "=q4=Gauntlets of Combined Strength", "=ds=#s9#, #a4#",             "", "11.1%" },
			{ 5,  39270, "",           "=q4=Hatestrike",                     "=ds=#h1#, #w10#",            "", "11.1%" },
			{ 6,  39274, "",           "=q4=Retcher's Shoulderpads",         "=ds=#s3#, #a3#",             "", "11.1%" },
			{ 7,  39273, "",           "=q4=Sullen Cloth Boots",             "=ds=#s12#, #a1#",            "", "11.1%" },
			{ 8,  39261, "",           "=q4=Tainted Girdle of Mending",      "=ds=#s10#, #a4#",            "", "11.1%" },
			{ 10, 0,     "INV_Box_01", "=q6=#m5#",                           "=ds=" .. BabbleBoss["Gluth"] },
			{ 11, 39272, "",           "=q4=Drape of Surgery",               "=ds=#s4#",                   "", "11.1%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  40265, "",           "=q4=Arrowsong",                    "=ds=#w2#",        "", "4.2%" },
			{ 2,  40269, "",           "=q4=Boots of Persuasion",          "=ds=#s12#, #a1#", "", "4.2%" },
			{ 3,  40261, "",           "=q4=Crude Discolored Battlegrips", "=ds=#s9#, #a4#",  "", "4.2%" },
			{ 4,  40263, "",           "=q4=Fleshless Girdle",             "=ds=#s10#. #a4#", "", "4.2%" },
			{ 5,  40272, "",           "=q4=Girdle of the Gambit",         "=ds=#s10#, #a3#", "", "4.2%" },
			{ 6,  40262, "",           "=q4=Gloves of Calculated Risk",    "=ds=#s9#, #a3#",  "", "4.2%" },
			{ 7,  40266, "",           "=q4=Hero's Surrender",             "=ds=#w8#",        "", "4.2%" },
			{ 8,  40268, "",           "=q4=Libram of Tolerance",          "=ds=#w16#",       "", "4.2%" },
			{ 9,  40271, "",           "=q4=Sash of Solitude",             "=ds=#s10#, #a1#", "", "4.2%" },
			{ 10, 40264, "",           "=q4=Split Greathammer",            "=ds=#h1#, #w6#",  "", "4.2%" },
			{ 11, 40273, "",           "=q4=Surplus Limb",                 "=ds=#s15#",       "", "4.2%" },
			{ 12, 40267, "",           "=q4=Totem of Hex",                 "=ds=#w15#",       "", "4.2%" },
			{ 16, 0,     "INV_Box_01", "=q6=#m5#",                         "=ds=Various" },
			{ 17, 40260, "",           "=q4=Belt of the Tortured",         "=ds=#s10#, #a2#", "", "4.2%" },
			{ 18, 40270, "",           "=q4=Boots of Septic Wounds",       "=ds=#s12#, #a2#", "", "4.2%" },
			{ 19, 40071, "",           "=q4=Chains of Adoration",          "=ds=#s2#",        "", "4.2%" },
			{ 20, 40065, "",           "=q4=Fool's Trial",                 "=ds=#s2#",        "", "4.2%" },
			{ 21, 40069, "",           "=q4=Heritage",                     "=ds=#s2#",        "", "4.2%" },
			{ 22, 40080, "",           "=q4=Lost Jewel",                   "=ds=#s13#",       "", "4.2%" },
			{ 23, 40075, "",           "=q4=Ruthlessness",                 "=ds=#s13#",       "", "4.2%" },
			{ 24, 40107, "",           "=q4=Sand-Worn Band",               "=ds=#s13#",       "", "4.2%" },
			{ 25, 40108, "",           "=q4=Seized Beauty",                "=ds=#s13#",       "", "4.2%" },
			{ 26, 40074, "",           "=q4=Strong-Handed Ring",           "=ds=#s13#",       "", "4.2%" },
			{ 27, 40064, "",           "=q4=Thunderstorm Amulet",          "=ds=#s2#",        "", "4.2%" },
			{ 28, 40259, "",           "=q4=Waistguard of Divine Grace",   "=ds=#s10#, #a4#", "", "4.2%" },
		},
	},
	info = {
		name = BabbleBoss["Patchwerk"],
		module = moduleName,
		instance = "Naxxramas",
	},
};

Synastria_Data["NaxxramasGrobbulus"] = {
	["Normal"] = {
		{
			{ 1,  39278, "",           "=q4=Bands of Anxiety",              "=ds=#s8#, #a3#",             "", "10%" },
			{ 2,  39282, "",           "=q4=Bone-Linked Amulet",            "=ds=#s2#",                   "", "10%" },
			{ 3,  39280, "",           "=q4=Leggings of Innumerable Barbs", "=ds=#s11#, #a4#",            "", "10%" },
			{ 4,  39283, "",           "=q4=Putrescent Bands",              "=ds=#s8#, #a2#",             "", "10%" },
			{ 5,  39277, "",           "=q4=Sealing Ring of Grobbulus",     "=ds=#s13#",                  "", "10%" },
			{ 6,  39276, "",           "=q4=The Skull of Ruin",             "=ds=#w8#",                   "", "10%" },
			{ 8,  0,     "INV_Box_01", "=q6=#m5#",                          "=ds=" .. BabbleBoss["Gluth"] },
			{ 9,  39279, "",           "=q4=Blistered Belt of Decay",       "=ds=#s10#, #a2#",            "", "10%" },
			{ 10, 39285, "",           "=q4=Handgrips of Turmoil",          "=ds=#s9#, #a1#",             "", "10%" },
			{ 11, 39281, "",           "=q4=Infection Repulser",            "=ds=#h3#, #w6#",             "", "10%" },
			{ 12, 39284, "",           "=q4=Miasma Mantle",                 "=ds=#s3#, #a1#",             "", "10%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  40274, "",           "=q4=Bracers of Liberation",       "=ds=#s8#, #a4#",  "", "4.2%" },
			{ 2,  40279, "",           "=q4=Chestguard of the Exhausted", "=ds=#s5#, #a4#",  "", "4.2%" },
			{ 3,  40287, "",           "=q4=Cowl of Vanity",              "=ds=#s1#, #a1#",  "", "4.2%" },
			{ 4,  40275, "",           "=q4=Depraved Linked Belt",        "=ds=#s10#, #a3#", "", "4.2%" },
			{ 5,  40285, "",           "=q4=Desecrated Past",             "=ds=#s11#, #a2#", "", "4.2%" },
			{ 6,  40283, "",           "=q4=Fallout Impervious Tunic",    "=ds=#s5#, #a3#",  "", "4.2%" },
			{ 7,  40278, "",           "=q4=Girdle of Chivalry",          "=ds=#s10#, #a4#", "", "4.2%" },
			{ 8,  40351, "",           "=q4=Mantle of the Fatigued Sage", "=ds=#s3#, #a1#",  "", "4.2%" },
			{ 9,  40280, "",           "=q4=Origin of Nightmares",        "=ds=#w9#",        "", "4.2%" },
			{ 10, 40284, "",           "=q4=Plague Igniter",              "=ds=#w12#",       "", "4.2%" },
			{ 11, 40282, "",           "=q4=Slime Stream Bands",          "=ds=#s8#, #a3#",  "", "4.2%" },
			{ 12, 40288, "",           "=q4=Spaulders of Incoherence",    "=ds=#s3#, #a3#",  "", "4.2%" },
			{ 13, 40277, "",           "=q4=Tunic of Indulgence",         "=ds=#s5#, #a2#",  "", "4.2%" },
			{ 14, 40281, "",           "=q4=Twilight Mist",               "=ds=#h1#, #w4#",  "", "4.2%" },
			{ 16, 0,     "INV_Box_01", "=q6=#m5#",                        "=ds=Various" },
			{ 17, 40250, "",           "=q4=Aged Winter Cloak",           "=ds=#s4#",        "", "4.2%" },
			{ 18, 40254, "",           "=q4=Cloak of Averted Crisis",     "=ds=#s4#",        "", "4.2%" },
			{ 19, 40252, "",           "=q4=Cloak of the Shadowed Sun",   "=ds=#s4#",        "", "4.2%" },
			{ 20, 40257, "",           "=q4=Defender's Code",             "=ds=#s14#",       "", "4.2%" },
			{ 21, 40255, "",           "=q4=Dying Curse",                 "=ds=#s14#",       "", "4.2%" },
			{ 22, 40258, "",           "=q4=Forethought Talisman",        "=ds=#s14#",       "", "4.2%" },
			{ 23, 40256, "",           "=q4=Grim Toll",                   "=ds=#s14#",       "", "4.2%" },
			{ 24, 40253, "",           "=q4=Shawl of the Old Maid",       "=ds=#s4#",        "", "4.2%" },
			{ 25, 40251, "",           "=q4=Shroud of Luminosity",        "=ds=#s4#",        "", "4.2%" },
			{ 26, 40289, "",           "=q4=Sympathetic Amice",           "=ds=#s3#, #a1#",  "", "4.2%" },
		},
	},
	info = {
		name = BabbleBoss["Grobbulus"],
		module = moduleName,
		instance = "Naxxramas",
	},
};

Synastria_Data["NaxxramasGluth"] = {
	["Normal"] = {
		{
			{ 1,  39394, "",           "=q4=Charmed Cierge",                 "=ds=#w9#",        "", "4.3%" },
			{ 2,  39396, "",           "=q4=Gown of Blaumeux",               "=ds=#s5#, #a1#",  "", "4.3%" },
			{ 4,  0,     "INV_Box_01", "=q6=#m5#",                           "=ds=Various" },
			{ 5,  39294, "",           "=q4=Arc-Scorched Helmet",            "=ds=#s1#, #a3#",  "", "4.3%" },
			{ 6,  39193, "",           "=q4=Band of Neglected Pleas",        "=ds=#s13#",       "", "4.3%" },
			{ 7,  39279, "",           "=q4=Blistered Belt of Decay",        "=ds=#s10#, #a2#", "", "4.3%" },
			{ 8,  39215, "",           "=q4=Boots of the Follower",          "=ds=#s12#, #a2#", "", "4.3%" },
			{ 9,  39188, "",           "=q4=Chivalric Chestguard",           "=ds=#s5#, #a4#",  "", "4.3%" },
			{ 10, 39146, "",           "=q4=Collar of Dissolution",          "=ds=#s2#",        "", "4.3%" },
			{ 11, 39272, "",           "=q4=Drape of Surgery",               "=ds=#s4#",        "", "4.3%" },
			{ 12, 39345, "",           "=q4=Girdle of the Ascended Phantom", "=ds=#s10#, #a4#", "", "4.3%" },
			{ 13, 39200, "",           "=q4=Grieving Spellblade",            "=ds=#h3#, #w10#", "", "4.3%" },
			{ 14, 39281, "",           "=q4=Infection Repulser",             "=ds=#h3#, #w6#",  "", "4.3%" },
			{ 15, 39309, "",           "=q4=Leggings of the Instructor",     "=ds=#s11#, #a1#", "", "4.3%" },
			{ 16, 39284, "",           "=q4=Miasma Mantle",                  "=ds=#s3#, #a1#",  "", "4.3%" },
			{ 17, 39251, "",           "=q4=Necrogenic Belt",                "=ds=#s10#, #a3#", "", "4.3%" },
			{ 18, 39232, "",           "=q4=Pendant of Lost Vocations",      "=ds=#s2#",        "", "4.3%" },
			{ 19, 39194, "",           "=q4=Rusted-Link Spiked Gauntlets",   "=ds=#s9#, #a3#",  "", "4.3%" },
			{ 20, 39344, "",           "=q4=Slayer of the Lifeless",         "=ds=#h1#, #w10#", "", "4.3%" },
			{ 21, 39237, "",           "=q4=Spaulders of Resumed Battle",    "=ds=#s3#, #a2#",  "", "4.3%" },
			{ 22, 39379, "",           "=q4=Spectral Rider's Girdle",        "=ds=#s10#, #a3#", "", "4.3%" },
			{ 23, 39388, "",           "=q4=Spirit-World Glass",             "=ds=#s14#",       "", "4.3%" },
			{ 24, 39191, "",           "=q4=Splint-Bound Leggings",          "=ds=#s11#, #a2#", "", "4.3%" },
			{ 25, 39248, "",           "=q4=Tunic of the Lost Pack",         "=ds=#s5#, #a3#",  "", "4.3%" },
		},
		{
			{ 1,  40610, "", "=q4=Chestguard of the Lost Conqueror",  "=ds=#m40# #e15#", "", "11.1%" },
			{ 2,  40611, "", "=q4=Chestguard of the Lost Protector",  "=ds=#m40# #e15#", "", "11.1%" },
			{ 3,  40612, "", "=q4=Chestguard of the Lost Vanquisher", "=ds=#m40# #e15#", "", "11.1%" },
			{ 5,  40619, "", "=q4=Leggings of the Lost Conqueror",    "=ds=#m40# #e15#", "", "11.1%" },
			{ 6,  40620, "", "=q4=Leggings of the Lost Protector",    "=ds=#m40# #e15#", "", "11.1%" },
			{ 7,  40621, "", "=q4=Leggings of the Lost Vanquisher",   "=ds=#m40# #e15#", "", "11.1%" },
			{ 9,  40622, "", "=q4=Spaulders of the Lost Conqueror",   "=ds=#m40# #e15#", "", "11.1%" },
			{ 10, 40623, "", "=q4=Spaulders of the Lost Protector",   "=ds=#m40# #e15#", "", "11.1%" },
			{ 11, 40624, "", "=q4=Spaulders of the Lost Vanquisher",  "=ds=#m40# #e15#", "", "11.1%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  40350, "",           "=q4=Urn of Lost Memories",          "=ds=#s15#",       "", "3.4%" },
			{ 3,  0,     "INV_Box_01", "=q6=#m5#",                          "=ds=Various" },
			{ 4,  40332, "",           "=q4=Abetment Bracers",              "=ds=#s8#, #a4#",  "", "3.4%" },
			{ 5,  40260, "",           "=q4=Belt of the Tortured",          "=ds=#s10#, #a2#", "", "3.4%" },
			{ 6,  40302, "",           "=q4=Benefactor's Gauntlets",        "=ds=#s9#, #a3#",  "", "3.4%" },
			{ 7,  40209, "",           "=q4=Bindings of the Decrepit",      "=ds=#s8#, #a3#",  "", "3.4%" },
			{ 8,  40326, "",           "=q4=Boots of Forlorn Wishes",       "=ds=#s12#, #a1#", "", "3.4%" },
			{ 9,  40270, "",           "=q4=Boots of Septic Wounds",        "=ds=#s12#, #a2#", "", "3.4%" },
			{ 10, 40203, "",           "=q4=Breastplate of Tormented Rage", "=ds=#s5#, #a4#",  "", "3.4%" },
			{ 11, 40319, "",           "=q4=Chestpiece of Suspicion",       "=ds=#s5#, #a2#",  "", "3.4%" },
			{ 12, 39718, "",           "=q4=Corpse Scarab Handguards",      "=ds=#s9#, #a3#",  "", "3.4%" },
			{ 13, 40296, "",           "=q4=Cover of Silence",              "=ds=#s1#, #a2#",  "", "3.4%" },
			{ 14, 40247, "",           "=q4=Cowl of Innocent Delight",      "=ds=#s1#, #a1#",  "", "3.4%" },
			{ 15, 39768, "",           "=q4=Cowl of the Perished",          "=ds=#s1#, #a2#",  "", "3.4%" },
			{ 16, 40188, "",           "=q4=Gauntlets of the Disobediant",  "=ds=#s9#, #a4#",  "", "3.4%" },
			{ 17, 39733, "",           "=q4=Gloves of Token Respect",       "=ds=#s9#, #a1#",  "", "3.4%" },
			{ 18, 40242, "",           "=q4=Grotesque Handgrips",           "=ds=#s9#, #a3#",  "", "3.4%" },
			{ 19, 39760, "",           "=q4=Helm of Diminished Pride",      "=ds=#s1#, #a4#",  "", "3.4%" },
			{ 20, 39717, "",           "=q4=Inexorable Sabatons",           "=ds=#s12#, #a4#", "", "3.4%" },
			{ 21, 40206, "",           "=q4=Iron-Spring Jumpers",           "=ds=#s12#, #a4#", "", "3.4%" },
			{ 22, 40204, "",           "=q4=Legguards of the Apostle",      "=ds=#s11#, #a4#", "", "3.4%" },
			{ 23, 40191, "",           "=q4=Libram of Radiance",            "=ds=#w16#",       "", "3.4%" },
			{ 24, 40602, "",           "=q4=Robes of Mutation",             "=ds=#s5#, #a1#",  "", "3.4%" },
			{ 25, 40297, "",           "=q4=Sabatons of Endurance",         "=ds=#s12#, #a4#", "", "3.4%" },
			{ 26, 40185, "",           "=q4=Shoulderguards of Opportunity", "=ds=#s3#, #a4#",  "", "3.4%" },
			{ 27, 40205, "",           "=q4=Stalk-Skin Belt",               "=ds=#s10#, #a2#", "", "3.4%" },
			{ 28, 40289, "",           "=q4=Sympathetic Amice",             "=ds=#s3#, #a1#",  "", "3.4%" },
			{ 29, 40193, "",           "=q4=Tunic of Masked Suffering",     "=ds=#s5#, #a3#",  "", "3.4%" },
			{ 30, 40259, "",           "=q4=Waistguard of Divine Grace",    "=ds=#s10#, #a4#", "", "3.4%" },
		},
		{
			{ 1,  40303, "", "=q4=Wraps of the Persecuted",            "=ds=#s9#, #a1#",  "", "3.4%" },
			{ 16, 40625, "", "=q4=Breastplate of the Lost Conqueror",  "=ds=#m40# #e15#", "", "11.1%" },
			{ 17, 40626, "", "=q4=Breastplate of the Lost Protector",  "=ds=#m40# #e15#", "", "11.1%" },
			{ 18, 40627, "", "=q4=Breastplate of the Lost Vanquisher", "=ds=#m40# #e15#", "", "11.1%" },
			{ 20, 40634, "", "=q4=Legplates of the Lost Conqueror",    "=ds=#m40# #e15#", "", "11.1%" },
			{ 21, 40635, "", "=q4=Legplates of the Lost Protector",    "=ds=#m40# #e15#", "", "11.1%" },
			{ 22, 40636, "", "=q4=Legplates of the Lost Vanquisher",   "=ds=#m40# #e15#", "", "11.1%" },
			{ 24, 40637, "", "=q4=Mantle of the Lost Conqueror",       "=ds=#m40# #e15#", "", "11.1%" },
			{ 25, 40638, "", "=q4=Mantle of the Lost Protector",       "=ds=#m40# #e15#", "", "11.1%" },
			{ 26, 40639, "", "=q4=Mantle of the Lost Vanquisher",      "=ds=#m40# #e15#", "", "11.1%" },
		},
	},
	info = {
		name = BabbleBoss["Gluth"],
		module = moduleName,
		instance = "Naxxramas",
	},
};

Synastria_Data["NaxxramasThaddius"] = {
	["Normal"] = {
		{
			{ 1,  39293, "",           "=q4=Blackened Legplates of Feugen",   "=ds=#s11#, #a4#",            "", "20%" },
			{ 2,  39295, "",           "=q4=Cowl of Sheet Lightning",         "=ds=#s1#, #a1#",             "", "20%" },
			{ 3,  39292, "",           "=q4=Repelling Charge",                "=ds=#s14#",                  "", "20%" },
			{ 4,  39291, "",           "=q4=Torment of the Banished",         "=ds=#h1#, #w10#",            "", "20%" },
			{ 6,  0,     "INV_Box_01", "=q6=#m5#",                            "=ds=" .. BabbleBoss["Gluth"] },
			{ 7,  39294, "",           "=q4=Arc-Scorched Helmet",             "=ds=#s1#, #a3#",             "", "20%" },
			{ 16, 40619, "",           "=q4=Leggings of the Lost Conqueror",  "=ds=#m40# #e15#",            "", "33.3%" },
			{ 17, 40620, "",           "=q4=Leggings of the Lost Protector",  "=ds=#m40# #e15#",            "", "33.3%" },
			{ 18, 40621, "",           "=q4=Leggings of the Lost Vanquisher", "=ds=#m40# #e15#",            "", "33.3%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  40301, "",           "=q4=Cincture of Polarity",             "=ds=#s10#, #a1#",            "", "10%" },
			{ 2,  40298, "",           "=q4=Faceguard of the Succumbed",       "=ds=#s1#, #a4#",             "", "10%" },
			{ 3,  40304, "",           "=q4=Headpiece of Fungal Bloom",        "=ds=#s1#, #a2#",             "", "10%" },
			{ 4,  40299, "",           "=q4=Pauldrons of the Abandoned",       "=ds=#s3#, #a3#",             "", "10%" },
			{ 5,  40294, "",           "=q4=Riveted Abomination Leggings",     "=ds=#s11#, #a4#",            "", "10%" },
			{ 6,  40300, "",           "=q4=Spire of Sunset",                  "=ds=#w9#",                   "", "10%" },
			{ 8,  0,     "INV_Box_01", "=q6=#m5#",                             "=ds=" .. BabbleBoss["Gluth"] },
			{ 9,  40302, "",           "=q4=Benefactor's Gauntlets",           "=ds=#s9#, #a3#",             "", "8%" },
			{ 10, 40296, "",           "=q4=Cover of Silence",                 "=ds=#s1#, #a2#",             "", "10%" },
			{ 11, 40297, "",           "=q4=Sabatons of Endurance",            "=ds=#s12#, #a4#",            "", "10%" },
			{ 12, 40303, "",           "=q4=Wraps of the Persecuted",          "=ds=#s9#, #a1#",             "", "10%" },
			{ 16, 40634, "",           "=q4=Legplates of the Lost Conqueror",  "=ds=#m40# #e15#",            "", "33.3%" },
			{ 17, 40635, "",           "=q4=Legplates of the Lost Protector",  "=ds=#m40# #e15#",            "", "33.3%" },
			{ 18, 40636, "",           "=q4=Legplates of the Lost Vanquisher", "=ds=#m40# #e15#",            "", "33.3%" },
		},
	},
	info = {
		name = BabbleBoss["Thaddius"],
		module = moduleName,
		instance = "Naxxramas",
	},
};

------------------------
--- Arachnid Quarter ---
------------------------

Synastria_Data["NaxxramasAnubRekhan"] = {
	["Normal"] = {
		{
			{ 1,  39190, "",           "=q4=Agonal Sash",             "=ds=#s10#, #a1#",            "", "10%" },
			{ 2,  39189, "",           "=q4=Boots of Persistence",    "=ds=#s12#, #a3#",            "", "10%" },
			{ 3,  39141, "",           "=q4=Deflection Band",         "=ds=#s13#",                  "", "10%" },
			{ 4,  39192, "",           "=q4=Gloves of Dark Gestures", "=ds=#s9#, #a1#",             "", "10%" },
			{ 5,  39140, "",           "=q4=Knife of Incision",       "=ds=#h1#, #w4#",             "", "10%" },
			{ 6,  39139, "",           "=q4=Ravaging Sabatons",       "=ds=#s12#, #a4#",            "", "10%" },
			{ 8,  0,     "INV_Box_01", "=q6=#m5#",                    "=ds=" .. BabbleBoss["Gluth"] },
			{ 9,  39193, "",           "=q4=Band of Neglected Pleas", "=ds=#s13#",                  "", "10%" },
			{ 10, 39188, "",           "=q4=Chivalric Chestguard",    "=ds=#s5#, #a4#",             "", "10%" },
			{ 11, 39146, "",           "=q4=Collar of Dissolution",   "=ds=#s2#",                   "", "10%" },
			{ 12, 39191, "",           "=q4=Splint-Bound Leggings",   "=ds=#s11#, #a2#",            "", "10%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  39702, "",           "=q4=Arachnoid Gold Band",          "=ds=#s8#, #a3#",  "", "4.3%" },
			{ 2,  39701, "",           "=q4=Dawnwalkers",                  "=ds=#s12#, #a2#", "", "4.3%" },
			{ 3,  39712, "",           "=q4=Gemmed Wand of the Nerubians", "=ds=#w12#",       "", "4.3%" },
			{ 4,  39720, "",           "=q4=Leggings of Atrophy",          "=ds=#s11#, #a1#", "", "4.3%" },
			{ 5,  39719, "",           "=q4=Mantle of the Locusts",        "=ds=#s3#, #a1#",  "", "4.3%" },
			{ 6,  39704, "",           "=q4=Pauldrons of Unnatural Death", "=ds=#s3#, #a4#",  "", "4.3%" },
			{ 7,  39703, "",           "=q4=Rescinding Grips",             "=ds=#s9#, #a4#",  "", "4.3%" },
			{ 8,  39706, "",           "=q4=Sabatons of Sudden Reprisal",  "=ds=#s12#, #a4#", "", "4.3%" },
			{ 9,  39721, "",           "=q4=Sash of the Parlor",           "=ds=#s10#, #a1#", "", "4.3%" },
			{ 10, 39716, "",           "=q4=Shield of Assimilation",       "=ds=#w8#",        "", "4.3%" },
			{ 11, 39722, "",           "=q4=Swarm Bindings",               "=ds=#s8#, #a2#",  "", "4.3%" },
			{ 12, 39714, "",           "=q4=Webbed Death",                 "=ds=#h1#, #w4#",  "", "4.3%" },
			{ 16, 0,     "INV_Box_01", "=q6=#m5#",                         "=ds=Various" },
			{ 17, 40071, "",           "=q4=Chains of Adoration",          "=ds=#s2#",        "", "4.3%" },
			{ 18, 39718, "",           "=q4=Corpse Scarab Handguards",     "=ds=#s9#, #a3#",  "", "4.3%" },
			{ 19, 40065, "",           "=q4=Fool's Trial",                 "=ds=#s2#",        "", "4.3%" },
			{ 20, 40069, "",           "=q4=Heritage",                     "=ds=#s2#",        "", "4.3%" },
			{ 21, 39717, "",           "=q4=Inexorable Sabatons",          "=ds=#s12#, #a4#", "", "4.3%" },
			{ 22, 40080, "",           "=q4=Lost Jewel",                   "=ds=#s13#",       "", "4.3%" },
			{ 23, 40075, "",           "=q4=Ruthlessness",                 "=ds=#s13#",       "", "4.3%" },
			{ 24, 40107, "",           "=q4=Sand-Worn Band",               "=ds=#s13#",       "", "4.3%" },
			{ 25, 40108, "",           "=q4=Seized Beauty",                "=ds=#s13#",       "", "4.3%" },
			{ 26, 40074, "",           "=q4=Strong-Handed Ring",           "=ds=#s13#",       "", "4.3%" },
			{ 27, 40064, "",           "=q4=Thunderstorm Amulet",          "=ds=#s2#",        "", "4.3%" },
		},
	},
	info = {
		name = BabbleBoss["Anub'Rekhan"],
		module = moduleName,
		instance = "Naxxramas",
	},
};

Synastria_Data["NaxxramasGrandWidowFaerlina"] = {
	["Normal"] = {
		{
			{ 1,  39217, "",           "=q4=Avenging Combat Leggings",     "=ds=#s11#, #a3#",            "", "10%" },
			{ 2,  39196, "",           "=q4=Boots of the Worshiper",       "=ds=#s12#, #a2#",            "", "10%" },
			{ 3,  39195, "",           "=q4=Bracers of Lost Sentiments",   "=ds=#s8#, #a4#",             "", "10%" },
			{ 4,  39198, "",           "=q4=Frostblight Pauldrons",        "=ds=#s3#, #a4#",             "", "10%" },
			{ 5,  39197, "",           "=q4=Gauntlets of the Master",      "=ds=#s9#, #a4#",             "", "10%" },
			{ 6,  39216, "",           "=q4=Sash of Mortal Desire",        "=ds=#s10#, #a1#",            "", "10%" },
			{ 7,  39199, "",           "=q4=Watchful Eye",                 "=ds=#s15#",                  "", "10%" },
			{ 9,  0,     "INV_Box_01", "=q6=#m5#",                         "=ds=" .. BabbleBoss["Gluth"] },
			{ 10, 39215, "",           "=q4=Boots of the Follower",        "=ds=#s12#, #a2#",            "", "10%" },
			{ 11, 39200, "",           "=q4=Grieving Spellblade",          "=ds=#h3#, #w10#",            "", "10%" },
			{ 12, 39194, "",           "=q4=Rusted-Link Spiked Gauntlets", "=ds=#s9#, #a3#",             "", "10%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  39734, "",           "=q4=Atonement Greaves",                "=ds=#s12#, #a3#", "", "4.2%" },
			{ 2,  39735, "",           "=q4=Belt of False Dignity",            "=ds=#s10#, #a1#", "", "4.2%" },
			{ 3,  39729, "",           "=q4=Bracers of the Tyrant",            "=ds=#s8#, #a4#",  "", "4.2%" },
			{ 4,  39726, "",           "=q4=Callous-Hearted Gauntlets",        "=ds=#s9#, #a4#",  "", "4.2%" },
			{ 5,  39724, "",           "=q4=Cult's Chestguard",                "=ds=#s5#, #a3#" },
			{ 6,  39727, "",           "=q4=Dislocating Handguards",           "=ds=#s9#, #a2#",  "", "4.2%" },
			{ 7,  39725, "",           "=q4=Epaulets of the Grieving Servant", "=ds=#s3#, #a4#",  "", "4.2%" },
			{ 8,  39732, "",           "=q4=Faerlina's Madness",               "=ds=#s1#, #a1#",  "", "4.2%" },
			{ 9,  39723, "",           "=q4=Fire-Scorched Greathelm",          "=ds=#s1#, #a4#",  "", "4.2%" },
			{ 10, 39757, "",           "=q4=Idol of Worship",                  "=ds=#w14#",       "", "4.2%" },
			{ 11, 39731, "",           "=q4=Punctilious Bindings",             "=ds=#s8#, #a1#",  "", "4.2%" },
			{ 12, 39728, "",           "=q4=Totem of Misery",                  "=ds=#w15#",       "", "4.2%" },
			{ 13, 39756, "",           "=q4=Tunic of Prejudice",               "=ds=#s5#, #a2#",  "", "4.2%" },
			{ 14, 39730, "",           "=q4=Widow's Fury",                     "=ds=#h1#, #w10#", "", "4.2%" },
			{ 16, 0,     "INV_Box_01", "=q6=#m5#",                             "=ds=Various" },
			{ 17, 40071, "",           "=q4=Chains of Adoration",              "=ds=#s2#",        "", "4.2%" },
			{ 18, 40065, "",           "=q4=Fool's Trial",                     "=ds=#s2#",        "", "4.2%" },
			{ 19, 39733, "",           "=q4=Gloves of Token Respect",          "=ds=#s9#, #a1#",  "", "4.2%" },
			{ 20, 40069, "",           "=q4=Heritage",                         "=ds=#s2#",        "", "4.2%" },
			{ 21, 40080, "",           "=q4=Lost Jewel",                       "=ds=#s13#",       "", "4.2%" },
			{ 22, 40075, "",           "=q4=Ruthlessness",                     "=ds=#s13#",       "", "4.2%" },
			{ 23, 40107, "",           "=q4=Sand-Worn Band",                   "=ds=#s13#",       "", "4.2%" },
			{ 24, 40108, "",           "=q4=Seized Beauty",                    "=ds=#s13#",       "", "4.2%" },
			{ 25, 40074, "",           "=q4=Strong-Handed Ring",               "=ds=#s13#",       "", "4.2%" },
			{ 26, 40064, "",           "=q4=Thunderstorm Amulet",              "=ds=#s2#",        "", "4.2%" },
		},
	},
	info = {
		name = BabbleBoss["Grand Widow Faerlina"],
		module = moduleName,
		instance = "Naxxramas",
	},
};

Synastria_Data["NaxxramasMaexxna"] = {
	["Normal"] = {
		{
			{ 1,  39233, "",           "=q4=Aegis of Damnation",           "=ds=#w8#",                   "", "10%" },
			{ 2,  39225, "",           "=q4=Cloak of Armed Strife",        "=ds=#s4#",                   "", "10%" },
			{ 3,  39229, "",           "=q4=Embrace of the Spider",        "=ds=#s14#",                  "", "10%" },
			{ 4,  39224, "",           "=q4=Leggings of Discord",          "=ds=#s11#, #a2#",            "", "10%" },
			{ 5,  39226, "",           "=q4=Maexxna's Femur",              "=ds=#h1#, #w6#",             "", "10%" },
			{ 6,  39230, "",           "=q4=Spaulders of the Monstrosity", "=ds=#s3#, #a2#",             "", "10%" },
			{ 7,  39231, "",           "=q4=Timeworn Silken Band",         "=ds=#s13#",                  "", "10%" },
			{ 8,  39228, "",           "=q4=Web Cocoon Grips",             "=ds=#s9#, #a4#",             "", "10%" },
			{ 9,  39221, "",           "=q4=Wraith Spear",                 "=ds=#w7#",                   "", "10%" },
			{ 11, 0,     "INV_Box_01", "=q6=#m5#",                         "=ds=" .. BabbleBoss["Gluth"] },
			{ 12, 39232, "",           "=q4=Pendant of Lost Vocations",    "=ds=#s2#",                   "", "10%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  39759, "",           "=q4=Ablative Chitin Girdle",        "=ds=#s10#, #a4#", "", "4.2%" },
			{ 2,  39764, "",           "=q4=Bindings of the Hapless Prey",  "=ds=#s8#, #a4#",  "", "4.2%" },
			{ 3,  40062, "",           "=q4=Digested Silken Robes",         "=ds=#s5#, #a1#",  "", "4.2%" },
			{ 4,  40060, "",           "=q4=Distorted Limbs",               "=ds=#s11#, #a1#", "", "4.2%" },
			{ 5,  39761, "",           "=q4=Infectious Skitterer Leggings", "=ds=#s11#, #a2#", "", "4.2%" },
			{ 6,  40063, "",           "=q4=Mantle of Shattered Kinship",   "=ds=#s3#, #a2#",  "", "4.2%" },
			{ 7,  39766, "",           "=q4=Matriarch's Spawn",             "=ds=#s15#",       "", "4.2%" },
			{ 8,  40061, "",           "=q4=Quivering Tunic",               "=ds=#s5#, #a3#",  "", "4.2%" },
			{ 9,  39765, "",           "=q4=Sinner's Bindings",             "=ds=#s8#, #a2#",  "", "4.2%" },
			{ 10, 39758, "",           "=q4=The Jawbone",                   "=ds=#h2#, #w6#",  "", "4.2%" },
			{ 11, 39762, "",           "=q4=Torn Web Wrapping",             "=ds=#s10#, #a3#", "", "4.2%" },
			{ 12, 39767, "",           "=q4=Undiminished Battleplate",      "=ds=#s5#, #a4#",  "", "4.2%" },
			{ 13, 39763, "",           "=q4=Wraith Strike",                 "=ds=#h3#, #w13#", "", "4.2%" },
			{ 16, 0,     "INV_Box_01", "=q6=#m5#",                          "=ds=Various" },
			{ 17, 40250, "",           "-q4-Aged Winter Cloak",             "=ds=#s4#",        "", "4.2%" },
			{ 18, 40254, "",           "=q4=Cloak of Averted Crisis",       "=ds=#s4#",        "", "4.2%" },
			{ 19, 40252, "",           "=q4=Cloak of the Shadowed Sun",     "=ds=#s4#",        "", "4.2%" },
			{ 20, 39768, "",           "=q4=Cowl of the Perished",          "=ds=#s1#, #a2#",  "", "4.2%" },
			{ 21, 40257, "",           "=q4=Defender's Code",               "=ds=#s14#",       "", "4.2%" },
			{ 22, 40255, "",           "=q4=Dying Curse",                   "=ds=#s14#",       "", "4.2%" },
			{ 23, 40258, "",           "=q4=Forethought Talisman",          "=ds=#s14#",       "", "4.2%" },
			{ 24, 40256, "",           "=q4=Grim Toll",                     "=ds=#s14#",       "", "4.2%" },
			{ 25, 39760, "",           "=q4=Helm of Diminished Pride",      "=ds=#s1#, #a4#",  "", "4.2%" },
			{ 26, 40253, "",           "=q4=Shawl of the Old Maid",         "=ds=#s4#",        "", "4.2%" },
			{ 27, 40251, "",           "=q4=Shroud of Luminosity",          "=ds=#s4#",        "", "4.2%" },
		},
	},
	info = {
		name = BabbleBoss["Maexxna"],
		module = moduleName,
		instance = "Naxxramas",
	},
};

------------------------
--- Military Quarter ---
------------------------

Synastria_Data["NaxxramasInstructorRazuvious"] = {
	["Normal"] = {
		{
			{ 1,  39296, "",           "=q4=Accursed Bow of the Elite",    "=ds=#w2#",                   "", "10%" },
			{ 2,  39297, "",           "=q4=Cloak of Darkening",           "=ds=#s4#",                   "", "10%" },
			{ 3,  39308, "",           "=q4=Girdle of Lenience",           "=ds=#s10#, #a2#",            "", "10%" },
			{ 4,  39307, "",           "=q4=Iron Rings of Endurance",      "=ds=#s8#, #a3#",             "", "10%" },
			{ 5,  39310, "",           "=q4=Mantle of the Extensive Mind", "=ds=#s3#, #a1#",             "", "10%" },
			{ 6,  39306, "",           "=q4=Plated Gloves of Relief",      "=ds=#s9#, #a4#",             "", "10%" },
			{ 7,  39299, "",           "=q4=Rapid Attack Gloves",          "=ds=#s9#, #a2#",             "", "10%" },
			{ 8,  39311, "",           "=q4=Scepter of Murmuring Spirits", "=ds=#s15#",                  "", "10%" },
			{ 9,  39298, "",           "=q4=Waistguard of the Tutor",      "=ds=#s10#, #a4#",            "", "10%" },
			{ 11, 0,     "INV_Box_01", "=q6=#m5#",                         "=ds=" .. BabbleBoss["Gluth"] },
			{ 12, 39309, "",           "=q4=Leggings of the Instructor",   "=ds=#s11#, #a1#",            "", "10%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  40324, "",           "=q4=Bands of Mutual Respect",        "=ds=#s8#, #a3#",  "", "4.2%" },
			{ 2,  40325, "",           "=q4=Bindings of the Expansive Mind", "=ds=#s8#, #a1#",  "", "4.2%" },
			{ 3,  40306, "",           "=q4=Bracers of the Unholy Knight",   "=ds=#s8#, #a4#",  "", "4.2%" },
			{ 4,  40323, "",           "=q4=Esteemed Bindings",              "=ds=#s8#, #a2#",  "", "4.2%" },
			{ 5,  40320, "",           "=q4=Faithful Steel Sabatons",        "=ds=#s12#, #a4#", "", "4.2%" },
			{ 6,  40316, "",           "=q4=Gauntlets of Guiding Touch",     "=ds=#s9#, #a4#",  "", "4.2%" },
			{ 7,  40317, "",           "=q4=Girdle of Razuvious",            "=ds=#s10#, #a4#", "", "4.2%" },
			{ 8,  40327, "",           "=q4=Girdle of Recuperation",         "=ds=#s10#, #a3#", "", "4.2%" },
			{ 9,  40321, "",           "=q4=Idol of the Shooting Star",      "=ds=#w14#",       "", "4.2%" },
			{ 10, 40318, "",           "=q4=Legplates of Double Strikes",    "=ds=#s11#, #a4#", "", "4.2%" },
			{ 11, 40315, "",           "=q4=Shoulderpads of Secret Arts",    "=ds=#s3#, #a3#",  "", "4.2%" },
			{ 12, 40305, "",           "=q4=Spaulders of Egotism",           "=ds=#s3#, #a2#",  "", "4.2%" },
			{ 13, 40322, "",           "=q4=Totem of Dueling",               "=ds=#w15#",       "", "4.2%" },
			{ 16, 0,     "INV_Box_01", "=q6=#m5#",                           "=ds=Various" },
			{ 17, 40326, "",           "=q4=Boots of Forlorn Wishes",        "=ds=#s12#, #a1#", "", "4.2%" },
			{ 18, 40071, "",           "=q4=Chains of Adoration",            "=ds=#s2#",        "", "4.2%" },
			{ 19, 40319, "",           "=q4=Chestpiece of Suspicion",        "=ds=#s5#, #a2#",  "", "4.2%" },
			{ 20, 40065, "",           "=q4=Fool's Trial",                   "=ds=#s2#",        "", "4.2%" },
			{ 21, 40069, "",           "=q4=Heritage",                       "=ds=#s2#",        "", "4.2%" },
			{ 22, 40080, "",           "=q4=Lost Jewel",                     "=ds=#s13#",       "", "4.2%" },
			{ 23, 40075, "",           "=q4=Ruthlessness",                   "=ds=#s13#",       "", "4.2%" },
			{ 24, 40107, "",           "=q4=Sand-Worn Band",                 "=ds=#s13#",       "", "4.2%" },
			{ 25, 40108, "",           "=q4=Seized Beauty",                  "=ds=#s13#",       "", "4.2%" },
			{ 26, 40074, "",           "=q4=Strong-Handed Ring",             "=ds=#s13#",       "", "4.2%" },
			{ 27, 40064, "",           "=q4=Thunderstorm Amulet",            "=ds=#s2#",        "", "4.2%" },
		},
	},
	info = {
		name = BabbleBoss["Instructor Razuvious"],
		module = moduleName,
		instance = "Naxxramas",
	},
};

Synastria_Data["NaxxramasGothikTheHarvester"] = {
	["Normal"] = {
		{
			{ 1,  39391, "",           "=q4=Heinous Mail Chestguard",        "=ds=#s5#, #a3#",             "", "10%" },
			{ 2,  39390, "",           "=q4=Resurgent Phantom Bindings",     "=ds=#s8#, #a1#",             "", "10%" },
			{ 3,  39369, "",           "=q4=Sabatons of Deathlike Gloom",    "=ds=#s12#, #a4#",            "", "10%" },
			{ 4,  39389, "",           "=q4=Signet of the Malevolent",       "=ds=#s13#",                  "", "10%" },
			{ 5,  39386, "",           "=q4=Tunic of Dislocation",           "=ds=#s5#, #a2#",             "", "10%" },
			{ 6,  39392, "",           "=q4=Veiled Amulet of Life",          "=ds=#s2#",                   "", "10%" },
			{ 8,  0,     "INV_Box_01", "=q6=#m5#",                           "=ds=" .. BabbleBoss["Gluth"] },
			{ 9,  39345, "",           "=q4=Girdle of the Ascended Phantom", "=ds=#s10#, #a4#",            "", "10%" },
			{ 10, 39344, "",           "=q4=Slayer of the Lifeless",         "=ds=#h1#, #w10#",            "", "10%" },
			{ 11, 39379, "",           "=q4=Spectral Rider's Girdle",        "=ds=#s10#, #a3#",            "", "10%" },
			{ 12, 39388, "",           "=q4=Spirit-World Glass",             "=ds=#s14#",                  "", "10%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  40338, "",           "=q4=Bindings of Yearning",          "=ds=#s8#, #a1#",  "", "4.2%" },
			{ 2,  40330, "",           "=q4=Bracers of Unrelenting Attack", "=ds=#s8#, #a4#",  "", "4.2%" },
			{ 3,  40334, "",           "=q4=Burdened Shoulderplates",       "=ds=#s3#, #a4#",  "", "4.2%" },
			{ 4,  40339, "",           "=q4=Gothik's Cowl",                 "=ds=#s1#, #a1#",  "", "4.2%" },
			{ 5,  40340, "",           "=q4=Helm of Unleashed Energy",      "=ds=#s1#, #a3#",  "", "4.2%" },
			{ 6,  40328, "",           "=q4=Helm of Vital Protection",      "=ds=#s1#, #a4#",  "", "4.2%" },
			{ 7,  40329, "",           "=q4=Hood of the Exodus",            "=ds=#s1#, #a2#",  "", "4.2%" },
			{ 8,  40342, "",           "=q4=Idol of Awakening",             "=ds=#w14#",       "", "4.2%" },
			{ 9,  40331, "",           "=q4=Leggings of Failed Escape",     "=ds=#s11#, #a3#", "", "4.2%" },
			{ 10, 40333, "",           "=q4=Leggings of Fleeting Moments",  "=ds=#s11#, #a2#", "", "4.2%" },
			{ 11, 40337, "",           "=q4=Libram of Resurgence",          "=ds=#w16#",       "", "4.2%" },
			{ 12, 40336, "",           "=q4=Life and Death",                "=ds=#h3#, #w10#", "", "4.2%" },
			{ 13, 40341, "",           "=q4=Shackled Cinch",                "=ds=#s10#, #a2#", "", "4.2%" },
			{ 14, 40335, "",           "=q4=Touch of Horror",               "=ds=#w12#",       "", "4.2%" },
			{ 16, 0,     "INV_Box_01", "=q6=#m5#",                          "=ds=Various" },
			{ 17, 40332, "",           "=q4=Abetment Bracers",              "=ds=#s8#, #a4#",  "", "4.2%" },
			{ 18, 40250, "",           "-q4-Aged Winter Cloak",             "=ds=#s4#",        "", "4.2%" },
			{ 19, 40254, "",           "=q4=Cloak of Averted Crisis",       "=ds=#s4#",        "", "4.2%" },
			{ 20, 40252, "",           "=q4=Cloak of the Shadowed Sun",     "=ds=#s4#",        "", "4.2%" },
			{ 21, 40257, "",           "=q4=Defender's Code",               "=ds=#s14#",       "", "4.2%" },
			{ 22, 40255, "",           "=q4=Dying Curse",                   "=ds=#s14#",       "", "4.2%" },
			{ 23, 40258, "",           "=q4=Forethought Talisman",          "=ds=#s14#",       "", "4.2%" },
			{ 24, 40256, "",           "=q4=Grim Toll",                     "=ds=#s14#",       "", "4.2%" },
			{ 25, 40253, "",           "=q4=Shawl of the Old Maid",         "=ds=#s4#",        "", "4.2%" },
			{ 26, 40251, "",           "=q4=Shroud of Luminosity",          "=ds=#s4#",        "", "4.2%" },
		},
	},
	info = {
		name = BabbleBoss["Gothik the Harvester"],
		module = moduleName,
		instance = "Naxxramas",
	},
};

Synastria_Data["NaxxramasFourHorseman"] = {
	["Normal"] = {
		{
			{ 1,  39393, "",           "=q4=Claymore of Ancient Power",         "=ds=#h2#, #w10#",            "", "20%" },
			{ 2,  39397, "",           "=q4=Pauldrons of Havoc",                "=ds=#s3#, #a3#",             "", "20%" },
			{ 3,  39395, "",           "=q4=Thane's Tainted Greathelm",         "=ds=#s1#, #a4#",             "", "20%" },
			{ 5,  0,     "INV_Box_01", "=q6=#m5#",                              "=ds=" .. BabbleBoss["Gluth"] },
			{ 6,  39394, "",           "=q4=Charmed Cierge",                    "=ds=#w9#",                   "", "20%" },
			{ 7,  39396, "",           "=q4=Gown of Blaumeux",                  "=ds=#s5#, #a1#",             "", "20%" },
			{ 16, 40610, "",           "=q4=Chestguard of the Lost Conqueror",  "=ds=#m40# #e15#",            "", "33.3%" },
			{ 17, 40611, "",           "=q4=Chestguard of the Lost Protector",  "=ds=#m40# #e15#",            "", "33.3%" },
			{ 18, 40612, "",           "=q4=Chestguard of the Lost Vanquisher", "=ds=#m40# #e15#",            "", "33.3%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  40343, "",           "=q4=Armageddon",                         "=ds=#h2#, #w10#",            "", "10%" },
			{ 2,  40345, "",           "=q4=Broken Promise",                     "=ds=#h1#, #w10#",            "", "10%" },
			{ 3,  40348, "",           "=q4=Damnation",                          "=ds=#w9#",                   "", "10%" },
			{ 4,  40346, "",           "=q4=Final Voyage",                       "=ds=#w3#",                   "", "10%" },
			{ 5,  40349, "",           "=q4=Gloves of Peaceful Death",           "=ds=#s9#, #a2#",             "", "10%" },
			{ 6,  40344, "",           "=q4=Helm of the Grave",                  "=ds=#s1#, #a3#",             "", "10%" },
			{ 7,  40352, "",           "=q4=Leggings of Voracious Shadows",      "=ds=#s11#, #a3#",            "", "10%" },
			{ 8,  40286, "",           "=q4=Mantle of the Corrupted",            "=ds=#s3#, #a1#",             "", "10%" },
			{ 9,  40347, "",           "=q4=Zeliek's Gauntlets",                 "=ds=#s9#, #a4#",             "", "10%" },
			{ 11, 0,     "INV_Box_01", "=q6=#m5#",                               "=ds=" .. BabbleBoss["Gluth"] },
			{ 12, 40350, "",           "=q4=Urn of Lost Memories",               "=ds=#s15#",                  "", "10%" },
			{ 16, 40625, "",           "=q4=Breastplate of the Lost Conqueror",  "=ds=#m40# #e15#",            "", "33.3%" },
			{ 17, 40626, "",           "=q4=Breastplate of the Lost Protector",  "=ds=#m40# #e15#",            "", "33.3%" },
			{ 18, 40627, "",           "=q4=Breastplate of the Lost Vanquisher", "=ds=#m40# #e15#",            "", "33.3%" },
		},
	},
	info = {
		name = BabbleBoss["The Four Horsemen"],
		module = moduleName,
		instance = "Naxxramas",
	},
};

----------------------
--- Plague Quarter ---
----------------------

Synastria_Data["NaxxramasNothThePlaguebringer"] = {
	["Normal"] = {
		{
			{ 1,  39235, "",           "=q4=Bone-Framed Bracers",             "=ds=#s8#, #a4#",             "", "10%" },
			{ 2,  39239, "",           "=q4=Chestplate of the Risen Soldier", "=ds=#s5#, #a4#",             "", "10%" },
			{ 3,  39241, "",           "=q4=Dark Shroud of the Scourge",      "=ds=#s4#",                   "", "10%" },
			{ 4,  39243, "",           "=q4=Handgrips of the Foredoomed",     "=ds=#s9#, #a3#",             "", "10%" },
			{ 5,  39240, "",           "=q4=Noth's Curse",                    "=ds=#s1#, #a2#",             "", "10%" },
			{ 6,  39234, "",           "=q4=Plague-Impervious Boots",         "=ds=#s12#, #a4#",            "", "10%" },
			{ 7,  39244, "",           "=q4=Ring of the Fated",               "=ds=#s13#",                  "", "10%" },
			{ 8,  39242, "",           "=q4=Robes of Hoarse Breaths",         "=ds=#s5#, #a1#",             "", "10%" },
			{ 9,  39236, "",           "=q4=Trespasser's Boots",              "=ds=#s12#, #a3#",            "", "10%" },
			{ 11, 0,     "INV_Box_01", "=q6=#m5#",                            "=ds=" .. BabbleBoss["Gluth"] },
			{ 12, 39237, "",           "=q4=Spaulders of Resumed Battle",     "=ds=#s3#, #a2#",             "", "10%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  40192, "",           "=q4=Accursed Spine",                "=ds=#s15#",       "", "4.2%" },
			{ 2,  40189, "",           "=q4=Angry Dread",                   "=ds=#h1#, #w6#",  "", "4.2%" },
			{ 3,  40198, "",           "=q4=Bands of Impurity",             "=ds=#s8#, #a1#",  "", "4.2%" },
			{ 4,  40200, "",           "=q4=Belt of Potent Chanting",       "=ds=#s10#, #a2#", "", "4.2%" },
			{ 5,  40184, "",           "=q4=Crippled Treads",               "=ds=#s12#, #a3#", "", "4.2%" },
			{ 6,  40197, "",           "=q4=Gloves of the Fallen Wizard",   "=ds=#s9#, #a1#",  "", "4.2%" },
			{ 7,  40196, "",           "=q4=Legguards of the Undisturbed",  "=ds=#s11#, #a3#", "", "4.2%" },
			{ 8,  40187, "",           "=q4=Poignant Sabatons",             "=ds=#s12#, #a4#", "", "4.2%" },
			{ 9,  40190, "",           "=q4=Spinning Fate",                 "=ds=#w11#",       "", "4.2%" },
			{ 10, 40186, "",           "=q4=Thrusting Bands",               "=ds=#s8#, #a2#",  "", "4.2%" },
			{ 16, 0,     "INV_Box_01", "=q6=#m5#",                          "=ds=Various" },
			{ 17, 40071, "",           "=q4=Chains of Adoration",           "=ds=#s2#",        "", "4.2%" },
			{ 18, 40065, "",           "=q4=Fool's Trial",                  "=ds=#s2#",        "", "4.2%" },
			{ 19, 40188, "",           "=q4=Gauntlets of the Disobediant",  "=ds=#s9#, #a4#",  "", "4.2%" },
			{ 20, 40069, "",           "=q4=Heritage",                      "=ds=#s2#",        "", "4.2%" },
			{ 21, 40191, "",           "=q4=Libram of Radiance",            "=ds=#w16#",       "", "4.2%" },
			{ 22, 40080, "",           "=q4=Lost Jewel",                    "=ds=#s13#",       "", "4.2%" },
			{ 23, 40602, "",           "=q4=Robes of Mutation",             "=ds=#s5#, #a1#",  "", "4.2%" },
			{ 24, 40075, "",           "=q4=Ruthlessness",                  "=ds=#s13#",       "", "4.2%" },
			{ 25, 40107, "",           "=q4=Sand-Worn Band",                "=ds=#s13#",       "", "4.2%" },
			{ 26, 40108, "",           "=q4=Seized Beauty",                 "=ds=#s13#",       "", "4.2%" },
			{ 27, 40185, "",           "=q4=Shoulderguards of Opportunity", "=ds=#s3#, #a4#",  "", "4.2%" },
			{ 28, 40074, "",           "=q4=Strong-Handed Ring",            "=ds=#s13#",       "", "4.2%" },
			{ 29, 40064, "",           "=q4=Thunderstorm Amulet",           "=ds=#s2#",        "", "4.2%" },
			{ 30, 40193, "",           "=q4=Tunic of Masked Suffering",     "=ds=#s5#, #a3#",  "", "4.2%" },
		},
	},
	info = {
		name = BabbleBoss["Noth the Plaguebringer"],
		module = moduleName,
		instance = "Naxxramas",
	},
};

Synastria_Data["NaxxramasHeiganTheUnclean"] = {
	["Normal"] = {
		{
			{ 1,  39246, "", "=q4=Amulet of Autopsy",           "=ds=#s2#",        "", "10%" },
			{ 2,  39247, "", "=q4=Cuffs of Dark Shadows",       "=ds=#s8#, #a2#",  "", "10%" },
			{ 3,  39245, "", "=q4=Demise",                      "=ds=#h2#, #w6#",  "", "10%" },
			{ 4,  39251, "", "=q4=Necrogenic Belt",             "=ds=#s10#, #a3#", "", "10%" },
			{ 5,  39252, "", "=q4=Preceptor's Bindings",        "=ds=#s8#, #a1#",  "", "10%" },
			{ 6,  39250, "", "=q4=Ring of Holy Cleansing",      "=ds=#s13#",       "", "10%" },
			{ 7,  39254, "", "=q4=Saltarello Shoes",            "=ds=#s12#, #a1#", "", "10%" },
			{ 8,  39249, "", "=q4=Shoulderplates of Bloodshed", "=ds=#s3#, #a4#",  "", "10%" },
			{ 9,  39255, "", "=q4=Staff of the Plague Beast",   "=ds=#w9#",        "", "10%" },
			{ 10, 39248, "", "=q4=Tunic of the Lost Pack",      "=ds=#s5#, #a3#",  "", "10%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  40210, "",           "=q4=Chestguard of Bitter Charms",   "=ds=#s5#, #a4#",  "", "4.2%" },
			{ 2,  40208, "",           "=q4=Cryptfiend's Bite",             "=ds=#w7#",        "", "4.2%" },
			{ 3,  40237, "",           "=q4=Eruption-Scared Boots",         "=ds=#s12#, #a3#", "", "4.2%" },
			{ 4,  40238, "",           "=q4=Gloves of the Dancing Bear",    "=ds=#s9#, #a2#",  "", "4.2%" },
			{ 5,  40234, "",           "=q4=Heigan's Putrid Vestments",     "=ds=#s5#, #a1#",  "", "4.2%" },
			{ 6,  40235, "",           "=q4=Helm of Pilgrimage",            "=ds=#s1#, #a3#",  "", "4.2%" },
			{ 7,  40201, "",           "=q4=Leggings of Colossal Strides",  "=ds=#s11#, #a3#", "", "4.2%" },
			{ 8,  40236, "",           "=q4=Serene Echoes",                 "=ds=#s12#, #a1#", "", "4.2%" },
			{ 9,  40207, "",           "=q4=Sigil of Awareness",            "=ds=#w21#",       "", "4.2%" },
			{ 10, 40233, "",           "=q4=The Undeath Carrier",           "=ds=#w9#",        "", "4.2%" },
			{ 16, 0,     "INV_Box_01", "=q6=#m5#",                          "=ds=Various" },
			{ 17, 40250, "",           "=q4=Aged Winter Cloak",             "=ds=#s4#",        "", "4.2%" },
			{ 18, 40209, "",           "=q4=Bindings of the Decrepit",      "=ds=#s8#, #a3#",  "", "4.2%" },
			{ 19, 40203, "",           "=q4=Breastplate of Tormented Rage", "=ds=#s5#, #a4#",  "", "4.2%" },
			{ 20, 40254, "",           "=q4=Cloak of Averted Crisis",       "=ds=#s4#",        "", "4.2%" },
			{ 21, 40252, "",           "=q4=Cloak of the Shadowed Sun",     "=ds=#s4#",        "", "4.2%" },
			{ 22, 40257, "",           "=q4=Defender's Code",               "=ds=#s14#",       "", "4.2%" },
			{ 23, 40255, "",           "=q4=Dying Curse",                   "=ds=#s14#",       "", "4.2%" },
			{ 24, 40258, "",           "=q4=Forethought Talisman",          "=ds=#s14#",       "", "4.2%" },
			{ 25, 40256, "",           "=q4=Grim Toll",                     "=ds=#s14#",       "", "4.2%" },
			{ 26, 40206, "",           "=q4=Iron-Spring Jumpers",           "=ds=#s12#, #a4#", "", "4.2%" },
			{ 27, 40204, "",           "=q4=Legguards of the Apostle",      "=ds=#s11#, #a4#", "", "4.2%" },
			{ 28, 40253, "",           "=q4=Shawl of the Old Maid",         "=ds=#s4#",        "", "4.2%" },
			{ 29, 40251, "",           "=q4=Shroud of Luminosity",          "=ds=#s4#",        "", "4.2%" },
			{ 30, 40205, "",           "=q4=Stalk-Skin Belt",               "=ds=#s10#, #a2#", "", "4.2%" },
		},
	},
	info = {
		name = BabbleBoss["Heigan the Unclean"],
		module = moduleName,
		instance = "Naxxramas",
	},
};

Synastria_Data["NaxxramasLoatheb"] = {
	["Normal"] = {
		{
			{ 1,  39259, "", "=q4=Fungi-Stained Coverings",          "=ds=#s5#, #a2#",  "", "20%" },
			{ 2,  39260, "", "=q4=Helm of the Corrupted Mind",       "=ds=#s1#, #a4#",  "", "20%" },
			{ 3,  39258, "", "=q4=Legplates of Inescapable Death",   "=ds=#s11#, #a4#", "", "20%" },
			{ 4,  39257, "", "=q4=Loatheb's Shadow",                 "=ds=#s14#",       "", "20%" },
			{ 5,  39256, "", "=q4=Sulfur Stave",                     "=ds=#w9#",        "", "20%" },
			{ 16, 40622, "", "=q4=Spaulders of the Lost Conqueror",  "=ds=#m40# #e15#", "", "33.3%" },
			{ 17, 40623, "", "=q4=Spaulders of the Lost Protector",  "=ds=#m40# #e15#", "", "33.3%" },
			{ 18, 40624, "", "=q4=Spaulders of the Lost Vanquisher", "=ds=#m40# #e15#", "", "33.3%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  40246, "",           "=q4=Boots of Impetuous Ideals",     "=ds=#s12#, #a1#",            "", "10%" },
			{ 2,  40245, "",           "=q4=Fading Glow",                   "=ds=#w12#",                  "", "10%" },
			{ 3,  40243, "",           "=q4=Footwraps of Vile Deceit",      "=ds=#s12#, #a2#",            "", "10%" },
			{ 4,  40241, "",           "=q4=Girdle of Unity",               "=ds=#s10#, #a4#",            "", "10%" },
			{ 5,  40240, "",           "=q4=Greaves of Turbulence",         "=ds=#s11#, #a4#",            "", "10%" },
			{ 6,  40239, "",           "=q4=The Hand of Nerub",             "=ds=#h4#, #w13#",            "", "10%" },
			{ 7,  40244, "",           "=q4=The Impossible Dream",          "=ds=#h3#, #w6#",             "", "10%" },
			{ 8,  40249, "",           "=q4=Vest of Vitality",              "=ds=#s5#, #a2#",             "", "10%" },
			{ 10, 0,     "INV_Box_01", "=q6=#m5#",                          "=ds=" .. BabbleBoss["Gluth"] },
			{ 11, 40247, "",           "=q4=Cowl of Innocent Delight",      "=ds=#s1#, #a1#",             "", "10%" },
			{ 12, 40242, "",           "=q4=Grotesque Handgrips",           "=ds=#s9#, #a3#",             "", "10%" },
			{ 16, 40637, "",           "=q4=Mantle of the Lost Conqueror",  "=ds=#m40# #e15#",            "", "33.3%" },
			{ 17, 40638, "",           "=q4=Mantle of the Lost Protector",  "=ds=#m40# #e15#",            "", "33.3%" },
			{ 18, 40639, "",           "=q4=Mantle of the Lost Vanquisher", "=ds=#m40# #e15#",            "", "33.3%" },
		},
	},
	info = {
		name = BabbleBoss["Loatheb"],
		module = moduleName,
		instance = "Naxxramas",
	},
};

----------------------
--- Frostwyrm Lair ---
----------------------

Synastria_Data["NaxxramasSapphiron"] = {
	["Normal"] = {
		{
			{ 1,  39401, "", "=q4=Circle of Death",             "=ds=#s13#",       "", "10%" },
			{ 2,  39407, "", "=q4=Circle of Life",              "=ds=#s13#",       "", "10%" },
			{ 3,  39404, "", "=q4=Cloak of Mastery",            "=ds=#s4#",        "", "10%" },
			{ 4,  39409, "", "=q4=Cowl of Winged Fear",         "=ds=#s1#, #a1#",  "", "10%" },
			{ 5,  39403, "", "=q4=Helm of the Unsubmissive",    "=ds=#s1#, #a4#",  "", "10%" },
			{ 6,  39399, "", "=q4=Helm of the Vast Legions",    "=ds=#s1#, #a2#",  "", "10%" },
			{ 7,  39405, "", "=q4=Helmet of the Inner Sanctum", "=ds=#s1#, #a3#",  "", "10%" },
			{ 8,  39408, "", "=q4=Leggings of Sapphiron",       "=ds=#s11#, #a1#", "", "10%" },
			{ 9,  39398, "", "=q4=Massive Skeletal Ribcage",    "=ds=#s5#, #a4#",  "", "10%" },
			{ 10, 39415, "", "=q4=Shroud of the Citadel",       "=ds=#s4#",        "", "10%" },
			{ 12, 44569, "", "=q4=Key to the Focusing Iris",    "=ds=#m2#",        "", "100%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  40371, "", "=q4=Bandit's Insignia",               "=ds=#s14#",       "", "5%" },
			{ 2,  40363, "", "=q4=Bone-Inlaid Legguards",           "=ds=#s11#, #a4#", "", "5%" },
			{ 3,  40367, "", "=q4=Boots of the Great Construct",    "=ds=#s12#, #a3#", "", "5%" },
			{ 4,  40365, "", "=q4=Breastplate of Frozen Pain",      "=ds=#s5#, #a4#",  "", "5%" },
			{ 5,  40378, "", "=q4=Ceaseless Pity",                  "=ds=#s2#",        "", "5%" },
			{ 6,  40374, "", "=q4=Cosmic Lights",                   "=ds=#s2#",        "", "5%" },
			{ 7,  40373, "", "=q4=Extract of Necromatic Power",     "=ds=#s14#",       "", "5%" },
			{ 8,  40370, "", "=q4=Gatekeeper",                      "=ds=#s13#",       "", "5%" },
			{ 9,  40362, "", "=q4=Gloves of Fast Reactions",        "=ds=#s9#, #a2#",  "", "5%" },
			{ 10, 40380, "", "=q4=Gloves of Grandeur",              "=ds=#s9#, #a1#",  "", "5%" },
			{ 11, 40369, "", "=q4=Icy Blast Amulet",                "=ds=#s2#",        "", "5%" },
			{ 12, 40379, "", "=q4=Legguards of the Boneyard",       "=ds=#s11#, #a2#", "", "5%" },
			{ 13, 40376, "", "=q4=Legwraps of the Defeated Dragon", "=ds=#s11#, #a1#", "", "5%" },
			{ 14, 40368, "", "=q4=Murder",                          "=ds=#h1#, #w4#",  "", "5%" },
			{ 15, 40377, "", "=q4=Noble Birthright Pauldrons",      "=ds=#s3#, #a4#",  "", "5%" },
			{ 16, 40366, "", "=q4=Platehelm of the Great Wyrm",     "=ds=#s1#, #a4#",  "", "5%" },
			{ 17, 40375, "", "=q4=Ring of Decaying Beauty",         "=ds=#s13#",       "", "5%" },
			{ 18, 40372, "", "=q4=Rune of Repulsion",               "=ds=#s14#",       "", "5%" },
			{ 19, 40382, "", "=q4=Soul of the Dead",                "=ds=#s14#",       "", "5%" },
			{ 20, 40381, "", "=q4=Sympathy",                        "=ds=#s5#, #a1#",  "", "5%" },
			{ 22, 44577, "", "=q4=Heroic Key to the Focusing Iris", "=ds=#m2#",        "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Sapphiron"],
		module = moduleName,
		instance = "Naxxramas",
	},
};

Synastria_Data["NaxxramasKelThuzad"] = {
	["Normal"] = {
		{
			{ 1,  39420, "", "=q4=Anarchy",                     "=ds=#h1#, #w4#",  "", "10%" },
			{ 2,  39425, "", "=q4=Cloak of the Dying",          "=ds=#s4#",        "", "10%" },
			{ 3,  39417, "", "=q4=Death's Bite",                "=ds=#h2#, #w1#",  "", "10%" },
			{ 4,  39421, "", "=q4=Gem of Imprisoned Vassals",   "=ds=#s2#",        "", "10%" },
			{ 5,  39423, "", "=q4=Hammer of the Astral Plane",  "=ds=#h3#, #w6#",  "", "10%" },
			{ 6,  39416, "", "=q4=Kel'Thuzad's Reach",          "=ds=#h3#, #w13#", "", "10%" },
			{ 7,  39419, "", "=q4=Nerubian Conquerer",          "=ds=#w5#",        "", "10%" },
			{ 8,  39422, "", "=q4=Staff of the Plaguehound",    "=ds=#w9#",        "", "10%" },
			{ 9,  39424, "", "=q4=The Soulblade",               "=ds=#h3#, #w4#",  "", "10%" },
			{ 10, 39426, "", "=q4=Wand of the Archlich",        "=ds=#w12#",       "", "10%" },
			{ 16, 40616, "", "=q4=Helm of the Lost Conqueror",  "=ds=#m40# #e15#", "", "33.3%" },
			{ 17, 40617, "", "=q4=Helm of the Lost Protector",  "=ds=#m40# #e15#", "", "33.3%" },
			{ 18, 40618, "", "=q4=Helm of the Lost Vanquisher", "=ds=#m40# #e15#", "", "33.3%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  40384, "", "=q4=Betrayer of Humanity",         "=ds=#h2#, #w1#",  "", "6.7%" },
			{ 2,  40387, "", "=q4=Boundless Ambition",           "=ds=#s2#",        "", "6.7%" },
			{ 3,  40383, "", "=q4=Calamity's Grasp",             "=ds=#h3#, #w13#", "", "6.7%" },
			{ 4,  40405, "", "=q4=Cape of the Unworthy Wizard",  "=ds=#s4#",        "", "6.7%" },
			{ 5,  40403, "", "=q4=Drape of the Deadly Foe",      "=ds=#s4#",        "", "6.7%" },
			{ 6,  40385, "", "=q4=Envoy of Mortality",           "=ds=#w5#",        "", "6.7%" },
			{ 7,  40388, "", "=q4=Journey's End",                "=ds=#w9#",        "", "6.7%" },
			{ 8,  40402, "", "=q4=Last Laugh",                   "=ds=#h1#, #w1#",  "", "6.7%" },
			{ 9,  40398, "", "=q4=Leggings of Mortal Arrogance", "=ds=#s11#, #a1#", "", "6.7%" },
			{ 10, 40399, "", "=q4=Signet of Manifested Pain",    "=ds=#s13#",       "", "6.7%" },
			{ 11, 40386, "", "=q4=Sinister Revenge",             "=ds=#h1#, #w4#",  "", "6.7%" },
			{ 12, 40396, "", "=q4=The Turning Tide",             "=ds=#h3#, #w10#", "", "6.7%" },
			{ 13, 40395, "", "=q4=Torch of Holy Fire",           "=ds=#h3#, #w6#",  "", "6.7%" },
			{ 14, 40401, "", "=q4=Voice of Reason",              "=ds=#w8#",        "", "6.7%" },
			{ 15, 40400, "", "=q4=Wall of Terror",               "=ds=#w8#",        "", "6.7%" },
			{ 16, 40631, "", "=q4=Crown of the Lost Conqueror",  "=ds=#m40# #e15#", "", "33.3%" },
			{ 17, 40632, "", "=q4=Crown of the Lost Protector",  "=ds=#m40# #e15#", "", "33.3%" },
			{ 18, 40633, "", "=q4=Crown of the Lost Vanquisher", "=ds=#m40# #e15#", "", "33.3%" },
		},
	},
	info = {
		name = BabbleBoss["Kel'Thuzad"],
		module = moduleName,
		instance = "Naxxramas",
	},
};

Synastria_Data["NaxxramasTrash"] = {
	["Normal"] = {
		{
			{ 1, 39472, "", "=q4=Chain of Latent Energies",   "=ds=#s2#",        "", "0.17%" },
			{ 2, 39473, "", "=q4=Contortion",                 "=ds=#w12#",       "", "0.17%" },
			{ 3, 39470, "", "=q4=Medallion of the Disgraced", "=ds=#s2#",        "", "0.17%" },
			{ 4, 39467, "", "=q4=Minion Bracers",             "=ds=#s8#, #a4#",  "", "0.17%" },
			{ 5, 39427, "", "=q4=Omen of Ruin",               "=ds=#h1#, #w4#",  "", "0.17%" },
			{ 6, 39468, "", "=q4=The Stray",                  "=ds=#h4#, #w13#", "", "0.17%" },
		},
	},
	["25Man"] = {
		{
			{ 1, 40409, "", "=q4=Boots of the Escaped Captive",    "=ds=#s12#, #a2#", "", "0.14%" },
			{ 2, 40408, "", "=q4=Haunting Call",                   "=ds=#h3#, #w4#",  "", "0.14%" },
			{ 3, 40406, "", "=q4=Inevitable Defeat",               "=ds=#h2#, #w6#",  "", "0.14%" },
			{ 4, 40412, "", "=q4=Ousted Bead Necklace",            "=ds=#s2#",        "", "0.14%" },
			{ 5, 40410, "", "=q4=Shadow of the Ghoul",             "=ds=#s4#",        "", "0.14%" },
			{ 6, 40414, "", "=q4=Shoulderguards of the Undaunted", "=ds=#s3#, #a4#",  "", "0.14%" },
			{ 7, 40407, "", "=q4=Silent Crusader",                 "=ds=#h1#, #w10#", "", "0.14%" },
		},
	},
	info = {
		name = AL["Trash Mobs"],
		module = moduleName,
		instance = "Naxxramas",
	},
};

------------------------
--- Obsidian Sanctum ---
------------------------

Synastria_Data["ObsidianSanctumSartharion"] = {
	["Normal"] = {
		{
			{ 1,  40427, "",           "=q4=Circle of Arcane Streams",       "=ds=#s2#",            "", "20%" },
			{ 2,  40429, "",           "=q4=Crimson Steel",                  "=ds=#h3#, #w13#",     "", "20%" },
			{ 3,  40430, "",           "=q4=Majestic Dragon Figurine",       "=ds=#s14#",           "", "20%" },
			{ 4,  40426, "",           "=q4=Signet of the Accord",           "=ds=#s13#",           "", "20%" },
			{ 5,  40428, "",           "=q4=Titan's Outlook",                "=ds=#s1#, #a4#",      "", "20%" },
			{ 7,  40613, "",           "=q4=Gloves of the Lost Conqueror",   "=ds=#m40# #e15#",     "", "33.3%" },
			{ 8,  40614, "",           "=q4=Gloves of the Lost Protector",   "=ds=#m40# #e15#",     "", "33.3%" },
			{ 9,  40615, "",           "=q4=Gloves of the Lost Vanquisher",  "=ds=#m40# #e15#",     "", "33.3%" },
			{ 11, 43345, "",           "=q4=Dragon Hide Bag",                "=ds=#e1#",            "", "100%" },
			{ 12, 43347, "",           "=q4=Satchel of Spoils",              "=ds=#m20#",           "", "100%" },
			{ 16, 0,     "INV_Box_01", "=q6=" .. AL["Bonus Loot"],           "#ACHIEVEMENTID:2049#" },
			{ 17, 43990, "",           "=q4=Blade-Scarred Tunic",            "=ds=#s5#, #a2#",      "", "20%" },
			{ 18, 43988, "",           "=q4=Gale-Proof Cloak",               "=ds=#s4#",            "", "20%" },
			{ 19, 43991, "",           "=q4=Legguards of Composure",         "=ds=#s11#, #a2#",     "", "20%" },
			{ 20, 43989, "",           "=q4=Remembrance Girdle",             "=ds=#s10#, #a4#",     "", "20%" },
			{ 21, 43992, "",           "=q4=Volitant Amulet",                "=ds=#s2#",            "", "20%" },
			{ 23, 0,     "INV_Box_01", "=q6=" .. AL["Bonus Loot"],           "#ACHIEVEMENTID:2050#" },
			{ 24, 43994, "",           "=q4=Belabored Legplates",            "=ds=#s11#, #a4#",     "", "20%" },
			{ 25, 43998, "",           "=q4=Chestguard of Flagrant Prowess", "=ds=#s5#, #a3#",      "", "20%" },
			{ 26, 43995, "",           "=q4=Enamored Cowl",                  "=ds=#s1#, #a1#",      "", "20%" },
			{ 27, 43993, "",           "=q4=Greatring of Collision",         "=ds=#s13#",           "", "20%" },
			{ 28, 43996, "",           "=q4=Sabatons of Firmament",          "=ds=#s12#, #a3#",     "", "20%" },
		},
		{
			{ 1, 0,     "INV_Box_01", "=q6=" .. AL["Bonus Loot"],     "#ACHIEVEMENTID:2051#" },
			{ 2, 43986, "",           "=q4=Reins of the Black Drake", "=ds=#e27#",           "", "100%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  40453, "",           "=q4=Chestplate of the Great Aspects",  "=ds=#s5#, #a4#",      "", "10%" },
			{ 2,  40437, "",           "=q4=Concealment Shoulderpads",         "=ds=#s3#, #a2#",      "", "10%" },
			{ 3,  40438, "",           "=q4=Council Chamber Epaulets",         "=ds=#s3#, #a3#",      "", "10%" },
			{ 4,  40446, "",           "=q4=Dragon Brood Legguards",           "=ds=#s11#, #a4#",     "", "10%" },
			{ 5,  40431, "",           "=q4=Fury of the Five Flights",         "=ds=#s14#",           "", "10%" },
			{ 6,  40451, "",           "=q4=Hyaline Helm of the Sniper",       "=ds=#s1#, #a3#",      "", "10%" },
			{ 7,  40432, "",           "=q4=Illustration of the Dragon Soul",  "=ds=#s14#",           "", "10%" },
			{ 8,  40439, "",           "=q4=Mantle of the Eternal Sentinel",   "=ds=#s3#, #a2#",      "", "10%" },
			{ 9,  40455, "",           "=q4=Staff of Restraint",               "=ds=#w9#",            "", "10%" },
			{ 10, 40433, "",           "=q4=Wyrmrest Band",                    "=ds=#s13#",           "", "10%" },
			{ 12, 40628, "",           "=q4=Gauntlets of the Lost Conqueror",  "=ds=#m40# #e15#",     "", "33.3%" },
			{ 13, 40629, "",           "=q4=Gauntlets of the Lost Protector",  "=ds=#m40# #e15#",     "", "33.3%" },
			{ 14, 40630, "",           "=q4=Gauntlets of the Lost Vanquisher", "=ds=#m40# #e15#",     "", "33.3%" },
			{ 16, 43345, "",           "=q4=Dragon Hide Bag",                  "=ds=#e1#",            "", "100%" },
			{ 17, 43346, "",           "=q4=Large Satchel of Spoils",          "=ds=#m20#",           "", "100%" },
			{ 19, 0,     "INV_Box_01", "=q6=" .. AL["Bonus Loot"],             "#ACHIEVEMENTID:2052#" },
			{ 20, 44004, "",           "=q4=Bountiful Gauntlets",              "=ds=#s9#, #a3#",      "", "25%" },
			{ 21, 44000, "",           "=q4=Dragonstorm Breastplate",          "=ds=#s5#, #a4#",      "", "25%" },
			{ 22, 44002, "",           "=q4=The Sanctum's Flowing Vestments",  "=ds=#s5#, #a1#",      "", "25%" },
			{ 23, 44003, "",           "=q4=Upstanding Spaulders",             "=ds=#s3#, #a3#",      "", "25%" },
			{ 25, 0,     "INV_Box_01", "=q6=" .. AL["Bonus Loot"],             "#ACHIEVEMENTID:2053#" },
			{ 26, 44007, "",           "=q4=Headpiece of Reconciliation",      "=ds=#s1#, #a2#",      "", "20%" },
			{ 27, 44011, "",           "=q4=Leggings of the Honored",          "=ds=#s11#, #a2#",     "", "20%" },
			{ 28, 44006, "",           "=q4=Obsidian Greathelm",               "=ds=#s1#, #a4#",      "", "20%" },
			{ 29, 44005, "",           "=q4=Pennant Cloak",                    "=ds=#s4#",            "", "20%" },
			{ 30, 44008, "",           "=q4=Unsullied Cuffs",                  "=ds=#s8#, #a1#",      "", "20%" },
		},
		{
			{ 1, 0,     "INV_Box_01", "=q6=" .. AL["Bonus Loot"],        "#ACHIEVEMENTID:2054#" },
			{ 2, 43954, "",           "=q4=Reins of the Twilight Drake", "=ds=#e27#",           "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Sartharion"],
		module = moduleName,
		instance = "ObsidianSanctum",
	},
};

---------------------------
--- The Eye of Eternity ---
---------------------------

Synastria_Data["TheEyeOfEternityMalygos"] = {
	["Normal"] = {
		{
			{ 1,  40475, "", "=q4=Barricade of Eternity",              "=ds=#w8#",        "", "10%" },
			{ 2,  40497, "", "=q4=Black Ice",                          "=ds=#w7#",        "", "10%" },
			{ 3,  40511, "", "=q4=Focusing Energy Epaulets",           "=ds=#s3#, #a4#",  "", "10%" },
			{ 4,  40519, "", "=q4=Footsteps of Malygos",               "=ds=#s12#, #a2#", "", "10%" },
			{ 5,  40526, "", "=q4=Gown of the Spell-Weaver",           "=ds=#s5#, #a1#",  "", "10%" },
			{ 6,  40489, "", "=q4=Greatstaff of the Nexus",            "=ds=#w9#",        "", "10%" },
			{ 7,  40491, "", "=q4=Hailstorm",                          "=ds=#h1#, #w10#", "", "10%" },
			{ 8,  40488, "", "=q4=Ice Spire Scepter",                  "=ds=#h3#, #w6#",  "", "10%" },
			{ 9,  40486, "", "=q4=Necklace of the Glittering Chamber", "=ds=#s2#",        "", "10%" },
			{ 10, 40474, "", "=q4=Surge Needle Ring",                  "=ds=#s13#",       "", "10%" },
			{ 12, 44650, "", "=q1=Heart of Magic",                     "=ds=#m3#",        "", "100%" },
			{ 14, 43953, "", "=q4=Reins of the Blue Drake",            "=ds=#e27#",       "", "1%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  40558, "", "=q4=Arcanic Tramplers",                  "=ds=#s12#, #a1#", "", "5%" },
			{ 2,  40194, "", "=q4=Blanketing Robes of Snow",           "=ds=#s5#, #a1#",  "", "5%" },
			{ 3,  40543, "", "=q4=Blue Aspect Helm",                   "=ds=#s1#, #a3#",  "", "5%" },
			{ 4,  40592, "", "=q4=Boots of Healing Energies",          "=ds=#s12#, #a4#", "", "5%" },
			{ 5,  40539, "", "=q4=Chestguard of the Recluse",          "=ds=#s5#, #a2#",  "", "5%" },
			{ 6,  40590, "", "=q4=Elevated Lair Pauldrons",            "=ds=#s3#, #a4#",  "", "5%" },
			{ 7,  40541, "", "=q4=Frosted Adroit Handguards",          "=ds=#s9#, #a2#",  "", "5%" },
			{ 8,  40562, "", "=q4=Hood of Rationality",                "=ds=#s1#, #a1#",  "", "5%" },
			{ 9,  40561, "", "=q4=Leash of Heedless Magic",            "=ds=#s10#, #a1#", "", "5%" },
			{ 10, 40560, "", "=q4=Leggings of the Wanton Spellcaster", "=ds=#s11#, #a1#", "", "5%" },
			{ 11, 40589, "", "=q4=Legplates of Sovereignty",           "=ds=#s11#, #a4#", "", "5%" },
			{ 12, 40532, "", "=q4=Living Ice Crystals",                "=ds=#s14#",       "", "5%" },
			{ 13, 40555, "", "=q4=Mantle of Dissemination",            "=ds=#s3#, #a1#",  "", "5%" },
			{ 14, 40531, "", "=q4=Mark of Norgannon",                  "=ds=#s14#",       "", "5%" },
			{ 15, 40591, "", "=q4=Melancholy Sabatons",                "=ds=#s12#, #a4#", "", "5%" },
			{ 16, 40594, "", "=q4=Spaulders of Catatonia",             "=ds=#s3#, #a2#",  "", "5%" },
			{ 17, 40588, "", "=q4=Tunic of the Artifact Guardian",     "=ds=#s5#, #a3#",  "", "5%" },
			{ 18, 40566, "", "=q4=Unravelling Strands of Sanity",      "=ds=#s10#, #a2#", "", "5%" },
			{ 19, 40564, "", "=q4=Winter Spectacle Gloves",            "=ds=#s9#, #a3#",  "", "5%" },
			{ 21, 44650, "", "=q1=Heart of Magic",                     "=ds=#m3#",        "", "100%" },
			{ 23, 43952, "", "=q4=Reins of the Azure Drake",           "=ds=#e27#",       "", "1%" },
		},
	},
	info = {
		name = BabbleBoss["Malygos"],
		module = moduleName,
		instance = "TheEyeOfEternity",
	},
};

--------------
--- Ulduar ---
--------------

Synastria_Data["UlduarFlameLeviathan"] = {
	["Normal"] = {
		{
			{ 1,  45291, "",           "=q4=Combustion Bracers",         "=ds=#s8#, #a1#",      "", "10%" },
			{ 2,  45292, "",           "=q4=Energy Siphon",              "=ds=#s14#",           "", "10%" },
			{ 3,  45287, "",           "=q4=Firesoul",                   "=ds=#h3#, #w10#",     "", "10%" },
			{ 4,  45288, "",           "=q4=Firestrider Chestguard",     "=ds=#s5#, #a3#",      "", "10%" },
			{ 5,  45283, "",           "=q4=Flamewatch Armguards",       "=ds=#s8#, #a4#",      "", "10%" },
			{ 6,  45282, "",           "=q4=Ironsoul",                   "=ds=#h2#, #w6#",      "", "10%" },
			{ 7,  45284, "",           "=q4=Kinetic Ripper",             "=ds=#h4#, #w13#",     "", "10%" },
			{ 8,  45289, "",           "=q4=Lifespark Visage",           "=ds=#s1#, #a1#",      "", "10%" },
			{ 9,  45285, "",           "=q4=Might of the Leviathan",     "=ds=#s2#",            "", "10%" },
			{ 10, 45286, "",           "=q4=Pyrite Infuser",             "=ds=#s14#",           "", "10%" },
			{ 16, 45087, "",           "=q3=Runed Orb",                  "=ds=#e6#",            "", "100%" },
			{ 18, 0,     "INV_Box_01", "=q6=#j53#",                      "#ACHIEVEMENTID:3056#" },
			{ 19, 45295, "",           "=q4=Gilded Steel Legplates",     "=ds=#s11#, #a4#",     "", "20%" },
			{ 20, 45293, "",           "=q4=Handguards of Potent Cures", "=ds=#s9#, #a2#",      "", "20%" },
			{ 21, 45300, "",           "=q4=Mantle of Fiery Vengeance",  "=ds=#s3#, #a3#",      "", "20%" },
			{ 22, 45297, "",           "=q4=Shimmering Seal",            "=ds=#s13#",           "", "20%" },
			{ 23, 45296, "",           "=q4=Twirling Blades",            "=ds=#w11#",           "", "20%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  45117, "",           "=q4=Constructor's Handwraps",          "=ds=#s9#, #a1#",      "", "7.7%" },
			{ 2,  45119, "",           "=q4=Embrace of the Leviathan",         "=ds=#s10#, #a1#",     "", "7.7%" },
			{ 3,  45116, "",           "=q4=Freya's Choker of Warding",        "=ds=#s2#",            "", "7.7%" },
			{ 4,  45109, "",           "=q4=Gloves of the Fiery Behemoth",     "=ds=#s9#, #a3#",      "", "7.7%" },
			{ 5,  45113, "",           "=q4=Glowing Ring of Reclamation",      "=ds=#s13#",           "", "7.7%" },
			{ 6,  45107, "",           "=q4=Iron Riveted War Helm",            "=ds=#s1#, #a4#",      "", "7.7%" },
			{ 7,  45115, "",           "=q4=Leviathan Fueling Manual",         "=ds=#s15#",           "", "7.7%" },
			{ 8,  45108, "",           "=q4=Mechanist's Bindings",             "=ds=#s8#, #a2#",      "", "7.7%" },
			{ 9,  45111, "",           "=q4=Mimiron's Inferno Couplings",      "=ds=#s8#, #a4#",      "", "7.7%" },
			{ 10, 45114, "",           "=q4=Steamcaller's Totem",              "=ds=#w15#",           "", "7.7%" },
			{ 11, 45118, "",           "=q4=Steamworker's Goggles",            "=ds=#s1#, #a3#",      "", "7.7%" },
			{ 12, 45106, "",           "=q4=Strength of the Automaton",        "=ds=#s13#",           "", "7.7%" },
			{ 13, 45112, "",           "=q4=The Leviathan's Coil",             "=ds=#s13#",           "", "7.7%" },
			{ 16, 45038, "",           "=q5=Fragment of Val'anyr",             "=ds=#m20#",           "", "8%" },
			{ 18, 45087, "",           "=q3=Runed Orb",                        "=ds=#e6#",            "", "5%" },
			{ 20, 0,     "INV_Box_01", "=q6=#j53#",                            "#ACHIEVEMENTID:3057#" },
			{ 21, 45135, "",           "=q4=Boots of Fiery Resolution",        "=ds=#s12#, #a1#",     "", "14.3%" },
			{ 22, 45132, "",           "=q4=Golden Saronite Dragon",           "=ds=#h3#, #w13#",     "", "14.3%" },
			{ 23, 45133, "",           "=q4=Pendant of Fiery Havoc",           "=ds=#s2#",            "", "14.3%" },
			{ 24, 45134, "",           "=q4=Plated Leggings of Ruination",     "=ds=#s11#, #a4#",     "", "14.3%" },
			{ 25, 45086, "",           "=q4=Rising Sun",                       "=ds=#w11#",           "", "14.3%" },
			{ 26, 45136, "",           "=q4=Shoulderpads of Dormant Energies", "=ds=#s3#, #a2#",      "", "14.3%" },
			{ 27, 45110, "",           "=q4=Titanguard",                       "=ds=#h1#, #w10#",     "", "14.3%" },
		},
	},
	info = {
		name = BabbleBoss["Flame Leviathan"],
		module = moduleName,
		instance = "Ulduar",
	},
};

Synastria_Data["UlduarIgnisTheFurnaceMaster"] = {
	["Normal"] = {
		{
			{ 1,  45316, "", "=q4=Armbraces of the Vibrant Flame", "=ds=#s8#, #a3#", "", "10%" },
			{ 2,  45318, "", "=q4=Drape of Fuming Anger",          "=ds=#s4#",       "", "10%" },
			{ 3,  45313, "", "=q4=Furnace Stone",                  "=ds=#s14#",      "", "10%" },
			{ 4,  45310, "", "=q4=Gauntlets of the Iron Furnace",  "=ds=#s9#, #a4#", "", "10%" },
			{ 5,  45312, "", "=q4=Gloves of Smoldering Touch",     "=ds=#s9#, #a2#", "", "10%" },
			{ 6,  45314, "", "=q4=Igniter Rod",                    "=ds=#s15#",      "", "10%" },
			{ 7,  45321, "", "=q4=Pauldrons of Tempered Will",     "=ds=#s3#, #a4#", "", "10%" },
			{ 8,  45311, "", "=q4=Relentless Edge",                "=ds=#w7#",       "", "10%" },
			{ 9,  45309, "", "=q4=Rifle of the Platinum Guard",    "=ds=#w5#",       "", "10%" },
			{ 10, 45317, "", "=q4=Shawl of the Caretaker",         "=ds=#s4#",       "", "10%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  45166, "", "=q4=Charred Saronite Greaves",      "=ds=#s12#, #a4#", "", "6.7%" },
			{ 2,  45157, "", "=q4=Cindershard Ring",              "=ds=#s13#",       "", "6.7%" },
			{ 3,  45162, "", "=q4=Flamestalker Boots",            "=ds=#s12#, #a2#", "", "6.7%" },
			{ 4,  45185, "", "=q4=Flamewrought Cinch",            "=ds=#s10#, #a2#", "", "6.7%" },
			{ 5,  45161, "", "=q4=Girdle of Embers",              "=ds=#s10#, #a4#", "", "6.7%" },
			{ 6,  45158, "", "=q4=Heart of Iron",                 "=ds=#s14#",       "", "6.7%" },
			{ 7,  45164, "", "=q4=Helm of the Furnace Master",    "=ds=#s1#, #a3#",  "", "6.7%" },
			{ 8,  45171, "", "=q4=Intensity",                     "=ds=#w9#",        "", "6.7%" },
			{ 9,  45167, "", "=q4=Lifeforge Breastplate",         "=ds=#s5#, #a4#",  "", "6.7%" },
			{ 10, 45168, "", "=q4=Pyrelight Circle",              "=ds=#s13#",       "", "6.7%" },
			{ 11, 45170, "", "=q4=Scepter of Creation",           "=ds=#w12#",       "", "6.7%" },
			{ 12, 45186, "", "=q4=Soot-Covered Mantle",           "=ds=#s3#, #a1#",  "", "6.7%" },
			{ 13, 45169, "", "=q4=Totem of the Dancing Flame",    "=ds=#w15#",       "", "6.7%" },
			{ 14, 45165, "", "=q4=Worldcarver",                   "=ds=#h2#, #w1#",  "", "6.7%" },
			{ 15, 45187, "", "=q4=Wristguards of the Firetender", "=ds=#s8#, #a3#",  "", "6.7%" },
			{ 16, 45038, "", "=q5=Fragment of Val'anyr",          "=ds=#m20#",       "", "8%" },
			{ 18, 45087, "", "=q3=Runed Orb",                     "=ds=#e6#",        "", "75%" },
		},
	},
	info = {
		name = BabbleBoss["Ignis the Furnace Master"],
		module = moduleName,
		instance = "Ulduar",
	},
};

Synastria_Data["UlduarRazorscale"] = {
	["Normal"] = {
		{
			{ 1,  45303, "", "=q4=Band of Draconic Guile",            "=ds=#s13#",       "", "10%" },
			{ 2,  45306, "", "=q4=Binding of the Dragon Matriarch",   "=ds=#s10#, #a1#", "", "10%" },
			{ 3,  45301, "", "=q4=Bracers of the Smothering Inferno", "=ds=#s8#, #a3#",  "", "10%" },
			{ 4,  45305, "", "=q4=Breastplate of the Afterlife",      "=ds=#s5#, #a4#",  "", "10%" },
			{ 5,  45299, "", "=q4=Dragonsteel Faceplate",             "=ds=#s1#, #a4#",  "", "10%" },
			{ 6,  45308, "", "=q4=Eye of the Broodmother",            "=ds=#s14#",       "", "10%" },
			{ 7,  45307, "", "=q4=Ironscale Leggings",                "=ds=#s11#, #a3#", "", "10%" },
			{ 8,  45298, "", "=q4=Razorscale Talon",                  "=ds=#h1#, #w10#", "", "10%" },
			{ 9,  45304, "", "=q4=Stormtempered Girdle",              "=ds=#s10#, #a4#", "", "10%" },
			{ 10, 45302, "", "=q4=Treads of the Invader",             "=ds=#s12#, #a2#", "", "10%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  45151, "", "=q4=Belt of the Fallen Wyrm",    "=ds=#s10#, #a3#", "", "6.7%" },
			{ 2,  45149, "", "=q4=Bracers of the Broodmother", "=ds=#s8#, #a2#",  "", "6.7%" },
			{ 3,  45150, "", "=q4=Collar of the Wyrmhunter",   "=ds=#s1#, #a1#",  "", "6.7%" },
			{ 4,  45139, "", "=q4=Dragonslayer's Brace",       "=ds=#s10#, #a4#", "", "6.7%" },
			{ 5,  45138, "", "=q4=Drape of the Drakerider",    "=ds=#s4#",        "", "6.7%" },
			{ 6,  45147, "", "=q4=Guiding Star",               "=ds=#h3#, #w6#",  "", "6.7%" },
			{ 7,  45510, "", "=q4=Libram of Discord",          "=ds=#w16#",       "", "6.7%" },
			{ 8,  45148, "", "=q4=Living Flame",               "=ds=#s14#",       "", "6.7%" },
			{ 9,  45141, "", "=q4=Proto-hide Leggings",        "=ds=#s11#, #a2#", "", "6.7%" },
			{ 10, 45140, "", "=q4=Razorscale Shoulderguards",  "=ds=#s3#, #a4#",  "", "6.7%" },
			{ 11, 45142, "", "=q4=Remorse",                    "=ds=#h1#, #w10#", "", "6.7%" },
			{ 12, 45143, "", "=q4=Saronite Mesh Legguards",    "=ds=#s11#, #a3#", "", "6.7%" },
			{ 13, 45146, "", "=q4=Shackles of the Odalisque",  "=ds=#s8#, #a1#",  "", "6.7%" },
			{ 14, 45144, "", "=q4=Sigil of Deflection",        "=ds=#w21#",       "", "6.7%" },
			{ 15, 45137, "", "=q4=Veranus' Bane",              "=ds=#w5#",        "", "6.7%" },
			{ 16, 45038, "", "=q5=Fragment of Val'anyr",       "=ds=#m20#",       "", "8%" },
			{ 18, 45087, "", "=q3=Runed Orb",                  "=ds=#e6#",        "", "75%" },
		},
	},
	info = {
		name = BabbleBoss["Razorscale"],
		module = moduleName,
		instance = "Ulduar",
	},
};

Synastria_Data["UlduarXT002Deconstructor"] = {
	["Normal"] = {
		{
			{ 1,  45680, "",           "=q4=Armbands of the Construct",      "=ds=#s8#, #a4#",      "", "10%" },
			{ 2,  45676, "",           "=q4=Chestplate of Vicious Potency",  "=ds=#s5#, #a4#",      "", "10%" },
			{ 3,  45694, "",           "=q4=Conductive Cord",                "=ds=#s10#, #a1#",     "", "10%" },
			{ 4,  45679, "",           "=q4=Gloves of Taut Grip",            "=ds=#s9#, #a3#",      "", "10%" },
			{ 5,  45687, "",           "=q4=Helm of Veiled Energies",        "=ds=#s1#, #a3#",      "", "10%" },
			{ 6,  45685, "",           "=q4=Plasma Foil",                    "=ds=#h3#, #w4#",      "", "10%" },
			{ 7,  45675, "",           "=q4=Power Enhancing Loop",           "=ds=#s13#",           "", "10%" },
			{ 8,  45682, "",           "=q4=Pulsing Spellshield",            "=ds=#w8#",            "", "10%" },
			{ 9,  45677, "",           "=q4=Treacherous Shoulderpads",       "=ds=#s3#, #a2#",      "", "10%" },
			{ 10, 45686, "",           "=q4=Vest of the Glowing Crescent",   "=ds=#s5#, #a2#",      "", "10%" },
			{ 16, 0,     "INV_Box_01", "=q6=#j53#",                          "#ACHIEVEMENTID:3058#" },
			{ 17, 45868, "",           "=q4=Aesir's Edge",                   "=ds=#h2#, #w10#",     "", "20%" },
			{ 18, 45867, "",           "=q4=Breastplate of the Stoneshaper", "=ds=#s5#, #a3#",      "", "20%" },
			{ 19, 45869, "",           "=q4=Fluxing Energy Coils",           "=ds=#s8#, #a2#",      "", "20%" },
			{ 20, 45870, "",           "=q4=Magnetized Projectile Emitter",  "=ds=#w5#",            "", "20%" },
			{ 21, 45871, "",           "=q4=Seal of Ulduar",                 "=ds=#s13#",           "", "20%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  45260, "",           "=q4=Boots of Hasty Revival",              "=ds=#s12#, #a2#",     "", "6.7%" },
			{ 2,  45249, "",           "=q4=Brass-lined Boots",                   "=ds=#s12#, #a3#",     "", "6.7%" },
			{ 3,  45248, "",           "=q4=Clockwork Legplates",                 "=ds=#s11#, #a4#",     "", "6.7%" },
			{ 4,  45250, "",           "=q4=Crazed Construct Ring",               "=ds=#s13#",           "", "6.7%" },
			{ 5,  45246, "",           "=q4=Golem-Shard Sticker",                 "=ds=#h1#, #w4#",      "", "6.7%" },
			{ 6,  45252, "",           "=q4=Horologist's Wristguards",            "=ds=#s8#, #a4#",      "", "6.7%" },
			{ 7,  45253, "",           "=q4=Mantle of Wavering Calm",             "=ds=#s3#, #a1#",      "", "6.7%" },
			{ 8,  45257, "",           "=q4=Quartz Crystal Wand",                 "=ds=#w12#",           "", "6.7%" },
			{ 9,  45259, "",           "=q4=Quartz-studded Harness",              "=ds=#s5#, #a3#",      "", "6.7%" },
			{ 10, 45258, "",           "=q4=Sandals of Rash Temperament",         "=ds=#s12#, #a1#",     "", "6.7%" },
			{ 11, 45251, "",           "=q4=Shoulderplates of the Deconstructor", "=ds=#s3#, #a4#",      "", "6.7%" },
			{ 12, 45254, "",           "=q4=Sigil of the Vengeful Heart",         "=ds=#w21#",           "", "6.7%" },
			{ 13, 45247, "",           "=q4=Signet of the Earthshaker",           "=ds=#s13#",           "", "6.7%" },
			{ 14, 45255, "",           "=q4=Thunderfall Totem",                   "=ds=#w15#",           "", "6.7%" },
			{ 15, 45256, "",           "=q4=Twisted Visage",                      "=ds=#w9#",            "", "6.7%" },
			{ 16, 45038, "",           "=q5=Fragment of Val'anyr",                "=ds=#m20#",           "", "8%" },
			{ 18, 45087, "",           "=q3=Runed Orb",                           "=ds=#e6#",            "", "75%" },
			{ 20, 0,     "INV_Box_01", "=q6=#j53#",                               "#ACHIEVEMENTID:3059#" },
			{ 21, 45445, "",           "=q4=Breastplate of the Devoted",          "=ds=#s5#, #a4#",      "", "20%" },
			{ 22, 45443, "",           "=q4=Charm of Meticulous Timing",          "=ds=#s2#",            "", "20%" },
			{ 23, 45444, "",           "=q4=Gloves of the Steady Hand",           "=ds=#s9#, #a3#",      "", "20%" },
			{ 24, 45446, "",           "=q4=Grasps of Reason",                    "=ds=#s8#, #a1#",      "", "20%" },
			{ 25, 45442, "",           "=q4=Sorthalis, Hammer of the Watchers",   "=ds=#h1#, #w6#",      "", "20%" },
		},
	},
	info = {
		name = BabbleBoss["XT-002 Deconstructor"],
		module = moduleName,
		instance = "Ulduar",
	},
};

Synastria_Data["UlduarIronCouncil"] = {
	["Normal"] = {
		{
			{ 1,  45333, "",           "=q4=Belt of the Iron Servant",      "=ds=#s10#, #a3#",     "", "10%" },
			{ 2,  45378, "",           "=q4=Boots of the Petrified Forest", "=ds=#s12#, #a2#",     "", "10%" },
			{ 3,  45329, "",           "=q4=Circlet of True Sight",         "=ds=#s1#, #a3#",      "", "10%" },
			{ 4,  45322, "",           "=q4=Cloak of the Iron Council",     "=ds=#s4#",            "", "10%" },
			{ 5,  45330, "",           "=q4=Greaves of Iron Intensity",     "=ds=#s12#, #a4#",     "", "10%" },
			{ 6,  45418, "",           "=q4=Lady Maye's Sapphire Ring",     "=ds=#s13#",           "", "10%" },
			{ 7,  45324, "",           "=q4=Leggings of Swift Reflexes",    "=ds=#s11#, #a2#",     "", "10%" },
			{ 8,  45331, "",           "=q4=Rune-Etched Nightblade",        "=ds=#h1#, #w10#",     "", "10%" },
			{ 9,  45423, "",           "=q4=Runetouch Handwraps",           "=ds=#s8#, #a1#",      "", "10%" },
			{ 10, 45332, "",           "=q4=Stormtip",                      "=ds=#h3#, #w4#",      "", "10%" },
			{ 12, 0,     "INV_Box_01", "=q6=#j1#",                          "#ACHIEVEMENTID:2939#" },
			{ 13, 45506, "",           "=q4=Archivum Data Disc",            "=ds=#m2#",            "", "100%" },
			{ 15, 45087, "",           "=q3=Runed Orb",                     "=ds=#e6#",            "", "75%" },
			{ 16, 0,     "INV_Box_01", "=q6=#j53#",                         "#ACHIEVEMENTID:2941#" },
			{ 17, 45456, "",           "=q4=Loop of the Agile",             "=ds=#s13#",           "", "20%" },
			{ 18, 45448, "",           "=q4=Perilous Bite",                 "=ds=#h1#, #w4#",      "", "20%" },
			{ 19, 45449, "",           "=q4=The Masticator",                "=ds=#h3#, #w13#",     "", "20%" },
			{ 20, 45447, "",           "=q4=Watchful Eye of Fate",          "=ds=#s2#",            "", "20%" },
			{ 22, 45506, "",           "=q4=Archivum Data Disc",            "=ds=#m2#",            "", "100%" },
			{ 24, 45087, "",           "=q3=Runed Orb",                     "=ds=#e6#",            "", "75%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  45226, "",           "=q4=Ancient Iron Heaume",                       "=ds=#s1#, #a4#",      "", "6.7%" },
			{ 2,  45224, "",           "=q4=Drape of the Lithe",                        "=ds=#s4#",            "", "6.7%" },
			{ 3,  45228, "",           "=q4=Handguards of the Enclave",                 "=ds=#s9#, #a4#",      "", "6.7%" },
			{ 4,  45193, "",           "=q4=Insurmountable Fervor",                     "=ds=#s2#",            "", "6.7%" },
			{ 5,  45227, "",           "=q4=Iron-studded Mantle",                       "=ds=#s3#, #a3#",      "", "6.7%" },
			{ 6,  45238, "",           "=q4=Overload Legwraps",                         "=ds=#s11#, #a1#",     "", "6.7%" },
			{ 7,  45237, "",           "=q4=Phaelia's Vestments of the Sprouting Seed", "=ds=#s5#, #a2#",      "", "6.7%" },
			{ 8,  45235, "",           "=q4=Radiant Seal",                              "=ds=#s13#",           "", "6.7%" },
			{ 9,  45240, "",           "=q4=Raiments of the Iron Council",              "=ds=#s5#, #a1#",      "", "6.7%" },
			{ 10, 45234, "",           "=q4=Rapture",                                   "=ds=#w9#",            "", "6.7%" },
			{ 11, 45232, "",           "=q4=Runed Ironhide Boots",                      "=ds=#s12#, #a2#",     "", "6.7%" },
			{ 12, 45239, "",           "=q4=Runeshaper's Gloves",                       "=ds=#s9#, #a3#",      "", "6.7%" },
			{ 13, 45225, "",           "=q4=Steelbreaker's Embrace",                    "=ds=#s5#, #a4#",      "", "6.7%" },
			{ 14, 45233, "",           "=q4=Stormrune Edge",                            "=ds=#h2#, #w10#",     "", "6.7%" },
			{ 15, 45236, "",           "=q4=Unblinking Eye",                            "=ds=#s2#",            "", "6.7%" },
			{ 16, 45038, "",           "=q5=Fragment of Val'anyr",                      "=ds=#m20#",           "", "N: 8%; H: 18%" },
			{ 18, 45087, "",           "=q3=Runed Orb",                                 "=ds=#e6#",            "", "75%" },
			{ 20, 0,     "INV_Box_01", "=q6=#j1#",                                      "#ACHIEVEMENTID:2942#" },
			{ 21, 45857, "",           "=q4=Archivum Data Disc",                        "=ds=#m2#",            "", "100%" },
			{ 23, 0,     "INV_Box_01", "=q6=#j53#",                                     "#ACHIEVEMENTID:2944#" },
			{ 24, 45241, "",           "=q4=Belt of Colossal Rage",                     "=ds=#s10#, #a4#",     "", "15%" },
			{ 25, 45242, "",           "=q4=Drape of Mortal Downfall",                  "=ds=#s4#",            "", "21%" },
			{ 26, 45607, "",           "=q4=Fang of Oblivion",                          "=ds=#h1#, #w4#",      "", "18%" },
			{ 27, 45244, "",           "=q4=Greaves of Swift Vengeance",                "=ds=#s12#, #a3#",     "", "9%" },
			{ 28, 45243, "",           "=q4=Sapphire Amulet of Renewal",                "=ds=#s2#",            "", "10%" },
			{ 29, 45245, "",           "=q4=Shoulderpads of the Intruder",              "=ds=#s3#, #a2#",      "", "14%" },
		},
		{
			{ 1, 45857, "", "=q4=Archivum Data Disc", "=ds=#m2#",          "", "100%" },
			{ 3, 45087, "", "=q3=Runed Orb",          "=ds=#e6# =q1=(x2)", "", "75%" },
		},
	},
	info = {
		name = BabbleBoss["The Iron Council"],
		module = moduleName,
		instance = "Ulduar",
	},
}

Synastria_Data["UlduarAlgalonTheObserver"] = {
	["Normal"] = {
		{
			{ 1,  46048, "", "=q4=Band of Lights",                        "=ds=#s13#",       "", "6.7%" },
			{ 2,  46039, "", "=q4=Breastplate of the Timeless",           "=ds=#s5#, #a4#",  "", "6.7%" },
			{ 3,  46038, "", "=q4=Dark Matter",                           "=ds=#s14#",       "", "6.7%" },
			{ 4,  46042, "", "=q4=Drape of the Messenger",                "=ds=#s4#",        "", "6.7%" },
			{ 5,  46043, "", "=q4=Gloves of the Endless Dark",            "=ds=#s9#, #a2#",  "", "6.7%" },
			{ 6,  46051, "", "=q4=Meteorite Crystal",                     "=ds=#s14#",       "", "6.7%" },
			{ 7,  46046, "", "=q4=Nebula Band",                           "=ds=#s13#",       "", "6.7%" },
			{ 8,  46044, "", "=q4=Observer's Mantle",                     "=ds=#s3#, #a3#",  "", "6.7%" },
			{ 9,  46047, "", "=q4=Pendant of the Somber Witness",         "=ds=#s2#",        "", "6.7%" },
			{ 10, 46045, "", "=q4=Pulsar Gloves",                         "=ds=#s9#, #a1#",  "", "6.7%" },
			{ 11, 46037, "", "=q4=Shoulderplates of the Celestial Watch", "=ds=#s3#, #a4#",  "", "6.7%" },
			{ 12, 46041, "", "=q4=Starfall Girdle",                       "=ds=#s10#, #a4#", "", "6.7%" },
			{ 13, 46050, "", "=q4=Starlight Treads",                      "=ds=#s12#, #a1#", "", "6.7%" },
			{ 14, 46040, "", "=q4=Strength of the Heavens",               "=ds=#s2#",        "", "6.7%" },
			{ 15, 46049, "", "=q4=Zodiac Leggings",                       "=ds=#s11#, #a2#", "", "6.7%" },
			{ 16, 46052, "", "=q4=Reply-Code Alpha",                      "=ds=#m2#",        "", "100%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  45610, "", "=q4=Boundless Gaze",                "=ds=#s1#, #a3#",  "", "6.3%" },
			{ 2,  45587, "", "=q4=Bulwark of Algalon",            "=ds=#w8#",        "", "6.3%" },
			{ 3,  45609, "", "=q4=Comet's Trail",                 "=ds=#s14#",       "", "6.3%" },
			{ 4,  45612, "", "=q4=Constellus",                    "=ds=#h3#, #w6#",  "", "6.3%" },
			{ 5,  45617, "", "=q4=Cosmos",                        "=ds=#s15#",       "", "6.3%" },
			{ 6,  45613, "", "=q4=Dreambinder",                   "=ds=#w9#",        "", "6.3%" },
			{ 7,  45607, "", "=q4=Fang of Oblivion",              "=ds=#h1#, #w4#",  "", "6.3%" },
			{ 8,  45594, "", "=q4=Legplates of the Endless Void", "=ds=#s11#, #a4#", "", "6.3%" },
			{ 9,  45665, "", "=q4=Pharos Gloves",                 "=ds=#s9#, #a1#",  "", "6.3%" },
			{ 10, 45615, "", "=q4=Planewalker Treads",            "=ds=#s12#, #a3#", "", "6.3%" },
			{ 11, 45599, "", "=q4=Sabatons of Lifeless Night",    "=ds=#s12#, #a4#", "", "6.3%" },
			{ 12, 45570, "", "=q4=Skyforge Crossbow",             "=ds=#w3#",        "", "6.3%" },
			{ 13, 45611, "", "=q4=Solar Bindings",                "=ds=#s8#, #a2#",  "", "6.3%" },
			{ 14, 45616, "", "=q4=Star-beaded Clutch",            "=ds=#s10#, #a2#", "", "6.3%" },
			{ 15, 45620, "", "=q4=Starshard Edge",                "=ds=#h3#, #w4#",  "", "6.3%" },
			{ 16, 45619, "", "=q4=Starwatcher's Binding",         "=ds=#s10#, #a1#", "", "6.3%" },
			{ 18, 46053, "", "=q4=Reply-Code Alpha",              "=ds=#m2#",        "", "100%" },
			{ 20, 45038, "", "=q5=Fragment of Val'anyr",          "=ds=#m20#",       "", "20%" },
		},
	},
	info = {
		name = BabbleBoss["Algalon the Observer"],
		module = moduleName,
		instance = "Ulduar",
	},
}

Synastria_Data["UlduarKologarn"] = {
	["Normal"] = {
		{
			{ 1,  45702, "", "=q4=Emerald Signet Ring",                "=ds=#s13#",       "", "10%" },
			{ 2,  45701, "", "=q4=Greaves of the Earthbinder",         "=ds=#s12#, #a3#", "", "10%" },
			{ 3,  45696, "", "=q4=Mark of the Unyielding",             "=ds=#s2#",        "", "10%" },
			{ 4,  45699, "", "=q4=Pendant of the Piercing Glare",      "=ds=#s2#",        "", "10%" },
			{ 5,  45698, "", "=q4=Sabatons of the Iron Watcher",       "=ds=#s12#, #a4#", "", "10%" },
			{ 6,  45704, "", "=q4=Shawl of the Shattered Giant",       "=ds=#s4#",        "", "10%" },
			{ 7,  45697, "", "=q4=Shoulderguards of the Solemn Watch", "=ds=#s3#, #a4#",  "", "10%" },
			{ 8,  45703, "", "=q4=Spark of Hope",                      "=ds=#s14#",       "", "10%" },
			{ 9,  45695, "", "=q4=Spire of Withering Dreams",          "=ds=#w9#",        "", "10%" },
			{ 10, 45700, "", "=q4=Stoneguard",                         "=ds=#h1#, #w10#", "", "10%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  45275, "", "=q4=Bracers of Unleashed Magic",      "=ds=#s8#, #a1#",  "", "6.7%" },
			{ 2,  45264, "", "=q4=Decimator's Armguards",           "=ds=#s8#, #a4#",  "", "6.7%" },
			{ 3,  45261, "", "=q4=Giant's Bane",                    "=ds=#w5#",        "", "6.7%" },
			{ 4,  45268, "", "=q4=Gloves of the Pythonic Guardian", "=ds=#s9#, #a4#",  "", "6.7%" },
			{ 5,  45273, "", "=q4=Handwraps of Plentiful Recovery", "=ds=#s9#, #a1#",  "", "6.7%" },
			{ 6,  45270, "", "=q4=Idol of the Crying Wind",         "=ds=#w14#",       "", "6.7%" },
			{ 7,  45271, "", "=q4=Ironmender",                      "=ds=#s15#",       "", "6.7%" },
			{ 8,  45274, "", "=q4=Leggings of the Stoneweaver",     "=ds=#s11#, #a3#", "", "6.7%" },
			{ 9,  45266, "", "=q4=Malice",                          "=ds=#h1#, #w10#", "", "6.7%" },
			{ 10, 45262, "", "=q4=Necklace of Unerring Mettle",     "=ds=#s2#",        "", "6.7%" },
			{ 11, 45272, "", "=q4=Robes of the Umbral Brute",       "=ds=#s5#, #a1#",  "", "6.7%" },
			{ 12, 45267, "", "=q4=Saronite Plated Legguards",       "=ds=#s11#, #a4#", "", "6.7%" },
			{ 13, 45265, "", "=q4=Shoulderpads of the Monolith",    "=ds=#s3#, #a2#",  "", "6.7%" },
			{ 14, 45269, "", "=q4=Unfaltering Armguards",           "=ds=#s8#, #a4#",  "", "6.7%" },
			{ 15, 45263, "", "=q4=Wrathstone",                      "=ds=#s14#",       "", "6.7%" },
			{ 16, 45038, "", "=q5=Fragment of Val'anyr",            "=ds=#m20#",       "", "8%" },
			{ 18, 45087, "", "=q3=Runed Orb",                       "=ds=#e6#",        "", "50%" },
		},
	},
	info = {
		name = BabbleBoss["Kologarn"],
		module = moduleName,
		instance = "Ulduar",
	},
}

Synastria_Data["UlduarAuriaya"] = {
	["Normal"] = {
		{
			{ 1,  45708, "", "=q4=Archaedas' Lost Legplates",  "=ds=#s11#, #a4#", "", "10%" },
			{ 2,  45712, "", "=q4=Chestplate of Titanic Fury", "=ds=#s5#, #a4#",  "", "10%" },
			{ 3,  45864, "", "=q4=Cover of the Keepers",       "=ds=#s1#, #a2#",  "", "10%" },
			{ 4,  45866, "", "=q4=Elemental Focus Stone",      "=ds=#s14#",       "", "10%" },
			{ 5,  45711, "", "=q4=Ironaya's Discarded Mantle", "=ds=#s3#, #a3#",  "", "10%" },
			{ 6,  45832, "", "=q4=Mantle of the Preserver",    "=ds=#s3#, #a1#",  "", "10%" },
			{ 7,  45709, "", "=q4=Nimble Climber's Belt",      "=ds=#s10#, #a2#", "", "10%" },
			{ 8,  45713, "", "=q4=Nurturing Touch",            "=ds=#w12#",       "", "10%" },
			{ 9,  45865, "", "=q4=Raiments of the Corrupted",  "=ds=#s5#, #a1#",  "", "10%" },
			{ 10, 45707, "", "=q4=Shieldwall of the Breaker",  "=ds=#w8#",        "", "10%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  45440, "", "=q4=Amice of the Stoic Watch",      "=ds=#s3#, #a3#",  "", "6.7%" },
			{ 2,  45319, "", "=q4=Cloak of the Makers",           "=ds=#s4#",        "", "6.7%" },
			{ 3,  45435, "", "=q4=Cowl of the Absolute",          "=ds=#s1#, #a1#",  "", "6.7%" },
			{ 4,  45325, "", "=q4=Gloves of the Stonereaper",     "=ds=#s9#, #a2#",  "", "6.7%" },
			{ 5,  45434, "", "=q4=Greaves of the Rockmender",     "=ds=#s12#, #a4#", "", "6.7%" },
			{ 6,  45436, "", "=q4=Libram of the Resolute",        "=ds=#w16#",       "", "6.7%" },
			{ 7,  45326, "", "=q4=Platinum Band of the Aesir",    "=ds=#s13#",       "", "6.7%" },
			{ 8,  45438, "", "=q4=Ring of the Faithful Servant",  "=ds=#s13#",       "", "6.7%" },
			{ 9,  45437, "", "=q4=Runescribed Blade",             "=ds=#h3#, #w10#", "", "6.7%" },
			{ 10, 45441, "", "=q4=Sandals of the Ancient Keeper", "=ds=#s12#, #a1#", "", "6.7%" },
			{ 11, 45320, "", "=q4=Shoulderplates of the Eternal", "=ds=#s3#, #a4#",  "", "6.7%" },
			{ 12, 45327, "", "=q4=Siren's Cry",                   "=ds=#w2#",        "", "6.7%" },
			{ 13, 45315, "", "=q4=Stonerender",                   "=ds=#h1#, #w6#",  "", "6.7%" },
			{ 14, 45334, "", "=q4=Unbreakable Chestguard",        "=ds=#s5#, #a4#",  "", "6.7%" },
			{ 15, 45439, "", "=q4=Unwavering Stare",              "=ds=#s1#, #a2#",  "", "6.7%" },
			{ 16, 45038, "", "=q5=Fragment of Val'anyr",          "=ds=#m20#",       "", "8%" },
			{ 18, 45087, "", "=q3=Runed Orb",                     "=ds=#e6#",        "", "75%" },
		},
	},
	info = {
		name = BabbleBoss["Auriaya"],
		module = moduleName,
		instance = "Ulduar",
	},
}

Synastria_Data["UlduarHodir"] = {
	["Normal"] = {
		{
			{ 1,  45872, "",           "=q4=Avalanche",                          "=ds=#w2#",            "", "20%" },
			{ 2,  45454, "",           "=q4=Frost-bound Chain Bracers",          "=ds=#s8#, #a3#",      "", "20%" },
			{ 3,  45874, "",           "=q4=Signet of Winter",                   "=ds=#s13#",           "", "20%" },
			{ 4,  45458, "",           "=q4=Stormedge",                          "=ds=#h2#, #w1#",      "", "20%" },
			{ 5,  45873, "",           "=q4=Winter's Frigid Embrace",            "=ds=#s4#",            "", "20%" },
			{ 7,  45650, "",           "=q4=Leggings of the Wayward Conqueror",  "=ds=#m41# #e15#",     "", "33.3%" },
			{ 8,  45651, "",           "=q4=Leggings of the Wayward Protector",  "=ds=#m41# #e15#",     "", "33.3%" },
			{ 9,  45652, "",           "=q4=Leggings of the Wayward Vanquisher", "=ds=#m41# #e15#",     "", "33.3%" },
			{ 16, 0,     "INV_Box_01", "=q6=#j53#",                              "#ACHIEVEMENTID:3182#" },
			{ 17, 45888, "",           "=q4=Bitter Cold Armguards",              "=ds=#s8#, #a4#",      "", "20%" },
			{ 18, 45887, "",           "=q4=Ice Layered Barrier",                "=ds=#w8#",            "", "20%" },
			{ 19, 45886, "",           "=q4=Icecore Staff",                      "=ds=#w9#",            "", "20%" },
			{ 20, 45876, "",           "=q4=Shiver",                             "=ds=#h1#, #w6#",      "", "20%" },
			{ 21, 45877, "",           "=q4=The Boreal Guard",                   "=ds=#w8#",            "", "20%" },
			{ 23, 45786, "",           "=q1=Hodir's Sigil",                      "=ds=#m3#",            "", "100%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  45454, "",           "=q4=Frost-bound Chain Bracers",             "=ds=#s8#, #a3#",      "", "20%" },
			{ 2,  45452, "",           "=q4=Frostplate Greaves",                    "=ds=#s11#, #a4#",     "", "20%" },
			{ 3,  45451, "",           "=q4=Frozen Loop",                           "=ds=#s13#",           "", "20%" },
			{ 4,  45450, "",           "=q4=Northern Barrier",                      "=ds=#w8#",            "", "20%" },
			{ 5,  45453, "",           "=q4=Winter's Icy Embrace",                  "=ds=#s5#, #a2#",      "", "20%" },
			{ 7,  45632, "",           "=q4=Breastplate of the Wayward Conqueror",  "=ds=#m41# #e15#",     "", "33.3%" },
			{ 8,  45633, "",           "=q4=Breastplate of the Wayward Protector",  "=ds=#m41# #e15#",     "", "33.3%" },
			{ 9,  45634, "",           "=q4=Breastplate of the Wayward Vanquisher", "=ds=#m41# #e15#",     "", "33.3%" },
			{ 11, 45038, "",           "=q5=Fragment of Val'anyr",                  "=ds=#m20#",           "", "10%" },
			{ 13, 45087, "",           "=q3=Runed Orb",                             "=ds=#e6#",            "", "10%" },
			{ 16, 0,     "INV_Box_01", "=q6=#j53#",                                 "#ACHIEVEMENTID:3184#" },
			{ 17, 45460, "",           "=q4=Bindings of Winter Gale",               "=ds=#s8#, #a3#",      "", "16.7%" },
			{ 18, 45612, "",           "=q4=Constellus",                            "=ds=#h3#, #w6#",      "", "16.7%" },
			{ 19, 45461, "",           "=q4=Drape of Icy Intent",                   "=ds=#s4#",            "", "16.7%" },
			{ 20, 45459, "",           "=q4=Frigid Strength of Hodir",              "=ds=#s2#",            "", "16.7%" },
			{ 21, 45462, "",           "=q4=Gloves of the Frozen Glade",            "=ds=#s9#, #a2#",      "", "16.7%" },
			{ 22, 45457, "",           "=q4=Staff of Endless Winter",               "=ds=#w9#",            "", "16.7%" },
			{ 24, 45815, "",           "=q1=Hodir's Sigil",                         "=ds=#m3#",            "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Hodir"],
		module = moduleName,
		instance = "Ulduar",
	},
}

Synastria_Data["UlduarThorim"] = {
	["Normal"] = {
		{
			{ 1,  45895, "",           "=q4=Belt of the Blood Pit",               "=ds=#s10#, #a3#",     "", "20%" },
			{ 2,  45893, "",           "=q4=Guise of the Midgard Serpent",        "=ds=#s1#, #a2#",      "", "20%" },
			{ 3,  45927, "",           "=q4=Handwraps of Resonance",              "=ds=#s9#, #a1#",      "", "20%" },
			{ 4,  45892, "",           "=q4=Legacy of Thunder",                   "=ds=#h1# #w6#",       "", "20%" },
			{ 5,  45894, "",           "=q4=Leggings of Unstable Discharge",      "=ds=#s11#, #a1#",     "", "20%" },
			{ 7,  45659, "",           "=q4=Spaulders of the Wayward Conqueror",  "=ds=#m41# #e15#",     "", "33.3%" },
			{ 8,  45660, "",           "=q4=Spaulders of the Wayward Protector",  "=ds=#m41# #e15#",     "", "33.3%" },
			{ 9,  45661, "",           "=q4=Spaulders of the Wayward Vanquisher", "=ds=#m41# #e15#",     "", "33.3%" },
			{ 16, 0,     "INV_Box_01", "=q6=#j53#",                               "#ACHIEVEMENTID:3176#" },
			{ 17, 45930, "",           "=q4=Combatant's Bootblade",               "=ds=#h1#, #w4#",      "", "20%" },
			{ 18, 45928, "",           "=q4=Gauntlets of the Thunder God",        "=ds=#s9#, #a4#",      "", "20%" },
			{ 19, 45931, "",           "=q4=Mjolnir Runestone",                   "=ds=#s14#",           "", "20%" },
			{ 20, 45933, "",           "=q4=Pendant of the Shallow Grave",        "=ds=#s2#",            "", "20%" },
			{ 21, 45929, "",           "=q4=Sif's Remembrance",                   "=ds=#s14#",           "", "20%" },
			{ 23, 45784, "",           "=q1=Thorim's Sigil",                      "=ds=#m3#",            "", "100%" },
		},
	},
	["25Man"] = {
		{

			{ 1,  45467, "",           "=q4=Belt of the Betrayed",            "=ds=#s10#, #a3#",     "", "20%" },
			{ 2,  45468, "",           "=q4=Leggings of Lost Love",           "=ds=#s11#, #a1#",     "", "20%" },
			{ 3,  45466, "",           "=q4=Scale of Fates",                  "=ds=#s14#",           "", "20%" },
			{ 4,  45469, "",           "=q4=Sif's Promise",                   "=ds=#s13#",           "", "20%" },
			{ 5,  45463, "",           "=q4=Vulmir, the Northern Tempest",    "=ds=#h1#, #w6#",      "", "20%" },
			{ 7,  45638, "",           "=q4=Crown of the Wayward Conqueror",  "=ds=#m41# #e15#",     "", "33.3%" },
			{ 8,  45639, "",           "=q4=Crown of the Wayward Protector",  "=ds=#m41# #e15#",     "", "33.3%" },
			{ 9,  45640, "",           "=q4=Crown of the Wayward Vanquisher", "=ds=#m41# #e15#",     "", "33.3%" },
			{ 11, 45038, "",           "=q5=Fragment of Val'anyr",            "=ds=#m20#",           "", "18%" },
			{ 13, 45087, "",           "=q3=Runed Orb",                       "=ds=#e6#",            "", "10%" },
			{ 16, 0,     "INV_Box_01", "=q6=#j53#",                           "#ACHIEVEMENTID:3183#" },
			{ 17, 45473, "",           "=q4=Embrace of the Gladiator",        "=ds=#s5#, #a2#",      "", "16.7%" },
			{ 18, 45471, "",           "=q4=Fate's Clutch",                   "=ds=#s13#",           "", "16.7%" },
			{ 19, 45474, "",           "=q4=Pauldrons of the Combatant",      "=ds=#s3#, #a3#",      "", "16.7%" },
			{ 20, 45570, "",           "=q4=Skyforge Crossbow",               "=ds=#w3#",            "", "16.7%" },
			{ 21, 45472, "",           "=q4=Warhelm of the Champion",         "=ds=#s1#, #a4#",      "", "16.7%" },
			{ 22, 45470, "",           "=q4=Wisdom's Hold",                   "=ds=#w8#",            "", "16.7%" },
			{ 24, 45817, "",           "=q1=Thorim's Sigil",                  "=ds=#m3#",            "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Thorim"],
		module = moduleName,
		instance = "Ulduar",
	},
}

Synastria_Data["UlduarFreya"] = {
	["Normal"] = {
		{
			{ 1,  45941, "",           "=q4=Chestguard of the Lasher",              "=ds=#s5#, #a3#",      "", "20%" },
			{ 2,  45935, "",           "=q4=Ironbark Faceguard",                    "=ds=#s1#, #a4#",      "", "20%" },
			{ 3,  45936, "",           "=q4=Legplates of Flourishing Resolve",      "=ds=#s11#, #a4#",     "", "20%" },
			{ 4,  45940, "",           "=q4=Tunic of the Limber Stalker",           "=ds=#s5#, #a2#",      "", "20%" },
			{ 5,  45934, "",           "=q4=Unraveling Reach",                      "=ds=#w9#",            "", "20%" },
			{ 7,  45644, "",           "=q4=Gloves of the Wayward Conqueror",       "=ds=#m41# #e15#",     "", "33.3%" },
			{ 8,  45645, "",           "=q4=Gloves of the Wayward Protector",       "=ds=#m41# #e15#",     "", "33.3%" },
			{ 9,  45646, "",           "=q4=Gloves of the Wayward Vanquisher",      "=ds=#m41# #e15#",     "", "33.3%" },
			{ 11, 45087, "",           "=q3=Runed Orb",                             "=ds=#e6#",            "", "100%" },
			{ 13, 46110, "",           "=q3=Alchemist's Cache",                     "=ds=#p1# (425)",      "", "100%" },
			{ 16, 0,     "INV_Box_01", "=q6=#j53#",                                 "#ACHIEVEMENTID:3179#" },
			{ 17, 45946, "",           "=q4=Fire Orchid Signet",                    "=ds=#s13#",           "", "20%" },
			{ 18, 45943, "",           "=q4=Gloves of Whispering Winds",            "=ds=#s9#, #a3#",      "", "20%" },
			{ 19, 45294, "",           "=q4=Petrified Ivy Sprig",                   "=ds=#w12#",           "", "20%" },
			{ 20, 45945, "",           "=q4=Seed of Budding Carnage",               "=ds=#s2#",            "", "20%" },
			{ 21, 45947, "",           "=q4=Serilas, Blood Blade of Invar One-Arm", "=ds=#h1# #w10#",      "", "20%" },
			{ 23, 45788, "",           "=q1=Freya's Sigil",                         "=ds=#m3#",            "", "100%" },
		},
	},
	["25Man"] = {
		{

			{ 1,  45483, "",           "=q4=Boots of the Servant",                "=ds=#s12#, #a1#",     "", "20%" },
			{ 2,  45481, "",           "=q4=Gauntlets of Ruthless Reprisal",      "=ds=#s9#, #a4#",      "", "20%" },
			{ 3,  45482, "",           "=q4=Leggings of the Lifetender",          "=ds=#s11#, #a2#",     "", "20%" },
			{ 4,  45480, "",           "=q4=Nymph Heart Charm",                   "=ds=#s2#",            "", "20%" },
			{ 5,  45479, "",           "=q4=The Lifebinder",                      "=ds=#w9#",            "", "20%" },
			{ 7,  45653, "",           "=q4=Legplates of the Wayward Conqueror",  "=ds=#m41# #e15#",     "", "33.3%" },
			{ 8,  45654, "",           "=q4=Legplates of the Wayward Protector",  "=ds=#m41# #e15#",     "", "33.3%" },
			{ 9,  45655, "",           "=q4=Legplates of the Wayward Vanquisher", "=ds=#m41# #e15#",     "", "33.3%" },
			{ 11, 45038, "",           "=q5=Fragment of Val'anyr",                "=ds=#m20#",           "", "20%" },
			{ 13, 45087, "",           "=q3=Runed Orb",                           "=ds=#e6# =q1=(x1-2)", "", "100%" },
			{ 15, 46110, "",           "=q3=Alchemist's Cache",                   "=ds=#p1# (425)",      "", "100%" },
			{ 16, 0,     "INV_Box_01", "=q6=#j53#",                               "#ACHIEVEMENTID:3187#" },
			{ 17, 45484, "",           "=q4=Bladetwister",                        "=ds=#h1#, #w4#",      "", "16.7%" },
			{ 18, 45485, "",           "=q4=Bronze Pendant of the Vanir",         "=ds=#s2#",            "", "16.7%" },
			{ 19, 45486, "",           "=q4=Drape of the Sullen Goddess",         "=ds=#s4#",            "", "16.7%" },
			{ 20, 45613, "",           "=q4=Dreambinder",                         "=ds=#w9#",            "", "16.7%" },
			{ 21, 45487, "",           "=q4=Handguards of Revitalization",        "=ds=#s9#, #a4#",      "", "16.7%" },
			{ 22, 45488, "",           "=q4=Leggings of the Enslaved Idol",       "=ds=#s11#, #a1#",     "", "16.7%" },
			{ 24, 45814, "",           "=q1=Freya's Sigil",                       "=ds=#m3#",            "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Freya"],
		module = moduleName,
		instance = "Ulduar",
	},
}

Synastria_Data["UlduarMimiron"] = {
	["Normal"] = {
		{
			{ 1,  45975, "",           "=q4=Cable of the Metrognome",        "=ds=#s10#, #a4#",     "", "20%" },
			{ 2,  45972, "",           "=q4=Pulse Baton",                    "=ds=#h3#, #w6#",      "", "20%" },
			{ 3,  45974, "",           "=q4=Shoulderguards of Assimilation", "=ds=#s3#, #a2#",      "", "20%" },
			{ 4,  45976, "",           "=q4=Static Charge Handwraps",        "=ds=#s9#, #a1#",      "", "20%" },
			{ 5,  45973, "",           "=q4=Stylish Power Cape",             "=ds=#s4#",            "", "20%" },
			{ 7,  45647, "",           "=q4=Helm of the Wayward Conqueror",  "=ds=#m41# #e15#",     "", "33.3%" },
			{ 8,  45648, "",           "=q4=Helm of the Wayward Protector",  "=ds=#m41# #e15#",     "", "33.3%" },
			{ 9,  45649, "",           "=q4=Helm of the Wayward Vanquisher", "=ds=#m41# #e15#",     "", "33.3%" },
			{ 16, 0,     "INV_Box_01", "=q6=#j53#",                          "#ACHIEVEMENTID:3180#" },
			{ 17, 45982, "",           "=q4=Fused Alloy Legplates",          "=ds=#s11#, #a4#",     "", "20%" },
			{ 18, 45990, "",           "=q4=Fusion Blade",                   "=ds=#h3#, #w10#",     "", "20%" },
			{ 19, 45988, "",           "=q4=Greaves of the Iron Army",       "=ds=#s12#, #a4#",     "", "20%" },
			{ 20, 45993, "",           "=q4=Mimiron's Flight Goggles",       "=ds=#s1#, #a2#",      "", "20%" },
			{ 21, 45989, "",           "=q4=Tempered Mercury Greaves",       "=ds=#s12#, #a3#",     "", "20%" },
			{ 23, 45787, "",           "=q1=Mimiron's Sigil",                "=ds=#m3#",            "", "100%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  45493, "",           "=q4=Asimov's Drape",                      "=ds=#s4#",            "", "20%" },
			{ 2,  45489, "",           "=q4=Insanity's Grip",                     "=ds=#h3#, #w13#",     "", "20%" },
			{ 3,  45492, "",           "=q4=Malleable Steelweave Mantle",         "=ds=#s3#, #a2#",      "", "20%" },
			{ 4,  45490, "",           "=q4=Pandora's Plea",                      "=ds=#s14#",           "", "20%" },
			{ 5,  45491, "",           "=q4=Waistguard of the Creator",           "=ds=#s10#, #a2#",     "", "20%" },
			{ 7,  45641, "",           "=q4=Gauntlets of the Wayward Conqueror",  "=ds=#m41# #e15#",     "", "33.3%" },
			{ 8,  45642, "",           "=q4=Gauntlets of the Wayward Protector",  "=ds=#m41# #e15#",     "", "33.3%" },
			{ 9,  45643, "",           "=q4=Gauntlets of the Wayward Vanquisher", "=ds=#m41# #e15#",     "", "33.3%" },
			{ 11, 45038, "",           "=q5=Fragment of Val'anyr",                "=ds=#m20#",           "", "18%" },
			{ 13, 45087, "",           "=q3=Runed Orb",                           "=ds=#e6#",            "", "10%" },
			{ 16, 0,     "INV_Box_01", "=q6=#j53#",                               "#ACHIEVEMENTID:3189#" },
			{ 17, 45663, "",           "=q4=Armbands of Bedlam",                  "=ds=#s8#, #a4#",      "", "16.7%" },
			{ 18, 45495, "",           "=q4=Conductive Seal",                     "=ds=#s13#",           "", "16.7%" },
			{ 19, 45497, "",           "=q4=Crown of Luminescence",               "=ds=#s1#, #a1#",      "", "16.7%" },
			{ 20, 45494, "",           "=q4=Delirium's Touch",                    "=ds=#h4#, #w13#",     "", "16.7%" },
			{ 21, 45620, "",           "=q4=Starshard Edge",                      "=ds=#h3#, #w4#",      "", "16.7%" },
			{ 22, 45496, "",           "=q4=Titanskin Cloak",                     "=ds=#s4#",            "", "16.7%" },
			{ 24, 45816, "",           "=q1=Mimiron's Sigil",                     "=ds=#m3#",            "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Mimiron"],
		module = moduleName,
		instance = "Ulduar",
	},
}

Synastria_Data["UlduarGeneralVezax"] = {
	["Normal"] = {
		{
			{ 1,  46009, "",           "=q4=Bindings of the Depths",              "=ds=#s8#, #a2#",      "", "10%" },
			{ 2,  46008, "",           "=q4=Choker of the Abyss",                 "=ds=#s2#",            "", "10%" },
			{ 3,  46010, "",           "=q4=Darkstone Ring",                      "=ds=#s13#",           "", "10%" },
			{ 4,  45997, "",           "=q4=Gauntlets of the Wretched",           "=ds=#s9#, #a4#",      "", "10%" },
			{ 5,  45996, "",           "=q4=Hoperender",                          "=ds=#w7#",            "", "10%" },
			{ 6,  46015, "",           "=q4=Pendant of Endless Despair",          "=ds=#s2#",            "", "10%" },
			{ 7,  46014, "",           "=q4=Saronite Animus Cloak",               "=ds=#s4#",            "", "10%" },
			{ 8,  46011, "",           "=q4=Shadowbite",                          "=ds=#h1#, #w4#",      "", "10%" },
			{ 9,  46013, "",           "=q4=Underworld Mantle",                   "=ds=#s3#, #a1#",      "", "10%" },
			{ 10, 46012, "",           "=q4=Vestments of the Piercing Light",     "=ds=#s5#, #a1#",      "", "10%" },
			{ 16, 0,     "INV_Box_01", "=q6=#j53#",                               "#ACHIEVEMENTID:3181#" },
			{ 17, 46035, "",           "=q4=Aesuga, Hand of the Ardent Champion", "=ds=#h3#, #w6#",      "", "20%" },
			{ 18, 46032, "",           "=q4=Drape of the Faceless General",       "=ds=#s4#",            "", "20%" },
			{ 19, 46034, "",           "=q4=Leggings of Profound Darkness",       "=ds=#s11#, #a1#",     "", "20%" },
			{ 20, 46033, "",           "=q4=Tortured Earth",                      "=ds=#w9#",            "", "20%" },
			{ 21, 46036, "",           "=q4=Void Sabre",                          "=ds=#h1#, #w10#",     "", "20%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  45505, "",           "=q4=Belt of Clinging Hope",              "=ds=#s10#, #a4#",     "", "7.7%" },
			{ 2,  45508, "",           "=q4=Belt of the Darkspeaker",            "=ds=#s10#, #a1#",     "", "7.7%" },
			{ 3,  45513, "",           "=q4=Boots of the Forgotten Depths",      "=ds=#s12#, #a3#",     "", "7.7%" },
			{ 4,  45501, "",           "=q4=Boots of the Underdweller",          "=ds=#s12#, #a4#",     "", "7.7%" },
			{ 5,  45504, "",           "=q4=Darkcore Leggings",                  "=ds=#s11#, #a3#",     "", "7.7%" },
			{ 6,  45512, "",           "=q4=Grips of the Unbroken",              "=ds=#s9#, #a2#",      "", "7.7%" },
			{ 7,  45502, "",           "=q4=Helm of the Faceless",               "=ds=#s1#, #a4#",      "", "7.7%" },
			{ 8,  45509, "",           "=q4=Idol of the Corruptor",              "=ds=#w14#",           "", "7.7%" },
			{ 9,  45145, "",           "=q4=Libram of the Sacred Shield",        "=ds=#w16#",           "", "7.7%" },
			{ 10, 45514, "",           "=q4=Mantle of the Unknowing",            "=ds=#s3#, #a1#",      "", "7.7%" },
			{ 11, 45503, "",           "=q4=Metallic Loop of the Sufferer",      "=ds=#s13#",           "", "7.7%" },
			{ 12, 45515, "",           "=q4=Ring of the Vacant Eye",             "=ds=#s13#",           "", "7.7%" },
			{ 13, 45507, "",           "=q4=The General's Heart",                "=ds=#s14#",           "", "7.7%" },
			{ 15, 45038, "",           "=q5=Fragment of Val'anyr",               "=ds=#m20#",           "", "11%" },
			{ 16, 45087, "",           "=q3=Runed Orb",                          "=ds=#e6#",            "", "10%" },
			{ 18, 0,     "INV_Box_01", "=q6=#j53#",                              "#ACHIEVEMENTID:3188#" },
			{ 19, 45518, "",           "=q4=Flare of the Heavens",               "=ds=#s14#",           "", "14.3%" },
			{ 20, 45520, "",           "=q4=Handwraps of the Vigilant",          "=ds=#s9#, #a1#",      "", "14.3%" },
			{ 21, 45498, "",           "=q4=Lotrafen, Spear of the Damned",      "=ds=#w7#",            "", "14.3%" },
			{ 22, 45517, "",           "=q4=Pendulum of Infinity",               "=ds=#s2#",            "", "14.3%" },
			{ 23, 45511, "",           "=q4=Scepter of Lost Souls",              "=ds=#w12#",           "", "14.3%" },
			{ 24, 45519, "",           "=q4=Vestments of the Blind Denizen",     "=ds=#s5#, #a2#",      "", "14.3%" },
			{ 25, 45516, "",           "=q4=Voldrethar, Dark Blade of Oblivion", "=ds=#h2#, #w10#",     "", "14.3%" },
		},
	},
	info = {
		name = BabbleBoss["General Vezax"],
		module = moduleName,
		instance = "Ulduar",
	},
}

Synastria_Data["UlduarYoggSaron"] = {
	["Normal"] = {
		{
			{ 1,  46016, "",           "=q4=Abaddon",                              "=ds=#h2#, #w10#",     "", "10%" },
			{ 2,  46018, "",           "=q4=Deliverance",                          "=ds=#w3#",            "", "10%" },
			{ 3,  46025, "",           "=q4=Devotion",                             "=ds=#w9#",            "", "10%" },
			{ 4,  46028, "",           "=q4=Faceguard of the Eyeless Horror",      "=ds=#s1#, #a4#",      "", "10%" },
			{ 5,  46024, "",           "=q4=Kingsbane",                            "=ds=#h1#, #w4#",      "", "10%" },
			{ 6,  46019, "",           "=q4=Leggings of the Insatiable",           "=ds=#s11#, #a3#",     "", "10%" },
			{ 7,  46022, "",           "=q4=Pendant of a Thousand Maws",           "=ds=#s2#",            "", "10%" },
			{ 8,  46021, "",           "=q4=Royal Seal of King Llane",             "=ds=#s14#",           "", "10%" },
			{ 9,  46031, "",           "=q4=Touch of Madness",                     "=ds=#h1#, #w1#",      "", "10%" },
			{ 10, 46030, "",           "=q4=Treads of the Dragon Council",         "=ds=#s12#, #a1#",     "", "10%" },
			{ 12, 45635, "",           "=q4=Chestguard of the Wayward Conqueror",  "=ds=#m41# #e15#",     "", "33.3%" },
			{ 13, 45636, "",           "=q4=Chestguard of the Wayward Protector",  "=ds=#m41# #e15#",     "", "33.3%" },
			{ 14, 45637, "",           "=q4=Chestguard of the Wayward Vanquisher", "=ds=#m41# #e15#",     "", "33.3%" },
			{ 16, 45087, "",           "=q3=Runed Orb",                            "=ds=#e6#",            "", "100%" },
			{ 18, 0,     "INV_Box_01", "=q6=#j53#",                                "#ACHIEVEMENTID:3157#" },
			{ 19, 46068, "",           "=q4=Amice of Inconceivable Horror",        "=ds=#s3#, #a1#",      "", "20%" },
			{ 20, 46097, "",           "=q4=Caress of Insanity",                   "=ds=#h1#, #w6#",      "", "20%" },
			{ 21, 46067, "",           "=q4=Hammer of Crushing Whispers",          "=ds=#h2#, #w6#",      "", "20%" },
			{ 22, 46096, "",           "=q4=Signet of Soft Lament",                "=ds=#s13#",           "", "20%" },
			{ 23, 46095, "",           "=q4=Soul-Devouring Cinch",                 "=ds=#s10#, #a2#",     "", "20%" },
			{ 25, 0,     "INV_Box_01", "=q6=" .. AL["Bonus Loot"],                 "#ACHIEVEMENTID:3159#" },
			{ 26, 46312, "",           "=q4=Vanquished Clutches of Yogg-Saron",    "=ds=#s14#",           "", "100%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  45522, "",           "=q4=Blood of the Old God",             "=ds=#s14#",           "", "10%" },
			{ 2,  45524, "",           "=q4=Chestguard of Insidious Intent",   "=ds=#s5#, #a3#",      "", "10%" },
			{ 3,  45531, "",           "=q4=Chestguard of the Fallen God",     "=ds=#s5#, #a3#",      "", "10%" },
			{ 4,  45532, "",           "=q4=Cowl of Dark Whispers",            "=ds=#s1#, #a1#",      "", "10%" },
			{ 5,  45521, "",           "=q4=Earthshaper",                      "=ds=#h2#, #w6#",      "", "10%" },
			{ 6,  45523, "",           "=q4=Garona's Guise",                   "=ds=#s1#, #a2#",      "", "10%" },
			{ 7,  45525, "",           "=q4=Godbane Signet",                   "=ds=#s13#",           "", "10%" },
			{ 8,  45530, "",           "=q4=Sanity's Bond",                    "=ds=#s13#",           "", "10%" },
			{ 9,  45529, "",           "=q4=Shawl of Haunted Memories",        "=ds=#s4#",            "", "10%" },
			{ 10, 45527, "",           "=q4=Soulscribe",                       "=ds=#h3#, #w4#",      "", "10%" },
			{ 12, 45656, "",           "=q4=Mantle of the Wayward Conqueror",  "=ds=#m41# #e15#",     "", "33.3%" },
			{ 13, 45657, "",           "=q4=Mantle of the Wayward Protector",  "=ds=#m41# #e15#",     "", "33.3%" },
			{ 14, 45658, "",           "=q4=Mantle of the Wayward Vanquisher", "=ds=#m41# #e15#",     "", "33.3%" },
			{ 16, 45038, "",           "=q5=Fragment of Val'anyr",             "=ds=#m20#",           "", "100%" },
			{ 18, 45087, "",           "=q3=Runed Orb",                        "=ds=#e6#",            "", "10%" },
			{ 20, 0,     "INV_Box_01", "=q6=#j53#",                            "#ACHIEVEMENTID:3161#" },
			{ 21, 45533, "",           "=q4=Dark Edge of Depravity",           "=ds=#w7#",            "", "20%" },
			{ 22, 45536, "",           "=q4=Legguards of Cunning Deception",   "=ds=#s11#, #a2#",     "", "20%" },
			{ 23, 45534, "",           "=q4=Seal of the Betrayed King",        "=ds=#s13#",           "", "20%" },
			{ 24, 45535, "",           "=q4=Show of Faith",                    "=ds=#s14#",           "", "20%" },
			{ 25, 45537, "",           "=q4=Treads of the False Oracle",       "=ds=#s12#, #a1#",     "", "20%" },
			{ 27, 0,     "INV_Box_01", "=q6=" .. AL["Bonus Loot"],             "#ACHIEVEMENTID:3164#" },
			{ 28, 45693, "",           "=q4=Mimiron's Head",                   "=ds=#e27#",           "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Yogg-Saron"],
		module = moduleName,
		instance = "Ulduar",
	},
}

Synastria_Data["UlduarTrash"] = {
	["Normal"] = {
		{
			{ 1,  46340, "", "=q4=Adamant Handguards",               "=ds=#s9#, #a4#",  "", "0.08%" },
			{ 2,  46351, "", "=q4=Bloodcrush Cudgel",                "=ds=#h1#, #w6#",  "", "0.08%" },
			{ 3,  46346, "", "=q4=Boots of Unsettled Prey",          "=ds=#s12#, #a3#", "", "0.08%" },
			{ 4,  46345, "", "=q4=Bracers of Righteous Reformation", "=ds=#s8#, #a4#",  "", "0.08%" },
			{ 5,  46347, "", "=q4=Cloak of the Dormant Blaze",       "=ds=#s4#",        "", "0.08%" },
			{ 6,  46341, "", "=q4=Drape of the Spellweaver",         "=ds=#s4#",        "", "0.08%" },
			{ 7,  46343, "", "=q4=Fervor of the Protectorate",       "=ds=#s2#",        "", "0.08%" },
			{ 8,  46342, "", "=q4=Golemheart Longbow",               "=ds=#w2#",        "", "0.08%" },
			{ 9,  46344, "", "=q4=Iceshear Mantle",                  "=ds=#s3#, #a1#",  "", "0.08%" },
			{ 10, 46350, "", "=q4=Pillar of Fortitude",              "=ds=#w9#",        "", "0.08%" },
			{ 11, 45538, "", "=q4=Titanstone Pendant",               "=ds=#s2#",        "", "0.08%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  45548, "", "=q4=Belt of the Sleeper",            "=ds=#s10#, #a2#", "", "0.19%" },
			{ 2,  45540, "", "=q4=Bladebearer's Signet",           "=ds=#s13#",       "", "0.19%" },
			{ 3,  45605, "", "=q4=Daschal's Bite",                 "=ds=#h1#, #w4#",  "", "0.19%" },
			{ 4,  45542, "", "=q4=Greaves of the Stonewarder",     "=ds=#s12#, #a4#", "", "0.19%" },
			{ 5,  45549, "", "=q4=Grips of Chaos",                 "=ds=#s8#, #a1#",  "", "0.19%" },
			{ 6,  46138, "", "=q4=Idol of the Flourishing Life",   "=ds=#w14#",       "", "0.19%" },
			{ 7,  45544, "", "=q4=Leggings of the Tortured Earth", "=ds=#s11#, #a3#", "", "0.19%" },
			{ 8,  45539, "", "=q4=Pendant of Focused Energies",    "=ds=#s2#",        "", "0.19%" },
			{ 9,  45547, "", "=q4=Relic Hunter's Cord",            "=ds=#s10#, #a2#", "", "0.19%" },
			{ 10, 45543, "", "=q4=Shoulders of Misfortune",        "=ds=#s3#, #a3#",  "", "0.19%" },
			{ 11, 45541, "", "=q4=Shroud of Alteration",           "=ds=#s4#",        "", "0.19%" },
			{ 12, 45538, "", "=q4=Titanstone Pendant",             "=ds=#s2#",        "", "0.19%" },
		},
	},
	info = {
		name = AL["Trash Mobs"],
		module = moduleName,
		instance = "Ulduar",
	},
}

Synastria_Data["UlduarPatterns"] = {
	["Normal"] = {
		{
			{ 1,  46348, "", "=q4=Formula: Enchant Weapon - Blood Draining", "=ds=#p4# (450)", "", "FL: 14%; Yogg: 1.4%" },
			{ 2,  46027, "", "=q4=Formula: Enchant Weapon - Blade Ward",     "=ds=#p4# (450)", "", "FL: 14%; Yogg: 1.4%" },
			{ 3,  45100, "", "=q4=Pattern: Belt of Arctic Life",             "=ds=#p7# (450)", "", "FL: 4%; Yogg: 0.4%" },
			{ 4,  45094, "", "=q4=Pattern: Belt of Dragons",                 "=ds=#p7# (450)", "", "FL: 4%; Yogg: 0.4%" },
			{ 5,  45096, "", "=q4=Pattern: Blue Belt of Chaos",              "=ds=#p7# (450)", "", "FL: 4%; Yogg: 0.4%" },
			{ 6,  45095, "", "=q4=Pattern: Boots of Living Scale",           "=ds=#p7# (450)", "", "FL: 4%; Yogg: 0.4%" },
			{ 7,  45101, "", "=q4=Pattern: Boots of Wintry Endurance",       "=ds=#p7# (450)", "", "FL: 4%; Yogg: 0.4%" },
			{ 8,  45104, "", "=q4=Pattern: Cord of the White Dawn",          "=ds=#p8# (450)", "", "FL: 4%; Yogg: 0.4%" },
			{ 9,  45098, "", "=q4=Pattern: Death-warmed Belt",               "=ds=#p7# (450)", "", "FL: 4%; Yogg: 0.4%" },
			{ 10, 45099, "", "=q4=Pattern: Footpads of Silence",             "=ds=#p7# (450)", "", "FL: 4%; Yogg: 0.4%" },
			{ 11, 45097, "", "=q4=Pattern: Lightning Grounded Boots",        "=ds=#p7# (450)", "", "FL: 4%; Yogg: 0.4%" },
			{ 12, 45102, "", "=q4=Pattern: Sash of Ancient Power",           "=ds=#p8# (450)", "", "FL: 4%; Yogg: 0.4%" },
			{ 13, 45105, "", "=q4=Pattern: Savior's Slippers",               "=ds=#p8# (450)", "", "FL: 4%; Yogg: 0.4%" },
			{ 14, 45103, "", "=q4=Pattern: Spellslinger's Slippers",         "=ds=#p8# (450)", "", "FL: 4%; Yogg: 0.4%" },
			{ 15, 45089, "", "=q4=Plans: Battlelord's Plate Boots",          "=ds=#p2# (450)", "", "FL: 4%; Yogg: 0.4%" },
			{ 16, 45088, "", "=q4=Plans: Belt of the Titans",                "=ds=#p2# (450)", "", "FL: 4%; Yogg: 0.4%" },
			{ 17, 45092, "", "=q4=Plans: Indestructible Plate Girdle",       "=ds=#p2# (450)", "", "FL: 4%; Yogg: 0.4%" },
			{ 18, 45090, "", "=q4=Plans: Plate Girdle of Righteousness",     "=ds=#p2# (450)", "", "FL: 4%; Yogg: 0.4%" },
			{ 19, 45093, "", "=q4=Plans: Spiked Deathdealers",               "=ds=#p2# (450)", "", "FL: 4%; Yogg: 0.4%" },
			{ 20, 45091, "", "=q4=Plans: Treads of Destiny",                 "=ds=#p2# (450)", "", "FL: 4%; Yogg: 0.4%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  46348, "", "=q4=Formula: Enchant Weapon - Blood Draining", "=ds=#p4# (450)", "", "FL: 0.7%; Others: 1.4%" },
			{ 2,  46027, "", "=q4=Formula: Enchant Weapon - Blade Ward",     "=ds=#p4# (450)", "", "FL: 0.7%; Others: 1.4%" },
			{ 3,  45100, "", "=q4=Pattern: Belt of Arctic Life",             "=ds=#p7# (450)", "", "FL: 0.2%; Others: 0.4%" },
			{ 4,  45094, "", "=q4=Pattern: Belt of Dragons",                 "=ds=#p7# (450)", "", "FL: 0.2%; Others: 0.4%" },
			{ 5,  45096, "", "=q4=Pattern: Blue Belt of Chaos",              "=ds=#p7# (450)", "", "FL: 0.2%; Others: 0.4%" },
			{ 6,  45095, "", "=q4=Pattern: Boots of Living Scale",           "=ds=#p7# (450)", "", "FL: 0.2%; Others: 0.4%" },
			{ 7,  45101, "", "=q4=Pattern: Boots of Wintry Endurance",       "=ds=#p7# (450)", "", "FL: 0.2%; Others: 0.4%" },
			{ 8,  45104, "", "=q4=Pattern: Cord of the White Dawn",          "=ds=#p8# (450)", "", "FL: 0.2%; Others: 0.4%" },
			{ 9,  45098, "", "=q4=Pattern: Death-warmed Belt",               "=ds=#p7# (450)", "", "FL: 0.2%; Others: 0.4%" },
			{ 10, 45099, "", "=q4=Pattern: Footpads of Silence",             "=ds=#p7# (450)", "", "FL: 0.2%; Others: 0.4%" },
			{ 11, 45097, "", "=q4=Pattern: Lightning Grounded Boots",        "=ds=#p7# (450)", "", "FL: 0.2%; Others: 0.4%" },
			{ 12, 45102, "", "=q4=Pattern: Sash of Ancient Power",           "=ds=#p8# (450)", "", "FL: 0.2%; Others: 0.4%" },
			{ 13, 45105, "", "=q4=Pattern: Savior's Slippers",               "=ds=#p8# (450)", "", "FL: 0.2%; Others: 0.4%" },
			{ 14, 45103, "", "=q4=Pattern: Spellslinger's Slippers",         "=ds=#p8# (450)", "", "FL: 0.2%; Others: 0.4%" },
			{ 15, 45089, "", "=q4=Plans: Battlelord's Plate Boots",          "=ds=#p2# (450)", "", "FL: 0.2%; Others: 0.4%" },
			{ 16, 45088, "", "=q4=Plans: Belt of the Titans",                "=ds=#p2# (450)", "", "FL: 0.2%; Others: 0.4%" },
			{ 17, 45092, "", "=q4=Plans: Indestructible Plate Girdle",       "=ds=#p2# (450)", "", "FL: 0.2%; Others: 0.4%" },
			{ 18, 45090, "", "=q4=Plans: Plate Girdle of Righteousness",     "=ds=#p2# (450)", "", "FL: 0.2%; Others: 0.4%" },
			{ 19, 45093, "", "=q4=Plans: Spiked Deathdealers",               "=ds=#p2# (450)", "", "FL: 0.2%; Others: 0.4%" },
			{ 20, 45091, "", "=q4=Plans: Treads of Destiny",                 "=ds=#p2# (450)", "", "FL: 0.2%; Others: 0.4%" },
		},
	},
	info = {
		name = AL["Ulduar Formula/Patterns/Plans"],
		module = moduleName,
		instance = "Ulduar",
	},
}

-----------------------------
--- Trial of the Champion ---
-----------------------------

Synastria_Data["TrialOfTheChampionGrandChampions"] = {
	["Normal"] = {
		{
			{ 1, 47170, "", "=q4=Belt of Fierce Competition",    "=ds=#s10#, #a2#", "", "16.7%" },
			{ 2, 47174, "", "=q4=Binding of the Tranquil Glade", "=ds=#s10#, #a2#", "", "16.7%" },
			{ 3, 47173, "", "=q4=Bindings of the Wicked",        "=ds=#s8#, #a1#",  "", "16.7%" },
			{ 4, 47172, "", "=q4=Helm of the Bested Gallant",    "=ds=#s1#, #a4#",  "", "16.7%" },
			{ 5, 47171, "", "=q4=Legguards of Abandoned Fealty", "=ds=#s11#, #a4#", "", "16.7%" },
			{ 6, 47175, "", "=q4=Scale Boots of the Outlander",  "=ds=#s12#, #a3#", "", "16.7%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 47244, "", "=q4=Chestguard of the Ravenous Fiend", "=ds=#s5#, #a3#",  "", "16.7%" },
			{ 2, 47493, "", "=q4=Edge of Ruin",                     "=ds=#h2#, #w1#",  "", "16.7%" },
			{ 3, 47249, "", "=q4=Leggings of the Snowy Bramble",    "=ds=#s11#, #a2#", "", "16.7%" },
			{ 4, 47243, "", "=q4=Mark of the Relentless",           "=ds=#s13#",       "", "16.7%" },
			{ 5, 47250, "", "=q4=Pauldrons of the Deafening Gale",  "=ds=#s3#, #a3#",  "", "16.7%" },
			{ 6, 47248, "", "=q4=Treads of Dismal Fortune",         "=ds=#s12#, #a2#", "", "16.7%" },
		},
	},
	info = {
		name = BabbleBoss["Grand Champions"],
		module = moduleName,
		instance = "TrialOfTheChampion",
	},
}

Synastria_Data["TrialOfTheChampionArgentConfessorPaletress"] = {
	["Normal"] = {
		{
			{ 1,  47214, "",           "=q4=Banner of Victory",                  "=ds=#s14#",                                                                                         "", "16.7%" },
			{ 2,  47219, "",           "=q4=Brilliant Hailstone Amulet",         "=ds=#s2#",                                                                                          "", "16.7%" },
			{ 3,  47217, "",           "=q4=Gaze of the Somber Keeper",          "=ds=#s1#, #a2#",                                                                                    "", "16.7%" },
			{ 4,  47212, "",           "=q4=Mercy's Hold",                       "=ds=#s9#, #a4#",                                                                                    "", "16.7%" },
			{ 5,  47218, "",           "=q4=The Confessor's Binding",            "=ds=#s10#, #a1#",                                                                                   "", "16.7%" },
			{ 6,  47211, "",           "=q4=Wristguards of Ceaseless Regret",    "=ds=#s8#, #a3#",                                                                                    "", "16.7%" },

			{ 16, 0,     "INV_Box_01", "=q6=#m5#",                               "=ds=" .. BabbleBoss["Argent Confessor Paletress"] .. "=q1= & =ds=" .. BabbleBoss["Eadric the Pure"] },
			{ 17, 47213, "",           "=q4=Abyssal Rune",                       "=ds=#s14#",                                                                                         "", "16.7%" },
			{ 18, 47181, "",           "=q4=Belt of the Churning Blaze",         "=ds=#s10#, #a1#",                                                                                   "", "16.7%" },
			{ 19, 47176, "",           "=q4=Breastplate of the Imperial Joust",  "=ds=#s5#, #a4#",                                                                                    "", "16.7%" },
			{ 20, 47178, "",           "=q4=Carapace of Grim Visions",           "=ds=#s5#, #a3#",                                                                                    "", "16.7%" },
			{ 21, 47177, "",           "=q4=Gloves of the Argent Fanatic",       "=ds=#s9#, #a2#",                                                                                    "", "16.7%" },
			{ 22, 47185, "",           "=q4=Leggings of the Haggard Apprentice", "=ds=#s11#, #a1#",                                                                                   "", "16.7%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  47522, "",           "=q4=Marrowstrike",                       "=ds=#w7#",                                                                                          "", "16.7%" },
			{ 2,  47245, "",           "=q4=Pauldrons of Concealed Loathing",    "=ds=#s3#, #a3#",                                                                                    "", "16.7%" },
			{ 3,  47511, "",           "=q4=Plated Greaves of Providence",       "=ds=#s12#, #a4#",                                                                                   "", "16.7%" },
			{ 4,  47514, "",           "=q4=Regal Aurous Shoulderplates",        "=ds=#s3#, #a4#",                                                                                    "", "16.7%" },
			{ 5,  47512, "",           "=q4=Sinner's Confession",                "=ds=#s13#",                                                                                         "", "16.7%" },
			{ 6,  47510, "",           "=q4=Trueheart Girdle",                   "=ds=#s10#, #a4#",                                                                                   "", "16.7%" },

			{ 16, 0,     "INV_Box_04", "=q6=#m5#",                               "=ds=" .. BabbleBoss["Argent Confessor Paletress"] .. "=q1= & =ds=" .. BabbleBoss["Eadric the Pure"] },
			{ 17, 47494, "",           "=q4=Ancient Pendant of Arathor",         "=ds=#s2#",                                                                                          "", "16.7%" },
			{ 18, 47496, "",           "=q4=Armbands of the Wary Lookout",       "=ds=#s8#, #a2#",                                                                                    "", "16.7%" },
			{ 19, 47498, "",           "=q4=Gloves of Dismal Fortune",           "=ds=#s9#, #a2#",                                                                                    "", "16.7%" },
			{ 20, 47497, "",           "=q4=Helm of the Crestfallen Challenger", "=ds=#s1#, #a4#",                                                                                    "", "16.7%" },
			{ 21, 47495, "",           "=q4=Legplates of Relentless Onslaught",  "=ds=#s11#, #a4#",                                                                                   "", "16.7%" },
			{ 22, 47500, "",           "=q4=Peacekeeper Blade",                  "=ds=#h1#, #w10#",                                                                                   "", "16.7%" },
		},
	},
	info = {
		name = BabbleBoss["Argent Confessor Paletress"],
		module = moduleName,
		instance = "TrialOfTheChampion",
	},
}

Synastria_Data["TrialOfTheChampionEadricThePure"] = {
	["Normal"] = {
		{
			{ 1,  47201, "",           "=q4=Boots of Heartfelt Repentance",          "=ds=#s12#, #a4#",                                                                                   "", "16.7%" },
			{ 2,  47197, "",           "=q4=Gauntlets of the Stouthearted Crusader", "=ds=#s9#, #a4#",                                                                                    "", "16.7%" },
			{ 3,  47199, "",           "=q4=Greaves of the Grand Paladin",           "=ds=#s12#, #a4#",                                                                                   "", "16.7%" },
			{ 4,  47202, "",           "=q4=Leggings of Brazen Trespass",            "=ds=#s11#, #a2#",                                                                                   "", "16.7%" },
			{ 5,  47210, "",           "=q4=Mantle of Gnarled Overgrowth",           "=ds=#s3#, #a2#",                                                                                    "", "16.7%" },
			{ 6,  47200, "",           "=q4=Signet of Purity",                       "=ds=#s13#",                                                                                         "", "16.7%" },

			{ 16, 0,     "INV_Box_01", "=q6=#m5#",                                   "=ds=" .. BabbleBoss["Argent Confessor Paletress"] .. "=q1= & =ds=" .. BabbleBoss["Eadric the Pure"] },
			{ 17, 47213, "",           "=q4=Abyssal Rune",                           "=ds=#s14#",                                                                                         "", "16.7%" },
			{ 18, 47181, "",           "=q4=Belt of the Churning Blaze",             "=ds=#s10#, #a1#",                                                                                   "", "16.7%" },
			{ 19, 47176, "",           "=q4=Breastplate of the Imperial Joust",      "=ds=#s5#, #a4#",                                                                                    "", "16.7%" },
			{ 20, 47178, "",           "=q4=Carapace of Grim Visions",               "=ds=#s5#, #a3#",                                                                                    "", "16.7%" },
			{ 21, 47177, "",           "=q4=Gloves of the Argent Fanatic",           "=ds=#s9#, #a2#",                                                                                    "", "16.7%" },
			{ 22, 47185, "",           "=q4=Leggings of the Haggard Apprentice",     "=ds=#s11#, #a1#",                                                                                   "", "16.7%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  47508, "",           "=q4=Aledar's Battlestar",                 "=ds=#h1#, #w6#",                                                                                    "", "16.7%" },
			{ 2,  47504, "",           "=q4=Barkhide Treads",                     "=ds=#s12#, #a2#",                                                                                   "", "16.7%" },
			{ 3,  47501, "",           "=q4=Kurisu's Indecision",                 "=ds=#s4#",                                                                                          "", "16.7%" },
			{ 4,  47503, "",           "=q4=Legplates of the Argent Armistice",   "=ds=#s11#, #a4#",                                                                                   "", "16.7%" },
			{ 5,  47502, "",           "=q4=Majestic Silversmith Shoulderplates", "=ds=#s3#, #a4#",                                                                                    "", "16.7%" },
			{ 6,  47509, "",           "=q4=Mariel's Sorrow",                     "=ds=#h3#, #w6#",                                                                                    "", "16.7%" },

			{ 16, 0,     "INV_Box_04", "=q6=#m5#",                                "=ds=" .. BabbleBoss["Argent Confessor Paletress"] .. "=q1= & =ds=" .. BabbleBoss["Eadric the Pure"] },
			{ 17, 47494, "",           "=q4=Ancient Pendant of Arathor",          "=ds=#s2#",                                                                                          "", "16.7%" },
			{ 18, 47496, "",           "=q4=Armbands of the Wary Lookout",        "=ds=#s8#, #a2#",                                                                                    "", "16.7%" },
			{ 19, 47498, "",           "=q4=Gloves of Dismal Fortune",            "=ds=#s9#, #a2#",                                                                                    "", "16.7%" },
			{ 20, 47497, "",           "=q4=Helm of the Crestfallen Challenger",  "=ds=#s1#, #a4#",                                                                                    "", "16.7%" },
			{ 21, 47495, "",           "=q4=Legplates of Relentless Onslaught",   "=ds=#s11#, #a4#",                                                                                   "", "16.7%" },
			{ 22, 47500, "",           "=q4=Peacekeeper Blade",                   "=ds=#h1#, #w10#",                                                                                   "", "16.7%" },
		},
	},
	info = {
		name = BabbleBoss["Eadric the Pure"],
		module = moduleName,
		instance = "TrialOfTheChampion",
	},
}

Synastria_Data["TrialOfTheChampionTheBlackKnight"] = {
	["Normal"] = {
		{
			{ 1,  47231, "", "=q4=Belt of Merciless Cruelty",          "=ds=#s10#, #a3#", "", "8.3%" },
			{ 2,  47560, "", "=q4=Boots of the Crackling Flame",       "=ds=#s12#, #a1#", "", "8.3%" },
			{ 3,  47232, "", "=q4=Drape of the Undefeated",            "=ds=#s4#",        "", "8.3%" },
			{ 4,  47227, "", "=q4=Girdle of the Pallid Knight",        "=ds=#s10#, #a4#", "", "8.3%" },
			{ 5,  47230, "", "=q4=Handwraps of Surrendered Hope",      "=ds=#s9#, #a1#",  "", "8.3%" },
			{ 6,  47220, "", "=q4=Helm of the Violent Fray",           "=ds=#s1#, #a4#",  "", "8.3%" },
			{ 7,  47228, "", "=q4=Leggings of the Bloodless Knight",   "=ds=#s11#, #a3#", "", "8.3%" },
			{ 8,  47226, "", "=q4=Mantle of Inconsolable Fear",        "=ds=#s3#, #a1#",  "", "8.3%" },
			{ 9,  47221, "", "=q4=Shoulderpads of the Infamous Knave", "=ds=#s3#, #a2#",  "", "8.3%" },
			{ 10, 47215, "", "=q4=Tears of the Vanquished",            "=ds=#s14#",       "", "8.3%" },
			{ 11, 47216, "", "=q4=The Black Heart",                    "=ds=#s14#",       "", "8.3%" },
			{ 12, 47222, "", "=q4=Uruka's Band of Zeal",               "=ds=#s13#",       "", "8.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  49682, "", "=q4=Black Knight's Rondel",               "=ds=#h1#, #w4#",  "", "7.7%" },
			{ 2,  47560, "", "=q4=Boots of the Crackling Flame",        "=ds=#s12#, #a1#", "", "7.7%" },
			{ 3,  47527, "", "=q4=Embrace of Madness",                  "=ds=#s5#, #a1#",  "", "7.7%" },
			{ 4,  47567, "", "=q4=Gauntlets of Revelation",             "=ds=#s9#, #a4#",  "", "7.7%" },
			{ 5,  47564, "", "=q4=Gaze of the Unknown",                 "=ds=#s1#, #a1#",  "", "7.7%" },
			{ 6,  47563, "", "=q4=Girdle of the Dauntless Conqueror",   "=ds=#s10#, #a3#", "", "7.7%" },
			{ 7,  47561, "", "=q4=Gloves of the Dark Exile",            "=ds=#s9#, #a3#",  "", "7.7%" },
			{ 8,  47529, "", "=q4=Mask of Distant Memory",              "=ds=#s1#, #a2#",  "", "7.7%" },
			{ 9,  47569, "", "=q4=Spectral Kris",                       "=ds=#h3#, #w4#",  "", "7.7%" },
			{ 10, 47562, "", "=q4=Symbol of Redemption",                "=ds=#s2#",        "", "7.7%" },
			{ 11, 47566, "", "=q4=The Warlord's Depravity",             "=ds=#s2#",        "", "7.7%" },
			{ 12, 47568, "", "=q4=True-Aim Long Rifle",                 "=ds=#w5#",        "", "7.7%" },
			{ 13, 47565, "", "=q4=Vambraces of Unholy Command",         "=ds=#s8#, #a4#",  "", "7.7%" },
			{ 15, 48418, "", "=q1=Fragment of the Black Knight's Soul", "=ds=#m3#",        "", "100%" },
			{ 16, 43102, "", "=q3=Frozen Orb",                          "=ds=#e6#",        "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["The Black Knight"],
		module = moduleName,
		instance = "TrialOfTheChampion",
	},
}

-----------------------------
--- Trial of the Crusader ---
-----------------------------

Synastria_Data["TheBeastsOfNorthrend"] = {
	["Normal"] = {
		{
			{ 1,  47853, "", "=q4=Acidmaw Treads",                  "=ds=#s12#, #a2#", "", "8.3%" },
			{ 2,  47859, "", "=q4=Belt of the Impaler",             "=ds=#s10#, #a4#", "", "8.3%" },
			{ 3,  47850, "", "=q4=Bracers of the Northern Stalker", "=ds=#s8#, #a3#",  "", "8.3%" },
			{ 4,  47849, "", "=q4=Collar of Unending Torment",      "=ds=#s2#",        "", "8.3%" },
			{ 5,  47852, "", "=q4=Dreadscale Bracers",              "=ds=#s8#, #a4#",  "", "8.3%" },
			{ 6,  47851, "", "=q4=Gauntlets of Mounting Anger",     "=ds=#s9#, #a4#",  "", "8.3%" },
			{ 7,  47858, "", "=q4=Girdle of the Frozen Reach",      "=ds=#s10#, #a4#", "", "8.3%" },
			{ 8,  47854, "", "=q4=Gormok's Band",                   "=ds=#s13#",       "", "8.3%" },
			{ 9,  47855, "", "=q4=Icehowl Binding",                 "=ds=#s10#, #a1#", "", "8.3%" },
			{ 10, 47857, "", "=q4=Pauldrons of the Glacial Wilds",  "=ds=#s3#, #a2#",  "", "8.3%" },
			{ 11, 47860, "", "=q4=Pauldrons of the Spirit Walker",  "=ds=#s3#, #a3#",  "", "8.3%" },
			{ 12, 47856, "", "=q4=Scepter of Imprisoned Souls",     "=ds=#w12#",       "", "8.3%" },
			{ 1,  47608, "", "=q4=Acidmaw Boots",                       "=ds=#s12#, #a2#", "", "8.3%" },
			{ 2,  47610, "", "=q4=Armbands of the Northern Stalker",    "=ds=#s8#, #a3#",  "", "8.3%" },
			{ 3,  47615, "", "=q4=Belt of the Frozen Reach",            "=ds=#s10#, #a4#", "", "8.3%" },
			{ 4,  47578, "", "=q4=Carnivorous Band",                    "=ds=#s13#",       "", "8.3%" },
			{ 5,  47607, "", "=q4=Collar of Ceaseless Torment",         "=ds=#s2#",        "", "8.3%" },
			{ 6,  47611, "", "=q4=Dreadscale Armguards",                "=ds=#s8#, #a4#",  "", "8.3%" },
			{ 7,  47609, "", "=q4=Gauntlets of Rising Anger",           "=ds=#s9#, #a4#",  "", "8.3%" },
			{ 8,  47614, "", "=q4=Girdle of the Impaler",               "=ds=#s10#, #a4#", "", "8.3%" },
			{ 9,  47617, "", "=q4=Icehowl Cinch",                       "=ds=#s10#, #a1#", "", "8.3%" },
			{ 10, 47612, "", "=q4=Rod of Imprisoned Souls",             "=ds=#w12#",       "", "8.3%" },
			{ 11, 47616, "", "=q4=Shoulderguards of the Spirit Walker", "=ds=#s3#, #a3#",  "", "8.3%" },
			{ 12, 47613, "", "=q4=Shoulderpads of the Glacial Wilds",   "=ds=#s3#, #a2#",  "", "8.3%" },

		},
	},
	["Heroic"] = {
		{
			{ 1,  47992, "", "=q4=Acidmaw Treads",                  "=ds=#s12#, #a2#", "", "8.3%" },
			{ 2,  47998, "", "=q4=Belt of the Impaler",             "=ds=#s10#, #a4#", "", "8.3%" },
			{ 3,  47989, "", "=q4=Bracers of the Northern Stalker", "=ds=#s8#, #a3#",  "", "8.3%" },
			{ 4,  47988, "", "=q4=Collar of Unending Torment",      "=ds=#s2#",        "", "8.3%" },
			{ 5,  47991, "", "=q4=Dreadscale Bracers",              "=ds=#s8#, #a4#",  "", "8.3%" },
			{ 6,  47990, "", "=q4=Gauntlets of Mounting Anger",     "=ds=#s9#, #a4#",  "", "8.3%" },
			{ 7,  47997, "", "=q4=Girdle of the Frozen Reach",      "=ds=#s10#, #a4#", "", "8.3%" },
			{ 8,  47993, "", "=q4=Gormok's Band",                   "=ds=#s13#",       "", "8.3%" },
			{ 9,  47994, "", "=q4=Icehowl Binding",                 "=ds=#s10#, #a1#", "", "8.3%" },
			{ 10, 47996, "", "=q4=Pauldrons of the Glacial Wilds",  "=ds=#s3#, #a2#",  "", "8.3%" },
			{ 11, 47999, "", "=q4=Pauldrons of the Spirit Walker",  "=ds=#s3#, #a3#",  "", "8.3%" },
			{ 12, 47995, "", "=q4=Scepter of Imprisoned Souls",     "=ds=#w12#",       "", "8.3%" },
			{ 16, 47556, "", "=q2=Crusader Orb",                    "=ds=#e6#",        "", "100%" },
			{ 1,  47919, "", "=q4=Acidmaw Boots",                       "=ds=#s12#, #a2#", "", "8.3%" },
			{ 2,  47916, "", "=q4=Armbands of the Northern Stalker",    "=ds=#s8#, #a3#",  "", "8.3%" },
			{ 3,  47924, "", "=q4=Belt of the Frozen Reach",            "=ds=#s10#, #a4#", "", "8.3%" },
			{ 4,  47920, "", "=q4=Carnivorous Band",                    "=ds=#s13#",       "", "8.3%" },
			{ 5,  47915, "", "=q4=Collar of Ceaseless Torment",         "=ds=#s2#",        "", "8.3%" },
			{ 6,  47918, "", "=q4=Dreadscale Armguards",                "=ds=#s8#, #a4#",  "", "8.3%" },
			{ 7,  47917, "", "=q4=Gauntlets of Rising Anger",           "=ds=#s9#, #a4#",  "", "8.3%" },
			{ 8,  47925, "", "=q4=Girdle of the Impaler",               "=ds=#s10#, #a4#", "", "8.3%" },
			{ 9,  47921, "", "=q4=Icehowl Cinch",                       "=ds=#s10#, #a1#", "", "8.3%" },
			{ 10, 47922, "", "=q4=Rod of Imprisoned Souls",             "=ds=#w12#",       "", "8.3%" },
			{ 11, 47926, "", "=q4=Shoulderguards of the Spirit Walker", "=ds=#s3#, #a3#",  "", "8.3%" },
			{ 12, 47923, "", "=q4=Shoulderpads of the Glacial Wilds",   "=ds=#s3#, #a2#",  "", "8.3%" },
			{ 16, 47556, "", "=q2=Crusader Orb",                        "=ds=#e6#",        "", "100%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  47261, "", "=q4=Barb of Tarasque",                    "=ds=#h3#, #w4#",  "", "6.7%" },
			{ 2,  47258, "", "=q4=Belt of the Tenebrous Mist",          "=ds=#s10#, #a1#", "", "6.7%" },
			{ 3,  47265, "", "=q4=Binding of the Ice Burrower",         "=ds=#s10#, #a3#", "", "6.7%" },
			{ 4,  47253, "", "=q4=Boneshatter Vambraces",               "=ds=#s8#, #a4#",  "", "6.7%" },
			{ 5,  47262, "", "=q4=Boots of the Harsh Winter",           "=ds=#s12#, #a2#", "", "6.7%" },
			{ 6,  47257, "", "=q4=Cloak of the Untamed Predator",       "=ds=#s4#",        "", "6.7%" },
			{ 7,  47251, "", "=q4=Cuirass of Cruel Intent",             "=ds=#s5#, #a3#",  "", "6.7%" },
			{ 8,  47256, "", "=q4=Drape of the Refreshing Winds",       "=ds=#s4#",        "", "6.7%" },
			{ 9,  47264, "", "=q4=Flowing Robes of Ascent",             "=ds=#s5#, #a1#",  "", "6.7%" },
			{ 10, 47260, "", "=q4=Forlorn Barrier",                     "=ds=#w8#",        "", "6.7%" },
			{ 11, 47254, "", "=q4=Hauberk of the Towering Monstrosity", "=ds=#s5#, #a4#",  "", "6.7%" },
			{ 12, 47259, "", "=q4=Legwraps of the Broken Beast",        "=ds=#s11#, #a2#", "", "6.7%" },
			{ 13, 47252, "", "=q4=Ring of the Violent Temperament",     "=ds=#s13#",       "", "6.7%" },
			{ 14, 47263, "", "=q4=Sabatons of the Courageous",          "=ds=#s12#, #a4#", "", "6.7%" },
			{ 15, 47255, "", "=q4=Stygian Bladebreaker",                "=ds=#h1#, #w4#",  "", "6.7%" },
			{ 16, 47242, "", "=q4=Trophy of the Crusade",               "=ds=#m42# #e15#", "", "100%" },
			{ 18, 47556, "", "=q2=Crusader Orb",                        "=ds=#e6#",        "", "100%" },
			{ 1,  46959, "", "=q4=Band of the Violent Temperment",         "=ds=#s13#",       "", "6.7%" },
			{ 2,  46990, "", "=q4=Belt of the Ice Burrower",               "=ds=#s10#, #a3#", "", "6.7%" },
			{ 3,  46979, "", "=q4=Blade of Tarasque",                      "=ds=#h3#, #w4#",  "", "6.7%" },
			{ 4,  46961, "", "=q4=Boneshatter Armplates",                  "=ds=#s8#, #a4#",  "", "6.7%" },
			{ 5,  46985, "", "=q4=Boots of the Courageous",                "=ds=#s12#, #a4#", "", "6.7%" },
			{ 6,  46988, "", "=q4=Boots of the Unrelenting Storm",         "=ds=#s12#, #a2#", "", "6.7%" },
			{ 7,  46960, "", "=q4=Breastplate of Cruel Intent",            "=ds=#s5#, #a3#",  "", "6.7%" },
			{ 8,  46962, "", "=q4=Chestplate of the Towering Monstrosity", "=ds=#s5#, #a4#",  "", "6.7%" },
			{ 9,  46972, "", "=q4=Cord of the Tenebrous Mist",             "=ds=#s10#, #a1#", "", "6.7%" },
			{ 10, 46963, "", "=q4=Crystal Plated Vanguard",                "=ds=#w8#",        "", "6.7%" },
			{ 11, 46970, "", "=q4=Drape of the Untamed Predator",          "=ds=#s4#",        "", "6.7%" },
			{ 12, 46992, "", "=q4=Flowing Vestments of Ascent",            "=ds=#s5#, #a1#",  "", "6.7%" },
			{ 13, 46974, "", "=q4=Leggings of the Broken Beast",           "=ds=#s11#, #a2#", "", "6.7%" },
			{ 14, 46976, "", "=q4=Shawl of the Refreshing Winds",          "=ds=#s4#",        "", "6.7%" },
			{ 15, 46958, "", "=q4=Steel Bladebreaker",                     "=ds=#h1#, #w4#",  "", "6.7%" },
			{ 16, 47242, "", "=q4=Trophy of the Crusade",                  "=ds=#m42# #e15#", "", "100%" },
			{ 18, 47556, "", "=q2=Crusader Orb",                           "=ds=#e6#",        "", "100%" },
		},
	},
	["25Man Heroic"] = {
		{
			{ 1, 47422, "", "=q4=Barb of Tarasque", "=ds=#h3#, #w4#", "", "6.7%"};
			{ 2, 47419, "", "=q4=Belt of the Tenebrous Mist", "=ds=#s10#, #a1#", "", "6.7%"};
			{ 3, 47426, "", "=q4=Binding of the Ice Burrower", "=ds=#s10#, #a3#", "", "6.7%"};
			{ 4, 47414, "", "=q4=Boneshatter Vambraces", "=ds=#s8#, #a4#", "", "6.7%"};
			{ 5, 47423, "", "=q4=Boots of the Harsh Winter", "=ds=#s12#, #a2#", "", "6.7%"};
			{ 6, 47418, "", "=q4=Cloak of the Untamed Predator", "=ds=#s4#", "", "6.7%"};
			{ 7, 47412, "", "=q4=Cuirass of Cruel Intent", "=ds=#s5#, #a3#", "", "6.7%"};
			{ 8, 47417, "", "=q4=Drape of the Refreshing Winds", "=ds=#s4#", "", "6.7%"};
			{ 9, 47425, "", "=q4=Flowing Robes of Ascent", "=ds=#s5#, #a1#", "", "6.7%"};
			{ 10, 47421, "", "=q4=Forlorn Barrier", "=ds=#w8#", "", "6.7%"};
			{ 11, 47415, "", "=q4=Hauberk of the Towering Monstrosity", "=ds=#s5#, #a4#", "", "6.7%"};
			{ 12, 47420, "", "=q4=Legwraps of the Broken Beast", "=ds=#s11#, #a2#", "", "6.7%"};
			{ 13, 47413, "", "=q4=Ring of the Violent Temperament", "=ds=#s13#", "", "6.7%"};
			{ 14, 47424, "", "=q4=Sabatons of the Courageous", "=ds=#s12#, #a4#", "", "6.7%"};
			{ 15, 47416, "", "=q4=Stygian Bladebreaker", "=ds=#h1#, #w4#", "", "6.7%"};
			{ 16, 47242, "", "=q4=Trophy of the Crusade", "=ds=#m42# #e15#", "", "100%"};
			{ 18, 47556, "", "=q2=Crusader Orb", "=ds=#e6#", "", "100%"};
			{ 19, 46966, "", "=q4=Band of the Violent Temperment", "=ds=#s13#", "", "6.7%"};
			{ 20, 46991, "", "=q4=Belt of the Ice Burrower", "=ds=#s10#, #a3#", "", "6.7%"};
			{ 21, 46980, "", "=q4=Blade of Tarasque", "=ds=#h3#, #w4#", "", "6.7%"};
			{ 22, 46967, "", "=q4=Boneshatter Armplates", "=ds=#s8#, #a4#", "", "6.7%"};
			{ 23, 46986, "", "=q4=Boots of the Courageous", "=ds=#s12#, #a4#", "", "6.7%"};
			{ 24, 46989, "", "=q4=Boots of the Unrelenting Storm", "=ds=#s12#, #a2#", "", "6.7%"};
			{ 25, 46965, "", "=q4=Breastplate of Cruel Intent", "=ds=#s5#, #a3#", "", "6.7%"};
			{ 26, 46968, "", "=q4=Chestplate of the Towering Monstrosity", "=ds=#s5#, #a4#", "", "6.7%"};
			{ 27, 46973, "", "=q4=Cord of the Tenebrous Mist", "=ds=#s10#, #a1#", "", "6.7%"};
			{ 28, 46964, "", "=q4=Crystal Plated Vanguard", "=ds=#w8#", "", "6.7%"};
			{ 29, 46971, "", "=q4=Drape of the Untamed Predator", "=ds=#s4#", "", "6.7%"};
			{ 30, 46993, "", "=q4=Flowing Vestments of Ascent", "=ds=#s5#, #a1#", "", "6.7%"};
			{ 31, 46975, "", "=q4=Leggings of the Broken Beast", "=ds=#s11#, #a2#", "", "6.7%"};
			{ 32, 46977, "", "=q4=Shawl of the Refreshing Winds", "=ds=#s4#", "", "6.7%"};
			{ 33, 46969, "", "=q4=Steel Bladebreaker", "=ds=#h1#, #w4#", "", "6.7%"};
			{ 34, 47242, "", "=q4=Trophy of the Crusade", "=ds=#m42# #e15#", "", "100%"};
			{ 36, 47556, "", "=q2=Crusader Orb", "=ds=#e6#", "", "100%"};
		};
	};
	info = {
		name = BabbleBoss["TheBeastsOfNorthrend"],
		module = moduleName,
		instance = "TrialoftheCrusader",
	},
}

Synastria_Data["LordJaraxxus"] = {
	["Normal"] = {
		{
			{ 1,  47869, "", "=q4=Armplates of the Nether Lord",      "=ds=#s8#, #a4#",  "", "7.7%" },
			{ 2,  47863, "", "=q4=Belt of the Bloodhoof Emissary",    "=ds=#s10#, #a2#", "", "7.7%" },
			{ 3,  47870, "", "=q4=Belt of the Nether Champion",       "=ds=#s10#, #a4#", "", "7.7%" },
			{ 4,  47866, "", "=q4=Darkspear Ritual Binding",          "=ds=#s10#, #a3#", "", "7.7%" },
			{ 5,  47861, "", "=q4=Felspark Bracers",                  "=ds=#s8#, #a1#",  "", "7.7%" },
			{ 6,  47862, "", "=q4=Firestorm Band",                    "=ds=#s13#",       "", "7.7%" },
			{ 7,  47872, "", "=q4=Fortitude of the Infernal",         "=ds=#s2#",        "", "7.7%" },
			{ 8,  47865, "", "=q4=Legwraps of the Demonic Messenger", "=ds=#s11#, #a1#", "", "7.7%" },
			{ 9,  47871, "", "=q4=Orcish Deathblade",                 "=ds=#h1#, #w4#",  "", "7.7%" },
			{ 10, 47864, "", "=q4=Pendant of Binding Elements",       "=ds=#s2#",        "", "7.7%" },
			{ 11, 47868, "", "=q4=Planestalker Band",                 "=ds=#s13#",       "", "7.7%" },
			{ 12, 49236, "", "=q4=Sabatons of Tortured Space",        "=ds=#s12#, #a3#", "", "7.7%" },
			{ 13, 47867, "", "=q4=Warsong Poacher's Greaves",         "=ds=#s12#, #a3#", "", "7.7%" },
			{ 1,  47619, "", "=q4=Amulet of Binding Elements",        "=ds=#s2#",        "", "7.7%" },
			{ 2,  47680, "", "=q4=Armguards of the Nether Lord",      "=ds=#s8#, #a4#",  "", "7.7%" },
			{ 3,  47669, "", "=q4=Belt of the Winter Solstice",       "=ds=#s10#, #a2#", "", "7.7%" },
			{ 4,  49235, "", "=q4=Boots of Tortured Space",           "=ds=#s12#, #a3#", "", "7.7%" },
			{ 5,  47676, "", "=q4=Dirk of the Night Watch",           "=ds=#h1#, #w4#",  "", "7.7%" },
			{ 6,  47679, "", "=q4=Endurance of the Infernal",         "=ds=#s2#",        "", "7.7%" },
			{ 7,  47663, "", "=q4=Felspark Bindings",                 "=ds=#s8#, #a1#",  "", "7.7%" },
			{ 8,  47618, "", "=q4=Firestorm Ring",                    "=ds=#s13#",       "", "7.7%" },
			{ 9,  47621, "", "=q4=Girdle of the Farseer",             "=ds=#s10#, #a3#", "", "7.7%" },
			{ 10, 47711, "", "=q4=Girdle of the Nether Champion",     "=ds=#s10#, #a4#", "", "7.7%" },
			{ 11, 47620, "", "=q4=Leggings of the Demonic Messenger", "=ds=#s11#, #a1#", "", "7.7%" },
			{ 12, 47703, "", "=q4=Planestalker Signet",               "=ds=#s13#",       "", "7.7%" },
			{ 13, 47683, "", "=q4=Sentinel Scouting Greaves",         "=ds=#s12#, #a3#", "", "7.7%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  48008, "", "=q4=Armplates of the Nether Lord",      "=ds=#s8#, #a4#",  "", "7.7%" },
			{ 2,  48002, "", "=q4=Belt of the Bloodhoof Emissary",    "=ds=#s10#, #a2#", "", "7.7%" },
			{ 3,  48009, "", "=q4=Belt of the Nether Champion",       "=ds=#s10#, #a4#", "", "7.7%" },
			{ 4,  48005, "", "=q4=Darkspear Ritual Binding",          "=ds=#s10#, #a3#", "", "7.7%" },
			{ 5,  48000, "", "=q4=Felspark Bracers",                  "=ds=#s8#, #a1#",  "", "7.7%" },
			{ 6,  48001, "", "=q4=Firestorm Band",                    "=ds=#s13#",       "", "7.7%" },
			{ 7,  48011, "", "=q4=Fortitude of the Infernal",         "=ds=#s2#",        "", "7.7%" },
			{ 8,  48004, "", "=q4=Legwraps of the Demonic Messenger", "=ds=#s11#, #a1#", "", "7.7%" },
			{ 9,  48010, "", "=q4=Orcish Deathblade",                 "=ds=#h1#, #w4#",  "", "7.7%" },
			{ 10, 48003, "", "=q4=Pendant of Binding Elements",       "=ds=#s2#",        "", "7.7%" },
			{ 11, 48007, "", "=q4=Planestalker Band",                 "=ds=#s13#",       "", "7.7%" },
			{ 12, 49237, "", "=q4=Sabatons of Tortured Space",        "=ds=#s12#, #a3#", "", "7.7%" },
			{ 13, 48006, "", "=q4=Warsong Poacher's Greaves",         "=ds=#s12#, #a3#", "", "7.7%" },
			{ 16, 47556, "", "=q2=Crusader Orb",                      "=ds=#e6#",        "", "100%" },
			{ 1,  47930, "", "=q4=Amulet of Binding Elements",        "=ds=#s2#",        "", "7.7%" },
			{ 2,  47935, "", "=q4=Armguards of the Nether Lord",      "=ds=#s8#, #a4#",  "", "7.7%" },
			{ 3,  47929, "", "=q4=Belt of the Winter Solstice",       "=ds=#s10#, #a2#", "", "7.7%" },
			{ 4,  49238, "", "=q4=Boots of Tortured Space",           "=ds=#s12#, #a3#", "", "7.7%" },
			{ 5,  47938, "", "=q4=Dirk of the Night Watch",           "=ds=#h1#, #w4#",  "", "7.7%" },
			{ 6,  47939, "", "=q4=Endurance of the Infernal",         "=ds=#s2#",        "", "7.7%" },
			{ 7,  47927, "", "=q4=Felspark Bindings",                 "=ds=#s8#, #a1#",  "", "7.7%" },
			{ 8,  47928, "", "=q4=Firestorm Ring",                    "=ds=#s13#",       "", "7.7%" },
			{ 9,  47932, "", "=q4=Girdle of the Farseer",             "=ds=#s10#, #a3#", "", "7.7%" },
			{ 10, 47937, "", "=q4=Girdle of the Nether Champion",     "=ds=#s10#, #a4#", "", "7.7%" },
			{ 11, 47931, "", "=q4=Leggings of the Demonic Messenger", "=ds=#s11#, #a1#", "", "7.7%" },
			{ 12, 47934, "", "=q4=Planestalker Signet",               "=ds=#s13#",       "", "7.7%" },
			{ 13, 47933, "", "=q4=Sentinel Scouting Greaves",         "=ds=#s12#, #a3#", "", "7.7%" },
			{ 16, 47556, "", "=q2=Crusader Orb",                      "=ds=#e6#",        "", "100%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  47277, "", "=q4=Bindings of the Autumn Willow",    "=ds=#s8#, #a2#",  "", "6.7%" },
			{ 2,  47266, "", "=q4=Blood Fury",                       "=ds=#h1#, #w1#",  "", "6.7%" },
			{ 3,  47268, "", "=q4=Bloodbath Girdle",                 "=ds=#s10#, #a4#", "", "6.7%" },
			{ 4,  47272, "", "=q4=Charge of the Eredar",             "=ds=#s2#",        "", "6.7%" },
			{ 5,  47278, "", "=q4=Circle of the Darkmender",         "=ds=#s13#",       "", "6.7%" },
			{ 6,  47269, "", "=q4=Dawnbreaker Sabatons",             "=ds=#s12#, #a4#", "", "6.7%" },
			{ 7,  47267, "", "=q4=Death's Head Crossbow",            "=ds=#w3#",        "", "6.7%" },
			{ 8,  47279, "", "=q4=Leggings of Failing Light",        "=ds=#s11#, #a4#", "", "6.7%" },
			{ 9,  47273, "", "=q4=Legplates of Feverish Dedication", "=ds=#s11#, #a4#", "", "6.7%" },
			{ 10, 47274, "", "=q4=Pants of the Soothing Touch",      "=ds=#s11#, #a1#", "", "6.7%" },
			{ 11, 47275, "", "=q4=Pride of the Demon Lord",          "=ds=#s4#",        "", "6.7%" },
			{ 12, 47271, "", "=q4=Solace of the Fallen",             "=ds=#s14#",       "", "6.7%" },
			{ 13, 47276, "", "=q4=Talisman of Heedless Sins",        "=ds=#s15#",       "", "6.7%" },
			{ 14, 47270, "", "=q4=Vest of Calamitous Fate",          "=ds=#s5#, #a2#",  "", "6.7%" },
			{ 15, 47280, "", "=q4=Wristwraps of Cloudy Omen",        "=ds=#s8#, #a3#",  "", "6.7%" },
			{ 16, 47242, "", "=q4=Trophy of the Crusade",            "=ds=#m42# #e15#", "", "100%" },
			{ 18, 47556, "", "=q2=Crusader Orb",                     "=ds=#e6#",        "", "100%" },
			{ 1,  46999, "", "=q4=Bloodbath Belt",                   "=ds=#s10#, #a4#", "", "6.7%" },
			{ 2,  47056, "", "=q4=Bracers of Cloudy Omen",           "=ds=#s8#, #a3#",  "", "6.7%" },
			{ 3,  47055, "", "=q4=Bracers of the Autumn Willow",     "=ds=#s8#, #a2#",  "", "6.7%" },
			{ 4,  47043, "", "=q4=Charge of the Demon Lord",         "=ds=#s2#",        "", "6.7%" },
			{ 5,  47000, "", "=q4=Cuirass of Calamitous Fate",       "=ds=#s5#, #a2#",  "", "6.7%" },
			{ 6,  46997, "", "=q4=Dawnbreaker Greaves",              "=ds=#s12#, #a4#", "", "6.7%" },
			{ 7,  47051, "", "=q4=Leggings of the Soothing Touch",   "=ds=#s11#, #a1#", "", "6.7%" },
			{ 8,  47052, "", "=q4=Legguards of Feverish Dedication", "=ds=#s11#, #a4#", "", "6.7%" },
			{ 9,  47057, "", "=q4=Legplates of Failing Light",       "=ds=#s11#, #a4#", "", "6.7%" },
			{ 10, 46996, "", "=q4=Lionhead Slasher",                 "=ds=#h1#, #w1#",  "", "6.7%" },
			{ 11, 47042, "", "=q4=Pride of the Eredar",              "=ds=#s4#",        "", "6.7%" },
			{ 12, 47223, "", "=q4=Ring of the Darkmender",           "=ds=#s13#",       "", "6.7%" },
			{ 13, 47041, "", "=q4=Solace of the Defeated",           "=ds=#s14#",       "", "6.7%" },
			{ 14, 47053, "", "=q4=Symbol of Transgression",          "=ds=#s15#",       "", "6.7%" },
			{ 15, 46994, "", "=q4=Talonstrike",                      "=ds=#w3#",        "", "6.7%" },
			{ 16, 47242, "", "=q4=Trophy of the Crusade",            "=ds=#m42# #e15#", "", "100%" },
			{ 18, 47556, "", "=q2=Crusader Orb",                     "=ds=#e6#",        "", "100%" },
		},
	},
	["25ManHeroic"] = {
		{
			{ 1,  47438, "", "=q4=Bindings of the Autumn Willow",    "=ds=#s8#, #a2#",  "", "6.7%" },
			{ 2,  47427, "", "=q4=Blood Fury",                       "=ds=#h1#, #w1#",  "", "6.7%" },
			{ 3,  47429, "", "=q4=Bloodbath Girdle",                 "=ds=#s10#, #a4#", "", "6.7%" },
			{ 4,  47433, "", "=q4=Charge of the Eredar",             "=ds=#s2#",        "", "6.7%" },
			{ 5,  47439, "", "=q4=Circle of the Darkmender",         "=ds=#s13#",       "", "6.7%" },
			{ 6,  47430, "", "=q4=Dawnbreaker Sabatons",             "=ds=#s12#, #a4#", "", "6.7%" },
			{ 7,  47428, "", "=q4=Death's Head Crossbow",            "=ds=#w3#",        "", "6.7%" },
			{ 8,  47440, "", "=q4=Leggings of Failing Light",        "=ds=#s11#, #a4#", "", "6.7%" },
			{ 9,  47434, "", "=q4=Legplates of Feverish Dedication", "=ds=#s11#, #a4#", "", "6.7%" },
			{ 10, 47435, "", "=q4=Pants of the Soothing Touch",      "=ds=#s11#, #a1#", "", "6.7%" },
			{ 11, 47436, "", "=q4=Pride of the Demon Lord",          "=ds=#s4#",        "", "6.7%" },
			{ 12, 47432, "", "=q4=Solace of the Fallen",             "=ds=#s14#",       "", "6.7%" },
			{ 13, 47437, "", "=q4=Talisman of Heedless Sins",        "=ds=#s15#",       "", "6.7%" },
			{ 14, 47431, "", "=q4=Vest of Calamitous Fate",          "=ds=#s5#, #a2#",  "", "6.7%" },
			{ 15, 47441, "", "=q4=Wristwraps of Cloudy Omen",        "=ds=#s8#, #a3#",  "", "6.7%" },
			{ 16, 47242, "", "=q4=Trophy of the Crusade",            "=ds=#m42# #e15#", "", "100%" },
			{ 18, 47556, "", "=q2=Crusader Orb",                     "=ds=#e6#",        "", "100%" },
			{ 1,  47002, "", "=q4=Bloodbath Belt",                   "=ds=#s10#, #a4#", "", "6.7%" },
			{ 2,  47068, "", "=q4=Bracers of Cloudy Omen",           "=ds=#s8#, #a3#",  "", "6.7%" },
			{ 3,  47066, "", "=q4=Bracers of the Autumn Willow",     "=ds=#s8#, #a2#",  "", "6.7%" },
			{ 4,  47060, "", "=q4=Charge of the Demon Lord",         "=ds=#s2#",        "", "6.7%" },
			{ 5,  47004, "", "=q4=Cuirass of Calamitous Fate",       "=ds=#s5#, #a2#",  "", "6.7%" },
			{ 6,  47003, "", "=q4=Dawnbreaker Greaves",              "=ds=#s12#, #a4#", "", "6.7%" },
			{ 7,  47062, "", "=q4=Leggings of the Soothing Touch",   "=ds=#s11#, #a1#", "", "6.7%" },
			{ 8,  47061, "", "=q4=Legguards of Feverish Dedication", "=ds=#s11#, #a4#", "", "6.7%" },
			{ 9,  47067, "", "=q4=Legplates of Failing Light",       "=ds=#s11#, #a4#", "", "6.7%" },
			{ 10, 47001, "", "=q4=Lionhead Slasher",                 "=ds=#h1#, #w1#",  "", "6.7%" },
			{ 11, 47063, "", "=q4=Pride of the Eredar",              "=ds=#s4#",        "", "6.7%" },
			{ 12, 47224, "", "=q4=Ring of the Darkmender",           "=ds=#s13#",       "", "6.7%" },
			{ 13, 47059, "", "=q4=Solace of the Defeated",           "=ds=#s14#",       "", "6.7%" },
			{ 14, 47064, "", "=q4=Symbol of Transgression",          "=ds=#s15#",       "", "6.7%" },
			{ 15, 46995, "", "=q4=Talonstrike",                      "=ds=#w3#",        "", "6.7%" },
			{ 16, 47242, "", "=q4=Trophy of the Crusade",            "=ds=#m42# #e15#", "", "100%" },
			{ 18, 47556, "", "=q2=Crusader Orb",                     "=ds=#e6#",        "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["LordJaraxxus"],
		module = moduleName,
		instance = "TrialoftheCrusader",
	},
}

Synastria_Data["FactionChampions"] = {
	["Normal"] = {
		{
			{ 1,  47880, "", "=q4=Binding Stone",                  "=ds=#s14#",       "", "10%" },
			{ 2,  47882, "", "=q4=Eitrigg's Oath",                 "=ds=#s14#",       "", "10%" },
			{ 3,  47879, "", "=q4=Fetish of Volatile Power",       "=ds=#s14#",       "", "10%" },
			{ 4,  47878, "", "=q4=Sunreaver Assassin's Gloves",    "=ds=#s9#, #a2#",  "", "10%" },
			{ 5,  47876, "", "=q4=Sunreaver Champion's Faceplate", "=ds=#s1#, #a4#",  "", "10%" },
			{ 6,  47877, "", "=q4=Sunreaver Defender's Pauldrons", "=ds=#s3#, #a4#",  "", "10%" },
			{ 7,  47874, "", "=q4=Sunreaver Disciple's Blade",     "=ds=#h3#, #w4#",  "", "10%" },
			{ 8,  47873, "", "=q4=Sunreaver Magus' Sandals",       "=ds=#s12#, #a1#", "", "10%" },
			{ 9,  47875, "", "=q4=Sunreaver Ranger's Helm",        "=ds=#s1#, #a3#",  "", "10%" },
			{ 10, 47881, "", "=q4=Vengeance of the Forsaken",      "=ds=#s14#",       "", "10%" },
			{ 1,  47728, "", "=q4=Binding Light",                    "=ds=#s14#",       "", "10%" },
			{ 2,  47724, "", "=q4=Blade of the Silver Disciple",     "=ds=#h3#, #w4#",  "", "10%" },
			{ 3,  47717, "", "=q4=Faceplate of the Silver Champion", "=ds=#s1#, #a4#",  "", "10%" },
			{ 4,  47727, "", "=q4=Fervor of the Frostborn",          "=ds=#s14#",       "", "10%" },
			{ 5,  47719, "", "=q4=Gloves of the Silver Assassin",    "=ds=#s9#, #a2#",  "", "10%" },
			{ 6,  47718, "", "=q4=Helm of the Silver Ranger",        "=ds=#s1#, #a3#",  "", "10%" },
			{ 7,  47720, "", "=q4=Pauldrons of the Silver Defender", "=ds=#s3#, #a4#",  "", "10%" },
			{ 8,  47721, "", "=q4=Sandals of the Silver Magus",      "=ds=#s12#, #a1#", "", "10%" },
			{ 9,  47726, "", "=q4=Talisman of Volatile Power",       "=ds=#s14#",       "", "10%" },
			{ 10, 47725, "", "=q4=Victor's Call",                    "=ds=#s14#",       "", "10%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  48019, "", "=q4=Binding Stone",                  "=ds=#s14#",       "", "10%" },
			{ 2,  48021, "", "=q4=Eitrigg's Oath",                 "=ds=#s14#",       "", "10%" },
			{ 3,  48018, "", "=q4=Fetish of Volatile Power",       "=ds=#s14#",       "", "10%" },
			{ 4,  48017, "", "=q4=Sunreaver Assassin's Gloves",    "=ds=#s9#, #a2#",  "", "10%" },
			{ 5,  48015, "", "=q4=Sunreaver Champion's Faceplate", "=ds=#s1#, #a4#",  "", "10%" },
			{ 6,  48016, "", "=q4=Sunreaver Defender's Pauldrons", "=ds=#s3#, #a4#",  "", "10%" },
			{ 7,  48013, "", "=q4=Sunreaver Disciple's Blade",     "=ds=#h3#, #w4#",  "", "10%" },
			{ 8,  48012, "", "=q4=Sunreaver Magus' Sandals",       "=ds=#s12#, #a1#", "", "10%" },
			{ 9,  48014, "", "=q4=Sunreaver Ranger's Helm",        "=ds=#s1#, #a3#",  "", "10%" },
			{ 10, 48020, "", "=q4=Vengeance of the Forsaken",      "=ds=#s14#",       "", "10%" },
			{ 16, 47556, "", "=q2=Crusader Orb",                   "=ds=#e6#",        "", "100%" },
			{ 1,  47947, "", "=q4=Binding Light",                    "=ds=#s14#",       "", "10%" },
			{ 2,  47941, "", "=q4=Blade of the Silver Disciple",     "=ds=#h3#, #w4#",  "", "10%" },
			{ 3,  47943, "", "=q4=Faceplate of the Silver Champion", "=ds=#s1#, #a4#",  "", "10%" },
			{ 4,  47949, "", "=q4=Fervor of the Frostborn",          "=ds=#s14#",       "", "10%" },
			{ 5,  47945, "", "=q4=Gloves of the Silver Assassin",    "=ds=#s9#, #a2#",  "", "10%" },
			{ 6,  47942, "", "=q4=Helm of the Silver Ranger",        "=ds=#s1#, #a3#",  "", "10%" },
			{ 7,  47944, "", "=q4=Pauldrons of the Silver Defender", "=ds=#s3#, #a4#",  "", "10%" },
			{ 8,  47940, "", "=q4=Sandals of the Silver Magus",      "=ds=#s12#, #a1#", "", "10%" },
			{ 9,  47946, "", "=q4=Talisman of Volatile Power",       "=ds=#s14#",       "", "10%" },
			{ 10, 47948, "", "=q4=Victor's Call",                    "=ds=#s14#",       "", "10%" },
			{ 16, 47556, "", "=q2=Crusader Orb",                     "=ds=#e6#",        "", "100%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  47282, "", "=q4=Band of Callous Aggression",        "=ds=#s13#",       "", "6.7%" },
			{ 2,  47287, "", "=q4=Bastion of Resolve",                "=ds=#w8#",        "", "6.7%" },
			{ 3,  47286, "", "=q4=Belt of Biting Cold",               "=ds=#s10#, #a1#", "", "6.7%" },
			{ 4,  47283, "", "=q4=Belt of Bloodied Scars",            "=ds=#s10#, #a4#", "", "6.7%" },
			{ 5,  47294, "", "=q4=Bracers of the Broken Bond",        "=ds=#s8#, #a4#",  "", "6.7%" },
			{ 6,  47281, "", "=q4=Bracers of the Silent Massacre",    "=ds=#s8#, #a3#",  "", "6.7%" },
			{ 7,  47288, "", "=q4=Chestplate of the Frostwolf Hero",  "=ds=#s5#, #a4#",  "", "6.7%" },
			{ 8,  47285, "", "=q4=Dual-blade Butcher",                "=ds=#h2#, #w1#",  "", "6.7%" },
			{ 9,  47284, "", "=q4=Icewalker Treads",                  "=ds=#s12#, #a2#", "", "6.7%" },
			{ 10, 47290, "", "=q4=Juggernaut's Vitality",             "=ds=#s14#",       "", "6.7%" },
			{ 11, 47289, "", "=q4=Leggings of Concealed Hatred",      "=ds=#s11#, #a3#", "", "6.7%" },
			{ 12, 47292, "", "=q4=Robes of the Shattered Fellowship", "=ds=#s5#, #a2#",  "", "6.7%" },
			{ 13, 47295, "", "=q4=Sabatons of Tremoring Earth",       "=ds=#s12#, #a3#", "", "6.7%" },
			{ 14, 47293, "", "=q4=Sandals of the Mourning Widow",     "=ds=#s12#, #a1#", "", "6.7%" },
			{ 15, 47291, "", "=q4=Shroud of Displacement",            "=ds=#s4#",        "", "6.7%" },
			{ 16, 47242, "", "=q4=Trophy of the Crusade",             "=ds=#m42# #e15#", "", "100%" },
			{ 18, 47556, "", "=q2=Crusader Orb",                      "=ds=#e6#",        "", "100%" },
			{ 1,  47079, "", "=q4=Bastion of Purity",                     "=ds=#w8#",        "", "6.7%" },
			{ 2,  47092, "", "=q4=Boots of the Mourning Widow",           "=ds=#s12#, #a1#", "", "6.7%" },
			{ 3,  47090, "", "=q4=Boots of Tremoring Earth",              "=ds=#s12#, #a3#", "", "6.7%" },
			{ 4,  47073, "", "=q4=Bracers of the Untold Massacre",        "=ds=#s8#, #a3#",  "", "6.7%" },
			{ 5,  47082, "", "=q4=Chestplate of the Frostborn Hero",      "=ds=#s5#, #a4#",  "", "6.7%" },
			{ 6,  47089, "", "=q4=Cloak of Displacement",                 "=ds=#s4#",        "", "6.7%" },
			{ 7,  47081, "", "=q4=Cord of Biting Cold",                   "=ds=#s10#, #a1#", "", "6.7%" },
			{ 8,  47072, "", "=q4=Girdle of Bloodied Scars",              "=ds=#s10#, #a4#", "", "6.7%" },
			{ 9,  47069, "", "=q4=Justicebringer",                        "=ds=#h2#, #w1#",  "", "6.7%" },
			{ 10, 47083, "", "=q4=Legguards of Concealed Hatred",         "=ds=#s11#, #a3#", "", "6.7%" },
			{ 11, 47070, "", "=q4=Ring of Callous Aggression",            "=ds=#s13#",       "", "6.7%" },
			{ 12, 47080, "", "=q4=Satrina's Impeding Scarab",             "=ds=#s14#",       "", "6.7%" },
			{ 13, 47071, "", "=q4=Treads of the Icewalker",               "=ds=#s12#, #a2#", "", "6.7%" },
			{ 14, 47093, "", "=q4=Vambraces of the Broken Bond",          "=ds=#s8#, #a4#",  "", "6.7%" },
			{ 15, 47094, "", "=q4=Vestments of the Shattered Fellowship", "=ds=#s5#, #a2#",  "", "6.7%" },
			{ 16, 47242, "", "=q4=Trophy of the Crusade",                 "=ds=#m42# #e15#", "", "100%" },
			{ 18, 47556, "", "=q2=Crusader Orb",                          "=ds=#e6#",        "", "100%" },
		},
	},
	["25ManHeroic"] = {
		{
			{ 1,  47443, "", "=q4=Band of Callous Aggression",        "=ds=#s13#",       "", "6.7%" },
			{ 2,  47448, "", "=q4=Bastion of Resolve",                "=ds=#w8#",        "", "6.7%" },
			{ 3,  47447, "", "=q4=Belt of Biting Cold",               "=ds=#s10#, #a1#", "", "6.7%" },
			{ 4,  47444, "", "=q4=Belt of Bloodied Scars",            "=ds=#s10#, #a4#", "", "6.7%" },
			{ 5,  47455, "", "=q4=Bracers of the Broken Bond",        "=ds=#s8#, #a4#",  "", "6.7%" },
			{ 6,  47442, "", "=q4=Bracers of the Silent Massacre",    "=ds=#s8#, #a3#",  "", "6.7%" },
			{ 7,  47449, "", "=q4=Chestplate of the Frostwolf Hero",  "=ds=#s5#, #a4#",  "", "6.7%" },
			{ 8,  47446, "", "=q4=Dual-blade Butcher",                "=ds=#h2#, #w1#",  "", "6.7%" },
			{ 9,  47445, "", "=q4=Icewalker Treads",                  "=ds=#s12#, #a2#", "", "6.7%" },
			{ 10, 47451, "", "=q4=Juggernaut's Vitality",             "=ds=#s14#",       "", "6.7%" },
			{ 11, 47450, "", "=q4=Leggings of Concealed Hatred",      "=ds=#s11#, #a3#", "", "6.7%" },
			{ 12, 47453, "", "=q4=Robes of the Shattered Fellowship", "=ds=#s5#, #a2#",  "", "6.7%" },
			{ 13, 47456, "", "=q4=Sabatons of Tremoring Earth",       "=ds=#s12#, #a3#", "", "6.7%" },
			{ 14, 47454, "", "=q4=Sandals of the Mourning Widow",     "=ds=#s12#, #a1#", "", "6.7%" },
			{ 15, 47452, "", "=q4=Shroud of Displacement",            "=ds=#s4#",        "", "6.7%" },
			{ 16, 47242, "", "=q4=Trophy of the Crusade",             "=ds=#m42# #e15#", "", "100%" },
			{ 18, 47556, "", "=q2=Crusader Orb",                      "=ds=#e6#",        "", "100%" },
			{ 1,  47085, "", "=q4=Bastion of Purity",                     "=ds=#w8#",        "", "6.7%" },
			{ 2,  47097, "", "=q4=Boots of the Mourning Widow",           "=ds=#s12#, #a1#", "", "6.7%" },
			{ 3,  47099, "", "=q4=Boots of Tremoring Earth",              "=ds=#s12#, #a3#", "", "6.7%" },
			{ 4,  47074, "", "=q4=Bracers of the Untold Massacre",        "=ds=#s8#, #a3#",  "", "6.7%" },
			{ 5,  47086, "", "=q4=Chestplate of the Frostborn Hero",      "=ds=#s5#, #a4#",  "", "6.7%" },
			{ 6,  47095, "", "=q4=Cloak of Displacement",                 "=ds=#s4#",        "", "6.7%" },
			{ 7,  47084, "", "=q4=Cord of Biting Cold",                   "=ds=#s10#, #a1#", "", "6.7%" },
			{ 8,  47076, "", "=q4=Girdle of Bloodied Scars",              "=ds=#s10#, #a4#", "", "6.7%" },
			{ 9,  47078, "", "=q4=Justicebringer",                        "=ds=#h2#, #w1#",  "", "6.7%" },
			{ 10, 47087, "", "=q4=Legguards of Concealed Hatred",         "=ds=#s11#, #a3#", "", "6.7%" },
			{ 11, 47075, "", "=q4=Ring of Callous Aggression",            "=ds=#s13#",       "", "6.7%" },
			{ 12, 47088, "", "=q4=Satrina's Impeding Scarab",             "=ds=#s14#",       "", "6.7%" },
			{ 13, 47077, "", "=q4=Treads of the Icewalker",               "=ds=#s12#, #a2#", "", "6.7%" },
			{ 14, 47098, "", "=q4=Vambraces of the Broken Bond",          "=ds=#s8#, #a4#",  "", "6.7%" },
			{ 15, 47096, "", "=q4=Vestments of the Shattered Fellowship", "=ds=#s5#, #a2#",  "", "6.7%" },
			{ 16, 47242, "", "=q4=Trophy of the Crusade",                 "=ds=#m42# #e15#", "", "100%" },
			{ 18, 47556, "", "=q2=Crusader Orb",                          "=ds=#e6#",        "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["FactionChampions"],
		module = moduleName,
		instance = "TrialoftheCrusader",
	},
}

Synastria_Data["TheTwinValkyr"] = {
	["Normal"] = {
		{
			{ 1,  47888, "", "=q4=Band of the Twin Val'kyr",        "=ds=#s13#",       "", "16.7%" },
			{ 2,  47884, "", "=q4=Edge of Agony",                   "=ds=#h2#, #w10#", "", "16.7%" },
			{ 3,  47885, "", "=q4=Greaves of the Lingering Vortex", "=ds=#s12#, #a4#", "", "16.7%" },
			{ 4,  47886, "", "=q4=Nemesis Blade",                   "=ds=#h1#, #w4#",  "", "16.7%" },
			{ 5,  47887, "", "=q4=Vest of Shifting Shadows",        "=ds=#s5#, #a2#",  "", "16.7%" },
			{ 6,  47883, "", "=q4=Widebarrel Flintlock",            "=ds=#w5#",        "", "16.7%" },
			{ 7,  47890, "", "=q4=Darkbane Amulet",                 "=ds=#s2#",        "", "14.3%" },
			{ 8,  47891, "", "=q4=Helm of the High Mesa",           "=ds=#s1#, #a2#",  "", "14.3%" },
			{ 9,  47892, "", "=q4=Illumination",                    "=ds=#w9#",        "", "14.3%" },
			{ 10, 47913, "", "=q4=Lightbane Focus",                 "=ds=#s15#",       "", "14.3%" },
			{ 11, 47889, "", "=q4=Looming Shadow Wraps",            "=ds=#s9#, #a1#",  "", "14.3%" },
			{ 12, 49232, "", "=q4=Sandals of the Grieving Soul",    "=ds=#s12#, #a1#", "", "14.3%" },
			{ 13, 47893, "", "=q4=Sen'jin Ritualist Gloves",        "=ds=#s9#, #a3#",  "", "14.3%" },
			{ 1,  47739, "", "=q4=Armor of Shifting Shadows",        "=ds=#s5#, #a2#",  "", "16.7%" },
			{ 2,  47736, "", "=q4=Icefall Blade",                    "=ds=#h1#, #w4#",  "", "16.7%" },
			{ 3,  47700, "", "=q4=Loop of the Twin Val'kyr",         "=ds=#s13#",       "", "16.7%" },
			{ 4,  47737, "", "=q4=Reckoning",                        "=ds=#h2#, #w10#", "", "16.7%" },
			{ 5,  47738, "", "=q4=Sabatons of the Lingering Vortex", "=ds=#s12#, #a4#", "", "16.7%" },
			{ 6,  47740, "", "=q4=The Diplomat",                     "=ds=#w5#",        "", "16.7%" },
			{ 7,  49231, "", "=q4=Boots of the Grieving Soul",       "=ds=#s12#, #a1#", "", "14.3%" },
			{ 8,  47742, "", "=q4=Chalice of Benedictus",            "=ds=#s15#",       "", "14.3%" },
			{ 9,  47747, "", "=q4=Darkbane Pendant",                 "=ds=#s2#",        "", "14.3%" },
			{ 10, 47743, "", "=q4=Enlightenment",                    "=ds=#w9#",        "", "14.3%" },
			{ 11, 47745, "", "=q4=Gloves of Looming Shadow",         "=ds=#s9#, #a1#",  "", "14.3%" },
			{ 12, 47744, "", "=q4=Gloves of the Azure Prophet",      "=ds=#s9#, #a3#",  "", "14.3%" },
			{ 13, 47746, "", "=q4=Helm of the Snowy Grotto",         "=ds=#s1#, #a2#",  "", "14.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  48027, "", "=q4=Band of the Twin Val'kyr",        "=ds=#s13#",       "", "16.7%" },
			{ 2,  48023, "", "=q4=Edge of Agony",                   "=ds=#h2#, #w10#", "", "16.7%" },
			{ 3,  48024, "", "=q4=Greaves of the Lingering Vortex", "=ds=#s12#, #a4#", "", "16.7%" },
			{ 4,  48025, "", "=q4=Nemesis Blade",                   "=ds=#h1#, #w4#",  "", "16.7%" },
			{ 5,  48026, "", "=q4=Vest of Shifting Shadows",        "=ds=#s5#, #a2#",  "", "16.7%" },
			{ 6,  48022, "", "=q4=Widebarrel Flintlock",            "=ds=#w5#",        "", "16.7%" },
			{ 7,  48030, "", "=q4=Darkbane Amulet",                 "=ds=#s2#",        "", "14.3%" },
			{ 8,  48034, "", "=q4=Helm of the High Mesa",           "=ds=#s1#, #a2#",  "", "14.3%" },
			{ 9,  48036, "", "=q4=Illumination",                    "=ds=#w9#",        "", "14.3%" },
			{ 10, 48032, "", "=q4=Lightbane Focus",                 "=ds=#s15#",       "", "14.3%" },
			{ 11, 48028, "", "=q4=Looming Shadow Wraps",            "=ds=#s9#, #a1#",  "", "14.3%" },
			{ 12, 49233, "", "=q4=Sandals of the Grieving Soul",    "=ds=#s12#, #a1#", "", "14.3%" },
			{ 13, 48038, "", "=q4=Sen'jin Ritualist Gloves",        "=ds=#s9#, #a3#",  "", "14.3%" },
			{ 16, 47556, "", "=q2=Crusader Orb",                    "=ds=#e6#",        "", "100%" },
			{ 1,  47954, "", "=q4=Armor of Shifting Shadows",        "=ds=#s5#, #a2#",  "", "16.7%" },
			{ 2,  47953, "", "=q4=Icefall Blade",                    "=ds=#h1#, #w4#",  "", "16.7%" },
			{ 3,  47955, "", "=q4=Loop of the Twin Val'kyr",         "=ds=#s13#",       "", "16.7%" },
			{ 4,  47951, "", "=q4=Reckoning",                        "=ds=#h2#, #w10#", "", "16.7%" },
			{ 5,  47952, "", "=q4=Sabatons of the Lingering Vortex", "=ds=#s12#, #a4#", "", "16.7%" },
			{ 6,  47950, "", "=q4=The Diplomat",                     "=ds=#w5#",        "", "16.7%" },
			{ 7,  49234, "", "=q4=Boots of the Grieving Soul",       "=ds=#s12#, #a1#", "", "14.3%" },
			{ 8,  47958, "", "=q4=Chalice of Benedictus",            "=ds=#s15#",       "", "14.3%" },
			{ 9,  47957, "", "=q4=Darkbane Pendant",                 "=ds=#s2#",        "", "14.3%" },
			{ 10, 47960, "", "=q4=Enlightenment",                    "=ds=#w9#",        "", "14.3%" },
			{ 11, 47956, "", "=q4=Gloves of Looming Shadow",         "=ds=#s9#, #a1#",  "", "14.3%" },
			{ 12, 47961, "", "=q4=Gloves of the Azure Prophet",      "=ds=#s9#, #a3#",  "", "14.3%" },
			{ 13, 47959, "", "=q4=Helm of the Snowy Grotto",         "=ds=#s1#, #a2#",  "", "14.3%" },
			{ 16, 47556, "", "=q2=Crusader Orb",                     "=ds=#e6#",        "", "100%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  47308, "", "=q4=Belt of Pale Thorns",           "=ds=#s10#, #a2#", "", "20%" },
			{ 2,  47310, "", "=q4=Chestplate of the Frozen Lake", "=ds=#s5#, #a4#",  "", "20%" },
			{ 3,  47307, "", "=q4=Cry of the Val'kyr",            "=ds=#s2#",        "", "20%" },
			{ 4,  47306, "", "=q4=Dark Essence Bindings",         "=ds=#s8#, #a1#",  "", "20%" },
			{ 5,  47309, "", "=q4=Mystifying Charm",              "=ds=#s15#",       "", "20%" },
			{ 6,  47298, "", "=q4=Armguards of the Shieldmaiden", "=ds=#s8#, #a4#",  "", "10%" },
			{ 7,  47299, "", "=q4=Belt of the Pitiless Killer",   "=ds=#s10#, #a2#", "", "10%" },
			{ 8,  47303, "", "=q4=Death's Choice",                "=ds=#s14#",       "", "10%" },
			{ 9,  47300, "", "=q4=Gouge of the Frigid Heart",     "=ds=#h1#, #w4#",  "", "10%" },
			{ 10, 47296, "", "=q4=Greaves of Ruthless Judgment",  "=ds=#s12#, #a3#", "", "10%" },
			{ 11, 47305, "", "=q4=Legionnaire's Gorget",          "=ds=#s2#",        "", "10%" },
			{ 12, 47304, "", "=q4=Legplates of Ascension",        "=ds=#s11#, #a4#", "", "10%" },
			{ 13, 47301, "", "=q4=Skyweaver Vestments",           "=ds=#s5#, #a1#",  "", "10%" },
			{ 14, 47297, "", "=q4=The Executioner's Vice",        "=ds=#s2#",        "", "10%" },
			{ 15, 47302, "", "=q4=Twin's Pact",                   "=ds=#w9#",        "", "10%" },
			{ 16, 47242, "", "=q4=Trophy of the Crusade",         "=ds=#m42# #e15#", "", "100%" },
			{ 18, 47556, "", "=q2=Crusader Orb",                  "=ds=#e6#",        "", "100%" },
			{ 1,  47141, "", "=q4=Bindings of Dark Essence",       "=ds=#s8#, #a1#",  "", "20%" },
			{ 2,  47142, "", "=q4=Breastplate of the Frozen Lake", "=ds=#s5#, #a4#",  "", "20%" },
			{ 3,  47138, "", "=q4=Chalice of Searing Light",       "=ds=#s15#",       "", "20%" },
			{ 4,  47140, "", "=q4=Cord of Pale Thorns",            "=ds=#s10#, #a2#", "", "20%" },
			{ 5,  47139, "", "=q4=Wail of the Val'kyr",            "=ds=#s2#",        "", "20%" },
			{ 6,  47107, "", "=q4=Belt of the Merciless Killer",   "=ds=#s10#, #a2#", "", "10%" },
			{ 7,  47108, "", "=q4=Bracers of the Shieldmaiden",    "=ds=#s8#, #a4#",  "", "10%" },
			{ 8,  47115, "", "=q4=Death's Verdict",                "=ds=#s14#",       "", "10%" },
			{ 9,  47121, "", "=q4=Legguards of Ascension",         "=ds=#s11#, #a4#", "", "10%" },
			{ 10, 47114, "", "=q4=Lupine Longstaff",               "=ds=#w9#",        "", "10%" },
			{ 11, 47106, "", "=q4=Sabatons of Ruthless Judgment",  "=ds=#s12#, #a3#", "", "10%" },
			{ 12, 47126, "", "=q4=Skyweaver Robes",                "=ds=#s5#, #a1#",  "", "10%" },
			{ 13, 47116, "", "=q4=The Arbiter's Muse",             "=ds=#s2#",        "", "10%" },
			{ 14, 47105, "", "=q4=The Executioner's Malice",       "=ds=#s2#",        "", "10%" },
			{ 15, 47104, "", "=q4=Twin Spike",                     "=ds=#h1#, #w4#",  "", "10%" },
			{ 16, 47242, "", "=q4=Trophy of the Crusade",          "=ds=#m42# #e15#", "", "100%" },
			{ 18, 47556, "", "=q2=Crusader Orb",                   "=ds=#e6#",        "", "100%" },
		},
	},
	["25ManHeroic"] = {
		{
			{ 1,  47469, "", "=q4=Belt of Pale Thorns",           "=ds=#s10#, #a2#", "", "20%" },
			{ 2,  47471, "", "=q4=Chestplate of the Frozen Lake", "=ds=#s5#, #a4#",  "", "20%" },
			{ 3,  47468, "", "=q4=Cry of the Val'kyr",            "=ds=#s2#",        "", "20%" },
			{ 4,  47467, "", "=q4=Dark Essence Bindings",         "=ds=#s8#, #a1#",  "", "20%" },
			{ 5,  47470, "", "=q4=Mystifying Charm",              "=ds=#s15#",       "", "20%" },
			{ 6,  47459, "", "=q4=Armguards of the Shieldmaiden", "=ds=#s8#, #a4#",  "", "10%" },
			{ 7,  47460, "", "=q4=Belt of the Pitiless Killer",   "=ds=#s10#, #a2#", "", "10%" },
			{ 8,  47464, "", "=q4=Death's Choice",                "=ds=#s14#",       "", "10%" },
			{ 9,  47461, "", "=q4=Gouge of the Frigid Heart",     "=ds=#h1#, #w4#",  "", "10%" },
			{ 10, 47457, "", "=q4=Greaves of Ruthless Judgment",  "=ds=#s12#, #a3#", "", "10%" },
			{ 11, 47466, "", "=q4=Legionnaire's Gorget",          "=ds=#s2#",        "", "10%" },
			{ 12, 47465, "", "=q4=Legplates of Ascension",        "=ds=#s11#, #a4#", "", "10%" },
			{ 13, 47462, "", "=q4=Skyweaver Vestments",           "=ds=#s5#, #a1#",  "", "10%" },
			{ 14, 47458, "", "=q4=The Executioner's Vice",        "=ds=#s2#",        "", "10%" },
			{ 15, 47463, "", "=q4=Twin's Pact",                   "=ds=#w9#",        "", "10%" },
			{ 16, 47242, "", "=q4=Trophy of the Crusade",         "=ds=#m42# #e15#", "", "100%" },
			{ 18, 47556, "", "=q2=Crusader Orb",                  "=ds=#e6#",        "", "100%" },
			{ 1,  47143, "", "=q4=Bindings of Dark Essence",       "=ds=#s8#, #a1#",  "", "20%" },
			{ 2,  47147, "", "=q4=Breastplate of the Frozen Lake", "=ds=#s5#, #a4#",  "", "20%" },
			{ 3,  47146, "", "=q4=Chalice of Searing Light",       "=ds=#s15#",       "", "20%" },
			{ 4,  47145, "", "=q4=Cord of Pale Thorns",            "=ds=#s10#, #a2#", "", "20%" },
			{ 5,  47144, "", "=q4=Wail of the Val'kyr",            "=ds=#s2#",        "", "20%" },
			{ 6,  47112, "", "=q4=Belt of the Merciless Killer",   "=ds=#s10#, #a2#", "", "10%" },
			{ 7,  47111, "", "=q4=Bracers of the Shieldmaiden",    "=ds=#s8#, #a4#",  "", "10%" },
			{ 8,  47131, "", "=q4=Death's Verdict",                "=ds=#s14#",       "", "10%" },
			{ 9,  47132, "", "=q4=Legguards of Ascension",         "=ds=#s11#, #a4#", "", "10%" },
			{ 10, 47130, "", "=q4=Lupine Longstaff",               "=ds=#w9#",        "", "10%" },
			{ 11, 47109, "", "=q4=Sabatons of Ruthless Judgment",  "=ds=#s12#, #a3#", "", "10%" },
			{ 12, 47129, "", "=q4=Skyweaver Robes",                "=ds=#s5#, #a1#",  "", "10%" },
			{ 13, 47133, "", "=q4=The Arbiter's Muse",             "=ds=#s2#",        "", "10%" },
			{ 14, 47110, "", "=q4=The Executioner's Malice",       "=ds=#s2#",        "", "10%" },
			{ 15, 47113, "", "=q4=Twin Spike",                     "=ds=#h1#, #w4#",  "", "10%" },
			{ 16, 47242, "", "=q4=Trophy of the Crusade",          "=ds=#m42# #e15#", "", "100%" },
			{ 18, 47556, "", "=q2=Crusader Orb",                   "=ds=#e6#",        "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["TheTwinValkyr"],
		module = moduleName,
		instance = "TrialoftheCrusader",
	},
}

Synastria_Data["Anubarak"] = {
	["Normal"] = {
		{
			{ 1,  47910, "", "=q4=Aegis of the Coliseum",           "=ds=#w8#",        "", "5.6%" },
			{ 2,  47911, "", "=q4=Anguish",                         "=ds=#w7#",        "", "5.6%" },
			{ 3,  47899, "", "=q4=Ardent Guard",                    "=ds=#h1#, #w10#", "", "5.6%" },
			{ 4,  47909, "", "=q4=Belt of the Eternal",             "=ds=#s10#, #a1#", "", "5.6%" },
			{ 5,  47905, "", "=q4=Blackhorn Bludgeon",              "=ds=#h1#, #w6#",  "", "5.6%" },
			{ 6,  47907, "", "=q4=Darkmaw Crossbow",                "=ds=#w3#",        "", "5.6%" },
			{ 7,  47903, "", "=q4=Forsaken Bonecarver",             "=ds=#h1#, #w10#", "", "5.6%" },
			{ 8,  47898, "", "=q4=Frostblade Hatchet",              "=ds=#h1#, #w1#",  "", "5.6%" },
			{ 9,  47897, "", "=q4=Helm of the Crypt Lord",          "=ds=#s1#, #a3#",  "", "5.6%" },
			{ 10, 47902, "", "=q4=Legplates of Redeemed Blood",     "=ds=#s11#, #a4#", "", "5.6%" },
			{ 11, 47894, "", "=q4=Mace of the Earthborn Chieftain", "=ds=#h3#, #w6#",  "", "5.6%" },
			{ 12, 47901, "", "=q4=Pauldrons of the Shadow Hunter",  "=ds=#s3#, #a3#",  "", "5.6%" },
			{ 13, 47900, "", "=q4=Perdition",                       "=ds=#w9#",        "", "5.6%" },
			{ 14, 47895, "", "=q4=Pride of the Kor'kron",           "=ds=#w8#",        "", "5.6%" },
			{ 15, 47906, "", "=q4=Robes of the Sleepless",          "=ds=#s5#, #a1#",  "", "5.6%" },
			{ 16, 47904, "", "=q4=Shoulderpads of the Snow Bandit", "=ds=#s3#, #a2#",  "", "5.6%" },
			{ 17, 47896, "", "=q4=Stoneskin Chestplate",            "=ds=#s5#, #a4#",  "", "5.6%" },
			{ 18, 47908, "", "=q4=Sunwalker Legguards",             "=ds=#s11#, #a4#", "", "5.6%" },
			{ 1,  47809, "", "=q4=Argent Resolve",                   "=ds=#h3#, #w6#",  "", "5.6%" },
			{ 2,  47741, "", "=q4=Baelgun's Heavy Crossbow",         "=ds=#w3#",        "", "5.6%" },
			{ 3,  47835, "", "=q4=Bulwark of the Royal Guard",       "=ds=#w8#",        "", "5.6%" },
			{ 4,  47811, "", "=q4=Chestguard of the Warden",         "=ds=#s5#, #a4#",  "", "5.6%" },
			{ 5,  47837, "", "=q4=Cinch of the Undying",             "=ds=#s10#, #a1#", "", "5.6%" },
			{ 6,  47815, "", "=q4=Cold Convergence",                 "=ds=#w9#",        "", "5.6%" },
			{ 7,  47810, "", "=q4=Crusader's Glory",                 "=ds=#h1#, #w10#", "", "5.6%" },
			{ 8,  47834, "", "=q4=Fordragon Blades",                 "=ds=#w7#",        "", "5.6%" },
			{ 9,  47813, "", "=q4=Helmet of the Crypt Lord",         "=ds=#s1#, #a3#",  "", "5.6%" },
			{ 10, 47836, "", "=q4=Legplates of the Immortal Spider", "=ds=#s11#, #a4#", "", "5.6%" },
			{ 11, 47830, "", "=q4=Legplates of the Silver Hand",     "=ds=#s11#, #a4#", "", "5.6%" },
			{ 12, 47829, "", "=q4=Pauldrons of the Timeless Hunter", "=ds=#s3#, #a3#",  "", "5.6%" },
			{ 13, 47832, "", "=q4=Spaulders of the Snow Bandit",     "=ds=#s3#, #a2#",  "", "5.6%" },
			{ 14, 47816, "", "=q4=The Grinder",                      "=ds=#h1#, #w6#",  "", "5.6%" },
			{ 15, 47808, "", "=q4=The Lion's Maw",                   "=ds=#h1#, #w1#",  "", "5.6%" },
			{ 16, 47838, "", "=q4=Vestments of the Sleepless",       "=ds=#s5#, #a1#",  "", "5.6%" },
			{ 17, 47812, "", "=q4=Vigilant Ward",                    "=ds=#w8#",        "", "5.6%" },
			{ 18, 47814, "", "=q4=Westfall Saber",                   "=ds=#h1#, #w10#", "", "5.6%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  48055, "", "=q4=Aegis of the Coliseum",                  "=ds=#w8#",        "", "5.6%" },
			{ 2,  48056, "", "=q4=Anguish",                                "=ds=#w7#",        "", "5.6%" },
			{ 3,  48044, "", "=q4=Ardent Guard",                           "=ds=#h1#, #w10#", "", "5.6%" },
			{ 4,  48054, "", "=q4=Belt of the Eternal",                    "=ds=#s10#, #a1#", "", "5.6%" },
			{ 5,  48050, "", "=q4=Blackhorn Bludgeon",                     "=ds=#h1#, #w6#",  "", "5.6%" },
			{ 6,  48052, "", "=q4=Darkmaw Crossbow",                       "=ds=#w3#",        "", "5.6%" },
			{ 7,  48048, "", "=q4=Forsaken Bonecarver",                    "=ds=#h1#, #w10#", "", "5.6%" },
			{ 8,  48043, "", "=q4=Frostblade Hatchet",                     "=ds=#h1#, #w1#",  "", "5.6%" },
			{ 9,  48042, "", "=q4=Helm of the Crypt Lord",                 "=ds=#s1#, #a3#",  "", "5.6%" },
			{ 10, 48047, "", "=q4=Legplates of the Redeemed Blood Knight", "=ds=#s11#, #a4#", "", "5.6%" },
			{ 11, 48039, "", "=q4=Mace of the Earthborn Chieftain",        "=ds=#h3#, #w6#",  "", "5.6%" },
			{ 12, 48046, "", "=q4=Pauldrons of the Shadow Hunter",         "=ds=#s3#, #a3#",  "", "5.6%" },
			{ 13, 48045, "", "=q4=Perdition",                              "=ds=#w9#",        "", "5.6%" },
			{ 14, 48040, "", "=q4=Pride of the Kor'kron",                  "=ds=#w8#",        "", "5.6%" },
			{ 15, 48051, "", "=q4=Robes of the Sleepless",                 "=ds=#s5#, #a1#",  "", "5.6%" },
			{ 16, 48049, "", "=q4=Shoulderpads of the Snow Bandit",        "=ds=#s3#, #a2#",  "", "5.6%" },
			{ 17, 48041, "", "=q4=Stoneskin Chestplate",                   "=ds=#s5#, #a4#",  "", "5.6%" },
			{ 18, 48053, "", "=q4=Sunwalker Legguards",                    "=ds=#s11#, #a4#", "", "5.6%" },
			{ 20, 47556, "", "=q2=Crusader Orb",                           "=ds=#e6#",        "", "100%" },
			{ 1,  47962, "", "=q4=Argent Resolve",                   "=ds=#h3#, #w6#",  "", "5.6%" },
			{ 2,  47975, "", "=q4=Baelgun's Heavy Crossbow",         "=ds=#w3#",        "", "5.6%" },
			{ 3,  47978, "", "=q4=Bulwark of the Royal Guard",       "=ds=#w8#",        "", "5.6%" },
			{ 4,  47964, "", "=q4=Chestguard of the Warden",         "=ds=#s5#, #a4#",  "", "5.6%" },
			{ 5,  47977, "", "=q4=Cinch of the Undying",             "=ds=#s10#, #a1#", "", "5.6%" },
			{ 6,  47968, "", "=q4=Cold Convergence",                 "=ds=#w9#",        "", "5.6%" },
			{ 7,  47967, "", "=q4=Crusader's Glory",                 "=ds=#h1#, #w10#", "", "5.6%" },
			{ 8,  47979, "", "=q4=Fordragon Blades",                 "=ds=#w7#",        "", "5.6%" },
			{ 9,  47965, "", "=q4=Helmet of the Crypt Lord",         "=ds=#s1#, #a3#",  "", "5.6%" },
			{ 10, 47976, "", "=q4=Legplates of the Immortal Spider", "=ds=#s11#, #a4#", "", "5.6%" },
			{ 11, 47970, "", "=q4=Legplates of the Silver Hand",     "=ds=#s11#, #a4#", "", "5.6%" },
			{ 12, 47969, "", "=q4=Pauldrons of the Timeless Hunter", "=ds=#s3#, #a3#",  "", "5.6%" },
			{ 13, 47972, "", "=q4=Spaulders of the Snow Bandit",     "=ds=#s3#, #a2#",  "", "5.6%" },
			{ 14, 47973, "", "=q4=The Grinder",                      "=ds=#h1#, #w6#",  "", "5.6%" },
			{ 15, 47966, "", "=q4=The Lion's Maw",                   "=ds=#h1#, #w1#",  "", "5.6%" },
			{ 16, 47974, "", "=q4=Vestments of the Sleepless",       "=ds=#s5#, #a1#",  "", "5.6%" },
			{ 17, 47963, "", "=q4=Vigilant Ward",                    "=ds=#w8#",        "", "5.6%" },
			{ 18, 47971, "", "=q4=Westfall Saber",                   "=ds=#h1#, #w10#", "", "5.6%" },
			{ 20, 47556, "", "=q2=Crusader Orb",                     "=ds=#e6#",        "", "100%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  47313, "", "=q4=Armbands of Dark Determination",  "=ds=#s8#, #a2#",  "", "5%" },
			{ 2,  47315, "", "=q4=Band of the Traitor King",        "=ds=#s13#",       "", "5%" },
			{ 3,  47324, "", "=q4=Bindings of the Ashen Saint",     "=ds=#s8#, #a1#",  "", "5%" },
			{ 4,  47321, "", "=q4=Boots of the Icy Floe",           "=ds=#s12#, #a1#", "", "5%" },
			{ 5,  47317, "", "=q4=Breeches of the Deepening Void",  "=ds=#s11#, #a1#", "", "5%" },
			{ 6,  47325, "", "=q4=Cuirass of Flowing Elements",     "=ds=#s5#, #a3#",  "", "5%" },
			{ 7,  47330, "", "=q4=Gauntlets of Bitter Reprisal",    "=ds=#s9#, #a4#",  "", "5%" },
			{ 8,  47323, "", "=q4=Girdle of the Forgotten Martyr",  "=ds=#s10#, #a4#", "", "5%" },
			{ 9,  47312, "", "=q4=Greaves of the Saronite Citadel", "=ds=#s12#, #a4#", "", "5%" },
			{ 10, 47326, "", "=q4=Handwraps of the Lifeless Touch", "=ds=#s9#, #a1#",  "", "5%" },
			{ 11, 47329, "", "=q4=Hellion Glaive",                  "=ds=#w7#",        "", "5%" },
			{ 12, 47314, "", "=q4=Hellscream Slicer",               "=ds=#h1#, #w1#",  "", "5%" },
			{ 13, 47318, "", "=q4=Leggings of the Awakening",       "=ds=#s11#, #a2#", "", "5%" },
			{ 14, 47319, "", "=q4=Leggings of the Lurking Threat",  "=ds=#s11#, #a3#", "", "5%" },
			{ 15, 47327, "", "=q4=Lurid Manifestation",             "=ds=#s13#",       "", "5%" },
			{ 16, 47328, "", "=q4=Maiden's Adoration",              "=ds=#s4#",        "", "5%" },
			{ 17, 47320, "", "=q4=Might of the Nerub",              "=ds=#s4#",        "", "5%" },
			{ 18, 47316, "", "=q4=Reign of the Dead",               "=ds=#s14#",       "", "5%" },
			{ 19, 47322, "", "=q4=Suffering's End",                 "=ds=#h3#, #w6#",  "", "5%" },
			{ 20, 47311, "", "=q4=Waistguard of Deathly Dominion",  "=ds=#s10#, #a3#", "", "5%" },
			{ 22, 47242, "", "=q4=Trophy of the Crusade",           "=ds=#m42# #e15#", "", "100%" },
			{ 24, 47556, "", "=q2=Crusader Orb",                    "=ds=#e6#",        "", "100%" },
			{ 1,  47233, "", "=q4=Archon Glaive",                   "=ds=#w7#",        "", "5%" },
			{ 2,  47203, "", "=q4=Armbands of the Ashen Saint",     "=ds=#s8#, #a1#",  "", "5%" },
			{ 3,  47054, "", "=q4=Band of Deplorable Violence",     "=ds=#s13#",       "", "5%" },
			{ 4,  47152, "", "=q4=Belt of Deathly Dominion",        "=ds=#s10#, #a3#", "", "5%" },
			{ 5,  47195, "", "=q4=Belt of the Forgotten Martyr",    "=ds=#s10#, #a4#", "", "5%" },
			{ 6,  47151, "", "=q4=Bracers of Dark Determination",   "=ds=#s8#, #a2#",  "", "5%" },
			{ 7,  47204, "", "=q4=Chestguard of Flowing Elements",  "=ds=#s5#, #a3#",  "", "5%" },
			{ 8,  47194, "", "=q4=Footpads of the Icy Floe",        "=ds=#s12#, #a1#", "", "5%" },
			{ 9,  47234, "", "=q4=Gloves of Bitter Reprisal",       "=ds=#s9#, #a4#",  "", "5%" },
			{ 10, 47235, "", "=q4=Gloves of the Lifeless Touch",    "=ds=#s9#, #a1#",  "", "5%" },
			{ 11, 47150, "", "=q4=Greaves of the 7th Legion",       "=ds=#s12#, #a4#", "", "5%" },
			{ 12, 47187, "", "=q4=Leggings of the Deepening Void",  "=ds=#s11#, #a1#", "", "5%" },
			{ 13, 47184, "", "=q4=Legguards of the Lurking Threat", "=ds=#s11#, #a3#", "", "5%" },
			{ 14, 47186, "", "=q4=Legwraps of the Awakening",       "=ds=#s11#, #a2#", "", "5%" },
			{ 15, 47225, "", "=q4=Maiden's Favor",                  "=ds=#s4#",        "", "5%" },
			{ 16, 47193, "", "=q4=Misery's End",                    "=ds=#h3#, #w6#",  "", "5%" },
			{ 17, 47182, "", "=q4=Reign of the Unliving",           "=ds=#s14#",       "", "5%" },
			{ 18, 47149, "", "=q4=Signet of the Traitor King",      "=ds=#s13#",       "", "5%" },
			{ 19, 47148, "", "=q4=Stormpike Cleaver",               "=ds=#h1#, #w1#",  "", "5%" },
			{ 20, 47183, "", "=q4=Strength of the Nerub",           "=ds=#s4#",        "", "5%" },
			{ 22, 47242, "", "=q4=Trophy of the Crusade",           "=ds=#m42# #e15#", "", "100%" },
			{ 24, 47556, "", "=q2=Crusader Orb",                    "=ds=#e6#",        "", "100%" },
		},
	},
	["25ManHeroic"] = {
		{
			{ 1,  47474, "", "=q4=Armbands of Dark Determination",  "=ds=#s8#, #a2#",  "", "5%" },
			{ 2,  47476, "", "=q4=Band of the Traitor King",        "=ds=#s13#",       "", "5%" },
			{ 3,  47485, "", "=q4=Bindings of the Ashen Saint",     "=ds=#s8#, #a1#",  "", "5%" },
			{ 4,  47482, "", "=q4=Boots of the Icy Floe",           "=ds=#s12#, #a1#", "", "5%" },
			{ 5,  47478, "", "=q4=Breeches of the Deepening Void",  "=ds=#s11#, #a1#", "", "5%" },
			{ 6,  47486, "", "=q4=Cuirass of Flowing Elements",     "=ds=#s5#, #a3#",  "", "5%" },
			{ 7,  47492, "", "=q4=Gauntlets of Bitter Reprisal",    "=ds=#s9#, #a4#",  "", "5%" },
			{ 8,  47484, "", "=q4=Girdle of the Forgotten Martyr",  "=ds=#s10#, #a4#", "", "5%" },
			{ 9,  47473, "", "=q4=Greaves of the Saronite Citadel", "=ds=#s12#, #a4#", "", "5%" },
			{ 10, 47487, "", "=q4=Handwraps of the Lifeless Touch", "=ds=#s9#, #a1#",  "", "5%" },
			{ 11, 47491, "", "=q4=Hellion Glaive",                  "=ds=#w7#",        "", "5%" },
			{ 12, 47475, "", "=q4=Hellscream Slicer",               "=ds=#h1#, #w1#",  "", "5%" },
			{ 13, 47479, "", "=q4=Leggings of the Awakening",       "=ds=#s11#, #a2#", "", "5%" },
			{ 14, 47480, "", "=q4=Leggings of the Lurking Threat",  "=ds=#s11#, #a3#", "", "5%" },
			{ 15, 47489, "", "=q4=Lurid Manifestation",             "=ds=#s13#",       "", "5%" },
			{ 16, 47490, "", "=q4=Maiden's Adoration",              "=ds=#s4#",        "", "5%" },
			{ 17, 47481, "", "=q4=Might of the Nerub",              "=ds=#s4#",        "", "5%" },
			{ 18, 47477, "", "=q4=Reign of the Dead",               "=ds=#s14#",       "", "5%" },
			{ 19, 47483, "", "=q4=Suffering's End",                 "=ds=#h3#, #w6#",  "", "5%" },
			{ 20, 47472, "", "=q4=Waistguard of Deathly Dominion",  "=ds=#s10#, #a3#", "", "5%" },
			{ 22, 47242, "", "=q4=Trophy of the Crusade",           "=ds=#m42# #e15#", "", "100%" },
			{ 24, 47556, "", "=q2=Crusader Orb",                    "=ds=#e6#",        "", "100%" },
			{ 1,  47239, "", "=q4=Archon Glaive",                   "=ds=#w7#",        "", "5%" },
			{ 2,  47208, "", "=q4=Armbands of the Ashen Saint",     "=ds=#s8#, #a1#",  "", "5%" },
			{ 3,  47237, "", "=q4=Band of Deplorable Violence",     "=ds=#s13#",       "", "5%" },
			{ 4,  47153, "", "=q4=Belt of Deathly Dominion",        "=ds=#s10#, #a3#", "", "5%" },
			{ 5,  47207, "", "=q4=Belt of the Forgotten Martyr",    "=ds=#s10#, #a4#", "", "5%" },
			{ 6,  47155, "", "=q4=Bracers of Dark Determination",   "=ds=#s8#, #a2#",  "", "5%" },
			{ 7,  47209, "", "=q4=Chestguard of Flowing Elements",  "=ds=#s5#, #a3#",  "", "5%" },
			{ 8,  47205, "", "=q4=Footpads of the Icy Floe",        "=ds=#s12#, #a1#", "", "5%" },
			{ 9,  47240, "", "=q4=Gloves of Bitter Reprisal",       "=ds=#s9#, #a4#",  "", "5%" },
			{ 10, 47236, "", "=q4=Gloves of the Lifeless Touch",    "=ds=#s9#, #a1#",  "", "5%" },
			{ 11, 47154, "", "=q4=Greaves of the 7th Legion",       "=ds=#s12#, #a4#", "", "5%" },
			{ 12, 47189, "", "=q4=Leggings of the Deepening Void",  "=ds=#s11#, #a1#", "", "5%" },
			{ 13, 47191, "", "=q4=Legguards of the Lurking Threat", "=ds=#s11#, #a3#", "", "5%" },
			{ 14, 47190, "", "=q4=Legwraps of the Awakening",       "=ds=#s11#, #a2#", "", "5%" },
			{ 15, 47238, "", "=q4=Maiden's Favor",                  "=ds=#s4#",        "", "5%" },
			{ 16, 47206, "", "=q4=Misery's End",                    "=ds=#h3#, #w6#",  "", "5%" },
			{ 17, 47188, "", "=q4=Reign of the Unliving",           "=ds=#s14#",       "", "5%" },
			{ 18, 47157, "", "=q4=Signet of the Traitor King",      "=ds=#s13#",       "", "5%" },
			{ 19, 47156, "", "=q4=Stormpike Cleaver",               "=ds=#h1#, #w1#",  "", "5%" },
			{ 20, 47192, "", "=q4=Strength of the Nerub",           "=ds=#s4#",        "", "5%" },
			{ 22, 47242, "", "=q4=Trophy of the Crusade",           "=ds=#m42# #e15#", "", "100%" },
			{ 24, 47556, "", "=q2=Crusader Orb",                    "=ds=#e6#",        "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Anubarak"],
		module = moduleName,
		instance = "TrialoftheCrusader",
	},
}

Synastria_Data["Tribute"] = {
	["Heroic"] = {
		{
			{ 2,  47242, "",           "=q4=Trophy of the Crusade",             "=ds=#m42# #e15# =q1=(x2)", "", "100%" },
			{ 4,  47556, "",           "=q2=Crusader Orb",                      "=ds=#e6#",                 "", "100%" },
			{ 7,  48705, "",           "=q4=Attrition",                         "=ds=#w9#",                 "", "14.3%" },
			{ 8,  48699, "",           "=q4=Blood and Glory",                   "=ds=#h1#, #w6#",           "", "14.3%" },
			{ 9,  48697, "",           "=q4=Frenzystrike Longbow",              "=ds=#w2#",                 "", "14.3%" },
			{ 10, 48693, "",           "=q4=Heartsmasher",                      "=ds=#h3#, #w6#",           "", "14.3%" },
			{ 11, 48695, "",           "=q4=Mor'kosh, the Bloodreaver",         "=ds=#h2#, #w1#",           "", "14.3%" },
			{ 12, 48701, "",           "=q4=Spellharvest",                      "=ds=#h3#, #w10#",          "", "14.3%" },
			{ 13, 48703, "",           "=q4=The Facebreaker",                   "=ds=#h3#, #w13#",          "", "14.3%" },
			{ 17, 47242, "",           "=q4=Trophy of the Crusade",             "=ds=#m42# #e15# =q1=(x2)", "", "100%" },
			{ 20, 48668, "",           "=q4=Cloak of Serrated Blades",          "=ds=#s4#",                 "", "20%" },
			{ 21, 48669, "",           "=q4=Cloak of the Triumphant Combatant", "=ds=#s4#",                 "", "20%" },
			{ 22, 48670, "",           "=q4=Cloak of the Unflinching Guardian", "=ds=#s4#",                 "", "20%" },
			{ 23, 48666, "",           "=q4=Drape of the Sunreavers",           "=ds=#s4#",                 "", "20%" },
			{ 24, 48667, "",           "=q4=Shawl of the Devout Crusader",      "=ds=#s4#",                 "", "20%" },
			{ 26, 49046, "",           "=q4=Swift Horde Wolf",                  "=ds=#e12# =ec1=#m6#",      "", "100%" },
			{ 2,  47242, "",           "=q4=Trophy of the Crusade",             "=ds=#m42# #e15# =q1=(x2)", "", "100%" },
			{ 4,  47556, "",           "=q2=Crusader Orb",                      "=ds=#e6#",                 "", "100%" },
			{ 7,  48709, "",           "=q4=Heartcrusher",                      "=ds=#h3#, #w6#",           "", "14.3%" },
			{ 8,  48714, "",           "=q4=Honor of the Fallen",               "=ds=#h1#, #w6#",           "", "14.3%" },
			{ 9,  48713, "",           "=q4=Lothar's Edge",                     "=ds=#h2#, #w1#",           "", "14.3%" },
			{ 10, 48710, "",           "=q4=Paragon's Breadth",                 "=ds=#w9#",                 "", "14.3%" },
			{ 11, 48711, "",           "=q4=Rhok'shalla, the Shadow's Bane",    "=ds=#w2#",                 "", "14.3%" },
			{ 12, 48708, "",           "=q4=Spellstorm Blade",                  "=ds=#h3#, #w10#",          "", "14.3%" },
			{ 13, 48712, "",           "=q4=The Spinebreaker",                  "=ds=#h3#, #w13#",          "", "14.3%" },
			{ 17, 47242, "",           "=q4=Trophy of the Crusade",             "=ds=#m42# #e15# =q1=(x2)", "", "100%" },
			{ 20, 48673, "",           "=q4=Cloak of the Silver Covenant",      "=ds=#s4#",                 "", "20%" },
			{ 21, 48675, "",           "=q4=Cloak of the Unmoving Guardian",    "=ds=#s4#",                 "", "20%" },
			{ 22, 48674, "",           "=q4=Cloak of the Victorious Combatant", "=ds=#s4#",                 "", "20%" },
			{ 23, 48671, "",           "=q4=Drape of Bitter Incantation",       "=ds=#s4#",                 "", "20%" },
			{ 24, 48672, "",           "=q4=Shawl of the Fervent Crusader",     "=ds=#s4#",                 "", "20%" },
			{ 26, 49044, "",           "=q4=Swift Alliance Steed",              "=ds=#e12# =ec1=#m7#",      "", "100%" },
		},
	},
	["25ManHeroic"] = {
		{
			{ 2,  47557, "",           "=q4=Regalia of the Grand Conqueror",  "=ds=#m42# #e15#",     "", "33.3%" },
			{ 3,  47558, "",           "=q4=Regalia of the Grand Protector",  "=ds=#m42# #e15#",     "", "33.3%" },
			{ 4,  47559, "",           "=q4=Regalia of the Grand Vanquisher", "=ds=#m42# #e15#",     "", "33.3%" },
			{ 6,  47556, "",           "=q2=Crusader Orb",                    "=ds=#e6#",            "", "100%" },
			{ 9,  47528, "",           "=q4=Cudgel of the Damned",            "=ds=#h1#, #w6#",      "", "14.3%" },
			{ 10, 47523, "",           "=q4=Fezzik's Autocannon",             "=ds=#w5#",            "", "14.3%" },
			{ 11, 47516, "",           "=q4=Fleshrender",                     "=ds=#h2#, #w10#",     "", "14.3%" },
			{ 12, 47520, "",           "=q4=Grievance",                       "=ds=#h2#, #w6#",      "", "14.3%" },
			{ 13, 47518, "",           "=q4=Mortalis",                        "=ds=#h3#, #w10#",     "", "14.3%" },
			{ 14, 47513, "",           "=q4=Ogrim's Deflector",               "=ds=#h1#, #w10#",     "", "14.3%" },
			{ 15, 47525, "",           "=q4=Sufferance",                      "=ds=#w9#",            "", "14.3%" },
			{ 17, 47557, "",           "=q4=Regalia of the Grand Conqueror",  "=ds=#m42# #e15#",     "", "33.3%" },
			{ 18, 47558, "",           "=q4=Regalia of the Grand Protector",  "=ds=#m42# #e15#",     "", "33.3%" },
			{ 19, 47559, "",           "=q4=Regalia of the Grand Vanquisher", "=ds=#m42# #e15#",     "", "33.3%" },
			{ 22, 47551, "",           "=q4=Aethas' Intensity",               "=ds=#s4#",            "", "20%" },
			{ 23, 47550, "",           "=q4=Cairne's Endurance",              "=ds=#s4#",            "", "20%" },
			{ 24, 47548, "",           "=q4=Garrosh's Rage",                  "=ds=#s4#",            "", "20%" },
			{ 25, 47554, "",           "=q4=Lady Liadrin's Conviction",       "=ds=#s4#",            "", "20%" },
			{ 26, 47546, "",           "=q4=Sylvanas' Cunning",               "=ds=#s4#",            "", "20%" },
			{ 2,  47557, "",           "=q4=Regalia of the Grand Conqueror",  "=ds=#m42# #e15#",     "", "33.3%" },
			{ 3,  47558, "",           "=q4=Regalia of the Grand Protector",  "=ds=#m42# #e15#",     "", "33.3%" },
			{ 4,  47559, "",           "=q4=Regalia of the Grand Vanquisher", "=ds=#m42# #e15#",     "", "33.3%" },
			{ 6,  47556, "",           "=q2=Crusader Orb",                    "=ds=#e6#",            "", "100%" },
			{ 9,  47517, "",           "=q4=Blade of the Unbroken Covenant",  "=ds=#h3#, #w10#",     "", "14.3%" },
			{ 10, 47521, "",           "=q4=BRK-1000",                        "=ds=#w5#",            "", "14.3%" },
			{ 11, 47519, "",           "=q4=Catastrophe",                     "=ds=#h2#, #w6#",      "", "14.3%" },
			{ 12, 47524, "",           "=q4=Clemency",                        "=ds=#w9#",            "", "14.3%" },
			{ 13, 47515, "",           "=q4=Decimation",                      "=ds=#h2#, #w10#",     "", "14.3%" },
			{ 14, 47526, "",           "=q4=Remorseless",                     "=ds=#h1#, #w6#",      "", "14.3%" },
			{ 15, 47506, "",           "=q4=Silverwing Defender",             "=ds=#h1#, #w10#",     "", "14.3%" },
			{ 17, 47557, "",           "=q4=Regalia of the Grand Conqueror",  "=ds=#m42# #e15#",     "", "33.3%" },
			{ 18, 47558, "",           "=q4=Regalia of the Grand Protector",  "=ds=#m42# #e15#",     "", "33.3%" },
			{ 19, 47559, "",           "=q4=Regalia of the Grand Vanquisher", "=ds=#m42# #e15#",     "", "33.3%" },
			{ 22, 47553, "",           "=q4=Bolvar's Devotion",               "=ds=#s4#",            "", "20%" },
			{ 23, 47552, "",           "=q4=Jaina's Radiance",                "=ds=#s4#",            "", "20%" },
			{ 24, 47549, "",           "=q4=Magni's Resolution",              "=ds=#s4#",            "", "20%" },
			{ 25, 47547, "",           "=q4=Varian's Furor",                  "=ds=#s4#",            "", "20%" },
			{ 26, 47545, "",           "=q4=Vereesa's Dexterity",             "=ds=#s4#",            "", "20%" },
		},
	},
	info = {
		name = BabbleBoss["Tribute"],
		module = moduleName,
		instance = "TrialoftheCrusader",
	},
}

-------------------------
--- Onyxia (Level 80) ---
-------------------------

Synastria_Data["OnyxiasLairOnyxia"] = {
	["Normal"] = {
		{
			{ 1,  49308, "", "=q4=Antique Cornerstone Grimoire",   "=ds=#s15#",                                    "", "2.9%" },
			{ 2,  49297, "", "=q4=Empowered Deathbringer",         "=ds=#h1#, #w1#",                               "", "2.9%" },
			{ 3,  49306, "", "=q4=Eskhandar's Choker",             "=ds=#s2#",                                     "", "2.9%" },
			{ 4,  49307, "", "=q4=Fluttering Sapphiron Drape",     "=ds=#s4#",                                     "", "2.9%" },
			{ 5,  49303, "", "=q4=Gleaming Quel'Serrar",           "=ds=#h1#, #w10# =q1=#m1# =ds=#c9# #c4# #c10#", "", "2.9%" },
			{ 6,  49298, "", "=q4=Glinting Azuresong Mageblade",   "=ds=#h3#, #w10#",                              "", "2.9%" },
			{ 7,  49299, "", "=q4=Keen Obsidian Edged Blade",      "=ds=#h2#, #w10#",                              "", "2.9%" },
			{ 8,  49463, "", "=q4=Purified Shard of the Flame",    "=ds=#s14#",                                    "", "2.9%" },
			{ 9,  49310, "", "=q4=Purified Shard of the Scale",    "=ds=#s14#",                                    "", "2.9%" },
			{ 10, 49302, "", "=q4=Reclaimed Shadowstrike",         "=ds=#w7#",                                     "", "2.9%" },
			{ 11, 49309, "", "=q4=Runed Ring of Binding",          "=ds=#s13#",                                    "", "2.9%" },
			{ 12, 49437, "", "=q4=Rusted Gutgore Ripper",          "=ds=#h1#, #w4#",                               "", "2.9%" },
			{ 13, 49304, "", "=q4=Sharpened Fang of the Mystics",  "=ds=#h3#, #w4#",                               "", "2.9%" },
			{ 14, 49296, "", "=q4=Singed Vis'kag the Bloodletter", "=ds=#h1#, #w10#",                              "", "2.9%" },
			{ 15, 49305, "", "=q4=Snub-Nose Blastershot Launcher", "=ds=#w5#",                                     "", "2.9%" },

			{ 16, 49322, "", "=q4=Bloodfang Mask",                 "=ds=#s1#, #a2# =q1=#m1# =ds=#c6#",             "", "2.9%" },
			{ 17, 49316, "", "=q4=Circlet of Transcendence",       "=ds=#s1#, #a1# =q1=#m1# =ds=#c5#",             "", "2.9%" },
			{ 18, 49331, "", "=q4=Coif of Ten Storms",             "=ds=#s1#, #a3# =q1=#m1# =ds=#c7#",             "", "2.9%" },
			{ 19, 49317, "", "=q4=Coronet of Transcendence",       "=ds=#s1#, #a1# =q1=#m1# =ds=#c5#",             "", "2.9%" },
			{ 20, 49330, "", "=q4=Cowl of Ten Storms",             "=ds=#s1#, #a3# =q1=#m1# =ds=#c7#",             "", "2.9%" },
			{ 21, 49319, "", "=q4=Dragonstalker's Helmet",         "=ds=#s1#, #a3# =q1=#m1# =ds=#c2#",             "", "2.9%" },
			{ 22, 49320, "", "=q4=Faceguard of Wrath",             "=ds=#s1#, #a4# =q1=#m1# =ds=#c9#",             "", "2.9%" },
			{ 23, 49333, "", "=q4=Frostforged Helmet",             "=ds=#s1#, #a4# =q1=#m1# =ds=#c10#",            "", "2.9%" },
			{ 24, 49332, "", "=q4=Frostforged Ringhelm",           "=ds=#s1#, #a4# =q1=#m1# =ds=#c10#",            "", "2.9%" },
			{ 25, 49329, "", "=q4=Gaze of Ten Storms",             "=ds=#s1#, #a3# =q1=#m1# =ds=#c7#",             "", "2.9%" },
			{ 26, 49321, "", "=q4=Greathelm of Wrath",             "=ds=#s1#, #a4# =q1=#m1# =ds=#c9#",             "", "2.9%" },
			{ 27, 49323, "", "=q4=Judgement Cover",                "=ds=#s1#, #a4# =q1=#m1# =ds=#c4#",             "", "2.9%" },
			{ 28, 49325, "", "=q4=Judgement Helm",                 "=ds=#s1#, #a4# =q1=#m1# =ds=#c4#",             "", "2.9%" },
			{ 29, 49324, "", "=q4=Judgement Helmet",               "=ds=#s1#, #a4# =q1=#m1# =ds=#c4#",             "", "2.9%" },
			{ 30, 49315, "", "=q4=Nemesis Skullcover",             "=ds=#s1#, #a1# =q1=#m1# =ds=#c8#",             "", "2.9%" },
		},
		{
			{ 1,  49318, "", "=q4=Netherwind Hood",               "=ds=#s1#, #a1# =q1=#m1# =ds=#c3#", "", "2.9%" },
			{ 2,  49327, "", "=q4=Stormrage Antlers",             "=ds=#s1#, #a2# =q1=#m1# =ds=#c1#", "", "2.9%" },
			{ 3,  49328, "", "=q4=Stormrage Helm",                "=ds=#s1#, #a2# =q1=#m1# =ds=#c1#", "", "2.9%" },
			{ 4,  49326, "", "=q4=Stormrage Hood",                "=ds=#s1#, #a2# =q1=#m1# =ds=#c1#", "", "2.9%" },
			{ 6,  49643, "", "=q4=Head of Onyxia",                "=ds=#m2#",                         "", "100%" },
			{ 7,  18705, "", "=q4=Mature Black Dragon Sinew",     "=ds=#m3# =q1=(#c2#)",              "", "100%" },
			{ 8,  21108, "", "=q1=Draconic for Dummies",          "=ds=#m3#",                         "", "100%" },
			{ 10, 49294, "", "=q4=Ashen Sack of Gems",            "=ds=#e7# #e1#",                    "", "100%" },
			{ 12, 49295, "", "=q4=Enlarged Onyxia Hide Backpack", "=ds=#e1#",                         "", "100%" },
			{ 14, 49636, "", "=q4=Reins of the Onyxian Drake",    "=ds=#e27#",                        "", "1%" },
		},
		{
			{ 1,  49308, "", "=q4=Antique Cornerstone Grimoire",   "=ds=#s15#",                                    "", "2.9%" },
			{ 2,  49297, "", "=q4=Empowered Deathbringer",         "=ds=#h1#, #w1#",                               "", "2.9%" },
			{ 3,  49306, "", "=q4=Eskhandar's Choker",             "=ds=#s2#",                                     "", "2.9%" },
			{ 4,  49307, "", "=q4=Fluttering Sapphiron Drape",     "=ds=#s4#",                                     "", "2.9%" },
			{ 5,  49303, "", "=q4=Gleaming Quel'Serrar",           "=ds=#h1#, #w10# =q1=#m1# =ds=#c9# #c4# #c10#", "", "2.9%" },
			{ 6,  49298, "", "=q4=Glinting Azuresong Mageblade",   "=ds=#h3#, #w10#",                              "", "2.9%" },
			{ 7,  49299, "", "=q4=Keen Obsidian Edged Blade",      "=ds=#h2#, #w10#",                              "", "2.9%" },
			{ 8,  49463, "", "=q4=Purified Shard of the Flame",    "=ds=#s14#",                                    "", "2.9%" },
			{ 9,  49310, "", "=q4=Purified Shard of the Scale",    "=ds=#s14#",                                    "", "2.9%" },
			{ 10, 49302, "", "=q4=Reclaimed Shadowstrike",         "=ds=#w7#",                                     "", "2.9%" },
			{ 11, 49309, "", "=q4=Runed Ring of Binding",          "=ds=#s13#",                                    "", "2.9%" },
			{ 12, 49437, "", "=q4=Rusted Gutgore Ripper",          "=ds=#h1#, #w4#",                               "", "2.9%" },
			{ 13, 49304, "", "=q4=Sharpened Fang of the Mystics",  "=ds=#h3#, #w4#",                               "", "2.9%" },
			{ 14, 49296, "", "=q4=Singed Vis'kag the Bloodletter", "=ds=#h1#, #w10#",                              "", "2.9%" },
			{ 15, 49305, "", "=q4=Snub-Nose Blastershot Launcher", "=ds=#w5#",                                     "", "2.9%" },

			{ 16, 49322, "", "=q4=Bloodfang Mask",                 "=ds=#s1#, #a2# =q1=#m1# =ds=#c6#",             "", "2.9%" },
			{ 17, 49316, "", "=q4=Circlet of Transcendence",       "=ds=#s1#, #a1# =q1=#m1# =ds=#c5#",             "", "2.9%" },
			{ 18, 49331, "", "=q4=Coif of Ten Storms",             "=ds=#s1#, #a3# =q1=#m1# =ds=#c7#",             "", "2.9%" },
			{ 19, 49317, "", "=q4=Coronet of Transcendence",       "=ds=#s1#, #a1# =q1=#m1# =ds=#c5#",             "", "2.9%" },
			{ 20, 49330, "", "=q4=Cowl of Ten Storms",             "=ds=#s1#, #a3# =q1=#m1# =ds=#c7#",             "", "2.9%" },
			{ 21, 49319, "", "=q4=Dragonstalker's Helmet",         "=ds=#s1#, #a3# =q1=#m1# =ds=#c2#",             "", "2.9%" },
			{ 22, 49320, "", "=q4=Faceguard of Wrath",             "=ds=#s1#, #a4# =q1=#m1# =ds=#c9#",             "", "2.9%" },
			{ 23, 49333, "", "=q4=Frostforged Helmet",             "=ds=#s1#, #a4# =q1=#m1# =ds=#c10#",            "", "2.9%" },
			{ 24, 49332, "", "=q4=Frostforged Ringhelm",           "=ds=#s1#, #a4# =q1=#m1# =ds=#c10#",            "", "2.9%" },
			{ 25, 49329, "", "=q4=Gaze of Ten Storms",             "=ds=#s1#, #a3# =q1=#m1# =ds=#c7#",             "", "2.9%" },
			{ 26, 49321, "", "=q4=Greathelm of Wrath",             "=ds=#s1#, #a4# =q1=#m1# =ds=#c9#",             "", "2.9%" },
			{ 27, 49323, "", "=q4=Judgement Cover",                "=ds=#s1#, #a4# =q1=#m1# =ds=#c4#",             "", "2.9%" },
			{ 28, 49325, "", "=q4=Judgement Helm",                 "=ds=#s1#, #a4# =q1=#m1# =ds=#c4#",             "", "2.9%" },
			{ 29, 49324, "", "=q4=Judgement Helmet",               "=ds=#s1#, #a4# =q1=#m1# =ds=#c4#",             "", "2.9%" },
			{ 30, 49315, "", "=q4=Nemesis Skullcover",             "=ds=#s1#, #a1# =q1=#m1# =ds=#c8#",             "", "2.9%" },
		},
		{
			{ 1,  49318, "", "=q4=Netherwind Hood",               "=ds=#s1#, #a1# =q1=#m1# =ds=#c3#", "", "2.9%" },
			{ 2,  49327, "", "=q4=Stormrage Antlers",             "=ds=#s1#, #a2# =q1=#m1# =ds=#c1#", "", "2.9%" },
			{ 3,  49328, "", "=q4=Stormrage Helm",                "=ds=#s1#, #a2# =q1=#m1# =ds=#c1#", "", "2.9%" },
			{ 4,  49326, "", "=q4=Stormrage Hood",                "=ds=#s1#, #a2# =q1=#m1# =ds=#c1#", "", "2.9%" },
			{ 6,  49644, "", "=q4=Head of Onyxia",                "=ds=#m2#",                         "", "100%" },
			{ 7,  18705, "", "=q4=Mature Black Dragon Sinew",     "=ds=#m3# =q1=(#c2#)",              "", "100%" },
			{ 8,  21108, "", "=q1=Draconic for Dummies",          "=ds=#m3#",                         "", "100%" },
			{ 10, 49294, "", "=q4=Ashen Sack of Gems",            "=ds=#e7# #e1#",                    "", "100%" },
			{ 12, 49295, "", "=q4=Enlarged Onyxia Hide Backpack", "=ds=#e1#",                         "", "100%" },
			{ 14, 49636, "", "=q4=Reins of the Onyxian Drake",    "=ds=#e27#",                        "", "1%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  49490, "", "=q4=Antediluvian Cornerstone Grimoire", "=ds=#s15#",                                    "", "2.9%" },
			{ 2,  49495, "", "=q4=Burnished Quel'Serrar",             "=ds=#h1#, #w10# =q1=#m1# =ds=#c9# #c4# #c10#", "", "2.9%" },
			{ 3,  49492, "", "=q4=Eskhandar's Links",                 "=ds=#s2#",                                     "", "2.9%" },
			{ 4,  49491, "", "=q4=Flowing Sapphiron Drape",           "=ds=#s4#",                                     "", "2.9%" },
			{ 5,  49494, "", "=q4=Honed Fang of the Mystics",         "=ds=#h3# #w4#",                                "", "2.9%" },
			{ 6,  49499, "", "=q4=Polished Azuresong Mageblade",      "=ds=#h3# #w10#",                               "", "2.9%" },
			{ 7,  49500, "", "=q4=Raging Deathbringer",               "=ds=#h1# #w1#",                                "", "2.9%" },
			{ 8,  49496, "", "=q4=Reinforced Shadowstrike",           "=ds=#w7#",                                     "", "2.9%" },
			{ 9,  49493, "", "=q4=Rifled Blastershot Launcher",       "=ds=#w5#",                                     "", "2.9%" },
			{ 10, 49498, "", "=q4=Sharpened Obsidian Edged Blade",    "=ds=#h2# #w10#",                               "", "2.9%" },
			{ 11, 49464, "", "=q4=Shiny Shard of the Flame",          "=ds=#s14#",                                    "", "2.9%" },
			{ 12, 49488, "", "=q4=Shiny Shard of the Scale",          "=ds=#s14#",                                    "", "2.9%" },
			{ 13, 49489, "", "=q4=Signified Ring of Binding",         "=ds=#s13#",                                    "", "2.9%" },
			{ 14, 49465, "", "=q4=Tarnished Gutgore Ripper",          "=ds=#h1# #w4#",                                "", "2.9%" },
			{ 15, 49501, "", "=q4=Tempered Vis'kag the Bloodletter",  "=ds=#h1# #w10#",                               "", "2.9%" },


			{ 16, 49482, "", "=q4=Aurora of Transcendence",           "=ds=#s1#, #a1# =q1=#m1# =ds=#c5#",             "", "2.9%" },
			{ 17, 49477, "", "=q4=Bloodfang Hood",                    "=ds=#s1#, #a2# =q1=#m1# =ds=#c6#",             "", "2.9%" },
			{ 18, 49469, "", "=q4=Crown of Ten Storms",               "=ds=#s1#, #a3# =q1=#m1# =ds=#c7#",             "", "2.9%" },
			{ 19, 49480, "", "=q4=Dragonstalker's Helm",              "=ds=#s1#, #a3# =q1=#m1# =ds=#c2#",             "", "2.9%" },
			{ 20, 49467, "", "=q4=Frostforged Greathelm",             "=ds=#s1#, #a4# =q1=#m1# =ds=#c10#",            "", "2.9%" },
			{ 21, 49466, "", "=q4=Frostforged Helm",                  "=ds=#s1#, #a4# =q1=#m1# =ds=#c10#",            "", "2.9%" },
			{ 22, 49483, "", "=q4=Halo of Transcendence",             "=ds=#s1#, #a1# =q1=#m1# =ds=#c5#",             "", "2.9%" },
			{ 23, 49468, "", "=q4=Helm of Ten Storms",                "=ds=#s1#, #a3# =q1=#m1# =ds=#c7#",             "", "2.9%" },
			{ 24, 49479, "", "=q4=Helm of Wrath",                     "=ds=#s1#, #a4# =q1=#m1# =ds=#c9#",             "", "2.9%" },
			{ 25, 49470, "", "=q4=Helmet of Ten Storms",              "=ds=#s1#, #a3# =q1=#m1# =ds=#c7#",             "", "2.9%" },
			{ 26, 49478, "", "=q4=Helmet of Wrath",                   "=ds=#s1#, #a4# =q1=#m1# =ds=#c9#",             "", "2.9%" },
			{ 27, 49476, "", "=q4=Judgement Crown",                   "=ds=#s1#, #a4# =q1=#m1# =ds=#c4#",             "", "2.9%" },
			{ 28, 49475, "", "=q4=Judgement Heaume",                  "=ds=#s1#, #a4# =q1=#m1# =ds=#c4#",             "", "2.9%" },
			{ 29, 49474, "", "=q4=Judgement Hood",                    "=ds=#s1#, #a4# =q1=#m1# =ds=#c4#",             "", "2.9%" },
			{ 30, 49484, "", "=q4=Nemesis Skullcap",                  "=ds=#s1#, #a1# =q1=#m1# =ds=#c8#",             "", "2.9%" },
		},
		{
			{ 1,  49481, "", "=q4=Netherwind Crown",              "=ds=#s1#, #a1# =q1=#m1# =ds=#c3#", "", "2.9%" },
			{ 3,  49473, "", "=q4=Stormrage Cover",               "=ds=#s1#, #a2# =q1=#m1# =ds=#c1#", "", "2.9%" },
			{ 4,  49471, "", "=q4=Stormrage Coverlet",            "=ds=#s1#, #a2# =q1=#m1# =ds=#c1#", "", "2.9%" },
			{ 2,  49472, "", "=q4=Stormrage Crown",               "=ds=#s1#, #a2# =q1=#m1# =ds=#c1#", "", "2.9%" },
			{ 6,  49643, "", "=q4=Head of Onyxia",                "=ds=#m2#",                         "", "100%" },
			{ 7,  18705, "", "=q4=Mature Black Dragon Sinew",     "=ds=#m3# =q1=(#c2#)",              "", "100%" },
			{ 8,  21108, "", "=q1=Draconic for Dummies",          "=ds=#m3#",                         "", "100%" },
			{ 10, 49294, "", "=q4=Ashen Sack of Gems",            "=ds=#e7# #e1#",                    "", "100%" },
			{ 12, 49295, "", "=q4=Enlarged Onyxia Hide Backpack", "=ds=#e1#",                         "", "100%" },
			{ 14, 49636, "", "=q4=Reins of the Onyxian Drake",    "=ds=#e27#",                        "", "1%" },
		},
		{
			{ 1,  49490, "", "=q4=Antediluvian Cornerstone Grimoire", "=ds=#s15#",                                    "", "2.9%" },
			{ 2,  49495, "", "=q4=Burnished Quel'Serrar",             "=ds=#h1#, #w10# =q1=#m1# =ds=#c9# #c4# #c10#", "", "2.9%" },
			{ 3,  49492, "", "=q4=Eskhandar's Links",                 "=ds=#s2#",                                     "", "2.9%" },
			{ 4,  49491, "", "=q4=Flowing Sapphiron Drape",           "=ds=#s4#",                                     "", "2.9%" },
			{ 5,  49494, "", "=q4=Honed Fang of the Mystics",         "=ds=#h3# #w4#",                                "", "2.9%" },
			{ 6,  49499, "", "=q4=Polished Azuresong Mageblade",      "=ds=#h3# #w10#",                               "", "2.9%" },
			{ 7,  49500, "", "=q4=Raging Deathbringer",               "=ds=#h1# #w1#",                                "", "2.9%" },
			{ 8,  49496, "", "=q4=Reinforced Shadowstrike",           "=ds=#w7#",                                     "", "2.9%" },
			{ 9,  49493, "", "=q4=Rifled Blastershot Launcher",       "=ds=#w5#",                                     "", "2.9%" },
			{ 10, 49498, "", "=q4=Sharpened Obsidian Edged Blade",    "=ds=#h2# #w10#",                               "", "2.9%" },
			{ 11, 49464, "", "=q4=Shiny Shard of the Flame",          "=ds=#s14#",                                    "", "2.9%" },
			{ 12, 49488, "", "=q4=Shiny Shard of the Scale",          "=ds=#s14#",                                    "", "2.9%" },
			{ 13, 49489, "", "=q4=Signified Ring of Binding",         "=ds=#s13#",                                    "", "2.9%" },
			{ 14, 49465, "", "=q4=Tarnished Gutgore Ripper",          "=ds=#h1# #w4#",                                "", "2.9%" },
			{ 15, 49501, "", "=q4=Tempered Vis'kag the Bloodletter",  "=ds=#h1# #w10#",                               "", "2.9%" },


			{ 16, 49482, "", "=q4=Aurora of Transcendence",           "=ds=#s1#, #a1# =q1=#m1# =ds=#c5#",             "", "2.9%" },
			{ 17, 49477, "", "=q4=Bloodfang Hood",                    "=ds=#s1#, #a2# =q1=#m1# =ds=#c6#",             "", "2.9%" },
			{ 18, 49469, "", "=q4=Crown of Ten Storms",               "=ds=#s1#, #a3# =q1=#m1# =ds=#c7#",             "", "2.9%" },
			{ 19, 49480, "", "=q4=Dragonstalker's Helm",              "=ds=#s1#, #a3# =q1=#m1# =ds=#c2#",             "", "2.9%" },
			{ 20, 49467, "", "=q4=Frostforged Greathelm",             "=ds=#s1#, #a4# =q1=#m1# =ds=#c10#",            "", "2.9%" },
			{ 21, 49466, "", "=q4=Frostforged Helm",                  "=ds=#s1#, #a4# =q1=#m1# =ds=#c10#",            "", "2.9%" },
			{ 22, 49483, "", "=q4=Halo of Transcendence",             "=ds=#s1#, #a1# =q1=#m1# =ds=#c5#",             "", "2.9%" },
			{ 23, 49468, "", "=q4=Helm of Ten Storms",                "=ds=#s1#, #a3# =q1=#m1# =ds=#c7#",             "", "2.9%" },
			{ 24, 49479, "", "=q4=Helm of Wrath",                     "=ds=#s1#, #a4# =q1=#m1# =ds=#c9#",             "", "2.9%" },
			{ 25, 49470, "", "=q4=Helmet of Ten Storms",              "=ds=#s1#, #a3# =q1=#m1# =ds=#c7#",             "", "2.9%" },
			{ 26, 49478, "", "=q4=Helmet of Wrath",                   "=ds=#s1#, #a4# =q1=#m1# =ds=#c9#",             "", "2.9%" },
			{ 27, 49476, "", "=q4=Judgement Crown",                   "=ds=#s1#, #a4# =q1=#m1# =ds=#c4#",             "", "2.9%" },
			{ 28, 49475, "", "=q4=Judgement Heaume",                  "=ds=#s1#, #a4# =q1=#m1# =ds=#c4#",             "", "2.9%" },
			{ 29, 49474, "", "=q4=Judgement Hood",                    "=ds=#s1#, #a4# =q1=#m1# =ds=#c4#",             "", "2.9%" },
			{ 30, 49484, "", "=q4=Nemesis Skullcap",                  "=ds=#s1#, #a1# =q1=#m1# =ds=#c8#",             "", "2.9%" },
		},
		{
			{ 1,  49481, "", "=q4=Netherwind Crown",              "=ds=#s1#, #a1# =q1=#m1# =ds=#c3#", "", "2.9%" },
			{ 3,  49473, "", "=q4=Stormrage Cover",               "=ds=#s1#, #a2# =q1=#m1# =ds=#c1#", "", "2.9%" },
			{ 4,  49471, "", "=q4=Stormrage Coverlet",            "=ds=#s1#, #a2# =q1=#m1# =ds=#c1#", "", "2.9%" },
			{ 2,  49472, "", "=q4=Stormrage Crown",               "=ds=#s1#, #a2# =q1=#m1# =ds=#c1#", "", "2.9%" },
			{ 6,  49644, "", "=q4=Head of Onyxia",                "=ds=#m2#",                         "", "100%" },
			{ 7,  18705, "", "=q4=Mature Black Dragon Sinew",     "=ds=#m3# =q1=(#c2#)",              "", "100%" },
			{ 8,  21108, "", "=q1=Draconic for Dummies",          "=ds=#m3#",                         "", "100%" },
			{ 10, 49294, "", "=q4=Ashen Sack of Gems",            "=ds=#e7# #e1#",                    "", "100%" },
			{ 12, 49295, "", "=q4=Enlarged Onyxia Hide Backpack", "=ds=#e1#",                         "", "100%" },
			{ 14, 49636, "", "=q4=Reins of the Onyxian Drake",    "=ds=#e27#",                        "", "1%" },
		},
	},
	info = {
		name = BabbleBoss["Onyxia"],
		module = moduleName,
		instance = "OnyxiasLair",
	},
}

--------------------------
--- The Forge of Souls ---
--------------------------

Synastria_Data["ForgeOfSoulsBronjahm"] = {
	["Normal"] = {
		{
			{ 1,  49785, "", "=q4=Bewildering Shoulderpads",        "=ds=#s3#, #a2#",  "", "16.7%" },
			{ 2,  49788, "", "=q4=Cold Sweat Grips",                "=ds=#s9#, #a1#",  "", "16.7%" },
			{ 3,  49783, "", "=q4=Lucky Old Sun",                   "=ds=#h1#, #w6#",  "", "16.7%" },
			{ 4,  49784, "", "=q4=Minister's Number One Legplates", "=ds=#s11#, #a4#", "", "16.7%" },
			{ 5,  49786, "", "=q4=Robes of the Cheating Heart",     "=ds=#s5#, #a2#",  "", "16.7%" },
			{ 6,  49787, "", "=q4=Seven Stormy Mornings",           "=ds=#s8#, #a3#",  "", "16.7%" },
			{ 16, 50317, "", "=q4=Papa's New Bag",                  "=ds=#e1#",        "", "38.5%" },
			{ 17, 50316, "", "=q4=Papa's Brand New Bag",            "=ds=#e1#",        "", "8.5%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  50197, "", "=q4=Eyes of Bewilderment",       "=ds=#s1#, #a3#", "", "16.7%" },
			{ 2,  50196, "", "=q4=Love's Prisoner",            "=ds=#s2#",       "", "16.7%" },
			{ 3,  50191, "", "=q4=Nighttime",                  "=ds=#h1#, #w1#", "", "16.7%" },
			{ 4,  50169, "", "=q4=Papa's Brand New Knife",     "=ds=#w11#",      "", "16.7%" },
			{ 5,  50193, "", "=q4=Very Fashionable Shoulders", "=ds=#s3#, #a1#", "", "16.7%" },
			{ 6,  50194, "", "=q4=Weeping Gauntlets",          "=ds=#s9#, #a4#", "", "16.7%" },
			{ 16, 50317, "", "=q4=Papa's New Bag",             "=ds=#e1#",       "", "38.5%" },
			{ 17, 50316, "", "=q4=Papa's Brand New Bag",       "=ds=#e1#",       "", "8.5%" },
		},
	},
	info = {
		name = BabbleBoss["Bronjahm"],
		module = moduleName,
		instance = "FHTheForgeOfSouls",
	},
}

Synastria_Data["ForgeOfSoulsDevourerOfSouls"] = {
	["Normal"] = {
		{
			{ 1,  49792, "", "=q4=Accursed Crawling Cape",             "=ds=#s4#",        "", "8.3%" },
			{ 2,  49790, "", "=q4=Blood Boil Lancet",                  "=ds=#w9#",        "", "8.3%" },
			{ 3,  49797, "", "=q4=Brace Guards of the Starless Night", "=ds=#s8#, #a4#",  "", "8.3%" },
			{ 4,  49799, "", "=q4=Coil of Missing Gems",               "=ds=#s2#",        "", "8.3%" },
			{ 5,  49796, "", "=q4=Essence of Anger",                   "=ds=#s10#, #a1#", "", "8.3%" },
			{ 6,  49789, "", "=q4=Heartshiver",                        "=ds=#h1#, #w4#",  "", "8.3%" },
			{ 7,  49794, "", "=q4=Legplates of Frozen Granite",        "=ds=#s11#, #a4#", "", "8.3%" },
			{ 8,  49791, "", "=q4=Lost Reliquary Chestguard",          "=ds=#s5#, #a4#",  "", "8.3%" },
			{ 9,  49795, "", "=q4=Sollerets of Suffering",             "=ds=#s12#, #a4#", "", "8.3%" },
			{ 10, 49798, "", "=q4=Soul Screaming Boots",               "=ds=#s12#, #a3#", "", "8.3%" },
			{ 11, 49800, "", "=q4=Spiteful Signet",                    "=ds=#s13#",       "", "8.3%" },
			{ 12, 49793, "", "=q4=Tower of the Mouldering Corpse",     "=ds=#w9#",        "", "8.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  50211, "", "=q4=Arcane Loops of Anger",     "=ds=#s2#",        "", "8.3%" },
			{ 2,  50207, "", "=q4=Black Spire Sabatons",      "=ds=#s12#, #a4#", "", "8.3%" },
			{ 3,  50203, "", "=q4=Blood Weeper",              "=ds=#h1#, #w4#",  "", "8.3%" },
			{ 4,  50212, "", "=q4=Essence of Desire",         "=ds=#s9#, #a2#",  "", "8.3%" },
			{ 5,  50209, "", "=q4=Essence of Suffering",      "=ds=#s8#, #a3#",  "", "8.3%" },
			{ 6,  50206, "", "=q4=Frayed Scoundrel's Cap",    "=ds=#s1#, #a2#",  "", "8.3%" },
			{ 7,  50214, "", "=q4=Helm of the Spirit Shock",  "=ds=#s1#, #a3#",  "", "8.3%" },
			{ 8,  50213, "", "=q4=Mord'rethar Robes",         "=ds=#s5#, #a1#",  "", "8.3%" },
			{ 9,  50198, "", "=q4=Needle-Encrusted Scorpion", "=ds=#s14#",       "", "8.3%" },
			{ 10, 50208, "", "=q4=Pauldrons of the Devourer", "=ds=#s3#, #a4#",  "", "8.3%" },
			{ 11, 50215, "", "=q4=Recovered Reliquary Boots", "=ds=#s12#, #a4#", "", "8.3%" },
			{ 12, 50210, "", "=q4=Seethe",                    "=ds=#h3#, #w10#", "", "8.3%" },
			{ 16, 43102, "", "=q3=Frozen Orb",                "=ds=#e6#",        "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Devourer of Souls"],
		module = moduleName,
		instance = "FHTheForgeOfSouls",
	},
}

--------------------
--- Pit of Saron ---
--------------------

Synastria_Data["PitOfSaronForgemasterGarfrost"] = {
	["Normal"] = {
		{
			{ 1, 49806, "", "=q4=Flayer's Black Belt",        "=ds=#s10#, #a2#", "", "16.7%" },
			{ 2, 49802, "", "=q4=Garfrost's Two-Ton Hammer",  "=ds=#h2#, #w6#",  "", "16.7%" },
			{ 3, 49805, "", "=q4=Ice-Steeped Sandals",        "=ds=#s12#, #a1#", "", "16.7%" },
			{ 4, 49804, "", "=q4=Polished Mirror Helm",       "=ds=#s1#, #a3#",  "", "16.7%" },
			{ 5, 49803, "", "=q4=Ring of Carnelian and Bone", "=ds=#s13#",       "", "16.7%" },
			{ 6, 49801, "", "=q4=Unspeakable Secret",         "=ds=#w9#",        "", "16.7%" },
			{ 8, 49723, "", "=q1=The Forgemaster's Hammer",   "=ds=#m3#",        "", "100%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 50228, "", "=q4=Barbed Ymirheim Choker",         "=ds=#s2#",        "", "16.7%" },
			{ 2, 50229, "", "=q4=Legguards of the Frosty Depths", "=ds=#s11#, #a4#", "", "16.7%" },
			{ 3, 50230, "", "=q4=Malykriss Vambraces",            "=ds=#s8#, #a4#",  "", "16.7%" },
			{ 4, 50234, "", "=q4=Shoulderplates of Frozen Blood", "=ds=#s3#, #a4#",  "", "16.7%" },
			{ 5, 50233, "", "=q4=Spurned Val'kyr Shoulderguards", "=ds=#s3#, #a3#",  "", "16.7%" },
			{ 6, 50227, "", "=q4=Surgeon's Needle",               "=ds=#h3#, #w4#",  "", "16.7%" },
			{ 8, 49723, "", "=q1=The Forgemaster's Hammer",       "=ds=#m3#",        "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Forgemaster Garfrost"],
		module = moduleName,
		instance = "FHPitOfSaron",
	},
}

Synastria_Data["PitOfSaronKrickAndIck"] = {
	["Normal"] = {
		{
			{ 1, 49808, "", "=q4=Bent Gold Belt",                   "=ds=#s10#, #a4#", "", "16.7%" },
			{ 2, 49811, "", "=q4=Black Dragonskin Breeches",        "=ds=#s11#, #a3#", "", "16.7%" },
			{ 3, 49807, "", "=q4=Krick's Beetle Stabber",           "=ds=#h1#, #w4#",  "", "16.7%" },
			{ 4, 49812, "", "=q4=Purloined Wedding Ring",           "=ds=#s13#",       "", "16.7%" },
			{ 5, 49810, "", "=q4=Scabrous Zombie Leather Belt",     "=ds=#s10#, #a3#", "", "16.7%" },
			{ 6, 49809, "", "=q4=Wristguards of Subterranean Moss", "=ds=#s8#, #a1#",  "", "16.7%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 50266, "", "=q4=Ancient Polar Bear Hide",       "=ds=#s5#, #a1#",  "", "16.7%" },
			{ 2, 50265, "", "=q4=Blackened Ghoul Skin Leggings", "=ds=#s11#, #a3#", "", "16.7%" },
			{ 3, 50263, "", "=q4=Braid of Salt and Fire",        "=ds=#s10#, #a1#", "", "16.7%" },
			{ 4, 50264, "", "=q4=Chewed Leather Wristguards",    "=ds=#s8#, #a2#",  "", "16.7%" },
			{ 5, 50262, "", "=q4=Felglacier Bolter",             "=ds=#w3#",        "", "16.7%" },
			{ 6, 50235, "", "=q4=Ick's Rotting Thumb",           "=ds=#s14#",       "", "16.7%" },
		},
	},
	info = {
		name = BabbleBoss["Krick and Ick"],
		module = moduleName,
		instance = "FHPitOfSaron",
	},
}

Synastria_Data["PitOfSaronScourgelordTyrannus"] = {
	["Normal"] = {
		{
			{ 1,  49823, "", "=q4=Cloak of the Fallen Cardinal",    "=ds=#s4#",        "", "8.3%" },
			{ 2,  49820, "", "=q4=Gondria's Spectral Bracer",       "=ds=#s8#, #a3#",  "", "8.3%" },
			{ 3,  49824, "", "=q4=Horns of the Spurned Val'kyr",    "=ds=#s1#, #a3#",  "", "8.3%" },
			{ 4,  49818, "", "=q4=Painfully Sharp Choker",          "=ds=#s2#",        "", "8.3%" },
			{ 5,  49825, "", "=q4=Palebone Robes",                  "=ds=#s5#, #a1#",  "", "8.3%" },
			{ 6,  49821, "", "=q4=Protector of Frigid Souls",       "=ds=#w8#",        "", "8.3%" },
			{ 7,  49813, "", "=q4=Rimebane Rifle",                  "=ds=#w5#",        "", "8.3%" },
			{ 8,  49822, "", "=q4=Rimewoven Silks",                 "=ds=#s11#, #a1#", "", "8.3%" },
			{ 9,  49816, "", "=q4=Scourgelord's Frigid Chestplate", "=ds=#s5#, #a4#",  "", "8.3%" },
			{ 10, 49817, "", "=q4=Shaggy Wyrmleather Leggings",     "=ds=#s11#, #a2#", "", "8.3%" },
			{ 11, 49826, "", "=q4=Shroud of Rime",                  "=ds=#s5#, #a3#",  "", "8.3%" },
			{ 12, 49819, "", "=q4=Skeleton Lord's Cranium",         "=ds=#s1#, #a4#",  "", "8.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  50271, "", "=q4=Band of Stained Souls",      "=ds=#s13#",       "", "8.3%" },
			{ 2,  50270, "", "=q4=Belt of Rotted Fingernails", "=ds=#s10#, #a3#", "", "8.3%" },
			{ 3,  50273, "", "=q4=Engraved Gargoyle Femur",    "=ds=#w9#",        "", "8.3%" },
			{ 4,  50269, "", "=q4=Fleshwerk Leggings",         "=ds=#s11#, #a2#", "", "8.3%" },
			{ 5,  50272, "", "=q4=Frost Wyrm Ribcage",         "=ds=#s5#, #a4#",  "", "8.3%" },
			{ 6,  50285, "", "=q4=Icebound Bronze Cuirass",    "=ds=#s5#, #a4#",  "", "8.3%" },
			{ 7,  50283, "", "=q4=Mudslide Boots",             "=ds=#s12#, #a3#", "", "8.3%" },
			{ 8,  50259, "", "=q4=Nevermelting Ice Crystal",   "=ds=#s14#",       "", "8.3%" },
			{ 9,  50286, "", "=q4=Prelate's Snowshoes",        "=ds=#s12#, #a1#", "", "8.3%" },
			{ 10, 50268, "", "=q4=Rimefang's Claw",            "=ds=#h1#, #w10#", "", "8.3%" },
			{ 11, 50284, "", "=q4=Rusty Frozen Fingerguards",  "=ds=#s9#, #a4#",  "", "8.3%" },
			{ 12, 50267, "", "=q4=Tyrannical Beheader",        "=ds=#h2#, #w1#",  "", "8.3%" },
			{ 16, 43102, "", "=q3=Frozen Orb",                 "=ds=#e6#",        "", "100%" },
		},
	},
	info = {
		name = BabbleBoss["Scourgelord Tyrannus"],
		module = moduleName,
		instance = "FHPitOfSaron",
	},
}

---------------------------
--- Halls of Reflection ---
---------------------------

Synastria_Data["HallsOfReflectionFalric"] = {
	["Normal"] = {
		{
			{ 1, 49832, "", "=q4=Eerie Runeblade Polisher",         "=ds=#s4#",        "", "16.7%" },
			{ 2, 49830, "", "=q4=Fallen Sentry's Hood",             "=ds=#s1#, #a2#",  "", "16.7%" },
			{ 3, 49827, "", "=q4=Ghoulslicer",                      "=ds=#h1#, #w10#", "", "16.7%" },
			{ 4, 49828, "", "=q4=Marwyn's Macabre Fingertips",      "=ds=#s9#, #a1#",  "", "16.7%" },
			{ 5, 49831, "", "=q4=Muddied Boots of Brill",           "=ds=#s12#, #a3#", "", "16.7%" },
			{ 6, 49829, "", "=q4=Valonforth's Tarnished Pauldrons", "=ds=#s3#, #a4#",  "", "16.7%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 50292, "", "=q4=Bracer of Worn Molars",       "=ds=#s8#, #a1#",  "", "16.7%" },
			{ 2, 50294, "", "=q4=Chestpiece of High Treason",  "=ds=#s5#, #a4#",  "", "16.7%" },
			{ 3, 50290, "", "=q4=Falric's Wrist-Chopper",      "=ds=#h1#, #w1#",  "", "16.7%" },
			{ 4, 50291, "", "=q4=Soulsplinter",                "=ds=#w12#",       "", "16.7%" },
			{ 5, 50293, "", "=q4=Spaulders of Black Betrayal", "=ds=#s3#, #a2#",  "", "16.7%" },
			{ 6, 50295, "", "=q4=Spiked Toestompers",          "=ds=#s12#, #a3#", "", "16.7%" },
		},
	},
	info = {
		name = BabbleBoss["Falric"],
		module = moduleName,
		instance = "FHHallsOfReflection",
	},
}

Synastria_Data["HallsOfReflectionMarwyn"] = {
	["Normal"] = {
		{
			{ 1, 49838, "", "=q4=Carpal Tunnelers",                       "=ds=#s9#, #a2#",  "", "16.7%" },
			{ 2, 49834, "", "=q4=Frayed Abomination Stitching Shoulders", "=ds=#s3#, #a1#",  "", "16.7%" },
			{ 3, 49836, "", "=q4=Frostsworn Bone Leggings",               "=ds=#s11#, #a3#", "", "16.7%" },
			{ 4, 49837, "", "=q4=Mitts of Burning Hail",                  "=ds=#s9#, #a3#",  "", "16.7%" },
			{ 5, 49835, "", "=q4=Splintered Door of the Citadel",         "=ds=#w8#",        "", "16.7%" },
			{ 6, 49833, "", "=q4=Splintered Icecrown Parapet",            "=ds=#h3#, #w10#", "", "16.7%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 50300, "", "=q4=Choking Hauberk",            "=ds=#s5#, #a2#", "", "16.7%" },
			{ 2, 50260, "", "=q4=Ephemeral Snowflake",        "=ds=#s14#",      "", "16.7%" },
			{ 3, 50297, "", "=q4=Frostsworn Bone Chestpiece", "=ds=#s5#, #a3#", "", "16.7%" },
			{ 4, 50296, "", "=q4=Orca-Hunter's Harpoon",      "=ds=#w7#",       "", "16.7%" },
			{ 5, 50298, "", "=q4=Sightless Crown of Ulmaas",  "=ds=#s1#, #a1#", "", "16.7%" },
			{ 6, 50299, "", "=q4=Suspiciously Soft Gloves",   "=ds=#s9#, #a1#", "", "16.7%" },
		},
	},
	info = {
		name = BabbleBoss["Marwyn"],
		module = moduleName,
		instance = "FHHallsOfReflection",
	},
}

Synastria_Data["HallsOfReflectionTheLichKing"] = {
	["Normal"] = {
		{
			{ 1,  49841, "", "=q4=Blackened Geist Ribs",          "=ds=#s5#, #a2#",  "", "8.3%" },
			{ 2,  49845, "", "=q4=Bone Golem Scapula",            "=ds=#h3#, #w6#",  "", "8.3%" },
			{ 3,  49846, "", "=q4=Chilled Heart of the Glacier",  "=ds=#h3#, #w4#",  "", "8.3%" },
			{ 4,  49844, "", "=q4=Crypt Fiend Slayer",            "=ds=#w2#",        "", "8.3%" },
			{ 5,  49843, "", "=q4=Crystalline Citadel Gauntlets", "=ds=#s9#, #a4#",  "", "8.3%" },
			{ 6,  49851, "", "=q4=Greathelm of the Silver Hand",  "=ds=#s1#, #a4#",  "", "8.3%" },
			{ 7,  49848, "", "=q4=Grim Lasher Shoulderguards",    "=ds=#s3#, #a2#",  "", "8.3%" },
			{ 8,  49840, "", "=q4=Hate-Forged Cleaver",           "=ds=#h1#, #w1#",  "", "8.3%" },
			{ 9,  49847, "", "=q4=Legguards of Untimely Demise",  "=ds=#s11#, #a3#", "", "8.3%" },
			{ 10, 49839, "", "=q4=Mourning Malice",               "=ds=#h2#, #w10#", "", "8.3%" },
			{ 11, 49842, "", "=q4=Tapestry of the Frozen Throne", "=ds=#s4#",        "", "8.3%" },
			{ 12, 49849, "", "=q4=Tattered Glacial-Woven Hood",   "=ds=#s1#, #a1#",  "", "8.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  50303, "", "=q4=Black Icicle",                   "=ds=#h1#, #w6#",  "", "8.3%" },
			{ 2,  50308, "", "=q4=Blighted Leather Footpads",      "=ds=#s12#, #a2#", "", "8.3%" },
			{ 3,  50312, "", "=q4=Chestguard of Broken Branches",  "=ds=#s5#, #a2#",  "", "8.3%" },
			{ 4,  50310, "", "=q4=Fossilized Ammonite Choker",     "=ds=#s2#",        "", "8.3%" },
			{ 5,  50305, "", "=q4=Grinning Skull Boots",           "=ds=#s12#, #a4#", "", "8.3%" },
			{ 6,  50304, "", "=q4=Hoarfrost Gauntlets",            "=ds=#s9#, #a3#",  "", "8.3%" },
			{ 7,  50302, "", "=q4=Liar's Tongue",                  "=ds=#h1#, #w10#", "", "8.3%" },
			{ 8,  50313, "", "=q4=Oath of Empress Zoe",            "=ds=#s13#",       "", "8.3%" },
			{ 9,  50311, "", "=q4=Second Helm of the Executioner", "=ds=#s1#, #a4#",  "", "8.3%" },
			{ 10, 50309, "", "=q4=Shriveled Heart",                "=ds=#s15#",       "", "8.3%" },
			{ 11, 50314, "", "=q4=Strip of Remorse",               "=ds=#s10#, #a1#", "", "8.3%" },
			{ 12, 50306, "", "=q4=The Lady's Promise",             "=ds=#s13#",       "", "8.3%" },
			{ 16, 43102, "", "=q3=Frozen Orb",                     "=ds=#e6#",        "", "85%" },
		},
	},
	info = {
		name = BabbleBoss["The Lich King"],
		module = moduleName,
		instance = "FHHallsOfReflection",
	},
}

Synastria_Data["FrozenHallsTrash"] = {
	["Normal"] = {
		{
			{ 1, 49852, "", "=q4=Coffin Nail",                 "=ds=#w12#",       "", "0.5%" },
			{ 2, 49854, "", "=q4=Mantle of Tattered Feathers", "=ds=#s3#, #a1#",  "", "0.5%" },
			{ 3, 49855, "", "=q4=Plated Grips of Korth'azz",   "=ds=#s9#, #a4#",  "", "0.5%" },
			{ 4, 49853, "", "=q4=Titanium Links of Lore",      "=ds=#s10#, #a4#", "", "0.5%" },
		},
	},
	["Heroic"] = {
		{
			{ 1, 50318, "", "=q4=Ghostly Wristwraps",    "=ds=#s8#, #a2#",  "", "0.67%" },
			{ 2, 50315, "", "=q4=Seven-Fingered Claws",  "=ds=#h3#, #w13#", "", "0.67%" },
			{ 3, 50319, "", "=q4=Unsharpened Ice Razor", "=ds=#h1#, #w4#",  "", "0.67%" },
			{ 5, 50380, "", "=q4=Battered Hilt",         "=ds=#m2#",        "", "0.08%" },
		},
		{
			{ 1, 50318, "", "=q4=Ghostly Wristwraps",    "=ds=#s8#, #a2#",  "", "0.67%" },
			{ 2, 50315, "", "=q4=Seven-Fingered Claws",  "=ds=#h3#, #w13#", "", "0.67%" },
			{ 3, 50319, "", "=q4=Unsharpened Ice Razor", "=ds=#h1#, #w4#",  "", "0.67%" },
			{ 5, 50379, "", "=q4=Battered Hilt",         "=ds=#m2#",        "", "0.08%" },
		},
	},
	info = {
		name = AL["Trash Mobs"],
		module = moduleName,
		instance = "FHHallsOfReflection",
	},
}

------------------------
--- Icecrown Citadel ---
------------------------

-------------------
--- Lower Spire ---
-------------------

Synastria_Data["IcecrownCitadelLordMarrowgar"] = {
	["Normal"] = {
		{
			{ 1,  50772, "", "=q4=Ancient Skeletal Boots",               "=ds=#s12#, #a4#", "", "8.3%" },
			{ 2,  50759, "", "=q4=Bone Warden's Splitter",               "=ds=#h1#, #w1#",  "", "8.3%" },
			{ 3,  50760, "", "=q4=Bonebreaker Scepter",                  "=ds=#h1#, #w6#",  "", "8.3%" },
			{ 4,  50761, "", "=q4=Citadel Enforcer's Claymore",          "=ds=#h2#, #w10#", "", "8.3%" },
			{ 5,  50774, "", "=q4=Coldwraith Bracers",                   "=ds=#s8#, #a3#",  "", "8.3%" },
			{ 6,  50773, "", "=q4=Cord of the Patronizing Practitioner", "=ds=#s10#, #a1#", "", "8.3%" },
			{ 7,  50775, "", "=q4=Corrupted Silverplate Leggings",       "=ds=#s11#, #a4#", "", "8.3%" },
			{ 8,  50771, "", "=q4=Frost Needle",                         "=ds=#h3#, #w10#", "", "8.3%" },
			{ 9,  50762, "", "=q4=Linked Scourge Vertebrae",             "=ds=#s10#, #a3#", "", "8.3%" },
			{ 10, 50763, "", "=q4=Marrowgar's Scratching Choker",        "=ds=#s2#",        "", "8.3%" },
			{ 11, 50764, "", "=q4=Shawl of Nerubian Silk",               "=ds=#s4#",        "", "8.3%" },
			{ 12, 50339, "", "=q4=Sliver of Pure Ice",                   "=ds=#s14#",       "", "8.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  51931, "", "=q4=Ancient Skeletal Boots",               "=ds=#s12#, #a4#", "", "8.3%" },
			{ 2,  51938, "", "=q4=Bone Warden's Splitter",               "=ds=#h1#, #w1#",  "", "8.3%" },
			{ 3,  51937, "", "=q4=Bonebreaker Scepter",                  "=ds=#h1#, #w6#",  "", "8.3%" },
			{ 4,  51936, "", "=q4=Citadel Enforcer's Claymore",          "=ds=#h2#, #w10#", "", "8.3%" },
			{ 5,  51929, "", "=q4=Coldwraith Bracers",                   "=ds=#s8#, #a3#",  "", "8.3%" },
			{ 6,  51930, "", "=q4=Cord of the Patronizing Practitioner", "=ds=#s10#, #a1#", "", "8.3%" },
			{ 7,  51928, "", "=q4=Corrupted Silverplate Leggings",       "=ds=#s11#, #a4#", "", "8.3%" },
			{ 8,  51932, "", "=q4=Frost Needle",                         "=ds=#h3#, #w10#", "", "8.3%" },
			{ 9,  51935, "", "=q4=Linked Scourge Vertebrae",             "=ds=#s10#, #a3#", "", "8.3%" },
			{ 10, 51934, "", "=q4=Marrowgar's Scratching Choker",        "=ds=#s2#",        "", "8.3%" },
			{ 11, 51933, "", "=q4=Shawl of Nerubian Silk",               "=ds=#s4#",        "", "8.3%" },
			{ 12, 50346, "", "=q4=Sliver of Pure Ice",                   "=ds=#s14#",       "", "8.3%" },
			{ 16, 49908, "", "=q3=Primordial Saronite",                  "=ds=#e6#",        "", "38%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  49949, "", "=q4=Band of the Bone Colossus",      "=ds=#s13#",       "", "6.7%" },
			{ 2,  49975, "", "=q4=Bone Sentinel's Amulet",         "=ds=#s2#",        "", "6.7%" },
			{ 3,  49960, "", "=q4=Bracers of Dark Reckoning",      "=ds=#s8#, #a4#",  "", "6.7%" },
			{ 4,  50415, "", "=q4=Bryntroll, the Bone Arbiter",    "=ds=#h2#, #w1#",  "", "6.7%" },
			{ 5,  49976, "", "=q4=Bulwark of Smouldering Steel",   "=ds=#w8#",        "", "6.7%" },
			{ 6,  49978, "", "=q4=Crushing Coldwraith Belt",       "=ds=#s10#, #a1#", "", "6.7%" },
			{ 7,  49950, "", "=q4=Frostbitten Fur Boots",          "=ds=#s12#, #a2#", "", "6.7%" },
			{ 8,  49968, "", "=q4=Frozen Bonespike",               "=ds=#h3#, #w4#",  "", "6.7%" },
			{ 9,  49951, "", "=q4=Gendarme's Cuirass",             "=ds=#s5#, #a4#",  "", "6.7%" },
			{ 10, 49979, "", "=q4=Handguards of Winter's Respite", "=ds=#s9#, #a2#",  "", "6.7%" },
			{ 11, 49964, "", "=q4=Legguards of Lost Hope",         "=ds=#s11#, #a4#", "", "6.7%" },
			{ 12, 49977, "", "=q4=Loop of the Endless Labyrinth",  "=ds=#s13#",       "", "6.7%" },
			{ 13, 49967, "", "=q4=Marrowgar's Frigid Eye",         "=ds=#s13#",       "", "6.7%" },
			{ 14, 49980, "", "=q4=Rusted Bonespike Pauldrons",     "=ds=#s3#, #a4#",  "", "6.7%" },
			{ 15, 49952, "", "=q4=Snowserpent Mail Helm",          "=ds=#s1#, #a3#",  "", "6.7%" },
			{ 16, 50274, "", "=q5=Shadowfrost Shard",              "=ds=#m3#",        "", "38%" },
			{ 18, 49908, "", "=q3=Primordial Saronite",            "=ds=#e6#",        "", "38%" },
		},
	},
	["25ManHeroic"] = {
		{
			{ 1,  50604, "", "=q4=Band of the Bone Colossus",      "=ds=#s13#",       "", "6.7%" },
			{ 2,  50609, "", "=q4=Bone Sentinel's Amulet",         "=ds=#s2#",        "", "6.7%" },
			{ 3,  50611, "", "=q4=Bracers of Dark Reckoning",      "=ds=#s8#, #a4#",  "", "6.7%" },
			{ 4,  50709, "", "=q4=Bryntroll, the Bone Arbiter",    "=ds=#h2#, #w1#",  "", "6.7%" },
			{ 5,  50616, "", "=q4=Bulwark of Smouldering Steel",   "=ds=#w8#",        "", "6.7%" },
			{ 6,  50613, "", "=q4=Crushing Coldwraith Belt",       "=ds=#s10#, #a1#", "", "6.7%" },
			{ 7,  50607, "", "=q4=Frostbitten Fur Boots",          "=ds=#s12#, #a2#", "", "6.7%" },
			{ 8,  50608, "", "=q4=Frozen Bonespike",               "=ds=#h3#, #w4#",  "", "6.7%" },
			{ 9,  50606, "", "=q4=Gendarme's Cuirass",             "=ds=#s5#, #a4#",  "", "6.7%" },
			{ 10, 50615, "", "=q4=Handguards of Winter's Respite", "=ds=#s9#, #a2#",  "", "6.7%" },
			{ 11, 50612, "", "=q4=Legguards of Lost Hope",         "=ds=#s11#, #a4#", "", "6.7%" },
			{ 12, 50614, "", "=q4=Loop of the Endless Labyrinth",  "=ds=#s13#",       "", "6.7%" },
			{ 13, 50610, "", "=q4=Marrowgar's Frigid Eye",         "=ds=#s13#",       "", "6.7%" },
			{ 14, 50617, "", "=q4=Rusted Bonespike Pauldrons",     "=ds=#s3#, #a4#",  "", "6.7%" },
			{ 15, 50605, "", "=q4=Snowserpent Mail Helm",          "=ds=#s1#, #a3#",  "", "6.7%" },
			{ 16, 50274, "", "=q5=Shadowfrost Shard",              "=ds=#m3#",        "", "68%" },
			{ 18, 49908, "", "=q3=Primordial Saronite",            "=ds=#e6#",        "", "38%" },
		},
	},
	info = {
		name = BabbleBoss["Lord Marrowgar"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

Synastria_Data["IcecrownCitadelLadyDeathwhisper"] = {
	["Normal"] = {
		{
			{ 1,  50783, "", "=q4=Boots of the Frozen Seed",       "=ds=#s12#, #a2#", "", "8.3%" },
			{ 2,  50785, "", "=q4=Bracers of Dark Blessings",      "=ds=#s8#, #a1#",  "", "8.3%" },
			{ 3,  50780, "", "=q4=Chestguard of the Frigid Noose", "=ds=#s5#, #a2#",  "", "8.3%" },
			{ 4,  50784, "", "=q4=Deathspeaker Disciple's Belt",   "=ds=#s10#, #a3#", "", "8.3%" },
			{ 5,  50779, "", "=q4=Deathspeaker Zealot's Helm",     "=ds=#s1#, #a4#",  "", "8.3%" },
			{ 6,  50786, "", "=q4=Ghoul Commander's Cuirass",      "=ds=#s5#, #a4#",  "", "8.3%" },
			{ 7,  50777, "", "=q4=Handgrips of Frost and Sleet",   "=ds=#s9#, #a3#",  "", "8.3%" },
			{ 8,  50776, "", "=q4=Njorndar Bone Bow",              "=ds=#w2#",        "", "8.3%" },
			{ 9,  50781, "", "=q4=Scourgelord's Baton",            "=ds=#s15#",       "", "8.3%" },
			{ 10, 50782, "", "=q4=Sister's Handshrouds",           "=ds=#s9#, #a1#",  "", "8.3%" },
			{ 11, 50778, "", "=q4=Soulthief's Braided Belt",       "=ds=#s10#, #a2#", "", "8.3%" },
			{ 12, 50342, "", "=q4=Whispering Fanged Skull",        "=ds=#s14#",       "", "8.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  51920, "", "=q4=Boots of the Frozen Seed",       "=ds=#s12#, #a2#", "", "8.3%" },
			{ 2,  51918, "", "=q4=Bracers of Dark Blessings",      "=ds=#s8#, #a1#",  "", "8.3%" },
			{ 3,  51923, "", "=q4=Chestguard of the Frigid Noose", "=ds=#s5#, #a2#",  "", "8.3%" },
			{ 4,  51919, "", "=q4=Deathspeaker Disciple's Belt",   "=ds=#s10#, #a3#", "", "8.3%" },
			{ 5,  51924, "", "=q4=Deathspeaker Zealot's Helm",     "=ds=#s1#, #a4#",  "", "8.3%" },
			{ 6,  51917, "", "=q4=Ghoul Commander's Cuirass",      "=ds=#s5#, #a4#",  "", "8.3%" },
			{ 7,  51926, "", "=q4=Handgrips of Frost and Sleet",   "=ds=#s9#, #a3#",  "", "8.3%" },
			{ 8,  51927, "", "=q4=Njorndar Bone Bow",              "=ds=#w2#",        "", "8.3%" },
			{ 9,  51922, "", "=q4=Scourgelord's Baton",            "=ds=#s15#",       "", "8.3%" },
			{ 10, 51921, "", "=q4=Sister's Handshrouds",           "=ds=#s9#, #a1#",  "", "8.3%" },
			{ 11, 51925, "", "=q4=Soulthief's Braided Belt",       "=ds=#s10#, #a2#", "", "8.3%" },
			{ 12, 50343, "", "=q4=Whispering Fanged Skull",        "=ds=#s14#",       "", "8.3%" },
			{ 16, 49908, "", "=q3=Primordial Saronite",            "=ds=#e6#",        "", "38%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  49989, "", "=q4=Ahn'kahar Onyx Neckguard",        "=ds=#s2#",        "", "6.7%" },
			{ 2,  49983, "", "=q4=Blood-Soaked Saronite Stompers",  "=ds=#s12#, #a4#", "", "6.7%" },
			{ 3,  49986, "", "=q4=Broken Ram Skull Helm",           "=ds=#s1#, #a4#",  "", "6.7%" },
			{ 4,  49987, "", "=q4=Cultist's Bloodsoaked Spaulders", "=ds=#s3#, #a2#",  "", "6.7%" },
			{ 5,  49996, "", "=q4=Deathwhisper Chestpiece",         "=ds=#s5#, #a2#",  "", "6.7%" },
			{ 6,  49995, "", "=q4=Fallen Lord's Handguards",        "=ds=#s9#, #a4#",  "", "6.7%" },
			{ 7,  49982, "", "=q4=Heartpierce",                     "=ds=#h1#, #w4#",  "", "6.7%" },
			{ 8,  49985, "", "=q4=Juggernaut Band",                 "=ds=#s13#",       "", "6.7%" },
			{ 9,  49988, "", "=q4=Leggings of Northern Lights",     "=ds=#s11#, #a3#", "", "6.7%" },
			{ 10, 49993, "", "=q4=Necrophotic Greaves",             "=ds=#s12#, #a3#", "", "6.7%" },
			{ 11, 49992, "", "=q4=Nibelung",                        "=ds=#w9#",        "", "6.7%" },
			{ 12, 49990, "", "=q4=Ring of Maddening Whispers",      "=ds=#s13#",       "", "6.7%" },
			{ 13, 49991, "", "=q4=Shoulders of Mercy Killing",      "=ds=#s3#, #a1#",  "", "6.7%" },
			{ 14, 49994, "", "=q4=The Lady's Brittle Bracers",      "=ds=#s8#, #a1#",  "", "6.7%" },
			{ 15, 50034, "", "=q4=Zod's Repeating Longbow",         "=ds=#w2#",        "", "6.7%" },
			{ 16, 50274, "", "=q5=Shadowfrost Shard",               "=ds=#m3#",        "", "38%" },
			{ 18, 49908, "", "=q3=Primordial Saronite",             "=ds=#e6#",        "", "38%" },
		},
	},
	["25ManHeroic"] = {
		{
			{ 1,  50647, "", "=q4=Ahn'kahar Onyx Neckguard",        "=ds=#s2#",        "", "6.7%" },
			{ 2,  50639, "", "=q4=Blood-Soaked Saronite Stompers",  "=ds=#s12#, #a4#", "", "6.7%" },
			{ 3,  50640, "", "=q4=Broken Ram Skull Helm",           "=ds=#s1#, #a4#",  "", "6.7%" },
			{ 4,  50646, "", "=q4=Cultist's Bloodsoaked Spaulders", "=ds=#s3#, #a2#",  "", "6.7%" },
			{ 5,  50649, "", "=q4=Deathwhisper Raiment",            "=ds=#s5#, #a2#",  "", "6.7%" },
			{ 6,  50650, "", "=q4=Fallen Lord's Handguards",        "=ds=#s9#, #a4#",  "", "6.7%" },
			{ 7,  50641, "", "=q4=Heartpierce",                     "=ds=#h1#, #w4#",  "", "6.7%" },
			{ 8,  50642, "", "=q4=Juggernaut Band",                 "=ds=#s13#",       "", "6.7%" },
			{ 9,  50645, "", "=q4=Leggings of Northern Lights",     "=ds=#s11#, #a3#", "", "6.7%" },
			{ 10, 50652, "", "=q4=Necrophotic Greaves",             "=ds=#s12#, #a3#", "", "6.7%" },
			{ 11, 50648, "", "=q4=Nibelung",                        "=ds=#w9#",        "", "6.7%" },
			{ 12, 50644, "", "=q4=Ring of Maddening Whispers",      "=ds=#s13#",       "", "6.7%" },
			{ 13, 50643, "", "=q4=Shoulders of Mercy Killing",      "=ds=#s3#, #a1#",  "", "6.7%" },
			{ 14, 50651, "", "=q4=The Lady's Brittle Bracers",      "=ds=#s8#, #a1#",  "", "6.7%" },
			{ 15, 50638, "", "=q4=Zod's Repeating Longbow",         "=ds=#w2#",        "", "6.7%" },
			{ 16, 50274, "", "=q5=Shadowfrost Shard",               "=ds=#m3#",        "", "68%" },
			{ 18, 49908, "", "=q3=Primordial Saronite",             "=ds=#e6#",        "", "38%" },
		},
	},
	info = {
		name = BabbleBoss["Lady Deathwhisper"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

Synastria_Data["IcecrownCitadelGunshipBattle"] = {
	["Normal"] = {
		{
			{ 1,  50790, "", "=q4=Abomination's Bloody Ring",    "=ds=#s13#",       "", "8.3%" },
			{ 2,  50788, "", "=q4=Bone Drake's Enameled Boots",  "=ds=#s12#, #a4#", "", "8.3%" },
			{ 3,  50796, "", "=q4=Bracers of Pale Illumination", "=ds=#s8#, #a4#",  "", "8.3%" },
			{ 4,  50795, "", "=q4=Cord of Dark Suffering",       "=ds=#s10#, #a2#", "", "8.3%" },
			{ 5,  50787, "", "=q4=Frost Giant's Cleaver",        "=ds=#h1#, #w1#",  "", "8.3%" },
			{ 6,  50797, "", "=q4=Ice-Reinforced Vrykul Helm",   "=ds=#s1#, #a3#",  "", "8.3%" },
			{ 7,  50789, "", "=q4=Icecrown Rampart Bracers",     "=ds=#s8#, #a3#",  "", "8.3%" },
			{ 8,  50793, "", "=q4=Midnight Sun",                 "=ds=#h3#, #w4#",  "", "8.3%" },
			{ 9,  50340, "", "=q4=Muradin's Spyglass",           "=ds=#s14#",       "", "8.3%" },
			{ 10, 50794, "", "=q4=Neverending Winter",           "=ds=#w8#",        "", "8.3%" },
			{ 11, 50792, "", "=q4=Pauldrons of Lost Hope",       "=ds=#s3#, #a3#",  "", "8.3%" },
			{ 12, 50791, "", "=q4=Saronite Gargoyle Cloak",      "=ds=#s4#",        "", "8.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  51913, "", "=q4=Abomination's Bloody Ring",    "=ds=#s13#",       "", "8.3%" },
			{ 2,  51915, "", "=q4=Bone Drake's Enameled Boots",  "=ds=#s12#, #a4#", "", "8.3%" },
			{ 3,  51907, "", "=q4=Bracers of Pale Illumination", "=ds=#s8#, #a4#",  "", "8.3%" },
			{ 4,  51908, "", "=q4=Cord of Dark Suffering",       "=ds=#s10#, #a2#", "", "8.3%" },
			{ 5,  51916, "", "=q4=Frost Giant's Cleaver",        "=ds=#h1#, #w1#",  "", "8.3%" },
			{ 6,  51906, "", "=q4=Ice-Reinforced Vrykul Helm",   "=ds=#s1#, #a3#",  "", "8.3%" },
			{ 7,  51914, "", "=q4=Icecrown Rampart Bracers",     "=ds=#s8#, #a3#",  "", "8.3%" },
			{ 8,  51910, "", "=q4=Midnight Sun",                 "=ds=#h3#, #w4#",  "", "8.3%" },
			{ 9,  50345, "", "=q4=Muradin's Spyglass",           "=ds=#s14#",       "", "8.3%" },
			{ 10, 51909, "", "=q4=Neverending Winter",           "=ds=#w8#",        "", "8.3%" },
			{ 11, 51911, "", "=q4=Pauldrons of Lost Hope",       "=ds=#s3#, #a3#",  "", "8.3%" },
			{ 12, 51912, "", "=q4=Saronite Gargoyle Cloak",      "=ds=#s4#",        "", "8.3%" },
			{ 16, 49908, "", "=q3=Primordial Saronite",          "=ds=#e6#",        "", "38%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  50359, "", "=q4=Althor's Abacus",                 "=ds=#s14#",       "", "6.7%" },
			{ 2,  50005, "", "=q4=Amulet of the Silent Eulogy",     "=ds=#s2#",        "", "6.7%" },
			{ 3,  50003, "", "=q4=Boneguard Commander's Pauldrons", "=ds=#s3#, #a4#",  "", "6.7%" },
			{ 4,  50009, "", "=q4=Boots of Unnatural Growth",       "=ds=#s12#, #a2#", "", "6.7%" },
			{ 5,  50006, "", "=q4=Corp'rethar Ceremonial Crown",    "=ds=#s1#, #a1#",  "", "6.7%" },
			{ 6,  50352, "", "=q4=Corpse Tongue Coin",              "=ds=#s14#",       "", "6.7%" },
			{ 7,  50011, "", "=q4=Gunship Captain's Mittens",       "=ds=#s9#, #a1#",  "", "6.7%" },
			{ 8,  50001, "", "=q4=Ikfirus' Sack of Wonder",         "=ds=#s5#, #a2#",  "", "6.7%" },
			{ 9,  50002, "", "=q4=Polar Bear Claw Bracers",         "=ds=#s8#, #a4#",  "", "6.7%" },
			{ 10, 50008, "", "=q4=Ring of Rapid Ascent",            "=ds=#s13#",       "", "6.7%" },
			{ 11, 50000, "", "=q4=Scourge Hunter's Vambraces",      "=ds=#s8#, #a3#",  "", "6.7%" },
			{ 12, 50411, "", "=q4=Scourgeborne Waraxe",             "=ds=#h1#, #w1#",  "", "6.7%" },
			{ 13, 49998, "", "=q4=Shadowvault Slayer's Cloak",      "=ds=#s4#",        "", "6.7%" },
			{ 14, 49999, "", "=q4=Skeleton Lord's Circle",          "=ds=#s13#",       "", "6.7%" },
			{ 15, 50010, "", "=q4=Waistband of Righteous Fury",     "=ds=#s10#, #a4#", "", "6.7%" },
			{ 16, 50274, "", "=q5=Shadowfrost Shard",               "=ds=#m3#",        "", "35%" },
			{ 18, 49908, "", "=q3=Primordial Saronite",             "=ds=#e6#",        "", "38%" },
		},
	},
	["25ManHeroic"] = {
		{
			{ 1,  50366, "", "=q4=Althor's Abacus",                 "=ds=#s14#",       "", "6.7%" },
			{ 2,  50658, "", "=q4=Amulet of the Silent Eulogy",     "=ds=#s2#",        "", "6.7%" },
			{ 3,  50660, "", "=q4=Boneguard Commander's Pauldrons", "=ds=#s3#, #a4#",  "", "6.7%" },
			{ 4,  50665, "", "=q4=Boots of Unnatural Growth",       "=ds=#s12#, #a2#", "", "6.7%" },
			{ 5,  50661, "", "=q4=Corp'rethar Ceremonial Crown",    "=ds=#s1#, #a1#",  "", "6.7%" },
			{ 6,  50349, "", "=q4=Corpse Tongue Coin",              "=ds=#s14#",       "", "6.7%" },
			{ 7,  50663, "", "=q4=Gunship Captain's Mittens",       "=ds=#s9#, #a1#",  "", "6.7%" },
			{ 8,  50656, "", "=q4=Ikfirus' Sack of Wonder",         "=ds=#s5#, #a2#",  "", "6.7%" },
			{ 9,  50659, "", "=q4=Polar Bear Claw Bracers",         "=ds=#s8#, #a4#",  "", "6.7%" },
			{ 10, 50664, "", "=q4=Ring of Rapid Ascent",            "=ds=#s13#",       "", "6.7%" },
			{ 11, 50655, "", "=q4=Scourge Hunter's Vambraces",      "=ds=#s8#, #a3#",  "", "6.7%" },
			{ 12, 50654, "", "=q4=Scourgeborne Waraxe",             "=ds=#h1#, #w1#",  "", "6.7%" },
			{ 13, 50653, "", "=q4=Shadowvault Slayer's Cloak",      "=ds=#s4#",        "", "6.7%" },
			{ 14, 50657, "", "=q4=Skeleton Lord's Circle",          "=ds=#s13#",       "", "6.7%" },
			{ 15, 50667, "", "=q4=Waistband of Righteous Fury",     "=ds=#s10#, #a4#", "", "6.7%" },
			{ 16, 50274, "", "=q5=Shadowfrost Shard",               "=ds=#m3#",        "", "75%" },
			{ 18, 49908, "", "=q3=Primordial Saronite",             "=ds=#e6#",        "", "50%" },
		},
	},
	info = {
		name = BabbleBoss["Icecrown Gunship Battle"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

Synastria_Data["IcecrownCitadelDeathbringerSaurfang"] = {
	["Normal"] = {
		{
			{ 1,  50801, "", "=q4=Blade-Scored Carapace",         "=ds=#s5#, #a4#",  "", "8.3%" },
			{ 2,  50808, "", "=q4=Deathforged Legplates",         "=ds=#s11#, #a4#", "", "8.3%" },
			{ 3,  50802, "", "=q4=Gargoyle Spit Bracers",         "=ds=#s8#, #a4#",  "", "8.3%" },
			{ 4,  50800, "", "=q4=Hauberk of a Thousand Cuts",    "=ds=#s5#, #a3#",  "", "8.3%" },
			{ 5,  50804, "", "=q4=Icecrown Spire Sandals",        "=ds=#s12#, #a1#", "", "8.3%" },
			{ 6,  50806, "", "=q4=Leggings of Unrelenting Blood", "=ds=#s11#, #a2#", "", "8.3%" },
			{ 7,  50805, "", "=q4=Mag'hari Chieftain's Staff",    "=ds=#w9#",        "", "8.3%" },
			{ 8,  50798, "", "=q4=Ramaladni's Blade of Culling",  "=ds=#h2#, #w1#",  "", "8.3%" },
			{ 9,  50803, "", "=q4=Saurfang's Cold-Forged Band",   "=ds=#s13#",       "", "8.3%" },
			{ 10, 50799, "", "=q4=Scourge Stranglers",            "=ds=#s9#, #a2#",  "", "8.3%" },
			{ 11, 50809, "", "=q4=Soulcleave Pendant",            "=ds=#s2#",        "", "8.3%" },
			{ 12, 50807, "", "=q4=Thaumaturge's Crackling Cowl",  "=ds=#s1#, #a1#",  "", "8.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  51902, "", "=q4=Blade-Scored Carapace",               "=ds=#s5#, #a4#",  "", "8.3%" },
			{ 2,  51895, "", "=q4=Deathforged Legplates",               "=ds=#s11#, #a4#", "", "8.3%" },
			{ 3,  51901, "", "=q4=Gargoyle Spit Bracers",               "=ds=#s8#, #a4#",  "", "8.3%" },
			{ 4,  51903, "", "=q4=Hauberk of a Thousand Cuts",          "=ds=#s5#, #a3#",  "", "8.3%" },
			{ 5,  51899, "", "=q4=Icecrown Spire Sandals",              "=ds=#s12#, #a1#", "", "8.3%" },
			{ 6,  51897, "", "=q4=Leggings of Unrelenting Blood",       "=ds=#s11#, #a2#", "", "8.3%" },
			{ 7,  51898, "", "=q4=Mag'hari Chieftain's Staff",          "=ds=#w9#",        "", "8.3%" },
			{ 8,  51905, "", "=q4=Ramaladni's Blade of Culling",        "=ds=#h2#, #w1#",  "", "8.3%" },
			{ 9,  51900, "", "=q4=Saurfang's Cold-Forged Band",         "=ds=#s13#",       "", "8.3%" },
			{ 10, 51904, "", "=q4=Scourge Stranglers",                  "=ds=#s9#, #a2#",  "", "8.3%" },
			{ 11, 51894, "", "=q4=Soulcleave Pendant",                  "=ds=#s2#",        "", "8.3%" },
			{ 12, 51896, "", "=q4=Thaumaturge's Crackling Cowl",        "=ds=#s1#, #a1#",  "", "8.3%" },
			{ 16, 52027, "", "=q4=Conqueror's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 17, 52026, "", "=q4=Protector's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 18, 52025, "", "=q4=Vanquisher's Mark of Sanctification", "=ds=#m43# #e15#", "", "33.3%" },
			{ 20, 49908, "", "=q3=Primordial Saronite",                 "=ds=#e6#",        "", "20%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  50015, "", "=q4=Belt of the Blood Nova",              "=ds=#s10#, #a3#", "", "20%" },
			{ 2,  50412, "", "=q4=Bloodvenom Blade",                    "=ds=#h1#, #w10#", "", "20%" },
			{ 3,  50362, "", "=q4=Deathbringer's Will",                 "=ds=#s14#",       "", "20%" },
			{ 4,  50014, "", "=q4=Greatcloak of the Turned Champion",   "=ds=#s4#",        "", "20%" },
			{ 5,  50333, "", "=q4=Toskk's Maximized Wristguards",       "=ds=#s8#, #a2#",  "", "20%" },
			{ 16, 52027, "", "=q4=Conqueror's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 17, 52026, "", "=q4=Protector's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 18, 52025, "", "=q4=Vanquisher's Mark of Sanctification", "=ds=#m43# #e15#", "", "33.3%" },
			{ 20, 50274, "", "=q5=Shadowfrost Shard",                   "=ds=#m3#",        "", "38%" },
			{ 22, 49908, "", "=q3=Primordial Saronite",                 "=ds=#e6#",        "", "20%" },
		},
	},
	["25ManHeroic"] = {
		{
			{ 1,  50671, "", "=q4=Belt of the Blood Nova",              "=ds=#s10#, #a3#", "", "20%" },
			{ 2,  50672, "", "=q4=Bloodvenom Blade",                    "=ds=#h1#, #w10#", "", "20%" },
			{ 3,  50363, "", "=q4=Deathbringer's Will",                 "=ds=#s14#",       "", "20%" },
			{ 4,  50668, "", "=q4=Greatcloak of the Turned Champion",   "=ds=#s4#",        "", "20%" },
			{ 5,  50670, "", "=q4=Toskk's Maximized Wristguards",       "=ds=#s8#, #a2#",  "", "20%" },
			{ 16, 52030, "", "=q4=Conqueror's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 17, 52029, "", "=q4=Protector's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 18, 52028, "", "=q4=Vanquisher's Mark of Sanctification", "=ds=#m43# #e15#", "", "33.3%" },
			{ 20, 52027, "", "=q4=Conqueror's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 21, 52026, "", "=q4=Protector's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 22, 52025, "", "=q4=Vanquisher's Mark of Sanctification", "=ds=#m43# #e15#", "", "33.3%" },
			{ 24, 50274, "", "=q5=Shadowfrost Shard",                   "=ds=#m3#",        "", "68%" },
			{ 26, 49908, "", "=q3=Primordial Saronite",                 "=ds=#e6#",        "", "20%" },
		},
	},
	info = {
		name = BabbleBoss["Deathbringer Saurfang"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

-----------------------
--- The Plagueworks ---
-----------------------

Synastria_Data["IcecrownCitadelFestergut"] = {
	["Normal"] = {
		{
			{ 1,  50966, "", "=q4=Abracadaver",                           "=ds=#w9#",        "", "8.3%" },
			{ 2,  50988, "", "=q4=Bloodstained Surgeon's Shoulderguards", "=ds=#s3#, #a1#",  "", "8.3%" },
			{ 3,  50859, "", "=q4=Cloak of Many Skins",                   "=ds=#s4#",        "", "8.3%" },
			{ 4,  50967, "", "=q4=Festergut's Gaseous Gloves",            "=ds=#s9#, #a4#",  "", "8.3%" },
			{ 5,  50811, "", "=q4=Festering Fingerguards",                "=ds=#s9#, #a4#",  "", "8.3%" },
			{ 6,  50810, "", "=q4=Gutbuster",                             "=ds=#h1#, #w6#",  "", "8.3%" },
			{ 7,  50990, "", "=q4=Kilt of Untreated Wounds",              "=ds=#s11#, #a1#", "", "8.3%" },
			{ 8,  50858, "", "=q4=Plague-Soaked Leather Leggings",        "=ds=#s11#, #a2#", "", "8.3%" },
			{ 9,  50852, "", "=q4=Precious' Putrid Collar",               "=ds=#s2#",        "", "8.3%" },
			{ 10, 50986, "", "=q4=Signet of Putrefaction",                "=ds=#s13#",       "", "8.3%" },
			{ 11, 50812, "", "=q4=Taldron's Long Neglected Boots",        "=ds=#s12#, #a3#", "", "8.3%" },
			{ 12, 50985, "", "=q4=Wrists of Septic Shock",                "=ds=#s8#, #a2#",  "", "8.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  51887, "", "=q4=Abracadaver",                           "=ds=#w9#",        "", "8.3%" },
			{ 2,  51883, "", "=q4=Bloodstained Surgeon's Shoulderguards", "=ds=#s3#, #a1#",  "", "8.3%" },
			{ 3,  51888, "", "=q4=Cloak of Many Skins",                   "=ds=#s4#",        "", "8.3%" },
			{ 4,  51886, "", "=q4=Festergut's Gaseous Gloves",            "=ds=#s9#, #a4#",  "", "8.3%" },
			{ 5,  51892, "", "=q4=Festering Fingerguards",                "=ds=#s9#, #a4#",  "", "8.3%" },
			{ 6,  51893, "", "=q4=Gutbuster",                             "=ds=#h1#, #w6#",  "", "8.3%" },
			{ 7,  51882, "", "=q4=Kilt of Untreated Wounds",              "=ds=#s11#, #a1#", "", "8.3%" },
			{ 8,  51889, "", "=q4=Plague-Soaked Leather Leggings",        "=ds=#s11#, #a2#", "", "8.3%" },
			{ 9,  51890, "", "=q4=Precious' Putrid Collar",               "=ds=#s2#",        "", "8.3%" },
			{ 10, 51884, "", "=q4=Signet of Putrefaction",                "=ds=#s13#",       "", "8.3%" },
			{ 11, 51891, "", "=q4=Taldron's Long Neglected Boots",        "=ds=#s12#, #a3#", "", "8.3%" },
			{ 12, 51885, "", "=q4=Wrists of Septic Shock",                "=ds=#s8#, #a2#",  "", "8.3%" },
			{ 16, 49908, "", "=q3=Primordial Saronite",                   "=ds=#e6#",        "", "38%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  50036, "", "=q4=Belt of Broken Bones",              "=ds=#s10#, #a4#", "", "6.3%" },
			{ 2,  50035, "", "=q4=Black Bruise",                      "=ds=#h3#, #w13#", "", "6.3%" },
			{ 3,  50038, "", "=q4=Carapace of Forgotten Kings",       "=ds=#s5#, #a3#",  "", "6.3%" },
			{ 4,  50040, "", "=q4=Distant Land",                      "=ds=#w9#",        "", "6.3%" },
			{ 5,  50060, "", "=q4=Faceplate of the Forgotten",        "=ds=#s1#, #a4#",  "", "6.3%" },
			{ 6,  50037, "", "=q4=Fleshrending Gauntlets",            "=ds=#s9#, #a4#",  "", "6.3%" },
			{ 7,  50042, "", "=q4=Gangrenous Leggings",               "=ds=#s11#, #a2#", "", "6.3%" },
			{ 8,  50061, "", "=q4=Holiday's Grace",                   "=ds=#s2#",        "", "6.3%" },
			{ 9,  50059, "", "=q4=Horrific Flesh Epaulets",           "=ds=#s3#, #a3#",  "", "6.3%" },
			{ 10, 50041, "", "=q4=Leather of Stitched Scourge Parts", "=ds=#s11#, #a2#", "", "6.3%" },
			{ 11, 50063, "", "=q4=Lingering Illness",                 "=ds=#s10#, #a1#", "", "6.3%" },
			{ 12, 50414, "", "=q4=Might of Blight",                   "=ds=#s13#",       "", "6.3%" },
			{ 13, 50413, "", "=q4=Nerub'ar Stalker's Cord",           "=ds=#s10#, #a3#", "", "6.3%" },
			{ 14, 50062, "", "=q4=Plague Scientist's Boots",          "=ds=#s12#, #a1#", "", "6.3%" },
			{ 15, 50056, "", "=q4=Plaguebringer's Stained Pants",     "=ds=#s11#, #a1#", "", "6.3%" },
			{ 16, 50064, "", "=q4=Unclean Surgical Gloves",           "=ds=#s9#, #a3#",  "", "6.3%" },
			{ 18, 50226, "", "=q4=Festergut's Acidic Blood",          "=ds=#m3#",        "", "100%" },
			{ 19, 50274, "", "=q5=Shadowfrost Shard",                 "=ds=#m3#",        "", "38%" },
			{ 21, 49908, "", "=q3=Primordial Saronite",               "=ds=#e6#",        "", "38%" },
		},
	},
	["25ManHeroic"] = {
		{
			{ 1,  50691, "", "=q4=Belt of Broken Bones",              "=ds=#s10#, #a4#", "", "6.3%" },
			{ 2,  50692, "", "=q4=Black Bruise",                      "=ds=#h3#, #w13#", "", "6.3%" },
			{ 3,  50689, "", "=q4=Carapace of Forgotten Kings",       "=ds=#s5#, #a3#",  "", "6.3%" },
			{ 4,  50695, "", "=q4=Distant Land",                      "=ds=#w9#",        "", "6.3%" },
			{ 5,  50701, "", "=q4=Faceplate of the Forgotten",        "=ds=#s1#, #a4#",  "", "6.3%" },
			{ 6,  50690, "", "=q4=Fleshrending Gauntlets",            "=ds=#s9#, #a4#",  "", "6.3%" },
			{ 7,  50697, "", "=q4=Gangrenous Leggings",               "=ds=#s11#, #a2#", "", "6.3%" },
			{ 8,  50700, "", "=q4=Holiday's Grace",                   "=ds=#s2#",        "", "6.3%" },
			{ 9,  50698, "", "=q4=Horrific Flesh Epaulets",           "=ds=#s3#, #a3#",  "", "6.3%" },
			{ 10, 50696, "", "=q4=Leather of Stitched Scourge Parts", "=ds=#s11#, #a2#", "", "6.3%" },
			{ 11, 50702, "", "=q4=Lingering Illness",                 "=ds=#s10#, #a1#", "", "6.3%" },
			{ 12, 50693, "", "=q4=Might of Blight",                   "=ds=#s13#",       "", "6.3%" },
			{ 13, 50688, "", "=q4=Nerub'ar Stalker's Cord",           "=ds=#s10#, #a3#", "", "6.3%" },
			{ 14, 50699, "", "=q4=Plague Scientist's Boots",          "=ds=#s12#, #a1#", "", "6.3%" },
			{ 15, 50694, "", "=q4=Plaguebringer's Stained Pants",     "=ds=#s11#, #a1#", "", "6.3%" },
			{ 16, 50703, "", "=q4=Unclean Surgical Gloves",           "=ds=#s9#, #a3#",  "", "6.3%" },
			{ 18, 50226, "", "=q4=Festergut's Acidic Blood",          "=ds=#m3#",        "", "100%" },
			{ 19, 50274, "", "=q5=Shadowfrost Shard",                 "=ds=#m3#",        "", "68%" },
			{ 21, 49908, "", "=q3=Primordial Saronite",               "=ds=#e6#",        "", "38%" },
		},
	},
	info = {
		name = BabbleBoss["Festergut"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

Synastria_Data["IcecrownCitadelRotface"] = {
	["Normal"] = {
		{
			{ 1,  51003, "", "=q4=Abomination Knuckles",                "=ds=#h3#, #w13#", "", "8.3%" },
			{ 2,  51009, "", "=q4=Chestguard of the Failed Experiment", "=ds=#s5#, #a2#",  "", "8.3%" },
			{ 3,  51008, "", "=q4=Choker of Filthy Diamonds",           "=ds=#s2#",        "", "8.3%" },
			{ 4,  51007, "", "=q4=Ether-Soaked Bracers",                "=ds=#s8#, #a1#",  "", "8.3%" },
			{ 5,  51000, "", "=q4=Flesh-Shaper's Gurney Strap",         "=ds=#s10#, #a4#", "", "8.3%" },
			{ 6,  51005, "", "=q4=Gloves of Broken Fingers",            "=ds=#s9#, #a1#",  "", "8.3%" },
			{ 7,  50999, "", "=q4=Gluth's Fetching Knife",              "=ds=#w11#",       "", "8.3%" },
			{ 8,  51004, "", "=q4=Lockjaw",                             "=ds=#h3#, #w6#",  "", "8.3%" },
			{ 9,  51001, "", "=q4=Rotface's Rupturing Ring",            "=ds=#s13#",       "", "8.3%" },
			{ 10, 50998, "", "=q4=Shaft of Glacial Ice",                "=ds=#w9#",        "", "8.3%" },
			{ 11, 51006, "", "=q4=Shuffling Shoes",                     "=ds=#s12#, #a3#", "", "8.3%" },
			{ 12, 51002, "", "=q4=Taldron's Short-Sighted Helm",        "=ds=#s1#, #a3#",  "", "8.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  51876, "", "=q4=Abomination Knuckles",                "=ds=#h3#, #w13#", "", "8.3%" },
			{ 2,  51870, "", "=q4=Chestguard of the Failed Experiment", "=ds=#s5#, #a2#",  "", "8.3%" },
			{ 3,  51871, "", "=q4=Choker of Filthy Diamonds",           "=ds=#s2#",        "", "8.3%" },
			{ 4,  51872, "", "=q4=Ether-Soaked Bracers",                "=ds=#s8#, #a1#",  "", "8.3%" },
			{ 5,  51879, "", "=q4=Flesh-Shaper's Gurney Strap",         "=ds=#s10#, #a4#", "", "8.3%" },
			{ 6,  51874, "", "=q4=Gloves of Broken Fingers",            "=ds=#s9#, #a1#",  "", "8.3%" },
			{ 7,  51880, "", "=q4=Gluth's Fetching Knife",              "=ds=#w11#",       "", "8.3%" },
			{ 8,  51875, "", "=q4=Lockjaw",                             "=ds=#h3#, #w6#",  "", "8.3%" },
			{ 9,  51878, "", "=q4=Rotface's Rupturing Ring",            "=ds=#s13#",       "", "8.3%" },
			{ 10, 51881, "", "=q4=Shaft of Glacial Ice",                "=ds=#w9#",        "", "8.3%" },
			{ 11, 51873, "", "=q4=Shuffling Shoes",                     "=ds=#s12#, #a3#", "", "8.3%" },
			{ 12, 51877, "", "=q4=Taldron's Short-Sighted Helm",        "=ds=#s1#, #a3#",  "", "8.3%" },
			{ 16, 49908, "", "=q3=Primordial Saronite",                 "=ds=#e6#",        "", "38%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  50021, "", "=q4=Aldriana's Gloves of Secrecy",     "=ds=#s9#, #a2#", "", "6.7%" },
			{ 2,  50023, "", "=q4=Bile-Encrusted Medallion",         "=ds=#s2#",       "", "6.7%" },
			{ 3,  50024, "", "=q4=Blightborne Warplate",             "=ds=#s5#, #a4#", "", "6.7%" },
			{ 4,  50030, "", "=q4=Bloodsunder's Bracers",            "=ds=#s8#, #a3#", "", "6.7%" },
			{ 5,  50033, "", "=q4=Corpse-Impaling Spike",            "=ds=#w12#",      "", "6.7%" },
			{ 6,  50032, "", "=q4=Death Surgeon's Sleeves",          "=ds=#s8#, #a1#", "", "6.7%" },
			{ 7,  50353, "", "=q4=Dislodged Foreign Object",         "=ds=#s14#",      "", "6.7%" },
			{ 8,  50022, "", "=q4=Dual-Bladed Pauldrons",            "=ds=#s3#, #a3#", "", "6.7%" },
			{ 9,  50026, "", "=q4=Helm of the Elder Moon",           "=ds=#s1#, #a2#", "", "6.7%" },
			{ 10, 50020, "", "=q4=Raging Behemoth's Shoulderplates", "=ds=#s3#, #a4#", "", "6.7%" },
			{ 11, 50016, "", "=q4=Rib Spreader",                     "=ds=#h1#, #w4#", "", "6.7%" },
			{ 12, 50027, "", "=q4=Rot-Resistant Breastplate",        "=ds=#s5#, #a4#", "", "6.7%" },
			{ 13, 50025, "", "=q4=Seal of Many Mouths",              "=ds=#s13#",      "", "6.7%" },
			{ 14, 50028, "", "=q4=Trauma",                           "=ds=#h3#, #w6#", "", "6.7%" },
			{ 15, 50019, "", "=q4=Winding Sheet",                    "=ds=#s4#",       "", "6.7%" },
			{ 16, 50231, "", "=q4=Rotface's Acidic Blood",           "=ds=#m3#",       "", "100%" },
			{ 17, 50274, "", "=q5=Shadowfrost Shard",                "=ds=#m3#",       "", "38%" },
			{ 19, 49908, "", "=q3=Primordial Saronite",              "=ds=#e6#",       "", "38%" },
		},
	},
	["25ManHeroic"] = {
		{
			{ 1,  50675, "", "=q4=Aldriana's Gloves of Secrecy",     "=ds=#s9#, #a2#", "", "6.7%" },
			{ 2,  50682, "", "=q4=Bile-Encrusted Medallion",         "=ds=#s2#",       "", "6.7%" },
			{ 3,  50681, "", "=q4=Blightborne Warplate",             "=ds=#s5#, #a4#", "", "6.7%" },
			{ 4,  50687, "", "=q4=Bloodsunder's Bracers",            "=ds=#s8#, #a3#", "", "6.7%" },
			{ 5,  50684, "", "=q4=Corpse-Impaling Spike",            "=ds=#w12#",      "", "6.7%" },
			{ 6,  50686, "", "=q4=Death Surgeon's Sleeves",          "=ds=#s8#, #a1#", "", "6.7%" },
			{ 7,  50348, "", "=q4=Dislodged Foreign Object",         "=ds=#s14#",      "", "6.7%" },
			{ 8,  50673, "", "=q4=Dual-Bladed Pauldrons",            "=ds=#s3#, #a3#", "", "6.7%" },
			{ 9,  50679, "", "=q4=Helm of the Elder Moon",           "=ds=#s1#, #a2#", "", "6.7%" },
			{ 10, 50674, "", "=q4=Raging Behemoth's Shoulderplates", "=ds=#s3#, #a4#", "", "6.7%" },
			{ 11, 50676, "", "=q4=Rib Spreader",                     "=ds=#h1#, #w4#", "", "6.7%" },
			{ 12, 50680, "", "=q4=Rot-Resistant Breastplate",        "=ds=#s5#, #a4#", "", "6.7%" },
			{ 13, 50678, "", "=q4=Seal of Many Mouths",              "=ds=#s13#",      "", "6.7%" },
			{ 14, 50685, "", "=q4=Trauma",                           "=ds=#h3#, #w6#", "", "6.7%" },
			{ 15, 50677, "", "=q4=Winding Sheet",                    "=ds=#s4#",       "", "6.7%" },
			{ 16, 50231, "", "=q4=Rotface's Acidic Blood",           "=ds=#m3#",       "", "100%" },
			{ 17, 50274, "", "=q5=Shadowfrost Shard",                "=ds=#m3#",       "", "68%" },
			{ 19, 49908, "", "=q3=Primordial Saronite",              "=ds=#e6#",       "", "38%" },
		},
	},
	info = {
		name = BabbleBoss["Rotface"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

Synastria_Data["IcecrownCitadelProfessorPutricide"] = {
	["Normal"] = {
		{
			{ 1,  51017, "", "=q4=Cauterized Cord",                   "=ds=#s10#, #a1#", "", "8.3%" },
			{ 2,  51018, "", "=q4=Chestplate of Septic Stitches",     "=ds=#s5#, #a4#",  "", "8.3%" },
			{ 3,  51013, "", "=q4=Discarded Bag of Entrails",         "=ds=#s1#, #a2#",  "", "8.3%" },
			{ 4,  51011, "", "=q4=Flesh-Carving Scalpel",             "=ds=#h1#, #w4#",  "", "8.3%" },
			{ 5,  51012, "", "=q4=Infected Choker",                   "=ds=#s2#",        "", "8.3%" },
			{ 6,  51016, "", "=q4=Pendant of Split Veins",            "=ds=#s2#",        "", "8.3%" },
			{ 7,  51019, "", "=q4=Rippling Flesh Kilt",               "=ds=#s11#, #a3#", "", "8.3%" },
			{ 8,  51014, "", "=q4=Scalpel-Sharpening Shoulderguards", "=ds=#s3#, #a4#",  "", "8.3%" },
			{ 9,  51015, "", "=q4=Shoulderpads of the Morbid Ritual", "=ds=#s3#, #a3#",  "", "8.3%" },
			{ 10, 51020, "", "=q4=Shoulders of Ruinous Senility",     "=ds=#s3#, #a1#",  "", "8.3%" },
			{ 11, 51010, "", "=q4=The Facelifter",                    "=ds=#h1#, #w10#", "", "8.3%" },
			{ 12, 50341, "", "=q4=Unidentifiable Organ",              "=ds=#s14#",       "", "8.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  51862, "", "=q4=Cauterized Cord",                     "=ds=#s10#, #a1#", "", "8.3%" },
			{ 2,  51861, "", "=q4=Chestplate of Septic Stitches",       "=ds=#s5#, #a4#",  "", "8.3%" },
			{ 3,  51866, "", "=q4=Discarded Bag of Entrails",           "=ds=#s1#, #a2#",  "", "8.3%" },
			{ 4,  51868, "", "=q4=Flesh-Carving Scalpel",               "=ds=#h1#, #w4#",  "", "8.3%" },
			{ 5,  51867, "", "=q4=Infected Choker",                     "=ds=#s2#",        "", "8.3%" },
			{ 6,  51863, "", "=q4=Pendant of Split Veins",              "=ds=#s2#",        "", "8.3%" },
			{ 7,  51860, "", "=q4=Rippling Flesh Kilt",                 "=ds=#s11#, #a3#", "", "8.3%" },
			{ 8,  51865, "", "=q4=Scalpel-Sharpening Shoulderguards",   "=ds=#s3#, #a4#",  "", "8.3%" },
			{ 9,  51864, "", "=q4=Shoulderpads of the Morbid Ritual",   "=ds=#s3#, #a3#",  "", "8.3%" },
			{ 10, 51859, "", "=q4=Shoulders of Ruinous Senility",       "=ds=#s3#, #a1#",  "", "8.3%" },
			{ 11, 51869, "", "=q4=The Facelifter",                      "=ds=#h1#, #w10#", "", "8.3%" },
			{ 12, 50344, "", "=q4=Unidentifiable Organ",                "=ds=#s14#",       "", "8.3%" },
			{ 16, 52027, "", "=q4=Conqueror's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 17, 52026, "", "=q4=Protector's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 18, 52025, "", "=q4=Vanquisher's Mark of Sanctification", "=ds=#m43# #e15#", "", "33.3%" },
			{ 20, 49908, "", "=q3=Primordial Saronite",                 "=ds=#e6#",        "", "38%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  50067, "", "=q4=Astrylian's Sutured Cinch",           "=ds=#s10#, #a2#", "", "20%" },
			{ 2,  50179, "", "=q4=Last Word",                           "=ds=#h1#, #w6#",  "", "20%" },
			{ 3,  50069, "", "=q4=Professor's Bloodied Smock",          "=ds=#s10#, #a2#", "", "20%" },
			{ 4,  50068, "", "=q4=Rigormortis",                         "=ds=#h3#, #w10#", "", "20%" },
			{ 5,  50351, "", "=q4=Tiny Abomination in a Jar",           "=ds=#s14#",       "", "20%" },
			{ 16, 52027, "", "=q4=Conqueror's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 17, 52026, "", "=q4=Protector's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 18, 52025, "", "=q4=Vanquisher's Mark of Sanctification", "=ds=#m43# #e15#", "", "33.3%" },
			{ 20, 50274, "", "=q5=Shadowfrost Shard",                   "=ds=#m3#",        "", "38%" },
			{ 22, 49908, "", "=q3=Primordial Saronite",                 "=ds=#e6#",        "", "38%" },
		},
	},
	["25ManHeroic"] = {
		{
			{ 1,  50707, "", "=q4=Astrylian's Sutured Cinch",           "=ds=#s10#, #a2#", "", "20%" },
			{ 2,  50708, "", "=q4=Last Word",                           "=ds=#h1#, #w6#",  "", "20%" },
			{ 3,  50705, "", "=q4=Professor's Bloodied Smock",          "=ds=#s10#, #a2#", "", "20%" },
			{ 4,  50704, "", "=q4=Rigormortis",                         "=ds=#h3#, #w10#", "", "20%" },
			{ 5,  50706, "", "=q4=Tiny Abomination in a Jar",           "=ds=#s14#",       "", "20%" },
			{ 16, 52030, "", "=q4=Conqueror's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 17, 52029, "", "=q4=Protector's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 18, 52028, "", "=q4=Vanquisher's Mark of Sanctification", "=ds=#m43# #e15#", "", "33.3%" },
			{ 20, 52027, "", "=q4=Conqueror's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 21, 52026, "", "=q4=Protector's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 22, 52025, "", "=q4=Vanquisher's Mark of Sanctification", "=ds=#m43# #e15#", "", "33.3%" },
			{ 24, 50274, "", "=q5=Shadowfrost Shard",                   "=ds=#m3#",        "", "68%" },
			{ 26, 49908, "", "=q3=Primordial Saronite",                 "=ds=#e6#",        "", "38%" },
		},
	},
	info = {
		name = BabbleBoss["Professor Putricide"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

------------------------
--- The Crimson Hall ---
------------------------

Synastria_Data["IcecrownCitadelBloodPrinceCouncil"] = {
	["Normal"] = {
		{
			{ 1,  51025, "", "=q4=Battle-Maiden's Legguards",      "=ds=#s11#, #a4#", "", "8.3%" },
			{ 2,  51325, "", "=q4=Blood-Drinker's Girdle",         "=ds=#s10#, #a3#", "", "8.3%" },
			{ 3,  51379, "", "=q4=Bloodsoul Raiment",              "=ds=#s5#, #a1#",  "", "8.3%" },
			{ 4,  51381, "", "=q4=Cerise Coiled Ring",             "=ds=#s13#",       "", "8.3%" },
			{ 5,  51382, "", "=q4=Heartsick Mender's Cape",        "=ds=#s4#",        "", "8.3%" },
			{ 6,  51022, "", "=q4=Hersir's Greatspear",            "=ds=#w7#",        "", "8.3%" },
			{ 7,  51380, "", "=q4=Pale Corpse Boots",              "=ds=#s12#, #a1#", "", "8.3%" },
			{ 8,  51021, "", "=q4=Soulbreaker",                    "=ds=#h1#, #w10#", "", "8.3%" },
			{ 9,  51383, "", "=q4=Spaulders of the Blood Princes", "=ds=#s3#, #a4#",  "", "8.3%" },
			{ 10, 51023, "", "=q4=Taldaram's Soft Slippers",       "=ds=#s12#, #a2#", "", "8.3%" },
			{ 11, 51024, "", "=q4=Thrice Fanged Signet",           "=ds=#s13#",       "", "8.3%" },
			{ 12, 51326, "", "=q4=Wand of Ruby Claret",            "=ds=#w12#",       "", "8.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  51854, "", "=q4=Battle-Maiden's Legguards",      "=ds=#s11#, #a4#", "", "8.3%" },
			{ 2,  51853, "", "=q4=Blood-Drinker's Girdle",         "=ds=#s10#, #a3#", "", "8.3%" },
			{ 3,  51851, "", "=q4=Bloodsoul Raiment",              "=ds=#s5#, #a1#",  "", "8.3%" },
			{ 4,  51849, "", "=q4=Cerise Coiled Ring",             "=ds=#s13#",       "", "8.3%" },
			{ 5,  51848, "", "=q4=Heartsick Mender's Cape",        "=ds=#s4#",        "", "8.3%" },
			{ 6,  51857, "", "=q4=Hersir's Greatspear",            "=ds=#w7#",        "", "8.3%" },
			{ 7,  51850, "", "=q4=Pale Corpse Boots",              "=ds=#s12#, #a1#", "", "8.3%" },
			{ 8,  51858, "", "=q4=Soulbreaker",                    "=ds=#h1#, #w10#", "", "8.3%" },
			{ 9,  51847, "", "=q4=Spaulders of the Blood Princes", "=ds=#s3#, #a4#",  "", "8.3%" },
			{ 10, 51856, "", "=q4=Taldaram's Soft Slippers",       "=ds=#s12#, #a2#", "", "8.3%" },
			{ 11, 51855, "", "=q4=Thrice Fanged Signet",           "=ds=#s13#",       "", "8.3%" },
			{ 12, 51852, "", "=q4=Wand of Ruby Claret",            "=ds=#w12#",       "", "8.3%" },
			{ 16, 49908, "", "=q3=Primordial Saronite",            "=ds=#e6#",        "", "38%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  50175, "", "=q4=Crypt Keeper's Bracers",           "=ds=#s8#, #a4#",  "", "6.7%" },
			{ 2,  49919, "", "=q4=Cryptmaker",                       "=ds=#h2#, #w6#",  "", "6.7%" },
			{ 3,  50073, "", "=q4=Geistlord's Punishment Sack",      "=ds=#s1#, #a2#",  "", "6.7%" },
			{ 4,  50174, "", "=q4=Incarnadine Band of Mending",      "=ds=#s13#",       "", "6.7%" },
			{ 5,  50184, "", "=q4=Keleseth's Seducer",               "=ds=#h4#, #w13#", "", "6.7%" },
			{ 6,  50072, "", "=q4=Landsoul's Horned Greathelm",      "=ds=#s1#, #a4#",  "", "6.7%" },
			{ 7,  50177, "", "=q4=Mail of Crimson Coins",            "=ds=#s5#, #a3#",  "", "6.7%" },
			{ 8,  50074, "", "=q4=Royal Crimson Cloak",              "=ds=#s4#",        "", "6.7%" },
			{ 9,  50176, "", "=q4=San'layn Ritualist Gloves",        "=ds=#s9#, #a1#",  "", "6.7%" },
			{ 10, 50172, "", "=q4=Sanguine Silk Robes",              "=ds=#s5#, #a1#",  "", "6.7%" },
			{ 11, 50173, "", "=q4=Shadow Silk Spindle",              "=ds=#s15#",       "", "6.7%" },
			{ 12, 50171, "", "=q4=Shoulders of Frost-Tipped Thorns", "=ds=#s3#, #a2#",  "", "6.7%" },
			{ 13, 50075, "", "=q4=Taldaram's Plated Fists",          "=ds=#s9#, #a4#",  "", "6.7%" },
			{ 14, 50071, "", "=q4=Treads of the Wasteland",          "=ds=#s12#, #a3#", "", "6.7%" },
			{ 15, 50170, "", "=q4=Valanar's Other Signet Ring",      "=ds=#s13#",       "", "6.7%" },
			{ 16, 50274, "", "=q5=Shadowfrost Shard",                "=ds=#m3#",        "", "38%" },
			{ 18, 49908, "", "=q3=Primordial Saronite",              "=ds=#e6#",        "", "38%" },
		},
	},
	["25ManHeroic"] = {
		{
			{ 1,  50721, "", "=q4=Crypt Keeper's Bracers",           "=ds=#s8#, #a4#",  "", "6.7%" },
			{ 2,  50603, "", "=q4=Cryptmaker",                       "=ds=#h2#, #w6#",  "", "6.7%" },
			{ 3,  50713, "", "=q4=Geistlord's Punishment Sack",      "=ds=#s1#, #a2#",  "", "6.7%" },
			{ 4,  50720, "", "=q4=Incarnadine Band of Mending",      "=ds=#s13#",       "", "6.7%" },
			{ 5,  50710, "", "=q4=Keleseth's Seducer",               "=ds=#h4#, #w13#", "", "6.7%" },
			{ 6,  50712, "", "=q4=Landsoul's Horned Greathelm",      "=ds=#s1#, #a4#",  "", "6.7%" },
			{ 7,  50723, "", "=q4=Mail of Crimson Coins",            "=ds=#s5#, #a3#",  "", "6.7%" },
			{ 8,  50718, "", "=q4=Royal Crimson Cloak",              "=ds=#s4#",        "", "6.7%" },
			{ 9,  50722, "", "=q4=San'layn Ritualist Gloves",        "=ds=#s9#, #a1#",  "", "6.7%" },
			{ 10, 50717, "", "=q4=Sanguine Silk Robes",              "=ds=#s5#, #a1#",  "", "6.7%" },
			{ 11, 50719, "", "=q4=Shadow Silk Spindle",              "=ds=#s15#",       "", "6.7%" },
			{ 12, 50715, "", "=q4=Shoulders of Frost-Tipped Thorns", "=ds=#s3#, #a2#",  "", "6.7%" },
			{ 13, 50716, "", "=q4=Taldaram's Plated Fists",          "=ds=#s9#, #a4#",  "", "6.7%" },
			{ 14, 50711, "", "=q4=Treads of the Wasteland",          "=ds=#s12#, #a3#", "", "6.7%" },
			{ 15, 50714, "", "=q4=Valanar's Other Signet Ring",      "=ds=#s13#",       "", "6.7%" },
			{ 16, 50274, "", "=q5=Shadowfrost Shard",                "=ds=#m3#",        "", "68%" },
			{ 18, 49908, "", "=q3=Primordial Saronite",              "=ds=#e6#",        "", "38%" },
		},
	},
	info = {
		name = BabbleBoss["Blood Prince Council"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

Synastria_Data["IcecrownCitadelBloodQueenLanathel"] = {
	["Normal"] = {
		{
			{ 1,  51384, "", "=q4=Bloodsipper",                      "=ds=#h1#, #w4#",  "", "8.3%" },
			{ 2,  51551, "", "=q4=Chestguard of Siphoned Elements",  "=ds=#s5#, #a3#",  "", "8.3%" },
			{ 3,  51548, "", "=q4=Collar of Haughty Disdain",        "=ds=#s2#",        "", "8.3%" },
			{ 4,  51554, "", "=q4=Cowl of Malefic Repose",           "=ds=#s1#, #a1#",  "", "8.3%" },
			{ 5,  51550, "", "=q4=Ivory-Inlaid Leggings",            "=ds=#s11#, #a2#", "", "8.3%" },
			{ 6,  51553, "", "=q4=Lana'thel's Bloody Nail",          "=ds=#w12#",       "", "8.3%" },
			{ 7,  51387, "", "=q4=Seal of the Twilight Queen",       "=ds=#s13#",       "", "8.3%" },
			{ 8,  51552, "", "=q4=Shoulderpads of the Searing Kiss", "=ds=#s3#, #a2#",  "", "8.3%" },
			{ 9,  51385, "", "=q4=Stakethrower",                     "=ds=#w5#",        "", "8.3%" },
			{ 10, 51386, "", "=q4=Throatrender Handguards",          "=ds=#s9#, #a4#",  "", "8.3%" },
			{ 11, 51555, "", "=q4=Tightening Waistband",             "=ds=#s10#, #a4#", "", "8.3%" },
			{ 12, 51556, "", "=q4=Veincrusher Gauntlets",            "=ds=#s9#, #a4#",  "", "8.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  51846, "", "=q4=Bloodsipper",                         "=ds=#h1#, #w4#",  "", "8.3%" },
			{ 2,  51840, "", "=q4=Chestguard of Siphoned Elements",     "=ds=#s5#, #a3#",  "", "8.3%" },
			{ 3,  51842, "", "=q4=Collar of Haughty Disdain",           "=ds=#s2#",        "", "8.3%" },
			{ 4,  51837, "", "=q4=Cowl of Malefic Repose",              "=ds=#s1#, #a1#",  "", "8.3%" },
			{ 5,  51841, "", "=q4=Ivory-Inlaid Leggings",               "=ds=#s11#, #a2#", "", "8.3%" },
			{ 6,  51838, "", "=q4=Lana'thel's Bloody Nail",             "=ds=#w12#",       "", "8.3%" },
			{ 7,  51843, "", "=q4=Seal of the Twilight Queen",          "=ds=#s13#",       "", "8.3%" },
			{ 8,  51839, "", "=q4=Shoulderpads of the Searing Kiss",    "=ds=#s3#, #a2#",  "", "8.3%" },
			{ 9,  51845, "", "=q4=Stakethrower",                        "=ds=#w5#",        "", "8.3%" },
			{ 10, 51844, "", "=q4=Throatrender Handguards",             "=ds=#s9#, #a4#",  "", "8.3%" },
			{ 11, 51836, "", "=q4=Tightening Waistband",                "=ds=#s10#, #a4#", "", "8.3%" },
			{ 12, 51835, "", "=q4=Veincrusher Gauntlets",               "=ds=#s9#, #a4#",  "", "8.3%" },
			{ 16, 52027, "", "=q4=Conqueror's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 17, 52026, "", "=q4=Protector's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 18, 52025, "", "=q4=Vanquisher's Mark of Sanctification", "=ds=#m43# #e15#", "", "33.3%" },
			{ 20, 49908, "", "=q3=Primordial Saronite",                 "=ds=#e6#",        "", "38%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  50354, "", "=q4=Bauble of True Blood",                "=ds=#s14#",       "", "16.7%" },
			{ 2,  50182, "", "=q4=Blood Queen's Crimson Choker",        "=ds=#s2#",        "", "16.7%" },
			{ 3,  50178, "", "=q4=Bloodfall",                           "=ds=#w7#",        "", "16.7%" },
			{ 4,  50181, "", "=q4=Dying Light",                         "=ds=#w9#",        "", "16.7%" },
			{ 5,  50065, "", "=q4=Icecrown Glacial Wall",               "=ds=#w8#",        "", "16.7%" },
			{ 6,  50180, "", "=q4=Lana'thel's Chain of Flagellation",   "=ds=#s2#",        "", "16.7%" },
			{ 16, 52027, "", "=q4=Conqueror's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 17, 52026, "", "=q4=Protector's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 18, 52025, "", "=q4=Vanquisher's Mark of Sanctification", "=ds=#m43# #e15#", "", "33.3%" },
			{ 20, 50274, "", "=q5=Shadowfrost Shard",                   "=ds=#m3#",        "", "38%" },
			{ 22, 49908, "", "=q3=Primordial Saronite",                 "=ds=#e6#",        "", "38%" },
		},
	},
	["25ManHeroic"] = {
		{
			{ 1,  50726, "", "=q4=Bauble of True Blood",                "=ds=#s14#",       "", "16.7%" },
			{ 2,  50724, "", "=q4=Blood Queen's Crimson Choker",        "=ds=#s2#",        "", "16.7%" },
			{ 3,  50727, "", "=q4=Bloodfall",                           "=ds=#w7#",        "", "16.7%" },
			{ 4,  50725, "", "=q4=Dying Light",                         "=ds=#w9#",        "", "16.7%" },
			{ 5,  50729, "", "=q4=Icecrown Glacial Wall",               "=ds=#w8#",        "", "16.7%" },
			{ 6,  50728, "", "=q4=Lana'thel's Chain of Flagellation",   "=ds=#s2#",        "", "16.7%" },
			{ 16, 52030, "", "=q4=Conqueror's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 17, 52029, "", "=q4=Protector's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 18, 52028, "", "=q4=Vanquisher's Mark of Sanctification", "=ds=#m43# #e15#", "", "33.3%" },
			{ 20, 52027, "", "=q4=Conqueror's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 21, 52026, "", "=q4=Protector's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 22, 52025, "", "=q4=Vanquisher's Mark of Sanctification", "=ds=#m43# #e15#", "", "33.3%" },
			{ 24, 50274, "", "=q5=Shadowfrost Shard",                   "=ds=#m3#",        "", "68%" },
			{ 26, 49908, "", "=q3=Primordial Saronite",                 "=ds=#e6#",        "", "38%" },
		},
	},
	info = {
		name = BabbleBoss["Blood-Queen Lana'thel"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

------------------------
--- The Frozen Halls ---
------------------------

Synastria_Data["IcecrownCitadelValithriaDreamwalker"] = {
	["Normal"] = {
		{
			{ 1,  51561, "", "=q4=Dreamhunter's Carbine",          "=ds=#w5#",        "", "8.3%" },
			{ 2,  51586, "", "=q4=Emerald Saint's Spaulders",      "=ds=#s3#, #a4#",  "", "8.3%" },
			{ 3,  51564, "", "=q4=Ironrope Belt of Ymirjar",       "=ds=#s10#, #a4#", "", "8.3%" },
			{ 4,  51777, "", "=q4=Leggings of the Refracted Mind", "=ds=#s11#, #a1#", "", "8.3%" },
			{ 5,  51566, "", "=q4=Legguards of the Twisted Dream", "=ds=#s11#, #a3#", "", "8.3%" },
			{ 6,  51584, "", "=q4=Lich Wrappings",                 "=ds=#s4#",        "", "8.3%" },
			{ 7,  51562, "", "=q4=Oxheart",                        "=ds=#h2#, #w6#",  "", "8.3%" },
			{ 8,  51582, "", "=q4=Sister Svalna's Aether Staff",   "=ds=#w9#",        "", "8.3%" },
			{ 9,  51585, "", "=q4=Sister Svalna's Spangenhelm",    "=ds=#s1#, #a2#",  "", "8.3%" },
			{ 10, 51565, "", "=q4=Skinned Whelp Shoulders",        "=ds=#s3#, #a2#",  "", "8.3%" },
			{ 11, 51583, "", "=q4=Stormbringer Gloves",            "=ds=#s9#, #a3#",  "", "8.3%" },
			{ 12, 51563, "", "=q4=Taiga Bindings",                 "=ds=#s8#, #a4#",  "", "8.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  51834, "", "=q4=Dreamhunter's Carbine",          "=ds=#w5#",        "", "8.3%" },
			{ 2,  51824, "", "=q4=Emerald Saint's Spaulders",      "=ds=#s3#, #a4#",  "", "8.3%" },
			{ 3,  51831, "", "=q4=Ironrope Belt of Ymirjar",       "=ds=#s10#, #a4#", "", "8.3%" },
			{ 4,  51823, "", "=q4=Leggings of the Refracted Mind", "=ds=#s11#, #a1#", "", "8.3%" },
			{ 5,  51829, "", "=q4=Legguards of the Twisted Dream", "=ds=#s11#, #a3#", "", "8.3%" },
			{ 6,  51826, "", "=q4=Lich Wrappings",                 "=ds=#s4#",        "", "8.3%" },
			{ 7,  51833, "", "=q4=Oxheart",                        "=ds=#h2#, #w6#",  "", "8.3%" },
			{ 8,  51828, "", "=q4=Sister Svalna's Aether Staff",   "=ds=#w9#",        "", "8.3%" },
			{ 9,  51825, "", "=q4=Sister Svalna's Spangenhelm",    "=ds=#s1#, #a2#",  "", "8.3%" },
			{ 10, 51830, "", "=q4=Skinned Whelp Shoulders",        "=ds=#s3#, #a2#",  "", "8.3%" },
			{ 11, 51827, "", "=q4=Stormbringer Gloves",            "=ds=#s9#, #a3#",  "", "8.3%" },
			{ 12, 51832, "", "=q4=Taiga Bindings",                 "=ds=#s8#, #a4#",  "", "8.3%" },
			{ 16, 49908, "", "=q3=Primordial Saronite",            "=ds=#e6#",        "", "20%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  50188, "", "=q4=Anub'ar Stalker's Gloves",     "=ds=#s9#, #a3#",  "", "6.7%" },
			{ 2,  50416, "", "=q4=Boots of the Funeral March",   "=ds=#s12#, #a4#", "", "6.7%" },
			{ 3,  50417, "", "=q4=Bracers of Eternal Dreaming",  "=ds=#s8#, #a2#",  "", "6.7%" },
			{ 4,  50187, "", "=q4=Coldwraith Links",             "=ds=#s10#, #a4#", "", "6.7%" },
			{ 5,  50185, "", "=q4=Devium's Eternally Cold Ring", "=ds=#s13#",       "", "6.7%" },
			{ 6,  50205, "", "=q4=Frostbinder's Shredded Cape",  "=ds=#s4#",        "", "6.7%" },
			{ 7,  50186, "", "=q4=Frostbrood Sapphire Ring",     "=ds=#s13#",       "", "6.7%" },
			{ 8,  50190, "", "=q4=Grinning Skull Greatboots",    "=ds=#s12#, #a4#", "", "6.7%" },
			{ 9,  50199, "", "=q4=Leggings of Dying Candles",    "=ds=#s11#, #a4#", "", "6.7%" },
			{ 10, 50183, "", "=q4=Lungbreaker",                  "=ds=#h1#, #w4#",  "", "6.7%" },
			{ 11, 50472, "", "=q4=Nightmare Ender",              "=ds=#w12#",       "", "6.7%" },
			{ 12, 50195, "", "=q4=Noose of Malachite",           "=ds=#s2#",        "", "6.7%" },
			{ 13, 50418, "", "=q4=Robe of the Waking Nightmare", "=ds=#s5#, #a1#",  "", "6.7%" },
			{ 14, 50192, "", "=q4=Scourge Reaver's Legplates",   "=ds=#s11#, #a4#", "", "6.7%" },
			{ 15, 50202, "", "=q4=Snowstorm Helm",               "=ds=#s1#, #a3#",  "", "6.7%" },
			{ 16, 50274, "", "=q5=Shadowfrost Shard",            "=ds=#m3#",        "", "38%" },
			{ 18, 49908, "", "=q3=Primordial Saronite",          "=ds=#e6#",        "", "20%" },
		},
	},
	["25ManHeroic"] = {
		{
			{ 1,  50619, "", "=q4=Anub'ar Stalker's Gloves",     "=ds=#s9#, #a3#",  "", "6.7%" },
			{ 2,  50632, "", "=q4=Boots of the Funeral March",   "=ds=#s12#, #a4#", "", "6.7%" },
			{ 3,  50630, "", "=q4=Bracers of Eternal Dreaming",  "=ds=#s8#, #a2#",  "", "6.7%" },
			{ 4,  50620, "", "=q4=Coldwraith Links",             "=ds=#s10#, #a4#", "", "6.7%" },
			{ 5,  50622, "", "=q4=Devium's Eternally Cold Ring", "=ds=#s13#",       "", "6.7%" },
			{ 6,  50628, "", "=q4=Frostbinder's Shredded Cape",  "=ds=#s4#",        "", "6.7%" },
			{ 7,  50618, "", "=q4=Frostbrood Sapphire Ring",     "=ds=#s13#",       "", "6.7%" },
			{ 8,  50625, "", "=q4=Grinning Skull Greatboots",    "=ds=#s12#, #a4#", "", "6.7%" },
			{ 9,  50623, "", "=q4=Leggings of Dying Candles",    "=ds=#s11#, #a4#", "", "6.7%" },
			{ 10, 50621, "", "=q4=Lungbreaker",                  "=ds=#h1#, #w4#",  "", "6.7%" },
			{ 11, 50631, "", "=q4=Nightmare Ender",              "=ds=#w12#",       "", "6.7%" },
			{ 12, 50627, "", "=q4=Noose of Malachite",           "=ds=#s2#",        "", "6.7%" },
			{ 13, 50629, "", "=q4=Robe of the Waking Nightmare", "=ds=#s5#, #a1#",  "", "6.7%" },
			{ 14, 50624, "", "=q4=Scourge Reaver's Legplates",   "=ds=#s11#, #a4#", "", "6.7%" },
			{ 15, 50626, "", "=q4=Snowstorm Helm",               "=ds=#s1#, #a3#",  "", "6.7%" },
			{ 16, 50274, "", "=q5=Shadowfrost Shard",            "=ds=#m3#",        "", "68%" },
			{ 18, 49908, "", "=q3=Primordial Saronite",          "=ds=#e6#",        "", "20%" },
		},
	},
	info = {
		name = BabbleBoss["Valithria Dreamwalker"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

Synastria_Data["IcecrownCitadelSindragosa"] = {
	["Normal"] = {
		{
			{ 1,  51788, "", "=q4=Bleak Coldarra Carver",              "=ds=#h3#, #w4#",  "", "8.3%" },
			{ 2,  51782, "", "=q4=Etched Dragonbone Girdle",           "=ds=#s10#, #a4#", "", "8.3%" },
			{ 3,  51789, "", "=q4=Icicle Shapers",                     "=ds=#s9#, #a2#",  "", "8.3%" },
			{ 4,  51786, "", "=q4=Legplates of Aetheric Strife",       "=ds=#s11#, #a4#", "", "8.3%" },
			{ 5,  51791, "", "=q4=Lost Pavise of the Blue Flight",     "=ds=#w8#",        "", "8.3%" },
			{ 6,  51779, "", "=q4=Rimetooth Pendant",                  "=ds=#s2#",        "", "8.3%" },
			{ 7,  51790, "", "=q4=Robes of Azure Downfall",            "=ds=#s5#, #a1#",  "", "8.3%" },
			{ 8,  51787, "", "=q4=Scourge Fanged Stompers",            "=ds=#s12#, #a4#", "", "8.3%" },
			{ 9,  51792, "", "=q4=Shoulderguards of Crystalline Bone", "=ds=#s3#, #a3#",  "", "8.3%" },
			{ 10, 51784, "", "=q4=Splintershard",                      "=ds=#h4#, #w13#", "", "8.3%" },
			{ 11, 51783, "", "=q4=Vambraces of the Frost Wyrm Queen",  "=ds=#s8#, #a2#",  "", "8.3%" },
			{ 12, 51785, "", "=q4=Wyrmwing Treads",                    "=ds=#s12#, #a3#", "", "8.3%" },
			{ 14, 51026, "", "=q1=Crystalline Essence of Sindragosa",  "=ds=#m3#",        "", "100%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  51815, "", "=q4=Bleak Coldarra Carver",               "=ds=#h3#, #w4#",  "", "8.3%" },
			{ 2,  51821, "", "=q4=Etched Dragonbone Girdle",            "=ds=#s10#, #a4#", "", "8.3%" },
			{ 3,  51814, "", "=q4=Icicle Shapers",                      "=ds=#s9#, #a2#",  "", "8.3%" },
			{ 4,  51817, "", "=q4=Legplates of Aetheric Strife",        "=ds=#s11#, #a4#", "", "8.3%" },
			{ 5,  51812, "", "=q4=Lost Pavise of the Blue Flight",      "=ds=#w8#",        "", "8.3%" },
			{ 6,  51822, "", "=q4=Rimetooth Pendant",                   "=ds=#s2#",        "", "8.3%" },
			{ 7,  51813, "", "=q4=Robes of Azure Downfall",             "=ds=#s5#, #a1#",  "", "8.3%" },
			{ 8,  51816, "", "=q4=Scourge Fanged Stompers",             "=ds=#s12#, #a4#", "", "8.3%" },
			{ 9,  51811, "", "=q4=Shoulderguards of Crystalline Bone",  "=ds=#s3#, #a3#",  "", "8.3%" },
			{ 10, 51819, "", "=q4=Splintershard",                       "=ds=#h4#, #w13#", "", "8.3%" },
			{ 11, 51820, "", "=q4=Vambraces of the Frost Wyrm Queen",   "=ds=#s8#, #a2#",  "", "8.3%" },
			{ 12, 51818, "", "=q4=Wyrmwing Treads",                     "=ds=#s12#, #a3#", "", "8.3%" },
			{ 14, 51026, "", "=q1=Crystalline Essence of Sindragosa",   "=ds=#m3#",        "", "100%" },
			{ 16, 52027, "", "=q4=Conqueror's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 17, 52026, "", "=q4=Protector's Mark of Sanctification",  "=ds=#m43# #e15#", "", "33.3%" },
			{ 18, 52025, "", "=q4=Vanquisher's Mark of Sanctification", "=ds=#m43# #e15#", "", "33.3%" },
			{ 20, 49908, "", "=q3=Primordial Saronite",                 "=ds=#e6#",        "", "38%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  50424, "", "=q4=Memory of Malygos",                   "=ds=#s13#",       "", "20%" },
			{ 2,  50360, "", "=q4=Phylactery of the Nameless Lich",     "=ds=#s14#",       "", "20%" },
			{ 3,  50421, "", "=q4=Sindragosa's Cruel Claw",             "=ds=#s2#",        "", "20%" },
			{ 4,  50361, "", "=q4=Sindragosa's Flawless Fang",          "=ds=#s14#",       "", "20%" },
			{ 5,  50423, "", "=q4=Sundial of Eternal Dusk",             "=ds=#s15#",       "", "20%" },
			{ 7,  51026, "", "=q1=Crystalline Essence of Sindragosa",   "=ds=#m3#",        "", "100%" },
			{ 16, 52027, "", "=q4=Conqueror's Mark of Sanctification",  "=ds=#m43# #e15#", "", "100%" },
			{ 17, 52026, "", "=q4=Protector's Mark of Sanctification",  "=ds=#m43# #e15#", "", "100%" },
			{ 18, 52025, "", "=q4=Vanquisher's Mark of Sanctification", "=ds=#m43# #e15#", "", "100%" },
			{ 20, 50274, "", "=q5=Shadowfrost Shard",                   "=ds=#m3#",        "", "38%" },
			{ 22, 49908, "", "=q3=Primordial Saronite",                 "=ds=#e6#",        "", "38%" },
		},
	},
	["25ManHeroic"] = {
		{
			{ 1,  50636, "", "=q4=Memory of Malygos",                   "=ds=#s13#",       "", "20%" },
			{ 2,  50365, "", "=q4=Phylactery of the Nameless Lich",     "=ds=#s14#",       "", "20%" },
			{ 3,  50633, "", "=q4=Sindragosa's Cruel Claw",             "=ds=#s2#",        "", "20%" },
			{ 4,  50364, "", "=q4=Sindragosa's Flawless Fang",          "=ds=#s14#",       "", "20%" },
			{ 5,  50635, "", "=q4=Sundial of Eternal Dusk",             "=ds=#s15#",       "", "20%" },
			{ 7,  51026, "", "=q1=Crystalline Essence of Sindragosa",   "=ds=#m3#",        "", "100%" },
			{ 16, 52030, "", "=q4=Conqueror's Mark of Sanctification",  "=ds=#m43# #e15#", "", "100%" },
			{ 17, 52029, "", "=q4=Protector's Mark of Sanctification",  "=ds=#m43# #e15#", "", "100%" },
			{ 18, 52028, "", "=q4=Vanquisher's Mark of Sanctification", "=ds=#m43# #e15#", "", "100%" },
			{ 20, 52027, "", "=q4=Conqueror's Mark of Sanctification",  "=ds=#m43# #e15#", "", "100%" },
			{ 21, 52026, "", "=q4=Protector's Mark of Sanctification",  "=ds=#m43# #e15#", "", "100%" },
			{ 22, 52025, "", "=q4=Vanquisher's Mark of Sanctification", "=ds=#m43# #e15#", "", "100%" },
			{ 24, 50274, "", "=q5=Shadowfrost Shard",                   "=ds=#m3#",        "", "68%" },
			{ 26, 49908, "", "=q3=Primordial Saronite",                 "=ds=#e6#",        "", "38%" },
		},
	},
	info = {
		name = BabbleBoss["Sindragosa"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

-------------------------
--- The Frozen Throne ---
-------------------------

Synastria_Data["IcecrownCitadelTheLichKing"] = {
	["Normal"] = {
		{
			{ 1,  51799, "", "=q4=Halion, Staff of Forgotten Love",        "=ds=#w9#",        "", "11.1%" },
			{ 2,  51801, "", "=q4=Pugius, Fist of Defiance",               "=ds=#h3#, #w13#", "", "11.1%" },
			{ 3,  51800, "", "=q4=Stormfury, Black Blade of the Betrayer", "=ds=#h1#, #w4#",  "", "11.1%" },
			{ 4,  51797, "", "=q4=Tainted Twig of Nordrassil",             "=ds=#w9#",        "", "11.1%" },
			{ 5,  51803, "", "=q4=Tel'thas, Dagger of the Blood King",     "=ds=#h3#, #w4#",  "", "11.1%" },
			{ 6,  51795, "", "=q4=Troggbane, Axe of the Frostborne King",  "=ds=#h1#, #w1#",  "", "11.1%" },
			{ 7,  51798, "", "=q4=Valius, Gavel of the Lightbringer",      "=ds=#h3#, #w6#",  "", "11.1%" },
			{ 8,  51796, "", "=q4=Warmace of Menethil",                    "=ds=#h2#, #w6#",  "", "11.1%" },
			{ 9,  51802, "", "=q4=Windrunner's Heartseeker",               "=ds=#w3#",        "", "11.1%" },
			{ 11, 51315, "", "=q4=Sealed Chest",                           "=ds=#m2#",        "", "100%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  51943, "", "=q4=Halion, Staff of Forgotten Love",        "=ds=#w9#",        "", "11.1%" },
			{ 2,  51941, "", "=q4=Pugius, Fist of Defiance",               "=ds=#h3#, #w13#", "", "11.1%" },
			{ 3,  51942, "", "=q4=Stormfury, Black Blade of the Betrayer", "=ds=#h1#, #w4#",  "", "11.1%" },
			{ 4,  51945, "", "=q4=Tainted Twig of Nordrassil",             "=ds=#w9#",        "", "11.1%" },
			{ 5,  51939, "", "=q4=Tel'thas, Dagger of the Blood King",     "=ds=#h3#, #w4#",  "", "11.1%" },
			{ 6,  51947, "", "=q4=Troggbane, Axe of the Frostborne King",  "=ds=#h1#, #w1#",  "", "11.1%" },
			{ 7,  51944, "", "=q4=Valius, Gavel of the Lightbringer",      "=ds=#h3#, #w6#",  "", "11.1%" },
			{ 8,  51946, "", "=q4=Warmace of Menethil",                    "=ds=#h2#, #w6#",  "", "11.1%" },
			{ 9,  51940, "", "=q4=Windrunner's Heartseeker",               "=ds=#w3#",        "", "11.1%" },
			{ 11, 51315, "", "=q4=Sealed Chest",                           "=ds=#m2#",        "", "100%" },
			{ 16, 52027, "", "=q4=Conqueror's Mark of Sanctification",     "=ds=#m43# #e15#", "", "33.3%" },
			{ 17, 52026, "", "=q4=Protector's Mark of Sanctification",     "=ds=#m43# #e15#", "", "33.3%" },
			{ 18, 52025, "", "=q4=Vanquisher's Mark of Sanctification",    "=ds=#m43# #e15#", "", "33.3%" },
			{ 20, 49908, "", "=q3=Primordial Saronite",                    "=ds=#e6#",        "", "38%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  50429, "", "=q4=Archus, Greatstaff of Antonidas",           "=ds=#w9#",        "", "11.1%" },
			{ 2,  50427, "", "=q4=Bloodsurge, Kel'Thuzad's Blade of Agony",   "=ds=#h3#, #w10#", "", "11.1%" },
			{ 3,  49981, "", "=q4=Fal'inrush, Defender of Quel'thalas",       "=ds=#w3#",        "", "11.1%" },
			{ 4,  50070, "", "=q4=Glorenzelg, High-Blade of the Silver Hand", "=ds=#h2#, #w10#", "", "11.1%" },
			{ 5,  50012, "", "=q4=Havoc's Call, Blade of Lordaeron Kings",    "=ds=#h1#, #w1#",  "", "11.1%" },
			{ 6,  50426, "", "=q4=Heaven's Fall, Kryss of a Thousand Lies",   "=ds=#h1#, #w4#",  "", "11.1%" },
			{ 7,  49997, "", "=q4=Mithrios, Bronzebeard's Legacy",            "=ds=#h1#, #w6#",  "", "11.1%" },
			{ 8,  50425, "", "=q4=Oathbinder, Charge of the Ranger-General",  "=ds=#w7#",        "", "11.1%" },
			{ 9,  50428, "", "=q4=Royal Scepter of Terenas II",               "=ds=#h3#, #w6#",  "", "11.1%" },
			{ 11, 51315, "", "=q4=Sealed Chest",                              "=ds=#m2#",        "", "100%" },
			{ 16, 52027, "", "=q4=Conqueror's Mark of Sanctification",        "=ds=#m43# #e15#", "", "33.3%" },
			{ 17, 52026, "", "=q4=Protector's Mark of Sanctification",        "=ds=#m43# #e15#", "", "33.3%" },
			{ 18, 52025, "", "=q4=Vanquisher's Mark of Sanctification",       "=ds=#m43# #e15#", "", "33.3%" },
			{ 20, 50274, "", "=q5=Shadowfrost Shard",                         "=ds=#m3#",        "", "38%" },
			{ 22, 49908, "", "=q3=Primordial Saronite",                       "=ds=#e6#",        "", "38%" },
		},
	},
	["25ManHeroic"] = {
		{
			{ 1,  50731, "", "=q4=Archus, Greatstaff of Antonidas",           "=ds=#w9#",        "", "11.1%" },
			{ 2,  50732, "", "=q4=Bloodsurge, Kel'Thuzad's Blade of Agony",   "=ds=#h3#, #w10#", "", "11.1%" },
			{ 3,  50733, "", "=q4=Fal'inrush, Defender of Quel'thalas",       "=ds=#w3#",        "", "11.1%" },
			{ 4,  50730, "", "=q4=Glorenzelg, High-Blade of the Silver Hand", "=ds=#h2#, #w10#", "", "11.1%" },
			{ 5,  50737, "", "=q4=Havoc's Call, Blade of Lordaeron Kings",    "=ds=#h1#, #w1#",  "", "11.1%" },
			{ 6,  50736, "", "=q4=Heaven's Fall, Kryss of a Thousand Lies",   "=ds=#h1#, #w4#",  "", "11.1%" },
			{ 7,  50738, "", "=q4=Mithrios, Bronzebeard's Legacy",            "=ds=#h1#, #w6#",  "", "11.1%" },
			{ 8,  50735, "", "=q4=Oathbinder, Charge of the Ranger-General",  "=ds=#w7#",        "", "11.1%" },
			{ 9,  50734, "", "=q4=Royal Scepter of Terenas II",               "=ds=#h3#, #w6#",  "", "11.1%" },
			{ 11, 51315, "", "=q4=Sealed Chest",                              "=ds=#m2#",        "", "100%" },
			{ 13, 50818, "", "=q4=Invincible's Reins",                        "=ds=#e12#",       "", "100%" },
			{ 16, 52030, "", "=q4=Conqueror's Mark of Sanctification",        "=ds=#m43# #e15#", "", "33.3%" },
			{ 17, 52029, "", "=q4=Protector's Mark of Sanctification",        "=ds=#m43# #e15#", "", "33.3%" },
			{ 18, 52028, "", "=q4=Vanquisher's Mark of Sanctification",       "=ds=#m43# #e15#", "", "33.3%" },
			{ 20, 52027, "", "=q4=Conqueror's Mark of Sanctification",        "=ds=#m43# #e15#", "", "33.3%" },
			{ 21, 52026, "", "=q4=Protector's Mark of Sanctification",        "=ds=#m43# #e15#", "", "33.3%" },
			{ 22, 52025, "", "=q4=Vanquisher's Mark of Sanctification",       "=ds=#m43# #e15#", "", "33.3%" },
			{ 24, 50274, "", "=q5=Shadowfrost Shard",                         "=ds=#m3#",        "", "68%" },
			{ 26, 49908, "", "=q3=Primordial Saronite",                       "=ds=#e6#",        "", "38%" },
		},
	},
	info = {
		name = BabbleBoss["The Lich King"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

Synastria_Data["IcecrownCitadelTrash"] = {
	["25Man"] = {
		{
			{ 3, 50451, "", "=q4=Belt of the Lonely Noble",        "=ds=#s10#, #a4#", "", "0.29%" },
			{ 5, 50447, "", "=q4=Harbinger's Bone Band",           "=ds=#s13#",       "", "0.29%" },
			{ 2, 50450, "", "=q4=Leggings of Dubious Charms",      "=ds=#s11#, #a3#", "", "0.29%" },
			{ 6, 50453, "", "=q4=Ring of Rotting Sinew",           "=ds=#s13#",       "", "0.29%" },
			{ 7, 50444, "", "=q4=Rowan's Rifle of Silver Bullets", "=ds=#w5#",        "", "0.29%" },
			{ 1, 50449, "", "=q4=Stiffened Corpse Shoulderpads",   "=ds=#s3#, #a1#",  "", "0.29%" },
			{ 4, 50452, "", "=q4=Wodin's Lucky Necklace",          "=ds=#s2#",        "", "0.29%" },
		},
	},
	info = {
		name = AL["Trash Mobs"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

--------------------
--- Ruby Sanctum ---
--------------------

Synastria_Data["RubySanctumHalion"] = {
	["Normal"] = {
		{
			{ 1,  53115, "", "=q4=Abduction's Cover",        "=ds=#s4#",        "", "8.3%" },
			{ 2,  53103, "", "=q4=Baltharus' Gift",          "=ds=#s2#",        "", "8.3%" },
			{ 3,  53119, "", "=q4=Boots of Divided Being",   "=ds=#s12#, #a3#", "", "8.3%" },
			{ 4,  53112, "", "=q4=Bracers of the Heir",      "=ds=#s8#, #a4#",  "", "8.3%" },
			{ 5,  53117, "", "=q4=Changeling Gloves",        "=ds=#s9#, #a2#",  "", "8.3%" },
			{ 6,  53114, "", "=q4=Gloaming Sark",            "=ds=#s5#, #a2#",  "", "8.3%" },
			{ 7,  53118, "", "=q4=Misbegotten Belt",         "=ds=#s10#, #a1#", "", "8.3%" },
			{ 8,  53116, "", "=q4=Saviana's Tribute",        "=ds=#s13#",       "", "8.3%" },
			{ 9,  53111, "", "=q4=Scion's Treads",           "=ds=#s12#, #a4#", "", "8.3%" },
			{ 10, 53121, "", "=q4=Surrogate Belt",           "=ds=#s10#, #a4#", "", "8.3%" },
			{ 11, 53113, "", "=q4=Twilight Scale Shoulders", "=ds=#s3#, #a3#",  "", "8.3%" },
			{ 12, 53110, "", "=q4=Zarithrian's Offering",    "=ds=#s13#",       "", "8.3%" },
		},
	},
	["Heroic"] = {
		{
			{ 1,  54556, "", "=q4=Abduction's Cover",        "=ds=#s4#",        "", "8.3%" },
			{ 2,  54557, "", "=q4=Baltharus' Gift",          "=ds=#s2#",        "", "8.3%" },
			{ 3,  54558, "", "=q4=Boots of Divided Being",   "=ds=#s12#, #a3#", "", "8.3%" },
			{ 4,  54559, "", "=q4=Bracers of the Heir",      "=ds=#s8#, #a4#",  "", "8.3%" },
			{ 5,  54560, "", "=q4=Changeling Gloves",        "=ds=#s9#, #a2#",  "", "8.3%" },
			{ 6,  54561, "", "=q4=Gloaming Sark",            "=ds=#s5#, #a2#",  "", "8.3%" },
			{ 7,  54562, "", "=q4=Misbegotten Belt",         "=ds=#s10#, #a1#", "", "8.3%" },
			{ 8,  54563, "", "=q4=Saviana's Tribute",        "=ds=#s13#",       "", "8.3%" },
			{ 9,  54564, "", "=q4=Scion's Treads",           "=ds=#s12#, #a4#", "", "8.3%" },
			{ 10, 54565, "", "=q4=Surrogate Belt",           "=ds=#s10#, #a4#", "", "8.3%" },
			{ 11, 54566, "", "=q4=Twilight Scale Shoulders", "=ds=#s3#, #a3#",  "", "8.3%" },
			{ 12, 54567, "", "=q4=Zarithrian's Offering",    "=ds=#s13#",       "", "8.3%" },
		},
	},
	["25Man"] = {
		{
			{ 1,  54572, "", "=q4=Charred Twilight Scale",           "=ds=#s14#",       "", "25%" },
			{ 2,  54573, "", "=q4=Glowing Twilight Scale",           "=ds=#s14#",       "", "25%" },
			{ 3,  54571, "", "=q4=Petrified Twilight Scale",         "=ds=#s14#",       "", "25%" },
			{ 4,  54569, "", "=q4=Sharpened Twilight Scale",         "=ds=#s14#",       "", "25%" },
			{ 5,  53125, "", "=q4=Apocalypse's Advance",             "=ds=#s12#, #a4#", "", "8.3%" },
			{ 6,  53486, "", "=q4=Bracers of Fiery Night",           "=ds=#s8#, #a1#",  "", "8.3%" },
			{ 7,  53489, "", "=q4=Cloak of Burning Dusk",            "=ds=#s4#",        "", "8.3%" },
			{ 8,  53487, "", "=q4=Foreshadow Steps",                 "=ds=#s12#, #a4#", "", "8.3%" },
			{ 9,  53132, "", "=q4=Penumbra Pendant",                 "=ds=#s2#",        "", "8.3%" },
			{ 10, 53134, "", "=q4=Phaseshifter's Bracers",           "=ds=#s8#, #a2#",  "", "8.3%" },
			{ 11, 53127, "", "=q4=Returning Footfalls",              "=ds=#s12#, #a3#", "", "8.3%" },
			{ 12, 53490, "", "=q4=Ring of Phased Regeneration",      "=ds=#s13#",       "", "8.3%" },
			{ 13, 53133, "", "=q4=Signet of Twilight",               "=ds=#s13#",       "", "8.3%" },
			{ 14, 53488, "", "=q4=Split Shape Belt",                 "=ds=#s10#, #a3#", "", "8.3%" },
			{ 15, 53129, "", "=q4=Treads of Impending Resurrection", "=ds=#s12#, #a4#", "", "8.3%" },
			{ 16, 53126, "", "=q4=Umbrage Armbands",                 "=ds=#s8#, #a2#",  "", "8.3%" },
		},
	},
	["25ManHeroic"] = {
		{
			{ 1,  54588, "", "=q4=Charred Twilight Scale",           "=ds=#s14#",       "", "25%" },
			{ 2,  54589, "", "=q4=Glowing Twilight Scale",           "=ds=#s14#",       "", "25%" },
			{ 3,  54591, "", "=q4=Petrified Twilight Scale",         "=ds=#s14#",       "", "25%" },
			{ 4,  54590, "", "=q4=Sharpened Twilight Scale",         "=ds=#s14#",       "", "25%" },
			{ 5,  54578, "", "=q4=Apocalypse's Advance",             "=ds=#s12#, #a4#", "", "8.3%" },
			{ 6,  54582, "", "=q4=Bracers of Fiery Night",           "=ds=#s8#, #a1#",  "", "8.3%" },
			{ 7,  54583, "", "=q4=Cloak of Burning Dusk",            "=ds=#s4#",        "", "8.3%" },
			{ 8,  54586, "", "=q4=Foreshadow Steps",                 "=ds=#s12#, #a4#", "", "8.3%" },
			{ 9,  54581, "", "=q4=Penumbra Pendant",                 "=ds=#s2#",        "", "8.3%" },
			{ 10, 54584, "", "=q4=Phaseshifter's Bracers",           "=ds=#s8#, #a2#",  "", "8.3%" },
			{ 11, 54577, "", "=q4=Returning Footfalls",              "=ds=#s12#, #a3#", "", "8.3%" },
			{ 12, 54585, "", "=q4=Ring of Phased Regeneration",      "=ds=#s13#",       "", "8.3%" },
			{ 13, 54576, "", "=q4=Signet of Twilight",               "=ds=#s13#",       "", "8.3%" },
			{ 14, 54587, "", "=q4=Split Shape Belt",                 "=ds=#s10#, #a3#", "", "8.3%" },
			{ 15, 54579, "", "=q4=Treads of Impending Resurrection", "=ds=#s12#, #a4#", "", "8.3%" },
			{ 16, 54580, "", "=q4=Umbrage Armbands",                 "=ds=#s8#, #a2#",  "", "8.3%" },
		},
	},
	info = {
		name = BabbleBoss["Halion"],
		module = moduleName,
		instance = "RubySanctum",
	},
}

----------------
--- Factions ---
----------------

-------------------------
--- Alliance Vanguard ---
-------------------------

Synastria_Data["AllianceVanguard"] = {
	["Normal"] = {
		{
			{ 2,  0,     "INV_Shield_36", "=q6=#r4#",                            "" },
			{ 3,  38459, "",              "=q3=Orb of the Eastern Kingdoms",     "=ds=#s15#" },
			{ 4,  38465, "",              "=q3=Vanguard Soldier's Dagger",       "=ds=#h1#, #w4#" },
			{ 5,  38455, "",              "=q3=Hammer of the Alliance Vanguard", "=ds=#h1#, #w6#" },
			{ 6,  38463, "",              "=q3=Lordaeron's Resolve",             "=ds=#w8#" },
			{ 7,  38453, "",              "=q3=Shield of the Lion-hearted",      "=ds=#w8#" },
			{ 8,  38457, "",              "=q3=Sawed-off Hand Cannon",           "=ds=#w5#" },
			{ 9,  38464, "",              "=q3=Gnomish Magician's Quill",        "=ds=#w12#" },
			{ 17, 0,     "INV_Shield_36", "=q6=#r5#",                            "" },
			{ 18, 44503, "",              "=q4=Schematic: Mekgineer's Chopper",  "=ds=#p5# (450)" },
			{ 19, 44937, "",              "=q3=Plans: Titanium Plating",         "=ds=#p2# (450)" },
			{ 20, 44701, "",              "=q7=Arcanum of the Savage Gladiator", "=ds=#s1# #e17#" },
		},
	},
	info = {
		name = BabbleFaction["Alliance Vanguard"],
		module = moduleName,
		menu = "REPMENU",
	},
}

----------------------
--- Argent Crusade ---
----------------------

Synastria_Data["ArgentCrusade"] = {
	["Normal"] = {
		{
			{ 1,  0,     "INV_Jewelry_Talisman_08", "=q6=#r2#",                              "" },
			{ 2,  43154, "",                        "=q1=Tabard of the Argent Crusade",      "=ds=#s7#" },
			{ 4,  0,     "INV_Jewelry_Talisman_08", "=q6=#r4#",                              "" },
			{ 5,  44248, "",                        "=q3=Battle Mender's Helm",              "=ds=#s1#, #a3#" },
			{ 6,  44247, "",                        "=q3=Fang-Deflecting Faceguard",         "=ds=#s1#, #a4#" },
			{ 7,  44244, "",                        "=q3=Argent Skeleton Crusher",           "=ds=#h2#, #w6#" },
			{ 8,  44245, "",                        "=q3=Zombie Sweeper Shotgun",            "=ds=#w5#" },
			{ 9,  44214, "",                        "=q3=Purifying Torch",                   "=ds=#w12#" },
			{ 10, 41726, "",                        "=q3=Design: Guardian's Twilight Opal",  "=ds=#p12# (390)" },
			{ 11, 44150, "",                        "=q3=Arcanum of the Stalwart Protector", "=ds=#s1# #e17#" },
			{ 16, 0,     "INV_Jewelry_Talisman_08", "=q6=#r3#",                              "" },
			{ 17, 44216, "",                        "=q3=Cloak of Holy Extermination",       "=ds=#s4#" },
			{ 18, 44240, "",                        "=q3=Special Issue Legplates",           "=ds=#s11#, #a4#" },
			{ 19, 44239, "",                        "=q3=Standard Issue Legguards",          "=ds=#s11#, #a4#" },
			{ 20, 44139, "",                        "=q7=Arcanum of the Fleeing Shadow",     "=ds=#s1# #e17#" },
			{ 22, 0,     "INV_Jewelry_Talisman_08", "=q6=#r5#",                              "" },
			{ 23, 44297, "",                        "=q4=Boots of the Neverending Path",     "=ds=#s12#, #a2#" },
			{ 24, 44295, "",                        "=q4=Polished Regimental Hauberk",       "=ds=#s5#, #a3#" },
			{ 25, 44296, "",                        "=q4=Helm of Purified Thoughts",         "=ds=#s1#, #a4#" },
			{ 26, 44283, "",                        "=q4=Signet of Hopeful Light",           "=ds=#s13#" },
			{ 27, 42187, "",                        "=q1=Pattern: Brilliant Spellthread",    "=ds=#p8# (430)" },
		},
	},
	info = {
		name = BabbleFaction["Argent Crusade"],
		module = moduleName,
		menu = "REPMENU",
	},
}

----------------------------------
--- Argent Tournament Factions ---
----------------------------------

Synastria_Data["ArgentTournamentFaction"] = {
	["Normal"] = {
		{
			{ 2,  0,     "inv_misc_tabardpvp_01", "=q6=" .. BabbleFaction["The Silver Covenant"], "=q5=#r5#" },
			{ 3,  46815, "",                      "=q4=Quel'dorei Steed",                         "=ds=#e26#" },
			{ 4,  46813, "",                      "=q4=Silver Covenant Hippogryph",               "=ds=#e27#" },
			{ 5,  46820, "",                      "=q3=Shimmering Wyrmling",                      "=ds=#e13#" },
			{ 6,  46817, "",                      "=q1=Silver Covenant Tabard",                   "=ds=#s7#" },
			{ 17, 0,     "inv_misc_tabardpvp_02", "=q6=" .. BabbleFaction["The Sunreavers"],      "=q5=#r5#" },
			{ 18, 46816, "",                      "=q4=Sunreaver Hawkstrider",                    "=ds=#e26#" },
			{ 19, 46814, "",                      "=q4=Sunreaver Dragonhawk",                     "=ds=#e27#" },
			{ 20, 46821, "",                      "=q3=Shimmering Wyrmling",                      "=ds=#e13#" },
			{ 21, 46818, "",                      "=q1=Sunreaver Tabard",                         "=ds=#s7#" },
		},
	},
	info = {
		name = AL["Argent Tournament"] .. " - " .. BabbleZone["Icecrown"],
		module = moduleName,
		menu = "REPMENU",
	},
}

-------------------------
--- Frenzyheart Tribe ---
-------------------------

Synastria_Data["FrenzyheartTribe"] = {
	["Normal"] = {
		{
			{ 1,  0,     "INV_Misc_Rune_14", "=q6=#r2#",                          "" },
			{ 2,  41561, "",                 "=q2=Design: Reckless Huge Citrine", "=ds=#p12# 350" },
			{ 3,  44064, "",                 "=q1=Nepeta Leaf",                   "=ds=" },
			{ 4,  44072, "",                 "=q1=Roasted Mystery Beast",         "=ds=#e3#" },
			{ 6,  0,     "INV_Misc_Rune_14", "=q6=#r4#",                          "" },
			{ 7,  44116, "",                 "=q3=Muddied Crimson Gloves",        "=ds=#s9#, #a1#" },
			{ 8,  44117, "",                 "=q3=Azure Strappy Pants",           "=ds=#s11#, #a2#" },
			{ 9,  44122, "",                 "=q3=Scavenged Feathery Leggings",   "=ds=#s11#, #a3#" },
			{ 10, 44120, "",                 "=q3=Giant-Sized Gauntlets",         "=ds=#s9#, #a4#" },
			{ 11, 44121, "",                 "=q3=Sparkly Shiny Gloves",          "=ds=#s9#, #a4#" },
			{ 12, 44123, "",                 "=q3=Discarded Titanium Legplates",  "=ds=#s11#, #a4#" },
			{ 13, 44118, "",                 "=q3=Stolen Vrykul Harpoon",         "=ds=#w11#" },
			{ 14, 41723, "",                 "=q3=Design: Jagged Forest Emerald", "=ds=#p12# 390" },
			{ 15, 44717, "",                 "=q1=Disgusting Jar",                "=ds=" },
			{ 16, 0,     "INV_Misc_Rune_14", "=q6=#r5#",                          "" },
			{ 17, 44073, "",                 "=q1=Frenzyheart Insignia of Fury",  "=ds=#s14#" },
			{ 19, 0,     "INV_Potion_139",   "=q6=" .. AL["Ripe Disgusting Jar"], "" },
			{ 20, 44719, "",                 "=q3=Frenzyheart Brew",              "=ds=#e25#",      "" },
			{ 21, 39671, "",                 "=q1=Resurgent Healing Potion",      "=ds=#e2#",       "" },
			{ 22, 40067, "",                 "=q1=Icy Mana Potion",               "=ds=#e2#",       "" },
			{ 23, 40087, "",                 "=q1=Powerful Rejuvenation Potion",  "=ds=#e2#",       "" },
			{ 24, 44716, "",                 "=q1=Mysterious Fermented Liquid",   "=ds=#e4#",       "" },
		},
	},
	info = {
		name = BabbleFaction["Frenzyheart Tribe"],
		module = moduleName,
		menu = "REPMENU",
	},
}

----------------------------
--- The Horde Expedition ---
----------------------------

Synastria_Data["HordeExpedition"] = {
	["Normal"] = {
		{
			{ 2,  0,     "INV_Shield_50", "=q6=#r4#",                            "" },
			{ 3,  38458, "",              "=q3=Darkspear Orb",                   "=ds=#s15#" },
			{ 4,  38461, "",              "=q3=Warsong Shanker",                 "=ds=#h1#, #w4#" },
			{ 5,  38454, "",              "=q3=Warsong Punisher",                "=ds=#h1#, #w6#" },
			{ 6,  38452, "",              "=q3=Bulwark of the Warchief",         "=ds=#w8#" },
			{ 7,  38462, "",              "=q3=Warsong Stormshield",             "=ds=#w8#" },
			{ 8,  38456, "",              "=q3=Sin'dorei Recurve Bow",           "=ds=#w2#" },
			{ 9,  38460, "",              "=q3=Charged Wand of the Cleft",       "=ds=#w12#" },
			{ 17, 0,     "INV_Shield_50", "=q6=#r5#",                            "" },
			{ 18, 44502, "",              "=q4=Schematic: Mechano-hog",          "=ds=#p5# (450)" },
			{ 19, 44938, "",              "=q3=Plans: Titanium Plating",         "=ds=#p2# (450)" },
			{ 20, 44702, "",              "=q7=Arcanum of the Savage Gladiator", "=ds=#s1# #e17#" },
		},
	},
	info = {
		name = BabbleFaction["Horde Expedition"],
		module = moduleName,
		menu = "REPMENU",
	},
}

-----------------
--- Kirin Tor ---
-----------------

Synastria_Data["KirinTor"] = {
	["Normal"] = {
		{
			{ 1,  0,     "Spell_Fire_MasterOfElements", "=q6=#r2#",                            "" },
			{ 2,  43157, "",                            "=q1=Tabard of the Kirin Tor",         "=ds=#s7#" },
			{ 4,  0,     "Spell_Fire_MasterOfElements", "=q6=#r3#",                            "" },
			{ 5,  44167, "",                            "=q3=Shroud of Dedicated Research",    "=ds=#s4#" },
			{ 6,  44170, "",                            "=q3=Helm of the Majestic Stag",       "=ds=#s1#, #a2#" },
			{ 7,  44171, "",                            "=q3=Spaulders of Grounded Lightning", "=ds=#s3#, #a3#" },
			{ 8,  44166, "",                            "=q3=Lightblade Rivener",              "=ds=#h1#, #w4#" },
			{ 9,  44141, "",                            "=q3=Arcanum of the Flame's Soul",     "=ds=#s1# #e17#" },
			{ 16, 0,     "Spell_Fire_MasterOfElements", "=q6=#r4#",                            "" },
			{ 17, 44179, "",                            "=q3=Mind-Expanding Leggings",         "=ds=#s11#, #a2#" },
			{ 18, 44176, "",                            "=q3=Girdle of the Warrior Magi",      "=ds=#s10#, #a4#" },
			{ 19, 44173, "",                            "=q3=Flameheart Spell Scalpel",        "=ds=#h3#, #w4#" },
			{ 20, 44174, "",                            "=q3=Stave of Shrouded Mysteries",     "=ds=#w9#" },
			{ 21, 44159, "",                            "=q7=Arcanum of Burning Mysteries",    "=ds=#s1# #e17#" },
			{ 23, 0,     "Spell_Fire_MasterOfElements", "=q6=#r5#",                            "" },
			{ 24, 44180, "",                            "=q4=Robes of Crackling Flame",        "=ds=#s5#, #a1#" },
			{ 25, 44181, "",                            "=q4=Ghostflicker Waistband",          "=ds=#s10#, #a2#" },
			{ 26, 44182, "",                            "=q4=Boots of Twinkling Stars",        "=ds=#s12#, #a3#" },
			{ 27, 44183, "",                            "=q4=Fireproven Gauntlets",            "=ds=#s9#, #a4#" },
			{ 28, 41718, "",                            "=q3=Design: Brilliant Scarlet Ruby",  "=ds=#p12# (390)" },
			{ 29, 42188, "",                            "=q1=Pattern: Sapphire Spellthread",   "=ds=#p8# (430)" },
		},
	},
	info = {
		name = BabbleFaction["Kirin Tor"],
		module = moduleName,
		menu = "REPMENU",
	},
}

---------------------------------
--- Knights of the Ebon Blade ---
---------------------------------

Synastria_Data["KnightsoftheEbonBlade"] = {
	["Normal"] = {
		{
			{ 1,  0,     "INV_Weapon_Hand_01", "=q6=#r2#",                            "" },
			{ 2,  41562, "",                   "=q2=Design: Deadly Huge Citrine",     "=ds=#p12# (350)" },
			{ 3,  43155, "",                   "=q1=Tabard of the Ebon Blade",        "=ds=#s7#" },
			{ 5,  0,     "INV_Weapon_Hand_01", "=q6=#r4#",                            "" },
			{ 6,  44256, "",                   "=q3=Sterile Flesh-Handling Gloves",   "=ds=#s9#, #a1#" },
			{ 7,  44258, "",                   "=q3=Wound-Binder's Wristguards",      "=ds=#s8#, #a2#" },
			{ 8,  44257, "",                   "=q3=Spaulders of the Black Arrow",    "=ds=#s3#, #a3#" },
			{ 9,  44250, "",                   "=q3=Reaper of Dark Souls",            "=ds=#h1#, #w10#" },
			{ 10, 44249, "",                   "=q3=Runeblade of Demonstrable Power", "=ds=#h2#, #w10#" },
			{ 11, 41721, "",                   "=q3=Design: Deadly Monarch Topaz",    "=ds=#p12# (390)" },
			{ 12, 44149, "",                   "=q7=Arcanum of Torment",              "=ds=#s1# #e17#" },
			{ 13, 42183, "",                   "=q1=Pattern: Abyssal Bag",            "=ds=#p8# (435)" },
			{ 16, 0,     "INV_Weapon_Hand_01", "=q6=#r3#",                            "" },
			{ 17, 44242, "",                   "=q3=Dark Soldier Cape",               "=ds=#s4#" },
			{ 18, 44243, "",                   "=q3=Toxin-Tempered Sabatons",         "=ds=#s12#, #a4#" },
			{ 19, 44241, "",                   "=q3=Unholy Persuader",                "=ds=#h4#, #w13#" },
			{ 20, 44138, "",                   "=q3=Arcanum of Toxic Warding",        "=ds=#s1# #e17#" },
			{ 22, 0,     "INV_Weapon_Hand_01", "=q6=#r5#",                            "" },
			{ 23, 44302, "",                   "=q4=Belt of Dark Mending",            "=ds=#s10#, #a1#" },
			{ 24, 44303, "",                   "=q4=Darkheart Chestguard",            "=ds=#s5#, #a2#" },
			{ 25, 44305, "",                   "=q4=Kilt of Dark Mercy",              "=ds=#s11#, #a3#" },
			{ 26, 44306, "",                   "=q4=Death-Inured Sabatons",           "=ds=#s12#, #a4#" },
			{ 27, 41725, "",                   "=q3=Design: Timeless Twilight Opal",  "=ds=#p12# (390)" },
		},
	},
	info = {
		name = BabbleFaction["Knights of the Ebon Blade"],
		module = moduleName,
		menu = "REPMENU",
	},
}

-------------------------
--- The Ashen Verdict ---
-------------------------

Synastria_Data["TheAshenVerdict"] = {
	["Normal"] = {
		{
			{ 1,  50375, "", "=q4=Ashen Band of Courage",               "=ds=#s13#, =q1=#r2#" },
			{ 2,  50388, "", "=q4=Ashen Band of Greater Courage",       "=ds=#s13#, =q1=#r3#" },
			{ 3,  50403, "", "=q4=Ashen Band of Unmatched Courage",     "=ds=#s13#, =q1=#r4#" },
			{ 4,  50404, "", "=q4=Ashen Band of Endless Courage",       "=ds=#s13#, =q1=#r5#" },
			{ 6,  50377, "", "=q4=Ashen Band of Destruction",           "=ds=#s13#, =q1=#r2#" },
			{ 7,  50384, "", "=q4=Ashen Band of Greater Destruction",   "=ds=#s13#, =q1=#r3#" },
			{ 8,  50397, "", "=q4=Ashen Band of Unmatched Destruction", "=ds=#s13#, =q1=#r4#" },
			{ 9,  50398, "", "=q4=Ashen Band of Endless Destruction",   "=ds=#s13#, =q1=#r5#" },
			{ 11, 52569, "", "=q4=Ashen Band of Might",                 "=ds=#s13#, =q1=#r2#" },
			{ 12, 52570, "", "=q4=Ashen Band of Greater Might",         "=ds=#s13#, =q1=#r3#" },
			{ 13, 52571, "", "=q4=Ashen Band of Unmatched Might",       "=ds=#s13#, =q1=#r4#" },
			{ 14, 52572, "", "=q4=Ashen Band of Endless Might",         "=ds=#s13#, =q1=#r5#" },
			{ 16, 50376, "", "=q4=Ashen Band of Vengeance",             "=ds=#s13#, =q1=#r2#" },
			{ 17, 50387, "", "=q4=Ashen Band of Greater Vengeance",     "=ds=#s13#, =q1=#r3#" },
			{ 18, 50401, "", "=q4=Ashen Band of Unmatched Vengeance",   "=ds=#s13#, =q1=#r4#" },
			{ 19, 50402, "", "=q4=Ashen Band of Endless Vengeance",     "=ds=#s13#, =q1=#r5#" },
			{ 21, 50378, "", "=q4=Ashen Band of Wisdom",                "=ds=#s13#, =q1=#r2#" },
			{ 22, 50386, "", "=q4=Ashen Band of Greater Wisdom",        "=ds=#s13#, =q1=#r3#" },
			{ 23, 50399, "", "=q4=Ashen Band of Unmatched Wisdom",      "=ds=#s13#, =q1=#r4#" },
			{ 24, 50400, "", "=q4=Ashen Band of Endless Wisdom",        "=ds=#s13#, =q1=#r5#" },
		},
		{
			{ 1,  0,     "Inv_Jewelry_Ring_85", "=q6=#r3#",                                     "" },
			{ 2,  49974, "",                    "=q4=Plans: Boots of Kingly Upheaval",          "=ds=#p2# (450)" },
			{ 3,  49972, "",                    "=q4=Plans: Hellfrozen Bonegrinders",           "=ds=#p2# (450)" },
			{ 4,  49970, "",                    "=q4=Plans: Protectors of Life",                "=ds=#p2# (450)" },
			{ 5,  49958, "",                    "=q4=Pattern: Blessed Cenarion Boots",          "=ds=#p7# (450)" },
			{ 6,  49963, "",                    "=q4=Pattern: Earthsoul Boots",                 "=ds=#p7# (450)" },
			{ 7,  49961, "",                    "=q4=Pattern: Footpads of Impending Death",     "=ds=#p7# (450)" },
			{ 8,  49966, "",                    "=q4=Pattern: Rock-Steady Treads",              "=ds=#p7# (450)" },
			{ 9,  49954, "",                    "=q4=Pattern: Deathfrost Boots",                "=ds=#p8# (450)" },
			{ 10, 49956, "",                    "=q4=Pattern: Sandals of Consecration",         "=ds=#p8# (450)" },
			{ 16, 0,     "Inv_Jewelry_Ring_85", "=q6=#r4#",                                     "" },
			{ 17, 49971, "",                    "=q4=Plans: Legplates of Painful Death",        "=ds=#p2# (450)" },
			{ 18, 49973, "",                    "=q4=Plans: Pillars of Might",                  "=ds=#p2# (450)" },
			{ 19, 49969, "",                    "=q4=Plans: Puresteel Legplates",               "=ds=#p2# (450)" },
			{ 20, 49959, "",                    "=q4=Pattern: Bladeborn Leggings",              "=ds=#p7# (450)" },
			{ 21, 49965, "",                    "=q4=Pattern: Draconic Bonesplinter Legguards", "=ds=#p7# (450)" },
			{ 22, 49957, "",                    "=q4=Pattern: Legwraps of Unleashed Nature",    "=ds=#p7# (450)" },
			{ 23, 49962, "",                    "=q4=Pattern: Lightning-Infused Leggings",      "=ds=#p7# (450)" },
			{ 24, 49953, "",                    "=q4=Pattern: Leggings of Woven Death",         "=ds=#p8# (450)" },
			{ 25, 49955, "",                    "=q4=Pattern: Lightweave Leggings",             "=ds=#p8# (450)" },
		},
	},
	info = {
		name = BabbleFaction["The Ashen Verdict"],
		module = moduleName,
		menu = "REPMENU",
	},
}

-------------------
--- The Kalu'ak ---
-------------------

Synastria_Data["TheKaluak"] = {
	["Normal"] = {
		{
			{ 1,  0,     "INV_Fishingpole_03", "=q6=#r2#",                              "" },
			{ 2,  41568, "",                   "=q2=Design: Purified Shadow Crystal",   "=ds=#p12# (350)" },
			{ 3,  44049, "",                   "=q1=Freshly-Speared Emperor Salmon",    "=ds=#e3#" },
			{ 5,  0,     "INV_Fishingpole_03", "=q6=#r3#",                              "" },
			{ 6,  44061, "",                   "=q3=Pigment-Stained Robes",             "=ds=#s5#, #a1#" },
			{ 7,  44062, "",                   "=q3=Turtle-Minders Robe",               "=ds=#s5#, #a1#" },
			{ 8,  44054, "",                   "=q3=Whale-Skin Breastplate",            "=ds=#s5#, #a2#" },
			{ 9,  44055, "",                   "=q3=Whale-Skin Vest",                   "=ds=#s5#, #a2#" },
			{ 10, 44059, "",                   "=q3=Cuttlefish Scale Breastplate",      "=ds=#s5#, #a3#" },
			{ 11, 44060, "",                   "=q3=Cuttlefish Tooth Ringmail",         "=ds=#s5#, #a3#" },
			{ 12, 44057, "",                   "=q3=Ivory-Reinforced Chestguard",       "=ds=#s5#, #a4#" },
			{ 13, 44058, "",                   "=q3=Whalebone Carapace",                "=ds=#s5#, #a4#" },
			{ 14, 44511, "",                   "=q3=Pattern: Dragonscale Ammo Pouch",   "=ds=#p7# (415)" },
			{ 15, 41574, "",                   "=q2=Design: Defender's Shadow Crystal", "=ds=#p12# (350)" },
			{ 16, 0,     "INV_Fishingpole_03", "=q6=#r4#",                              "" },
			{ 17, 44051, "",                   "=q3=Traditional Flensing Knife",        "=ds=#h1#, #w4#" },
			{ 18, 44052, "",                   "=q3=Totemic Purification Rod",          "=ds=#h3#, #w6#" },
			{ 19, 44053, "",                   "=q3=Whale-Stick Harpoon",               "=ds=#w7#" },
			{ 20, 44509, "",                   "=q3=Pattern: Trapper's Traveling Pack", "=ds=#p7# (415)" },
			{ 21, 45774, "",                   "=q1=Pattern: Emerald Bag",              "=ds=#p8# (435)" },
			{ 23, 0,     "INV_Fishingpole_03", "=q6=#r5#",                              "" },
			{ 24, 44050, "",                   "=q4=Mastercraft Kalu'ak Fishing Pole",  "=ds=#e20#" },
			{ 25, 44723, "",                   "=q3=Nurtured Penguin Egg",              "=ds=#e13#" },
		},
	},
	info = {
		name = BabbleFaction["The Kalu'ak"],
		module = moduleName,
		menu = "REPMENU",
	},
}

-------------------
--- The Oracles ---
-------------------

Synastria_Data["TheOracles"] = {
	["Normal"] = {
		{
			{ 1,  0,     "INV_Helmet_138", "=q6=#r2#",                             "" },
			{ 2,  41567, "",               "=q2=Design: Nimble Dark Jade",         "=ds=#p12# (350)" },
			{ 3,  44065, "",               "=q1=Oracle Secret Solution",           "=ds=#e2#" },
			{ 5,  0,     "INV_Helmet_138", "=q6=#r4#",                             "" },
			{ 6,  44104, "",               "=q3=Fishy Cinch",                      "=ds=#s10#, #a1#" },
			{ 7,  44106, "",               "=q3=Glitterscale Wrap",                "=ds=#s10#, #a2#" },
			{ 8,  44110, "",               "=q3=Sharkjaw Cap",                     "=ds=#s1#, #a3#" },
			{ 9,  44109, "",               "=q3=Toothslice Helm",                  "=ds=#s1#, #a3#" },
			{ 10, 44112, "",               "=q3=Glimmershell Shoulder Protectors", "=ds=#s3#, #a4#" },
			{ 11, 44111, "",               "=q3=Gold Star Spaulders",              "=ds=#s3#, #a4#" },
			{ 12, 44108, "",               "=q3=Shinygem Rod",                     "=ds=#w12#" },
			{ 13, 41724, "",               "=q3=Design: Misty Forest Emerald",     "=ds=#p12# (390)" },
			{ 14, 39878, "",               "=q1=Mysterious Egg",                   "=ds=" },
			{ 16, 0,     "INV_Helmet_138", "=q6=#r3#",                             "" },
			{ 17, 44071, "",               "=q1=Slow-Roasted Eel",                 "=ds=#e3#" },
			{ 19, 0,     "INV_Helmet_138", "=q6=#r5#",                             "" },
			{ 20, 44074, "",               "=q4=Oracle Talisman of Ablution",      "=ds=#s14#" },
			{ 22, 0,     "INV_Egg_02",     "=q6=" .. AL["Cracked Egg"],            "" },
			{ 23, 44707, "",               "=q4=Reins of the Green Proto-Drake",   "=ds=#e27#",      "" },
			{ 24, 39898, "",               "=q1=Cobra Hatchling",                  "=ds=#e13#",      "" },
			{ 25, 44721, "",               "=q1=Proto-Drake Whelp",                "=ds=#e13#",      "" },
			{ 26, 39896, "",               "=q1=Tickbird Hatchling",               "=ds=#e13#",      "" },
			{ 27, 39899, "",               "=q1=White Tickbird Hatchling",         "=ds=#e13#",      "" },
			{ 28, 44722, "",               "=q1=Aged Yolk",                        "=ds=#e3#",       "" },
		},
	},
	info = {
		name = BabbleFaction["The Oracles"],
		module = moduleName,
		menu = "REPMENU",
	},
}

-------------------------
--- The Sons of Hodir ---
-------------------------

Synastria_Data["TheSonsofHodir"] = {
	["Normal"] = {
		{
			{ 1,  0,     "Spell_Holy_DivinePurpose", "=q6=#r3#",                                "" },
			{ 2,  44190, "",                         "=q3=Spaulders of Frozen Knives",          "=ds=#s3#, #a2#" },
			{ 3,  44189, "",                         "=q3=Giant Ring Belt",                     "=ds=#s10#, #a3#" },
			{ 4,  44510, "",                         "=q3=Pattern: Mammoth Mining Bag",         "=ds=#p7# (415)" },
			{ 5,  44137, "",                         "=q3=Arcanum of the Frosty Soul",          "=ds=#s1# #e17#" },
			{ 6,  44131, "",                         "=q3=Lesser Inscription of the Axe",       "=ds=#s3# #e17#" },
			{ 7,  44130, "",                         "=q3=Lesser Inscription of the Crag",      "=ds=#s3# #e17#" },
			{ 8,  44132, "",                         "=q3=Lesser Inscription of the Pinnacle",  "=ds=#s3# #e17#" },
			{ 9,  44129, "",                         "=q3=Lesser Inscription of the Storm",     "=ds=#s3# #e17#" },
			{ 16, 0,     "Spell_Holy_DivinePurpose", "=q6=#r4#",                                "" },
			{ 18, 44194, "",                         "=q3=Giant-Friend Kilt",                   "=ds=#s11#, #a2#" },
			{ 19, 44195, "",                         "=q3=Spaulders of the Giant Lords",        "=ds=#s3#, #a4#" },
			{ 20, 44193, "",                         "=q3=Broken Stalactite",                   "=ds=#h1#, #w4#" },
			{ 21, 44192, "",                         "=q3=Stalactite Chopper",                  "=ds=#h1#, #w1#" },
			{ 23, 0,     "Spell_Holy_DivinePurpose", "=q6=#r5#",                                "" },
			{ 25, 44133, "",                         "=q7=Greater Inscription of the Axe",      "=ds=#s3# #e17#" },
			{ 26, 44134, "",                         "=q7=Greater Inscription of the Crag",     "=ds=#s3# #e17#" },
			{ 27, 44136, "",                         "=q7=Greater Inscription of the Pinnacle", "=ds=#s3# #e17#" },
			{ 28, 44135, "",                         "=q7=Greater Inscription of the Storm ",   "=ds=#s3# #e17#" },
			{ 29, 41720, "",                         "=q3=Design: Smooth Autumn's Glow",        "=ds=#p12# (390)" },
			{ 30, 42184, "",                         "=q1=Pattern: Glacial Bag",                "=ds=#p8# (445)" },
		},
	},
	info = {
		name = BabbleFaction["The Sons of Hodir"],
		module = moduleName,
		menu = "REPMENU",
	},
}

---------------------------
--- The Wyrmrest Accord ---
---------------------------

Synastria_Data["TheWyrmrestAccord"] = {
	["Normal"] = {
		{
			{ 1,  0,     "Ability_Druid_Eclipse", "=q6=#r1#",                              "" },
			{ 2,  43156, "",                      "=q1=Tabard of the Wyrmrest Accord",     "=ds=#s7#" },
			{ 4,  0,     "Ability_Druid_Eclipse", "=q6=#r3#",                              "" },
			{ 5,  44188, "",                      "=q3=Cloak of Peaceful Resolutions",     "=ds=#s4#" },
			{ 6,  44196, "",                      "=q3=Sash of the Wizened Wyrm",          "=ds=#s10#, #a1#" },
			{ 7,  44197, "",                      "=q3=Bracers of Accorded Courtesy",      "=ds=#s8#, #a4#" },
			{ 8,  44187, "",                      "=q3=Fang of Truth",                     "=ds=#h1#, #w10#" },
			{ 9,  44140, "",                      "=q3=Arcanum of the Eclipsed Moon",      "=ds=#s1# #e17#" },
			{ 16, 0,     "Ability_Druid_Eclipse", "=q6=#r4#",                              "" },
			{ 17, 44200, "",                      "=q3=Ancestral Sinew Wristguards",       "=ds=#s8#, #a1#" },
			{ 18, 44198, "",                      "=q3=Breastplate of the Solemn Council", "=ds=#s5#, #a4#" },
			{ 19, 44201, "",                      "=q3=Sabatons of Draconic Vigor",        "=ds=#s12#, #a4#" },
			{ 20, 44199, "",                      "=q3=Gavel of the Brewing Storm",        "=ds=#h3#, #w6#" },
			{ 21, 44152, "",                      "=q7=Arcanum of Blissful Mending",       "=ds=#s1# #e17#" },
			{ 22, 42185, "",                      "=q1=Pattern: Mysterious Bag",           "=ds=#p8# (440)" },
			{ 24, 0,     "Ability_Druid_Eclipse", "=q6=#r5#",                              "" },
			{ 25, 44202, "",                      "=q4=Sandals of Crimson Fury",           "=ds=#s12#, #a1#" },
			{ 26, 44203, "",                      "=q4=Dragonfriend Bracers",              "=ds=#s8#, #a2#" },
			{ 27, 44204, "",                      "=q4=Grips of Fierce Pronouncements",    "=ds=#s9#, #a3#" },
			{ 28, 44205, "",                      "=q4=Legplates of Bloody Reprisal",      "=ds=#s11#, #a4#" },
			{ 29, 43955, "",                      "=q4=Reins of the Red Drake",            "=ds=#e27#" },
			{ 30, 41722, "",                      "=q3=Design: Stalwart Monarch Topaz",    "=ds=#p12# (390)" },
		},
	},
	info = {
		name = BabbleFaction["The Wyrmrest Accord"],
		module = moduleName,
		menu = "REPMENU",
	},
}

-------------------------
--- Winterfin Retreat ---
-------------------------

Synastria_Data["WinterfinRetreat"] = {
	["Normal"] = {
		{
			{ 2,  36784, "", "=q3=Siren's Tear",               "=ds=#e7#",       "100 #winterfinclam#" },
			{ 3,  37461, "", "=q3=Tidebreaker Trident",        "=ds=#w7#",       "50 #winterfinclam#" },
			{ 4,  37462, "", "=q2=Sea King's Crown",           "=ds=#s1#, #a1#", "30 #winterfinclam#" },
			{ 5,  37463, "", "=q2=Winterfin Patch of Honor",   "=ds=#s1#, #a2#", "30 #winterfinclam#" },
			{ 6,  36783, "", "=q2=Northsea Pearl",             "=ds=#e7#",       "30 #winterfinclam#" },
			{ 7,  37464, "", "=q1=Winterfin Horn of Distress", "=ds=#e22#",      "5 #winterfinclam#" },
			{ 8,  37449, "", "=q1=Breath of Murloc",           "=ds=#e2#",       "5 #winterfinclam#" },
			{ 9,  38351, "", "=q1=Murliver Oil",               "=ds=#e2#",       "2 #winterfinclam#" },
			{ 10, 38350, "", "=q1=Winterfin \"Depth Charge\"", "=ds=#e4#",       "1 #winterfinclam#" },
			{ 12, 34597, "", "=q1=Winterfin Clam",             "=ds=#m17#" },
		},
	},
	info = {
		name = BabbleFaction["Winterfin Retreat"],
		module = moduleName,
		menu = "REPMENU",
	},
}

-----------
--- PvP ---
-----------

------------------
--- Armor Sets ---
------------------


----------------------------
--- Level 80 Accessories ---
----------------------------

Synastria_Data["PVP80Accessories"] = {
	["Normal"] = {
		{
			{ 1,  51334, "", "=q4=Wrathful Gladiator's Cloak of Ascendancy",    "=ds=#s4#",       "#HONOR:725#" },
			{ 2,  51348, "", "=q4=Wrathful Gladiator's Cloak of Deliverance",   "=ds=#s4#",       "#HONOR:725#" },
			{ 3,  51330, "", "=q4=Wrathful Gladiator's Cloak of Dominance",     "=ds=#s4#",       "#HONOR:725#" },
			{ 4,  51346, "", "=q4=Wrathful Gladiator's Cloak of Salvation",     "=ds=#s4#",       "#HONOR:725#" },
			{ 5,  51332, "", "=q4=Wrathful Gladiator's Cloak of Subjugation",   "=ds=#s4#",       "#HONOR:725#" },
			{ 6,  51354, "", "=q4=Wrathful Gladiator's Cloak of Triumph",       "=ds=#s4#",       "#HONOR:725#" },
			{ 7,  51356, "", "=q4=Wrathful Gladiator's Cloak of Victory",       "=ds=#s4#",       "#HONOR:725#" },
			{ 9,  51336, "", "=q4=Wrathful Gladiator's Band of Dominance",      "=ds=#s13#",      "#HONOR:725#" },
			{ 10, 51358, "", "=q4=Wrathful Gladiator's Band of Triumph",        "=ds=#s13#",      "#HONOR:725#" },
			{ 12, 51377, "", "=q4=Medallion of the Alliance",                   "=ds=#s14#",      "#HONOR:945#" },
			{ 13, 51378, "", "=q4=Medallion of the Horde",                      "=ds=#s14#",      "#HONOR:945#" },
			{ 15, 44957, "", "=q4=Greater Inscription of the Gladiator",        "=ds=#s3# #e17#", "#HONOR:165#" },
			{ 16, 51335, "", "=q4=Wrathful Gladiator's Pendant of Ascendancy",  "=ds=#s2#",       "#HONOR:725#" },
			{ 17, 51349, "", "=q4=Wrathful Gladiator's Pendant of Deliverance", "=ds=#s2#",       "#HONOR:725#" },
			{ 18, 51331, "", "=q4=Wrathful Gladiator's Pendant of Dominance",   "=ds=#s2#",       "#HONOR:725#" },
			{ 19, 51347, "", "=q4=Wrathful Gladiator's Pendant of Salvation",   "=ds=#s2#",       "#HONOR:725#" },
			{ 20, 51333, "", "=q4=Wrathful Gladiator's Pendant of Subjugation", "=ds=#s2#",       "#HONOR:725#" },
			{ 21, 51353, "", "=q4=Wrathful Gladiator's Pendant of Sundering",   "=ds=#s2#",       "#HONOR:725#" },
			{ 22, 51355, "", "=q4=Wrathful Gladiator's Pendant of Triumph",     "=ds=#s2#",       "#HONOR:725#" },
			{ 23, 51357, "", "=q4=Wrathful Gladiator's Pendant of Victory",     "=ds=#s2#",       "#HONOR:725#" },
			{ 25, 42133, "", "=q4=Battlemaster's Fury",                         "=ds=#s14#",      "#HONOR:630#" },
			{ 26, 42134, "", "=q4=Battlemaster's Precision",                    "=ds=#s14#",      "#HONOR:630#" },
			{ 27, 42136, "", "=q4=Battlemaster's Rage",                         "=ds=#s14#",      "#HONOR:630#" },
			{ 28, 42137, "", "=q4=Battlemaster's Ruination",                    "=ds=#s14#",      "#HONOR:630#" },
			{ 29, 42135, "", "=q4=Battlemaster's Vivacity",                     "=ds=#s14#",      "#HONOR:630#" },
		},
		{
			{ 1,  42078, "", "=q4=Relentless Gladiator's Cloak of Ascendancy",    "=ds=#s4#",  "#HONOR:485#" },
			{ 2,  42080, "", "=q4=Relentless Gladiator's Cloak of Deliverance",   "=ds=#s4#",  "#HONOR:485#" },
			{ 3,  42076, "", "=q4=Relentless Gladiator's Cloak of Dominance",     "=ds=#s4#",  "#HONOR:485#" },
			{ 4,  42079, "", "=q4=Relentless Gladiator's Cloak of Salvation",     "=ds=#s4#",  "#HONOR:485#" },
			{ 5,  42077, "", "=q4=Relentless Gladiator's Cloak of Subjugation",   "=ds=#s4#",  "#HONOR:485#" },
			{ 6,  42081, "", "=q4=Relentless Gladiator's Cloak of Triumph",       "=ds=#s4#",  "#HONOR:485#" },
			{ 7,  42082, "", "=q4=Relentless Gladiator's Cloak of Victory",       "=ds=#s4#",  "#HONOR:485#" },
			{ 9,  42118, "", "=q4=Relentless Gladiator's Band of Ascendancy",     "=ds=#s13#", "#HONOR:485#" },
			{ 10, 42119, "", "=q4=Relentless Gladiator's Band of Victory",        "=ds=#s13#", "#HONOR:485#" },
			{ 16, 42044, "", "=q4=Relentless Gladiator's Pendant of Ascendancy",  "=ds=#s2#",  "#HONOR:485#" },
			{ 17, 42046, "", "=q4=Relentless Gladiator's Pendant of Deliverance", "=ds=#s2#",  "#HONOR:485#" },
			{ 18, 42043, "", "=q4=Relentless Gladiator's Pendant of Dominance",   "=ds=#s2#",  "#HONOR:485#" },
			{ 19, 42047, "", "=q4=Relentless Gladiator's Pendant of Salvation",   "=ds=#s2#",  "#HONOR:485#" },
			{ 20, 42045, "", "=q4=Relentless Gladiator's Pendant of Subjugation", "=ds=#s2#",  "#HONOR:485#" },
			{ 21, 46374, "", "=q4=Relentless Gladiator's Pendant of Sundering",   "=ds=#s2#",  "#HONOR:485#" },
			{ 22, 42041, "", "=q4=Relentless Gladiator's Pendant of Triumph",     "=ds=#s2#",  "#HONOR:485#" },
			{ 23, 42042, "", "=q4=Relentless Gladiator's Pendant of Victory",     "=ds=#s2#",  "#HONOR:485#" },
		},
	},
	info = {
		name = AL["PvP Accessories"],
		module = moduleName,
		menu = "PVPMENU",
	},
}

------------------------------
--- Level 80 Epic Non-Sets ---
------------------------------

Synastria_Data["PVP80NonSet"] = {
	["Normal"] = {
		{ -- Cloth
			{ 1,  51329, "", "=q4=Wrathful Gladiator's Cuffs of Dominance",    "=ds=", "#HONOR:600#" },
			{ 2,  51327, "", "=q4=Wrathful Gladiator's Cord of Dominance",     "=ds=", "#HONOR:945#" },
			{ 3,  51328, "", "=q4=Wrathful Gladiator's Treads of Dominance",   "=ds=", "#HONOR:945#" },
			{ 5,  51367, "", "=q4=Wrathful Gladiator's Cuffs of Salvation",    "=ds=", "#HONOR:600#" },
			{ 6,  51365, "", "=q4=Wrathful Gladiator's Cord of Salvation",     "=ds=", "#HONOR:945#" },
			{ 7,  51366, "", "=q4=Wrathful Gladiator's Treads of Salvation",   "=ds=", "#HONOR:945#" },
			{ 9,  51339, "", "=q4=Wrathful Gladiator's Cuffs of Alacrity",     "=ds=", "#HONOR:600#" },
			{ 10, 51337, "", "=q4=Wrathful Gladiator's Cord of Alacrity",      "=ds=", "#HONOR:945#" },
			{ 11, 51338, "", "=q4=Wrathful Gladiator's Treads of Alacrity",    "=ds=", "#HONOR:945#" },
			{ 16, 41910, "", "=q4=Relentless Gladiator's Cuffs of Dominance",  "=ds=", "#HONOR:400#" },
			{ 17, 41899, "", "=q4=Relentless Gladiator's Cord of Dominance",   "=ds=", "#HONOR:630#" },
			{ 18, 41904, "", "=q4=Relentless Gladiator's Treads of Dominance", "=ds=", "#HONOR:630#" },
			{ 20, 41894, "", "=q4=Relentless Gladiator's Cuffs of Salvation",  "=ds=", "#HONOR:400#" },
			{ 21, 41882, "", "=q4=Relentless Gladiator's Cord of Salvation",   "=ds=", "#HONOR:630#" },
			{ 22, 41886, "", "=q4=Relentless Gladiator's Treads of Salvation", "=ds=", "#HONOR:630#" },
			{ 24, 49181, "", "=q4=Relentless Gladiator's Cuffs of Alacrity",   "=ds=", "#HONOR:400#" },
			{ 25, 49179, "", "=q4=Relentless Gladiator's Cord of Alacrity",    "=ds=", "#HONOR:630#" },
			{ 26, 49183, "", "=q4=Relentless Gladiator's Treads of Alacrity",  "=ds=", "#HONOR:630#" },
			extraText = ": " .. BabbleInventory["Cloth"],
		},
		{ -- Leather
			{ 1,  51345, "", "=q4=Wrathful Gladiator's Armwraps of Dominance",   "=ds=", "#HONOR:600#" },
			{ 2,  51343, "", "=q4=Wrathful Gladiator's Belt of Dominance",       "=ds=", "#HONOR:945#" },
			{ 3,  51344, "", "=q4=Wrathful Gladiator's Boots of Dominance",      "=ds=", "#HONOR:945#" },
			{ 5,  51342, "", "=q4=Wrathful Gladiator's Armwraps of Salvation",   "=ds=", "#HONOR:600#" },
			{ 6,  51340, "", "=q4=Wrathful Gladiator's Belt of Salvation",       "=ds=", "#HONOR:945#" },
			{ 7,  51341, "", "=q4=Wrathful Gladiator's Boots of Salvation",      "=ds=", "#HONOR:945#" },
			{ 9,  51370, "", "=q4=Wrathful Gladiator's Armwraps of Triumph",     "=ds=", "#HONOR:600#" },
			{ 10, 51368, "", "=q4=Wrathful Gladiator's Belt of Triumph",         "=ds=", "#HONOR:945#" },
			{ 11, 51369, "", "=q4=Wrathful Gladiator's Boots of Triumph",        "=ds=", "#HONOR:945#" },
			{ 16, 41641, "", "=q4=Relentless Gladiator's Armwraps of Dominance", "=ds=", "#HONOR:400#" },
			{ 17, 41631, "", "=q4=Relentless Gladiator's Belt of Dominance",     "=ds=", "#HONOR:630#" },
			{ 18, 41636, "", "=q4=Relentless Gladiator's Boots of Dominance",    "=ds=", "#HONOR:630#" },
			{ 20, 41626, "", "=q4=Relentless Gladiator's Armwraps of Salvation", "=ds=", "#HONOR:400#" },
			{ 21, 41618, "", "=q4=Relentless Gladiator's Belt of Salvation",     "=ds=", "#HONOR:630#" },
			{ 22, 41622, "", "=q4=Relentless Gladiator's Boots of Salvation",    "=ds=", "#HONOR:630#" },
			{ 24, 41841, "", "=q4=Relentless Gladiator's Armwraps of Triumph",   "=ds=", "#HONOR:400#" },
			{ 25, 41833, "", "=q4=Relentless Gladiator's Belt of Triumph",       "=ds=", "#HONOR:630#" },
			{ 26, 41837, "", "=q4=Relentless Gladiator's Boots of Triumph",      "=ds=", "#HONOR:630#" },
			extraText = ": " .. BabbleInventory["Leather"],
		},
		{ -- Mail
			{ 1,  51376, "", "=q4=Wrathful Gladiator's Wristguards of Dominance",   "=ds=", "#HONOR:600#" },
			{ 2,  51374, "", "=q4=Wrathful Gladiator's Waistguard of Dominance",    "=ds=", "#HONOR:945#" },
			{ 3,  51375, "", "=q4=Wrathful Gladiator's Sabatons of Dominance",      "=ds=", "#HONOR:945#" },
			{ 5,  51373, "", "=q4=Wrathful Gladiator's Wristguards of Salvation",   "=ds=", "#HONOR:600#" },
			{ 6,  51371, "", "=q4=Wrathful Gladiator's Waistguard of Salvation",    "=ds=", "#HONOR:945#" },
			{ 7,  51372, "", "=q4=Wrathful Gladiator's Sabatons of Salvation",      "=ds=", "#HONOR:945#" },
			{ 9,  51352, "", "=q4=Wrathful Gladiator's Wristguards of Triumph",     "=ds=", "#HONOR:600#" },
			{ 10, 51350, "", "=q4=Wrathful Gladiator's Waistguard of Triumph",      "=ds=", "#HONOR:945#" },
			{ 11, 51351, "", "=q4=Wrathful Gladiator's Sabatons of Triumph",        "=ds=", "#HONOR:945#" },
			{ 16, 41066, "", "=q4=Relentless Gladiator's Wristguards of Dominance", "=ds=", "#HONOR:400#" },
			{ 17, 41071, "", "=q4=Relentless Gladiator's Waistguard of Dominance",  "=ds=", "#HONOR:630#" },
			{ 18, 41076, "", "=q4=Relentless Gladiator's Sabatons of Dominance",    "=ds=", "#HONOR:630#" },
			{ 20, 41061, "", "=q4=Relentless Gladiator's Wristguards of Salvation", "=ds=", "#HONOR:400#" },
			{ 21, 41052, "", "=q4=Relentless Gladiator's Waistguard of Salvation",  "=ds=", "#HONOR:630#" },
			{ 22, 41056, "", "=q4=Relentless Gladiator's Sabatons of Salvation",    "=ds=", "#HONOR:630#" },
			{ 24, 41226, "", "=q4=Relentless Gladiator's Wristguards of Triumph",   "=ds=", "#HONOR:400#" },
			{ 25, 41236, "", "=q4=Relentless Gladiator's Waistguard of Triumph",    "=ds=", "#HONOR:630#" },
			{ 26, 41231, "", "=q4=Relentless Gladiator's Sabatons of Triumph",      "=ds=", "#HONOR:630#" },
			extraText = ": " .. BabbleInventory["Mail"],
		},
		{ -- Plate
			{ 1,  51361, "", "=q4=Wrathful Gladiator's Bracers of Salvation",   "=ds=", "#HONOR:600#" },
			{ 2,  51359, "", "=q4=Wrathful Gladiator's Girdle of Salvation",    "=ds=", "#HONOR:945#" },
			{ 3,  51360, "", "=q4=Wrathful Gladiator's Greaves of Salvation",   "=ds=", "#HONOR:945#" },
			{ 5,  51364, "", "=q4=Wrathful Gladiator's Bracers of Triumph",     "=ds=", "#HONOR:600#" },
			{ 6,  51362, "", "=q4=Wrathful Gladiator's Girdle of Triumph",      "=ds=", "#HONOR:945#" },
			{ 7,  51363, "", "=q4=Wrathful Gladiator's Greaves of Triumph",     "=ds=", "#HONOR:945#" },
			{ 16, 40984, "", "=q4=Relentless Gladiator's Bracers of Salvation", "=ds=", "#HONOR:400#" },
			{ 17, 40978, "", "=q4=Relentless Gladiator's Girdle of Salvation",  "=ds=", "#HONOR:630#" },
			{ 18, 40979, "", "=q4=Relentless Gladiator's Greaves of Salvation", "=ds=", "#HONOR:630#" },
			{ 20, 40890, "", "=q4=Relentless Gladiator's Bracers of Triumph",   "=ds=", "#HONOR:400#" },
			{ 21, 40883, "", "=q4=Relentless Gladiator's Girdle of Triumph",    "=ds=", "#HONOR:630#" },
			{ 22, 40884, "", "=q4=Relentless Gladiator's Greaves of Triumph",   "=ds=", "#HONOR:630#" },
			extraText = ": " .. BabbleInventory["Plate"],
		},
		{
			{ 2,  51429, "", "=q4=Wrathful Gladiator's Idol of Resolve",         "=ds=#w14#", "#HONOR:260# #reqrating# 1700" },
			{ 3,  51437, "", "=q4=Wrathful Gladiator's Idol of Steadfastness",   "=ds=#w14#", "#HONOR:260# #reqrating# 1700" },
			{ 4,  51423, "", "=q4=Wrathful Gladiator's Idol of Tenacity",        "=ds=#w14#", "#HONOR:260# #reqrating# 1700" },
			{ 6,  51478, "", "=q4=Wrathful Gladiator's Libram of Fortitude",     "=ds=#w16#", "#HONOR:260# #reqrating# 1700" },
			{ 7,  51472, "", "=q4=Wrathful Gladiator's Libram of Justice",       "=ds=#w16#", "#HONOR:260# #reqrating# 1700" },
			{ 17, 51507, "", "=q4=Wrathful Gladiator's Totem of Indomitability", "=ds=#w15#", "#HONOR:260# #reqrating# 1700" },
			{ 18, 51513, "", "=q4=Wrathful Gladiator's Totem of Survival",       "=ds=#w15#", "#HONOR:260# #reqrating# 1700" },
			{ 19, 51501, "", "=q4=Wrathful Gladiator's Totem of the Third Wind", "=ds=#w15#", "#HONOR:260# #reqrating# 1700" },
			{ 21, 51417, "", "=q4=Wrathful Gladiator's Sigil of Strife",         "=ds=#w21#", "#HONOR:260# #reqrating# 1700" },
			extraText = ": " .. BabbleInventory["Relic"],
		},
	},
	info = {
		name = AL["PvP Non-Set Epics"],
		module = moduleName,
		menu = "PVPMENU",
	},
}

--------------------------------
--- World PvP - Wintergrasp  ---
--------------------------------

Synastria_Data["LakeWintergrasp"] = {
	["Normal"] = {
		{
			{ 1,  51570, "", "=q4=Titan-Forged Cloak of Ascendancy",   "=ds=#s4#",  "#HONOR:280#" },
			{ 2,  51571, "", "=q4=Titan-Forged Cloak of Victory",      "=ds=#s4#",  "#HONOR:280#" },
			{ 4,  46083, "", "=q4=Titan-Forged Rune of Accuracy",      "=ds=#s14#", "#HONOR:280#" },
			{ 5,  46085, "", "=q4=Titan-Forged Rune of Alacrity",      "=ds=#s14#", "#HONOR:280#" },
			{ 6,  46081, "", "=q4=Titan-Forged Rune of Audacity",      "=ds=#s14#", "#HONOR:280#" },
			{ 7,  46084, "", "=q4=Titan-Forged Rune of Cruelty",       "=ds=#s14#", "#HONOR:280#" },
			{ 9,  46082, "", "=q4=Titan-Forged Rune of Determination", "=ds=#s14#", "#HONOR:280#" },
			{ 10, 43956, "", "=q4=Reins of the Black War Mammoth",     "=ds=#e26#", "#HONOR:1000#" },
			{ 11, 44077, "", "=q4=Reins of the Black War Mammoth",     "=ds=#e26#", "#HONOR:1000#" },
			{ 16, 51568, "", "=q4=Titan-Forged Pendant of Ascendancy", "=ds=#s4#",  "#HONOR:280#" },
			{ 17, 51569, "", "=q4=Titan-Forged Pendant of Victory",    "=ds=#s4#",  "#HONOR:280#" },
			{ 19, 44914, "", "=q4=Anvil of Titans",                    "=ds=#s14#", "#HONOR:280#" },
			{ 20, 44912, "", "=q4=Flow of Knowledge",                  "=ds=#s14#", "#HONOR:280#" },
			{ 21, 46086, "", "=q4=Platinum Disks of Battle",           "=ds=#s14#", "#HONOR:280#" },
			{ 22, 46088, "", "=q4=Platinum Disks of Swiftness",        "=ds=#s14#", "#HONOR:280#" },
			{ 23, 46087, "", "=q4=Platinum Disks of Sorcery",          "=ds=#s14#", "#HONOR:280#" },
			{ 25, 48999, "", "=q4=Titan-Forged Band of Ascendancy",    "=ds=#s13#", "#HONOR:280#" },
			{ 26, 49000, "", "=q4=Titan-Forged Band of Victory",       "=ds=#s13#", "#HONOR:280#" },
			extraText = " - " .. AL["Accessories"],
		},
		{
			{ 2,  44910, "", "=q4=Titan-Forged Hood of Dominance",            "=ds=#s1#, #a1#",  "#HONOR:490#" },
			{ 3,  51573, "", "=q4=Titan-Forged Shoulderpads of Domination",   "=ds=#s3#, #a1#",  "#HONOR:490#" },
			{ 4,  46065, "", "=q4=Titan-Forged Raiment of Dominance",         "=ds=#s5#, #a1#",  "#HONOR:490#" },
			{ 6,  46079, "", "=q4=Titan-Forged Cord of Dominance",            "=ds=#s10#, #a1#", "#HONOR:280#" },
			{ 7,  48997, "", "=q4=Titan-Forged Cloth Trousers of Domination", "=ds=#s11#, #a1#", "#HONOR:490#" },
			{ 8,  44899, "", "=q4=Titan-Forged Slippers of Dominance",        "=ds=#s12#, #a1#", "#HONOR:280#" },
			{ 17, 44909, "", "=q4=Titan-Forged Hood of Salvation",            "=ds=#s1#, #a1#",  "#HONOR:490#" },
			{ 18, 51572, "", "=q4=Titan-Forged Shoulderpads of Salvation",    "=ds=#s3#, #a1#",  "#HONOR:490#" },
			{ 19, 46066, "", "=q4=Titan-Forged Raiment of Salvation",         "=ds=#s3#, #a1#",  "#HONOR:490#" },
			{ 20, 48979, "", "=q4=Titan-Forged Cuffs of Salvation",           "=ds=#s8#, #a1#",  "#HONOR:280#" },
			{ 21, 46080, "", "=q4=Titan-Forged Cord of Salvation",            "=ds=#s10#, #a1#", "#HONOR:280#" },
			{ 22, 48991, "", "=q4=Titan-Forged Cloth Leggings of Salvation",  "=ds=#s11#, #a1#", "#HONOR:490#" },
			{ 23, 44900, "", "=q4=Titan-Forged Slippers of Salvation",        "=ds=#s12#, #a1#", "#HONOR:280#" },
			extraText = " - " .. BabbleInventory["Cloth"],
		},
		{
			{ 1,  44907, "", "=q4=Titan-Forged Leather Helm of Dominance",       "=ds=#s1#, #a2#",  "#HONOR:490#" },
			{ 2,  51574, "", "=q4=Titan-Forged Spaulders of Dominance",          "=ds=#s3#, #a2#",  "#HONOR:490#" },
			{ 3,  46064, "", "=q4=Titan-Forged Leather Chestguard of Dominance", "=ds=#s5#, #a2#",  "#HONOR:490#" },
			{ 4,  48974, "", "=q4=Titan-Forged Armwraps of Dominance",           "=ds=#s8#, #a2#",  "#HONOR:280#" },
			{ 5,  46076, "", "=q4=Titan-Forged Belt of Dominance",               "=ds=#s10#, #a2#", "#HONOR:280#" },
			{ 6,  48998, "", "=q4=Titan-Forged Leather Legguards of Dominance",  "=ds=#s11#, #a2#", "#HONOR:490#" },
			{ 7,  44891, "", "=q4=Titan-Forged Boots of Dominance",              "=ds=#s12#, #a2#", "#HONOR:280#" },
			{ 9,  44906, "", "=q4=Titan-Forged Leather Helm of Salvation",       "=ds=#s1#, #a2#",  "#HONOR:490#" },
			{ 10, 51575, "", "=q4=Titan-Forged Leather Spaulders of Salvation",  "=ds=#s3#, #a2#",  "#HONOR:490#" },
			{ 11, 46063, "", "=q4=Titan-Forged Leather Chestguard of Salvation", "=ds=#s5#, #a2#",  "#HONOR:490#" },
			{ 12, 48975, "", "=q4=Titan-Forged Armwraps of Salvation",           "=ds=#s8#, #a2#",  "#HONOR:280#" },
			{ 13, 46077, "", "=q4=Titan-Forged Belt of Salvation",               "=ds=#s10#, #a2#", "#HONOR:280#" },
			{ 14, 48987, "", "=q4=Titan-Forged Leather Legguards of Salvation",  "=ds=#s11#, #a2#", "#HONOR:490#" },
			{ 15, 44892, "", "=q4=Titan-Forged Boots of Salvation",              "=ds=#s12#, #a2#", "#HONOR:280#" },
			{ 16, 44908, "", "=q4=Titan-Forged Leather Helm of Triumph",         "=ds=#s1#, #a2#",  "#HONOR:490#" },
			{ 17, 51576, "", "=q4=Titan-Forged Spaulders of Triumph",            "=ds=#s3#, #a2#",  "#HONOR:490#" },
			{ 18, 46062, "", "=q4=Titan-Forged Leather Tunic of Triumph",        "=ds=#s5#, #a2#",  "#HONOR:490#" },
			{ 19, 48976, "", "=q4=Titan-Forged Armwraps of Triumph",             "=ds=#s8#, #a2#",  "#HONOR:280#" },
			{ 20, 46078, "", "=q4=Titan-Forged Belt of Triumph",                 "=ds=#s10#, #a2#", "#HONOR:280#" },
			{ 21, 48988, "", "=q4=Titan-Forged Leather Legguards of Triumph",    "=ds=#s11#, #a2#", "#HONOR:490#" },
			{ 22, 44893, "", "=q4=Titan-Forged Boots of Triumph",                "=ds=#s12#, #a2#", "#HONOR:280#" },
			extraText = " - " .. BabbleInventory["Leather"],
		},
		{
			{ 1,  44904, "", "=q4=Titan-Forged Mail Helm of Dominance",         "=ds=#s1#, #a3#",  "#HONOR:490#" },
			{ 2,  51578, "", "=q4=Titan-Forged Shoulders of Dominance",         "=ds=#s3#, #a3#",  "#HONOR:490#" },
			{ 3,  46061, "", "=q4=Titan-Forged Mail Armor of Domination",       "=ds=#s5#, #a3#",  "#HONOR:490#" },
			{ 4,  48980, "", "=q4=Titan-Forged Wristguards of Dominance",       "=ds=#s8#, #a3#",  "#HONOR:280#" },
			{ 5,  46073, "", "=q4=Titan-Forged Waistguard of Dominance",        "=ds=#s10#, #a3#", "#HONOR:280#" },
			{ 6,  48990, "", "=q4=Titan-Forged Mail Leggings of Dominance",     "=ds=#s11#, #a3#", "#HONOR:490#" },
			{ 7,  44896, "", "=q4=Titan-Forged Sabatons of Dominance",          "=ds=#s12#, #a3#", "#HONOR:280#" },
			{ 9,  44905, "", "=q4=Titan-Forged Ringmail Helm of Salvation",     "=ds=#s1#, #a3#",  "#HONOR:490#" },
			{ 10, 51579, "", "=q4=Titan-Forged Shoulders of Salvation",         "=ds=#s3#, #a3#",  "#HONOR:490#" },
			{ 11, 46060, "", "=q4=Titan-Forged Ringmail of Salvation",          "=ds=#s5#, #a3#",  "#HONOR:490#" },
			{ 12, 48981, "", "=q4=Titan-Forged Wristguards of Salvation",       "=ds=#s8#, #a3#",  "#HONOR:280#" },
			{ 13, 46074, "", "=q4=Titan-Forged Waistguard of Salvation",        "=ds=#s10#, #a3#", "#HONOR:280#" },
			{ 14, 48994, "", "=q4=Titan-Forged Ringmail Leggings of Salvation", "=ds=#s11#, #a3#", "#HONOR:490#" },
			{ 15, 44897, "", "=q4=Titan-Forged Sabatons of Salvation",          "=ds=#s12#, #a3#", "#HONOR:280#" },
			{ 16, 44903, "", "=q4=Titan-Forged Chain Helm of Triumph",          "=ds=#s1#, #a3#",  "#HONOR:490#" },
			{ 17, 51577, "", "=q4=Titan-Forged Shoulders of Triumph",           "=ds=#s3#, #a3#",  "#HONOR:490#" },
			{ 18, 46059, "", "=q4=Titan-Forged Chain Armor of Triumph",         "=ds=#s5#, #a3#",  "#HONOR:490#" },
			{ 19, 48982, "", "=q4=Titan-Forged Wristguards of Triumph",         "=ds=#s8#, #a3#",  "#HONOR:280#" },
			{ 20, 46075, "", "=q4=Titan-Forged Waistguard of Triumph",          "=ds=#s10#, #a3#", "#HONOR:280#" },
			{ 21, 48983, "", "=q4=Titan-Forged Chain Leggings of Triumph",      "=ds=#s11#, #a3#", "#HONOR:490#" },
			{ 22, 44898, "", "=q4=Titan-Forged Sabatons of Triumph",            "=ds=#s12#, #a3#", "#HONOR:280#" },
			extraText = " - " .. BabbleInventory["Mail"],
		},
		{
			{ 2,  44901, "", "=q4=Titan-Forged Plate Headcover of Salvation", "=ds=#s1#, #a4#",  "#HONOR:490#" },
			{ 3,  51581, "", "=q4=Titan-Forged Shoulderplates of Salvation",  "=ds=#s3#, #a4#",  "#HONOR:490#" },
			{ 4,  46057, "", "=q4=Titan-Forged Chestguard of Salvation",      "=ds=#s5#, #a4#",  "#HONOR:490#" },
			{ 5,  48977, "", "=q4=Titan-Forged Bracers of Salvation",         "=ds=#s8#, #a4#",  "#HONOR:280#" },
			{ 6,  46071, "", "=q4=Titan-Forged Girdle of Salvation",          "=ds=#s10#, #a4#", "#HONOR:280#" },
			{ 7,  48992, "", "=q4=Titan-Forged Plate Legguards of Salvation", "=ds=#s11#, #a4#", "#HONOR:490#" },
			{ 8,  44894, "", "=q4=Titan-Forged Greaves of Salvation",         "=ds=#s12#, #a4#", "#HONOR:280#" },
			{ 17, 44902, "", "=q4=Titan-Forged Plate Helm of Triumph",        "=ds=#s1#, #a4#",  "#HONOR:490#" },
			{ 18, 51580, "", "=q4=Titan-Forged Shoulderplates of Triumph",    "=ds=#s3#, #a4#",  "#HONOR:490#" },
			{ 19, 46058, "", "=q4=Titan-Forged Breastplate of Triumph",       "=ds=#s5#, #a4#",  "#HONOR:490#" },
			{ 20, 48978, "", "=q4=Titan-Forged Bracers of Triumph",           "=ds=#s8#, #a4#",  "#HONOR:280#" },
			{ 21, 46072, "", "=q4=Titan-Forged Girdle of Triumph",            "=ds=#s10#, #a4#", "#HONOR:280#" },
			{ 22, 48993, "", "=q4=Titan-Forged Plate Legguards of Triumph",   "=ds=#s11#, #a4#", "#HONOR:490#" },
			{ 23, 44895, "", "=q4=Titan-Forged Greaves of Triumph",           "=ds=#s12#, #a4#", "#HONOR:280#" },
			extraText = " - " .. BabbleInventory["Plate"],
		},
		{
			{ 1,  44066, "", "=q4=Kharmaa's Grace",                    "=ds=#e7#",        "#HONOR:165#" },
			{ 2,  44081, "", "=q3=Enigmatic Starflare Diamond",        "=ds=#e7#",        "#HONOR:24#" },
			{ 3,  44084, "", "=q3=Forlorn Starflare Diamond",          "=ds=#e7#",        "#HONOR:24#" },
			{ 4,  44082, "", "=q3=Impassive Starflare Diamond",        "=ds=#e7#",        "#HONOR:24#" },
			{ 5,  44076, "", "=q3=Swift Starflare Diamond",            "=ds=#e7#",        "#HONOR:24#" },
			{ 6,  44078, "", "=q3=Tireless Starflare Diamond",         "=ds=#e7#",        "#HONOR:24#" },
			{ 7,  44087, "", "=q3=Persistent Earthshatter Diamond",    "=ds=#e7#",        "#HONOR:24#" },
			{ 8,  44088, "", "=q3=Powerful Earthshatter Diamond",      "=ds=#e7#",        "#HONOR:24#" },
			{ 9,  44089, "", "=q3=Trenchant Earthshatter Diamond",     "=ds=#e7#",        "#HONOR:24#" },
			{ 11, 44075, "", "=q3=Arcanum of Dominance",               "=ds=#s1# #e17#",  "#HONOR:65#" },
			{ 12, 44069, "", "=q3=Arcanum of Triumph",                 "=ds=#s1# #e17#",  "#HONOR:65#" },
			{ 13, 44068, "", "=q3=Inscription of Dominance",           "=ds=#s3# #e17#",  "#HONOR:50#" },
			{ 14, 44067, "", "=q3=Inscription of Triumph",             "=ds=#s3# #e17#",  "#HONOR:50#" },
			{ 16, 41733, "", "=q3=Design: Lucent Monarch Topaz",       "=ds=#p12# (390)", "#HONOR:19#" },
			{ 17, 41730, "", "=q3=Design: Willful Monarch Topaz",      "=ds=#p12# (390)", "#HONOR:19#" },
			{ 18, 41735, "", "=q3=Design: Shattered Forest Emerald",   "=ds=#p12# (390)", "#HONOR:19#" },
			{ 19, 41736, "", "=q3=Design: Radiant Forest Emerald",     "=ds=#p12# (390)", "#HONOR:19#" },
			{ 20, 41737, "", "=q3=Design: Turbid Forest Emerald",      "=ds=#p12# (390)", "#HONOR:19#" },
			{ 21, 41738, "", "=q3=Design: Steady Forest Emerald",      "=ds=#p12# (390)", "#HONOR:19#" },
			{ 22, 41734, "", "=q3=Design: Resplendent Monarch Topaz",  "=ds=#p12# (390)", "#HONOR:19#" },
			{ 23, 41727, "", "=q3=Design: Mystic Autumn's Glow",       "=ds=#p12# (390)", "#HONOR:19#" },
			{ 24, 41740, "", "=q3=Design: Mysterious Twilight Opal",   "=ds=#p12# (390)", "#HONOR:19#" },
			{ 25, 41728, "", "=q3=Design: Stormy Sky Sapphire",        "=ds=#p12# (390)", "#HONOR:19#" },
			{ 26, 41742, "", "=q3=Design: Enigmatic Skyflare Diamond", "=ds=#p12# (420)", "#HONOR:38#" },
			{ 27, 41743, "", "=q3=Design: Forlorn Skyflare Diamond",   "=ds=#p12# (420)", "#HONOR:38#" },
			{ 28, 41744, "", "=q3=Design: Impassive Skyflare Diamond", "=ds=#p12# (420)", "#HONOR:38#" },
			extraText = " - " .. AL["PVP Gems/Enchants/Jewelcrafting Designs"],
		},
	},
	info = {
		name = BabbleZone["Wintergrasp"],
		module = moduleName,
		menu = "WINTERGRASPMENU",
	},
}

-----------------------------------------------
--- World PvP - Grizzly Hills: Venture Bay  ---
-----------------------------------------------

Synastria_Data["VentureBay"] = {
	["Normal"] = {
		{
			{ 1,  38354, "", "=q3=Oil-Stained Tarp",                        "=ds=#s4#",  "#VENTURE:50#" },
			{ 2,  38355, "", "=q3=Thick Goblin Back Protector ",            "=ds=#s4#",  "#VENTURE:50#" },
			{ 3,  38353, "", "=q3=Venture Bay Buccaneer's Cape",            "=ds=#s4#",  "#VENTURE:50#" },
			{ 4,  38358, "", "=q3=Arcane Revitalizer",                      "=ds=#s14#", "#VENTURE:70#" },
			{ 5,  38359, "", "=q3=Goblin Repetition Reducer",               "=ds=#s14#", "#VENTURE:70#" },
			{ 6,  38357, "", "=q3=Sharpened Throwing Gizmo",                "=ds=#w11#", "#VENTURE:30#" },
			{ 7,  38356, "", "=q3=Venture Battle Wand",                     "=ds=#w12#", "#VENTURE:30#" },
			{ 8,  38360, "", "=q3=Idol of Arcane Terror",                   "=ds=#w14#", "#VENTURE:30#" },
			{ 9,  38365, "", "=q3=Idol of Perspicacious Attacks",           "=ds=#w14#", "#VENTURE:30#" },
			{ 10, 38366, "", "=q3=Idol of Pure Thoughts",                   "=ds=#w14#", "#VENTURE:30#" },
			{ 11, 38364, "", "=q3=Venture Co. Libram of Mostly Holy Deeds", "=ds=#w16#", "#VENTURE:30#" },
			{ 12, 38363, "", "=q3=Venture Co. Libram of Protection",        "=ds=#w16#", "#VENTURE:30#" },
			{ 13, 38362, "", "=q3=Venture Co. Libram of Retribution",       "=ds=#w16#", "#VENTURE:30#" },
			{ 16, 38368, "", "=q3=Totem of the Bay",                        "=ds=#w15#", "#VENTURE:30#" },
			{ 17, 38367, "", "=q3=Venture Co. Flame Slicer",                "=ds=#w15#", "#VENTURE:30#" },
			{ 18, 38361, "", "=q3=Venture Co. Lightning Rod",               "=ds=#w15#", "#VENTURE:30#" },
			{ 19, 40875, "", "=q3=Sigil of Arthritic Binding",              "=ds=#w21#", "#VENTURE:30#" },
			{ 20, 40822, "", "=q3=Sigil of the Frozen Conscience",          "=ds=#w21#", "#VENTURE:30#" },
			{ 21, 40867, "", "=q3=Sigil of the Wild Buck",                  "=ds=#w21#", "#VENTURE:30#" },
		},
	},
	info = {
		name = BabbleZone["Grizzly Hills"] .. ": " .. AL["Venture Bay"],
		module = moduleName,
		menu = "PVPMENU2",
	},
}

--------------------------
--- Sets & Collections ---
--------------------------

--------------------------
--- Tier 10 Sets (T10) ---
--------------------------

Synastria_Data["T10 - Death Knight"] = {
	["Normal"] = {
		{
			{ 1,  0,     "spell_deathknight_frostpresence", "=q6=#t10s10_1#",                            "=q5=" .. AL["Tier 10"] },
			{ 2,  50096, "",                                "=q4=Scourgelord Helmet",                    "=ds=#s1#, #a4#",       "#FROST:95#" },
			{ 3,  50098, "",                                "=q4=Scourgelord Shoulderplates",            "=ds=#s3#, #a4#",       "#FROST:60#" },
			{ 4,  50094, "",                                "=q4=Scourgelord Battleplate",               "=ds=#s5#, #a4#",       "#FROST:95#" },
			{ 5,  50095, "",                                "=q4=Scourgelord Gauntlets",                 "=ds=#s9#, #a4#",       "#FROST:60#" },
			{ 6,  50097, "",                                "=q4=Scourgelord Legplates",                 "=ds=#s11#, #a4#",      "#FROST:95#" },
			{ 8,  0,     "spell_deathknight_frostpresence", "=q6=#t10s10_1#",                            "=q5=" .. AL["Tier 10"] },
			{ 9,  51127, "",                                "=q4=Sanctified Scourgelord Helmet",         "=ds=#s1#, #a4#" },
			{ 10, 51125, "",                                "=q4=Sanctified Scourgelord Shoulderplates", "=ds=#s3#, #a4#" },
			{ 11, 51129, "",                                "=q4=Sanctified Scourgelord Battleplate",    "=ds=#s5#, #a4#" },
			{ 12, 51128, "",                                "=q4=Sanctified Scourgelord Gauntlets",      "=ds=#s9#, #a4#" },
			{ 13, 51126, "",                                "=q4=Sanctified Scourgelord Legplates",      "=ds=#s11#, #a4#" },
			{ 16, 0,     "spell_deathknight_frostpresence", "=q6=#t10s10_1#",                            "=q5=" .. AL["Tier 10"] },
			{ 17, 51312, "",                                "=q4=Sanctified Scourgelord Helmet",         "=ds=#s1#, #a4#" },
			{ 18, 51314, "",                                "=q4=Sanctified Scourgelord Shoulderplates", "=ds=#s3#, #a4#" },
			{ 19, 51310, "",                                "=q4=Sanctified Scourgelord Battleplate",    "=ds=#s5#, #a4#" },
			{ 20, 51311, "",                                "=q4=Sanctified Scourgelord Gauntlets",      "=ds=#s9#, #a4#" },
			{ 21, 51313, "",                                "=q4=Sanctified Scourgelord Legplates",      "=ds=#s11#, #a4#" },
		},
		{
			{ 1,  0,     "spell_deathknight_bloodpresence", "=q6=#t10s10_2#",                        "=q5=" .. AL["Tier 10"] },
			{ 2,  50855, "",                                "=q4=Scourgelord Faceguard",             "=ds=#s1#, #a4#",       "#FROST:95#" },
			{ 3,  50853, "",                                "=q4=Scourgelord Pauldrons",             "=ds=#s3#, #a4#",       "#FROST:60#" },
			{ 4,  50857, "",                                "=q4=Scourgelord Chestguard",            "=ds=#s5#, #a4#",       "#FROST:95#" },
			{ 5,  50856, "",                                "=q4=Scourgelord Handguards",            "=ds=#s9#, #a4#",       "#FROST:60#" },
			{ 6,  50854, "",                                "=q4=Scourgelord Legguards",             "=ds=#s11#, #a4#",      "#FROST:95#" },
			{ 8,  0,     "spell_deathknight_bloodpresence", "=q6=#t10s10_2#",                        "=q5=" .. AL["Tier 10"] },
			{ 9,  51133, "",                                "=q4=Sanctified Scourgelord Faceguard",  "=ds=#s1#, #a4#" },
			{ 10, 51130, "",                                "=q4=Sanctified Scourgelord Pauldrons",  "=ds=#s3#, #a4#" },
			{ 11, 51134, "",                                "=q4=Sanctified Scourgelord Chestguard", "=ds=#s5#, #a4#" },
			{ 12, 51132, "",                                "=q4=Sanctified Scourgelord Handguards", "=ds=#s9#, #a4#" },
			{ 13, 51131, "",                                "=q4=Sanctified Scourgelord Legguards",  "=ds=#s11#, #a4#" },
			{ 16, 0,     "spell_deathknight_bloodpresence", "=q6=#t10s10_2#",                        "=q5=" .. AL["Tier 10"] },
			{ 17, 51306, "",                                "=q4=Sanctified Scourgelord Faceguard",  "=ds=#s1#, #a4#" },
			{ 18, 51309, "",                                "=q4=Sanctified Scourgelord Pauldrons",  "=ds=#s3#, #a4#" },
			{ 19, 51305, "",                                "=q4=Sanctified Scourgelord Chestguard", "=ds=#s5#, #a4#" },
			{ 20, 51307, "",                                "=q4=Sanctified Scourgelord Handguards", "=ds=#s9#, #a4#" },
			{ 21, 51308, "",                                "=q4=Sanctified Scourgelord Legguards",  "=ds=#s11#, #a4#" },
		},
	},
	info = {
		name = BabbleBoss["T10 - Death Knight"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}


Synastria_Data["T10 - Druid"] = {
	["Normal"] = {
		{
			{ 1,  0,     "spell_nature_healingtouch", "=q6=#t10s1_1#",                          "=q5=" .. AL["Tier 10"] },
			{ 2,  50108, "",                          "=q4=Lasherweave's Helmet  ",             "=ds=#s1#, #a2#",       "#FROST:95#" },
			{ 3,  50113, "",                          "=q4=Lasherweave's Pauldrons",            "=ds=#s3#, #a2#",       "#FROST:60#" },
			{ 4,  50106, "",                          "=q4=Lasherweave's Robes",                "=ds=#s5#, #a2#",       "#FROST:95#" },
			{ 5,  50107, "",                          "=q4=Lasherweave's Gauntlets",            "=ds=#s9#, #a2#",       "#FROST:60#" },
			{ 6,  50109, "",                          "=q4=Lasherweave's Legplates",            "=ds=#s11#, #a2#",      "#FROST:95#" },
			{ 8,  0,     "spell_nature_healingtouch", "=q6=#t10s1_1#",                          "=q5=" .. AL["Tier 10"] },
			{ 9,  51137, "",                          "=q4=Sanctified Lasherweave's Helmet",    "=ds=#s1#, #a2#" },
			{ 10, 51135, "",                          "=q4=Sanctified Lasherweave's Pauldrons", "=ds=#s3#, #a2#" },
			{ 11, 51139, "",                          "=q4=Sanctified Lasherweave's Robes",     "=ds=#s5#, #a2#" },
			{ 12, 51138, "",                          "=q4=Sanctified Lasherweave's Gauntlets", "=ds=#s9#, #a2#" },
			{ 13, 51136, "",                          "=q4=Sanctified Lasherweave's Legplates", "=ds=#s11#, #a2#" },
			{ 16, 0,     "spell_nature_healingtouch", "=q6=#t10s1_1#",                          "=q5=" .. AL["Tier 10"] },
			{ 17, 51302, "",                          "=q4=Sanctified Lasherweave's Helmet",    "=ds=#s1#, #a2#" },
			{ 18, 51304, "",                          "=q4=Sanctified Lasherweave's Pauldrons", "=ds=#s3#, #a2#" },
			{ 19, 51300, "",                          "=q4=Sanctified Lasherweave's Robes",     "=ds=#s5#, #a2#" },
			{ 20, 51301, "",                          "=q4=Sanctified Lasherweave's Gauntlets", "=ds=#s9#, #a2#" },
			{ 21, 51303, "",                          "=q4=Sanctified Lasherweave's Legplates", "=ds=#s11#, #a2#" },
		},
		{
			{ 1,  0,     "ability_racial_bearform", "=q6=#t10s1_2#",                             "=q5=" .. AL["Tier 10"] },
			{ 2,  50826, "",                        "=q4=Lasherweave's Headguard",               "=ds=#s1#, #a2#",       "#FROST:95#" },
			{ 3,  50824, "",                        "=q4=Lasherweave's Shoulderpads",            "=ds=#s3#, #a2#",       "#FROST:60#" },
			{ 4,  50828, "",                        "=q4=Lasherweave's Raiment",                 "=ds=#s5#, #a2#",       "#FROST:95#" },
			{ 5,  50827, "",                        "=q4=Lasherweave's Handgrips",               "=ds=#s9#, #a2#",       "#FROST:60#" },
			{ 6,  50825, "",                        "=q4=Lasherweave's Legguards",               "=ds=#s11#, #a2#",      "#FROST:95#" },
			{ 8,  0,     "ability_racial_bearform", "=q6=#t10s1_2#",                             "=q5=" .. AL["Tier 10"] },
			{ 9,  51143, "",                        "=q4=Sanctified Lasherweave's Headguard",    "=ds=#s1#, #a2#" },
			{ 10, 51140, "",                        "=q4=Sanctified Lasherweave's Shoulderpads", "=ds=#s3#, #a2#" },
			{ 11, 51141, "",                        "=q4=Sanctified Lasherweave's Raiment",      "=ds=#s5#, #a2#" },
			{ 12, 51144, "",                        "=q4=Sanctified Lasherweave's Handgrips",    "=ds=#s9#, #a2#" },
			{ 13, 51142, "",                        "=q4=Sanctified Lasherweave's Legguards",    "=ds=#s11#, #a2#" },
			{ 16, 0,     "ability_racial_bearform", "=q6=#t10s1_2#",                             "=q5=" .. AL["Tier 10"] },
			{ 17, 51296, "",                        "=q4=Sanctified Lasherweave's Headguard",    "=ds=#s1#, #a2#" },
			{ 18, 51299, "",                        "=q4=Sanctified Lasherweave's Shoulderpads", "=ds=#s3#, #a2#" },
			{ 19, 51298, "",                        "=q4=Sanctified Lasherweave's Raiment",      "=ds=#s5#, #a2#" },
			{ 20, 51295, "",                        "=q4=Sanctified Lasherweave's Handgrips",    "=ds=#s9#, #a2#" },
			{ 21, 51297, "",                        "=q4=Sanctified Lasherweave's Legguards",    "=ds=#s11#, #a2#" },
		},
		{
			{ 1,  0,     "spell_nature_starfall", "=q6=#t10s1_3#",                         "=q5=" .. AL["Tier 10"] },
			{ 2,  50821, "",                      "=q4=Lasherweave's Cover",               "=ds=#s1#, #a2#",       "#FROST:95#" },
			{ 3,  50819, "",                      "=q4=Lasherweave's Mantle",              "=ds=#s3#, #a2#",       "#FROST:60#" },
			{ 4,  50823, "",                      "=q4=Lasherweave's Vestment",            "=ds=#s5#, #a2#",       "#FROST:95#" },
			{ 5,  50822, "",                      "=q4=Lasherweave's Gloves",              "=ds=#s9#, #a2#",       "#FROST:60#" },
			{ 6,  50820, "",                      "=q4=Lasherweave's Trousers",            "=ds=#s11#, #a2#",      "#FROST:95#" },
			{ 8,  0,     "spell_nature_starfall", "=q6=#t10s1_3#",                         "=q5=" .. AL["Tier 10"] },
			{ 9,  51149, "",                      "=q4=Sanctified Lasherweave's Cover",    "=ds=#s1#, #a2#" },
			{ 10, 51147, "",                      "=q4=Sanctified Lasherweave's Mantle",   "=ds=#s3#, #a2#" },
			{ 11, 51145, "",                      "=q4=Sanctified Lasherweave's Vestment", "=ds=#s5#, #a2#" },
			{ 12, 51148, "",                      "=q4=Sanctified Lasherweave's Gloves",   "=ds=#s9#, #a2#" },
			{ 13, 51146, "",                      "=q4=Sanctified Lasherweave's Trousers", "=ds=#s11#, #a2#" },
			{ 16, 0,     "spell_nature_starfall", "=q6=#t10s1_3#",                         "=q5=" .. AL["Tier 10"] },
			{ 17, 51290, "",                      "=q4=Sanctified Lasherweave's Cover",    "=ds=#s1#, #a2#" },
			{ 18, 51292, "",                      "=q4=Sanctified Lasherweave's Mantle",   "=ds=#s3#, #a2#" },
			{ 19, 51294, "",                      "=q4=Sanctified Lasherweave's Vestment", "=ds=#s5#, #a2#" },
			{ 20, 51291, "",                      "=q4=Sanctified Lasherweave's Gloves",   "=ds=#s9#, #a2#" },
			{ 21, 51293, "",                      "=q4=Sanctified Lasherweave's Trousers", "=ds=#s11#, #a2#" },
		},
	},
	info = {
		name = BabbleBoss["T10 - Druid"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

Synastria_Data["T10 - Hunter"] = {
	["Normal"] = {
		{
			{ 1,  0,     "inv_weapon_bow_07", "=q6=#t10s2#",                                        "=q5=" .. AL["Tier 10"] },
			{ 2,  50115, "",                  "=q4=Ahn'Kahar Blood Hunter's Headpiece",             "=ds=#s1#, #a3#",       "#FROST:95#" },
			{ 3,  50117, "",                  "=q4=Ahn'Kahar Blood Hunter's Spaulders",             "=ds=#s3#, #a3#",       "#FROST:60#" },
			{ 4,  50118, "",                  "=q4=Ahn'Kahar Blood Hunter's Tunic",                 "=ds=#s5#, #a3#",       "#FROST:95#" },
			{ 5,  50114, "",                  "=q4=Ahn'Kahar Blood Hunter's Handguards",            "=ds=#s9#, #a3#",       "#FROST:60#" },
			{ 6,  50116, "",                  "=q4=Ahn'Kahar Blood Hunter's Legguards",             "=ds=#s11#, #a3#",      "#FROST:95#" },
			{ 8,  0,     "inv_weapon_bow_07", "=q6=#t10s2#",                                        "=q5=" .. AL["Tier 10"] },
			{ 9,  51153, "",                  "=q4=Sanctified Ahn'Kahar Blood Hunter's Headpiece",  "=ds=#s1#, #a3#" },
			{ 10, 51151, "",                  "=q4=Sanctified Ahn'Kahar Blood Hunter's Spaulders",  "=ds=#s3#, #a3#" },
			{ 11, 51150, "",                  "=q4=Sanctified Ahn'Kahar Blood Hunter's Tunic",      "=ds=#s5#, #a3#" },
			{ 12, 51154, "",                  "=q4=Sanctified Ahn'Kahar Blood Hunter's Handguards", "=ds=#s9#, #a3#" },
			{ 13, 51152, "",                  "=q4=Sanctified Ahn'Kahar Blood Hunter's Legguards",  "=ds=#s11#, #a3#" },
			{ 16, 0,     "inv_weapon_bow_07", "=q6=#t10s2#",                                        "=q5=" .. AL["Tier 10"] },
			{ 17, 51286, "",                  "=q4=Sanctified Ahn'Kahar Blood Hunter's Headpiece",  "=ds=#s1#, #a3#" },
			{ 18, 51288, "",                  "=q4=Sanctified Ahn'Kahar Blood Hunter's Spaulders",  "=ds=#s3#, #a3#" },
			{ 19, 51289, "",                  "=q4=Sanctified Ahn'Kahar Blood Hunter's Tunic",      "=ds=#s5#, #a3#" },
			{ 20, 51285, "",                  "=q4=Sanctified Ahn'Kahar Blood Hunter's Handguards", "=ds=#s9#, #a3#" },
			{ 21, 51287, "",                  "=q4=Sanctified Ahn'Kahar Blood Hunter's Legguards",  "=ds=#s11#, #a3#" },
		},
	},
	info = {
		name = BabbleBoss["T10 - Hunter"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

Synastria_Data["T10 - Mage"] = {
	["Normal"] = {
		{
			{ 1,  0,     "inv_staff_13", "=q6=#t10s3#",                           "=q5=" .. AL["Tier 10"] },
			{ 2,  50276, "",             "=q4=Bloodmage Hood",                    "=ds=#s1#, #a1#",       "#FROST:95#" },
			{ 3,  50279, "",             "=q4=Bloodmage Shoulderpads",            "=ds=#s3#, #a1#",       "#FROST:60#" },
			{ 4,  50278, "",             "=q4=Bloodmage Robe",                    "=ds=#s5#, #a1#",       "#FROST:95#" },
			{ 5,  50275, "",             "=q4=Bloodmage Gloves",                  "=ds=#s9#, #a1#",       "#FROST:60#" },
			{ 6,  50277, "",             "=q4=Bloodmage Leggings",                "=ds=#s11#, #a1#",      "#FROST:95#" },
			{ 8,  0,     "inv_staff_13", "=q6=#t10s3#",                           "=q5=" .. AL["Tier 10"] },
			{ 9,  51158, "",             "=q4=Sanctified Bloodmage Hood",         "=ds=#s1#, #a1#" },
			{ 10, 51155, "",             "=q4=Sanctified Bloodmage Shoulderpads", "=ds=#s3#, #a1#" },
			{ 11, 51156, "",             "=q4=Sanctified Bloodmage Robe",         "=ds=#s5#, #a1#" },
			{ 12, 51159, "",             "=q4=Sanctified Bloodmage Gloves",       "=ds=#s9#, #a1#" },
			{ 13, 51157, "",             "=q4=Sanctified Bloodmage Leggings",     "=ds=#s11#, #a1#" },
			{ 16, 0,     "inv_staff_13", "=q6=#t10s3#",                           "=q5=" .. AL["Tier 10"] },
			{ 17, 51281, "",             "=q4=Sanctified Bloodmage Hood",         "=ds=#s1#, #a1#" },
			{ 18, 51284, "",             "=q4=Sanctified Bloodmage Shoulderpads", "=ds=#s3#, #a1#" },
			{ 19, 51283, "",             "=q4=Sanctified Bloodmage Robe",         "=ds=#s5#, #a1#" },
			{ 20, 51280, "",             "=q4=Sanctified Bloodmage Gloves",       "=ds=#s9#, #a1#" },
			{ 21, 51282, "",             "=q4=Sanctified Bloodmage Leggings",     "=ds=#s11#, #a1#" },
		},
	},
	info = {
		name = BabbleBoss["T10 - Mage"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

Synastria_Data["T10 - Paladin"] = {
	["Normal"] = {
		{
			{ 1,  0,     "Spell_Holy_HolyBolt", "=q6=#t10s4_1#",                       "=q5=" .. AL["Tier 10"] },
			{ 2,  50867, "",                    "=q4=Lightsworn Headpiece",            "=ds=#s1#, #a4#",       "#FROST:95#" },
			{ 3,  50865, "",                    "=q4=Lightsworn Spaulders",            "=ds=#s3#, #a4#",       "#FROST:60#" },
			{ 4,  50869, "",                    "=q4=Lightsworn Tunic",                "=ds=#s5#, #a4#",       "#FROST:95#" },
			{ 5,  50868, "",                    "=q4=Lightsworn Gloves",               "=ds=#s9#, #a4#",       "#FROST:60#" },
			{ 6,  50866, "",                    "=q4=Lightsworn Greaves",              "=ds=#s11#, #a4#",      "#FROST:95#" },
			{ 8,  0,     "Spell_Holy_HolyBolt", "=q6=#t10s4_1#",                       "=q5=" .. AL["Tier 10"] },
			{ 9,  51167, "",                    "=q4=Sanctified Lightsworn Headpiece", "=ds=#s1#, #a4#" },
			{ 10, 51166, "",                    "=q4=Sanctified Lightsworn Spaulders", "=ds=#s3#, #a4#" },
			{ 11, 51165, "",                    "=q4=Sanctified Lightsworn Tunic",     "=ds=#s5#, #a4#" },
			{ 12, 51169, "",                    "=q4=Sanctified Lightsworn Gloves",    "=ds=#s9#, #a4#" },
			{ 13, 51168, "",                    "=q4=Sanctified Lightsworn Greaves",   "=ds=#s11#, #a4#" },
			{ 16, 0,     "Spell_Holy_HolyBolt", "=q6=#t10s4_1#",                       "=q5=" .. AL["Tier 10"] },
			{ 17, 51272, "",                    "=q4=Sanctified Lightsworn Headpiece", "=ds=#s1#, #a4#" },
			{ 18, 51273, "",                    "=q4=Sanctified Lightsworn Spaulders", "=ds=#s3#, #a4#" },
			{ 19, 51274, "",                    "=q4=Sanctified Lightsworn Tunic",     "=ds=#s5#, #a4#" },
			{ 20, 51270, "",                    "=q4=Sanctified Lightsworn Gloves",    "=ds=#s9#, #a4#" },
			{ 21, 51271, "",                    "=q4=Sanctified Lightsworn Greaves",   "=ds=#s11#, #a4#" },
		},
		{
			{ 1,  0,     "Spell_Holy_AuraOfLight", "=q6=#t10s4_2#",                            "=q5=" .. AL["Tier 10"] },
			{ 2,  50326, "",                       "=q4=Lightsworn Helmet",                    "=ds=#s1#, #a4#",       "#FROST:95#" },
			{ 3,  50324, "",                       "=q4=Lightsworn Shoulderplates",            "=ds=#s3#, #a4#",       "#FROST:60#" },
			{ 4,  50328, "",                       "=q4=Lightsworn Battleplate",               "=ds=#s5#, #a4#",       "#FROST:95#" },
			{ 5,  50327, "",                       "=q4=Lightsworn Gauntlets",                 "=ds=#s9#, #a4#",       "#FROST:60#" },
			{ 6,  50325, "",                       "=q4=Lightsworn Legplates",                 "=ds=#s11#, #a4#",      "#FROST:95#" },
			{ 8,  0,     "Spell_Holy_AuraOfLight", "=q6=#t10s4_2#",                            "=q5=" .. AL["Tier 10"] },
			{ 9,  51162, "",                       "=q4=Sanctified Lightsworn Helmet",         "=ds=#s1#, #a4#" },
			{ 10, 51160, "",                       "=q4=Sanctified Lightsworn Shoulderplates", "=ds=#s3#, #a4#" },
			{ 11, 51164, "",                       "=q4=Sanctified Lightsworn Battleplate",    "=ds=#s5#, #a4#" },
			{ 12, 51163, "",                       "=q4=Sanctified Lightsworn Gauntlets",      "=ds=#s9#, #a4#" },
			{ 13, 51161, "",                       "=q4=Sanctified Lightsworn Legplates",      "=ds=#s11#, #a4#" },
			{ 16, 0,     "Spell_Holy_AuraOfLight", "=q6=#t10s4_2#",                            "=q5=" .. AL["Tier 10"] },
			{ 17, 51277, "",                       "=q4=Sanctified Lightsworn Helmet",         "=ds=#s1#, #a4#" },
			{ 18, 51279, "",                       "=q4=Sanctified Lightsworn Shoulderplates", "=ds=#s3#, #a4#" },
			{ 19, 51275, "",                       "=q4=Sanctified Lightsworn Battleplate",    "=ds=#s5#, #a4#" },
			{ 20, 51276, "",                       "=q4=Sanctified Lightsworn Gauntlets",      "=ds=#s9#, #a4#" },
			{ 21, 51278, "",                       "=q4=Sanctified Lightsworn Legplates",      "=ds=#s11#, #a4#" },
		},
		{
			{ 1,  0,     "spell_holy_devotionaura", "=q6=#t10s4_3#",                            "=q5=" .. AL["Tier 10"] },
			{ 2,  50862, "",                        "=q4=Lightsworn Faceguard",                 "=ds=#s1#, #a4#",       "#FROST:95#" },
			{ 3,  50860, "",                        "=q4=Lightsworn Shoulderguards",            "=ds=#s3#, #a4#",       "#FROST:60#" },
			{ 4,  50864, "",                        "=q4=Lightsworn Chestguard",                "=ds=#s5#, #a4#",       "#FROST:95#" },
			{ 5,  50863, "",                        "=q4=Lightsworn Handguards",                "=ds=#s9#, #a4#",       "#FROST:60#" },
			{ 6,  50861, "",                        "=q4=Lightsworn Legguards",                 "=ds=#s11#, #a4#",      "#FROST:95#" },
			{ 8,  0,     "spell_holy_devotionaura", "=q6=#t10s4_3#",                            "=q5=" .. AL["Tier 10"] },
			{ 9,  51173, "",                        "=q4=Sanctified Lightsworn Faceguard",      "=ds=#s1#, #a4#" },
			{ 10, 51170, "",                        "=q4=Sanctified Lightsworn Shoulderguards", "=ds=#s3#, #a4#" },
			{ 11, 51174, "",                        "=q4=Sanctified Lightsworn Chestguard",     "=ds=#s5#, #a4#" },
			{ 12, 51172, "",                        "=q4=Sanctified Lightsworn Handguards",     "=ds=#s9#, #a4#" },
			{ 13, 51171, "",                        "=q4=Sanctified Lightsworn Legguards",      "=ds=#s11#, #a4#" },
			{ 16, 0,     "spell_holy_devotionaura", "=q6=#t10s4_3#",                            "=q5=" .. AL["Tier 10"] },
			{ 17, 51266, "",                        "=q4=Sanctified Lightsworn Faceguard",      "=ds=#s1#, #a4#" },
			{ 18, 51269, "",                        "=q4=Sanctified Lightsworn Shoulderguards", "=ds=#s3#, #a4#" },
			{ 19, 51265, "",                        "=q4=Sanctified Lightsworn Chestguard",     "=ds=#s5#, #a4#" },
			{ 20, 51267, "",                        "=q4=Sanctified Lightsworn Handguards",     "=ds=#s9#, #a4#" },
			{ 21, 51268, "",                        "=q4=Sanctified Lightsworn Legguards",      "=ds=#s11#, #a4#" },
		},
	},
	info = {
		name = BabbleBoss["T10 - Paladin"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

Synastria_Data["T10 - Priest"] = {
	["Normal"] = {
		{
			{ 1,  0,     "spell_shadow_shadowwordpain", "=q6=#t10s5_1#",                            "=q5=" .. AL["Tier 10"] },
			{ 2,  50392, "",                            "=q4=Crimson Acolyte Cowl",                 "=ds=#s1#, #a1#",       "#FROST:95#" },
			{ 3,  50396, "",                            "=q4=Crimson Acolyte Mantle",               "=ds=#s3#, #a1#",       "#FROST:60#" },
			{ 4,  50394, "",                            "=q4=Crimson Acolyte Raiments",             "=ds=#s5#, #a1#",       "#FROST:95#" },
			{ 5,  50391, "",                            "=q4=Crimson Acolyte Handwraps",            "=ds=#s9#, #a1#",       "#FROST:60#" },
			{ 6,  50393, "",                            "=q4=Crimson Acolyte Pants",                "=ds=#s11#, #a1#",      "#FROST:95#" },
			{ 8,  0,     "spell_shadow_shadowwordpain", "=q6=#t10s5_1#",                            "=q5=" .. AL["Tier 10"] },
			{ 9,  51184, "",                            "=q4=Sanctified Crimson Acolyte Cowl",      "=ds=#s1#, #a1#" },
			{ 10, 51182, "",                            "=q4=Sanctified Crimson Acolyte Mantle",    "=ds=#s3#, #a1#" },
			{ 11, 51180, "",                            "=q4=Sanctified Crimson Acolyte Raiments",  "=ds=#s5#, #a1#" },
			{ 12, 51183, "",                            "=q4=Sanctified Crimson Acolyte Handwraps", "=ds=#s9#, #a1#" },
			{ 13, 51181, "",                            "=q4=Sanctified Crimson Acolyte Pants",     "=ds=#s11#, #a1#" },
			{ 16, 0,     "spell_shadow_shadowwordpain", "=q6=#t10s5_1#",                            "=q5=" .. AL["Tier 10"] },
			{ 17, 51255, "",                            "=q4=Sanctified Crimson Acolyte Cowl",      "=ds=#s1#, #a1#" },
			{ 18, 51257, "",                            "=q4=Sanctified Crimson Acolyte Mantle",    "=ds=#s3#, #a1#" },
			{ 19, 51259, "",                            "=q4=Sanctified Crimson Acolyte Raiments",  "=ds=#s5#, #a1#" },
			{ 20, 51256, "",                            "=q4=Sanctified Crimson Acolyte Handwraps", "=ds=#s9#, #a1#" },
			{ 21, 51258, "",                            "=q4=Sanctified Crimson Acolyte Pants",     "=ds=#s11#, #a1#" },
		},
		{
			{ 1,  0,     "spell_holy_guardianspirit", "=q6=#t10s5_2#",                               "=q5=" .. AL["Tier 10"] },
			{ 2,  50765, "",                          "=q4=Crimson Acolyte Hood",                    "=ds=#s1#, #a1#",       "#FROST:95#" },
			{ 3,  50767, "",                          "=q4=Crimson Acolyte Shoulderpads",            "=ds=#s3#, #a1#",       "#FROST:60#" },
			{ 4,  50768, "",                          "=q4=Crimson Acolyte Robe",                    "=ds=#s5#, #a1#",       "#FROST:95#" },
			{ 5,  50766, "",                          "=q4=Crimson Acolyte Gloves",                  "=ds=#s9#, #a1#",       "#FROST:60#" },
			{ 6,  50769, "",                          "=q4=Crimson Acolyte Leggings",                "=ds=#s11#, #a1#",      "#FROST:95#" },
			{ 8,  0,     "spell_holy_guardianspirit", "=q6=#t10s5_2#",                               "=q5=" .. AL["Tier 10"] },
			{ 9,  51178, "",                          "=q4=Sanctified Crimson Acolyte Hood",         "=ds=#s1#, #a1#" },
			{ 10, 51175, "",                          "=q4=Sanctified Crimson Acolyte Shoulderpads", "=ds=#s3#, #a1#" },
			{ 11, 51176, "",                          "=q4=Sanctified Crimson Acolyte Robe",         "=ds=#s5#, #a1#" },
			{ 12, 51179, "",                          "=q4=Sanctified Crimson Acolyte Gloves",       "=ds=#s9#, #a1#" },
			{ 13, 51177, "",                          "=q4=Sanctified Crimson Acolyte Leggings",     "=ds=#s11#, #a1#" },
			{ 16, 0,     "spell_holy_guardianspirit", "=q6=#t10s5_2#",                               "=q5=" .. AL["Tier 10"] },
			{ 17, 51261, "",                          "=q4=Sanctified Crimson Acolyte Hood",         "=ds=#s1#, #a1#" },
			{ 18, 51264, "",                          "=q4=Sanctified Crimson Acolyte Shoulderpads", "=ds=#s3#, #a1#" },
			{ 19, 51263, "",                          "=q4=Sanctified Crimson Acolyte Robe",         "=ds=#s5#, #a1#" },
			{ 20, 51260, "",                          "=q4=Sanctified Crimson Acolyte Gloves",       "=ds=#s9#, #a1#" },
			{ 21, 51262, "",                          "=q4=Sanctified Crimson Acolyte Leggings",     "=ds=#s11#, #a1#" },
		},
	},
	info = {
		name = BabbleBoss["T10 - Priest"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

Synastria_Data["T10 - Rogue"] = {
	["Normal"] = {
		{
			{ 1,  0,     "inv_throwingknife_04", "=q6=#t10s6#",                            "=q5=" .. AL["Tier 10"] },
			{ 2,  50089, "",                     "=q4=Shadowblade Helmet",                 "=ds=#s1#, #a2#",       "#FROST:95#" },
			{ 3,  50105, "",                     "=q4=Shadowblade Pauldrons",              "=ds=#s3#, #a2#",       "#FROST:60#" },
			{ 4,  50087, "",                     "=q4=Shadowblade Breastplate",            "=ds=#s5#, #a2#",       "#FROST:95#" },
			{ 5,  50088, "",                     "=q4=Shadowblade Gauntlets",              "=ds=#s9#, #a2#",       "#FROST:60#" },
			{ 6,  50090, "",                     "=q4=Shadowblade Legplates",              "=ds=#s11#, #a2#",      "#FROST:95#" },
			{ 8,  0,     "inv_throwingknife_04", "=q6=#t10s6#",                            "=q5=" .. AL["Tier 10"] },
			{ 9,  51187, "",                     "=q4=Sanctified Shadowblade Helmet",      "=ds=#s1#, #a2#" },
			{ 10, 51185, "",                     "=q4=Sanctified Shadowblade Pauldrons",   "=ds=#s3#, #a2#" },
			{ 11, 51189, "",                     "=q4=Sanctified Shadowblade Breastplate", "=ds=#s5#, #a2#" },
			{ 12, 51188, "",                     "=q4=Sanctified Shadowblade Gauntlets",   "=ds=#s9#, #a2#" },
			{ 13, 51186, "",                     "=q4=Sanctified Shadowblade Legplates",   "=ds=#s11#, #a2#" },
			{ 16, 0,     "inv_throwingknife_04", "=q6=#t10s6#",                            "=q5=" .. AL["Tier 10"] },
			{ 17, 51252, "",                     "=q4=Sanctified Shadowblade Helmet",      "=ds=#s1#, #a2#" },
			{ 18, 51254, "",                     "=q4=Sanctified Shadowblade Pauldrons",   "=ds=#s3#, #a2#" },
			{ 19, 51250, "",                     "=q4=Sanctified Shadowblade Breastplate", "=ds=#s5#, #a2#" },
			{ 20, 51251, "",                     "=q4=Sanctified Shadowblade Gauntlets",   "=ds=#s9#, #a2#" },
			{ 21, 51253, "",                     "=q4=Sanctified Shadowblade Legplates",   "=ds=#s11#, #a2#" },
		},
	},
	info = {
		name = BabbleBoss["T10 - Rogue"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

Synastria_Data["T10 Shaman"] = {
	["Normal"] = {
		{
			{ 1,  0,     "Spell_Nature_Lightning", "=q6=#t10s7_3#",                             "=q5=" .. AL["Tier 10"] },
			{ 2,  50843, "",                       "=q4=Frost Witch's Helm",                    "=ds=#s1#, #a3#",       "#FROST:95#" },
			{ 3,  50845, "",                       "=q4=Frost Witch's Shoulderpads",            "=ds=#s3#, #a3#",       "#FROST:60#" },
			{ 4,  50841, "",                       "=q4=Frost Witch's Hauberk",                 "=ds=#s5#, #a3#",       "#FROST:95#" },
			{ 5,  50842, "",                       "=q4=Frost Witch's Gloves",                  "=ds=#s9#, #a3#",       "#FROST:60#" },
			{ 6,  50844, "",                       "=q4=Frost Witch's Kilt",                    "=ds=#s11#, #a3#",      "#FROST:95#" },
			{ 8,  0,     "Spell_Nature_Lightning", "=q6=#t10s7_3#",                             "=q5=" .. AL["Tier 10"] },
			{ 9,  51202, "",                       "=q4=Sanctified Frost Witch's Helm",         "=ds=#s1#, #a3#" },
			{ 10, 51204, "",                       "=q4=Sanctified Frost Witch's Shoulderpads", "=ds=#s3#, #a3#" },
			{ 11, 51200, "",                       "=q4=Sanctified Frost Witch's Hauberk",      "=ds=#s5#, #a3#" },
			{ 12, 51201, "",                       "=q4=Sanctified Frost Witch's Gloves",       "=ds=#s9#, #a3#" },
			{ 13, 51203, "",                       "=q4=Sanctified Frost Witch's Kilt",         "=ds=#s11#, #a3#" },
			{ 16, 0,     "Spell_Nature_Lightning", "=q6=#t10s7_3#",                             "=q5=" .. AL["Tier 10"] },
			{ 17, 51237, "",                       "=q4=Sanctified Frost Witch's Helm",         "=ds=#s1#, #a3#" },
			{ 18, 51235, "",                       "=q4=Sanctified Frost Witch's Shoulderpads", "=ds=#s3#, #a3#" },
			{ 19, 51239, "",                       "=q4=Sanctified Frost Witch's Hauberk",      "=ds=#s5#, #a3#" },
			{ 20, 51238, "",                       "=q4=Sanctified Frost Witch's Gloves",       "=ds=#s9#, #a3#" },
			{ 21, 51236, "",                       "=q4=Sanctified Frost Witch's Kilt",         "=ds=#s11#, #a3#" },
		},
		{
			{ 1,  0,     "spell_nature_lightningshield", "=q6=#t10s7_2#",                               "=q5=" .. AL["Tier 10"] },
			{ 2,  50832, "",                             "=q4=Frost Witch's Faceguard",                 "=ds=#s1#, #a3#",       "#FROST:95#" },
			{ 3,  50834, "",                             "=q4=Frost Witch's Shoulderguards",            "=ds=#s3#, #a3#",       "#FROST:60#" },
			{ 4,  50830, "",                             "=q4=Frost Witch's Chestguard",                "=ds=#s5#, #a3#",       "#FROST:95#" },
			{ 5,  50831, "",                             "=q4=Frost Witch's Grips",                     "=ds=#s9#, #a3#",       "#FROST:60#" },
			{ 6,  50833, "",                             "=q4=Frost Witch's War-Kilt",                  "=ds=#s11#, #a3#",      "#FROST:95#" },
			{ 8,  0,     "spell_nature_lightningshield", "=q6=#t10s7_2#",                               "=q5=" .. AL["Tier 10"] },
			{ 9,  51197, "",                             "=q4=Sanctified Frost Witch's Faceguard",      "=ds=#s1#, #a3#" },
			{ 10, 51199, "",                             "=q4=Sanctified Frost Witch's Shoulderguards", "=ds=#s3#, #a3#" },
			{ 11, 51195, "",                             "=q4=Sanctified Frost Witch's Chestguard",     "=ds=#s5#, #a3#" },
			{ 12, 51196, "",                             "=q4=Sanctified Frost Witch's Grips",          "=ds=#s9#, #a3#" },
			{ 13, 51198, "",                             "=q4=Sanctified Frost Witch's War-Kilt",       "=ds=#s11#, #a3#" },
			{ 16, 0,     "spell_nature_lightningshield", "=q6=#t10s7_2#",                               "=q5=" .. AL["Tier 10"] },
			{ 17, 51242, "",                             "=q4=Sanctified Frost Witch's Faceguard",      "=ds=#s1#, #a3#" },
			{ 18, 51240, "",                             "=q4=Sanctified Frost Witch's Shoulderguards", "=ds=#s3#, #a3#" },
			{ 19, 51244, "",                             "=q4=Sanctified Frost Witch's Chestguard",     "=ds=#s5#, #a3#" },
			{ 20, 51243, "",                             "=q4=Sanctified Frost Witch's Grips",          "=ds=#s9#, #a3#" },
			{ 21, 51241, "",                             "=q4=Sanctified Frost Witch's War-Kilt",       "=ds=#s11#, #a3#" },
		},
		{
			{ 1,  0,     "spell_nature_magicimmunity", "=q6=#t10s7_1#",                           "=q5=" .. AL["Tier 10"] },
			{ 2,  50837, "",                           "=q4=Frost Witch's Headpiece",             "=ds=#s1#, #a3#",       "#FROST:95#" },
			{ 3,  50839, "",                           "=q4=Frost Witch's Spaulders",             "=ds=#s3#, #a3#",       "#FROST:60#" },
			{ 4,  50835, "",                           "=q4=Frost Witch's Tunic",                 "=ds=#s5#, #a3#",       "#FROST:95#" },
			{ 5,  50836, "",                           "=q4=Frost Witch's Handguards",            "=ds=#s9#, #a3#",       "#FROST:60#" },
			{ 6,  50838, "",                           "=q4=Frost Witch's Legguards",             "=ds=#s11#, #a3#",      "#FROST:95#" },
			{ 8,  0,     "spell_nature_magicimmunity", "=q6=#t10s7_1#",                           "=q5=" .. AL["Tier 10"] },
			{ 9,  51192, "",                           "=q4=Sanctified Frost Witch's Headpiece",  "=ds=#s1#, #a3#" },
			{ 10, 51194, "",                           "=q4=Sanctified Frost Witch's Spaulders",  "=ds=#s3#, #a3#" },
			{ 11, 51190, "",                           "=q4=Sanctified Frost Witch's Tunic",      "=ds=#s5#, #a3#" },
			{ 12, 51191, "",                           "=q4=Sanctified Frost Witch's Handguards", "=ds=#s9#, #a3#" },
			{ 13, 51193, "",                           "=q4=Sanctified Frost Witch's Legguards",  "=ds=#s11#, #a3#" },
			{ 16, 0,     "spell_nature_magicimmunity", "=q6=#t10s7_1#",                           "=q5=" .. AL["Tier 10"] },
			{ 17, 51247, "",                           "=q4=Sanctified Frost Witch's Headpiece",  "=ds=#s1#, #a3#" },
			{ 18, 51245, "",                           "=q4=Sanctified Frost Witch's Spaulders",  "=ds=#s3#, #a3#" },
			{ 19, 51249, "",                           "=q4=Sanctified Frost Witch's Tunic",      "=ds=#s5#, #a3#" },
			{ 20, 51248, "",                           "=q4=Sanctified Frost Witch's Handguards", "=ds=#s9#, #a3#" },
			{ 21, 51246, "",                           "=q4=Sanctified Frost Witch's Legguards",  "=ds=#s11#, #a3#" },
		},
	},
	info = {
		name = BabbleBoss["T10 - Shaman"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

Synastria_Data["T10 - Warlock"] = {
	["Normal"] = {
		{
			{ 1,  0,     "spell_nature_drowsy", "=q6=#t10s8#",                            "=q5=" .. AL["Tier 10"] },
			{ 2,  50241, "",                    "=q4=Dark Coven Hood",                    "=ds=#s1#, #a1#",       "#FROST:95#" },
			{ 3,  50244, "",                    "=q4=Dark Coven Shoulderpads",            "=ds=#s3#, #a1#",       "#FROST:60#" },
			{ 4,  50243, "",                    "=q4=Dark Coven Robe",                    "=ds=#s5#, #a1#",       "#FROST:95#" },
			{ 5,  50240, "",                    "=q4=Dark Coven Gloves",                  "=ds=#s9#, #a1#",       "#FROST:60#" },
			{ 6,  50242, "",                    "=q4=Dark Coven Leggings",                "=ds=#s11#, #a1#",      "#FROST:95#" },
			{ 8,  0,     "spell_nature_drowsy", "=q6=#t10s8#",                            "=q5=" .. AL["Tier 10"] },
			{ 9,  51208, "",                    "=q4=Sanctified Dark Coven Hood",         "=ds=#s1#, #a1#" },
			{ 10, 51205, "",                    "=q4=Sanctified Dark Coven Shoulderpads", "=ds=#s3#, #a1#" },
			{ 11, 51206, "",                    "=q4=Sanctified Dark Coven Robe",         "=ds=#s5#, #a1#" },
			{ 12, 51209, "",                    "=q4=Sanctified Dark Coven Gloves",       "=ds=#s9#, #a1#" },
			{ 13, 51207, "",                    "=q4=Sanctified Dark Coven Leggings",     "=ds=#s11#, #a1#" },
			{ 16, 0,     "spell_nature_drowsy", "=q6=#t10s8#",                            "=q5=" .. AL["Tier 10"] },
			{ 17, 51231, "",                    "=q4=Sanctified Dark Coven Hood",         "=ds=#s1#, #a1#" },
			{ 18, 51234, "",                    "=q4=Sanctified Dark Coven Shoulderpads", "=ds=#s3#, #a1#" },
			{ 19, 51233, "",                    "=q4=Sanctified Dark Coven Robe",         "=ds=#s5#, #a1#" },
			{ 20, 51230, "",                    "=q4=Sanctified Dark Coven Gloves",       "=ds=#s9#, #a1#" },
			{ 21, 51232, "",                    "=q4=Sanctified Dark Coven Leggings",     "=ds=#s11#, #a1#" },
		},
	},
	info = {
		name = BabbleBoss["T10 - Warlock"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

Synastria_Data["T10 - Warrior"] = {
	["Normal"] = {
		{
			{ 1,  0,     "ability_warrior_innerrage", "=q6=#t10s9_1#",                                "=q5=" .. AL["Tier 10"] },
			{ 2,  50080, "",                          "=q4=Ymirjar Lord's Helmet",                    "=ds=#s1#, #a4#",       "#FROST:95#" },
			{ 3,  50082, "",                          "=q4=Ymirjar Lord's Shoulderplates",            "=ds=#s3#, #a4#",       "#FROST:60#" },
			{ 4,  50078, "",                          "=q4=Ymirjar Lord's Battleplate",               "=ds=#s5#, #a4#",       "#FROST:95#" },
			{ 5,  50079, "",                          "=q4=Ymirjar Lord's Gauntlets",                 "=ds=#s9#, #a4#",       "#FROST:60#" },
			{ 6,  50081, "",                          "=q4=Ymirjar Lord's Legplates",                 "=ds=#s11#, #a4#",      "#FROST:95#" },
			{ 8,  0,     "ability_warrior_innerrage", "=q6=#t10s9_1#",                                "=q5=" .. AL["Tier 10"] },
			{ 9,  51212, "",                          "=q4=Sanctified Ymirjar Lord's Helmet",         "=ds=#s1#, #a4#" },
			{ 10, 51210, "",                          "=q4=Sanctified Ymirjar Lord's Shoulderplates", "=ds=#s3#, #a4#" },
			{ 11, 51214, "",                          "=q4=Sanctified Ymirjar Lord's Battleplate",    "=ds=#s5#, #a4#" },
			{ 12, 51213, "",                          "=q4=Sanctified Ymirjar Lord's Gauntlets",      "=ds=#s9#, #a4#" },
			{ 13, 51211, "",                          "=q4=Sanctified Ymirjar Lord's Legplates",      "=ds=#s11#, #a4#" },
			{ 16, 0,     "ability_warrior_innerrage", "=q6=#t10s9_1#",                                "=q5=" .. AL["Tier 10"] },
			{ 17, 51227, "",                          "=q4=Sanctified Ymirjar Lord's Helmet",         "=ds=#s1#, #a4#" },
			{ 18, 51229, "",                          "=q4=Sanctified Ymirjar Lord's Shoulderplates", "=ds=#s3#, #a4#" },
			{ 19, 51225, "",                          "=q4=Sanctified Ymirjar Lord's Battleplate",    "=ds=#s5#, #a4#" },
			{ 20, 51226, "",                          "=q4=Sanctified Ymirjar Lord's Gauntlets",      "=ds=#s9#, #a4#" },
			{ 21, 51228, "",                          "=q4=Sanctified Ymirjar Lord's Legplates",      "=ds=#s11#, #a4#" },
		},
		{
			{ 2,  50848, "", "=q4=Ymirjar Lord's Greathelm",              "=ds=#s1#, #a4#",  "#FROST:95#" },
			{ 3,  50846, "", "=q4=Ymirjar Lord's Pauldrons",              "=ds=#s3#, #a4#",  "#FROST:60#" },
			{ 4,  50850, "", "=q4=Ymirjar Lord's Breastplate",            "=ds=#s5#, #a4#",  "#FROST:95#" },
			{ 5,  50849, "", "=q4=Ymirjar Lord's Handguards",             "=ds=#s9#, #a4#",  "#FROST:60#" },
			{ 6,  50847, "", "=q4=Ymirjar Lord's Legguards",              "=ds=#s11#, #a4#", "#FROST:95#" },
			{ 9,  51218, "", "=q4=Sanctified Ymirjar Lord's Greathelm",   "=ds=#s1#, #a4#" },
			{ 10, 51215, "", "=q4=Sanctified Ymirjar Lord's Pauldrons",   "=ds=#s3#, #a4#" },
			{ 11, 51219, "", "=q4=Sanctified Ymirjar Lord's Breastplate", "=ds=#s5#, #a4#" },
			{ 12, 51217, "", "=q4=Sanctified Ymirjar Lord's Handguards",  "=ds=#s9#, #a4#" },
			{ 13, 51216, "", "=q4=Sanctified Ymirjar Lord's Legguards",   "=ds=#s11#, #a4#" },
			{ 17, 51221, "", "=q4=Sanctified Ymirjar Lord's Greathelm",   "=ds=#s1#, #a4#" },
			{ 18, 51224, "", "=q4=Sanctified Ymirjar Lord's Pauldrons",   "=ds=#s3#, #a4#" },
			{ 19, 51220, "", "=q4=Sanctified Ymirjar Lord's Breastplate", "=ds=#s5#, #a4#" },
			{ 20, 51222, "", "=q4=Sanctified Ymirjar Lord's Handguards",  "=ds=#s9#, #a4#" },
			{ 21, 51223, "", "=q4=Sanctified Ymirjar Lord's Legguards",   "=ds=#s11#, #a4#" },
		},
	},
	info = {
		name = BabbleBoss["T10 - Warrior"],
		module = moduleName,
		instance = "IcecrownCitadel",
	},
}

-----------------------
--- BoE World Epics ---
-----------------------

Synastria_Data["WorldEpics80"] = {
	["Normal"] = {
		{
			{ 1,  44309, "", "=q4=Sash of Jordan",                   "=ds=#s10#, #a1#" },
			{ 2,  44312, "", "=q4=Wapach's Spaulders of Solidarity", "=ds=#s3#, #a4#" },
			{ 3,  44308, "", "=q4=Signet of Edward the Odd",         "=ds=#s13#" },
			{ 4,  37835, "", "=q4=Je'Tze's Bell",                    "=ds=#s14#" },
			{ 5,  37254, "", "=q4=Super Simian Sphere",              "=ds=#s14#" },
			{ 16, 44310, "", "=q4=Namlak's Supernumerary Sticker",   "=ds=#h1#, #w4#" },
			{ 17, 43613, "", "=q4=The Dusk Blade",                   "=ds=#h1#, #w4#" },
			{ 18, 44311, "", "=q4=Avool's Sword of Jin",             "=ds=#h1#, #w10#" },
			{ 19, 43611, "", "=q4=Krol Cleaver",                     "=ds=#h1#, #w10#" },
			{ 20, 44313, "", "=q4=Zom's Crackling Bulwark",          "=ds=#w8#" },
			{ 21, 43612, "", "=q4=Spineslicer",                      "=ds=#w11#" },
		},
	},
	info = {
		name = AL["BoE World Epics"] .. " " .. AL["Level 80"],
		module = moduleName,
		menu = "WORLDEPICS",
		instance = "WorldEpics",
	},
}
-------------------
--- Legendaries ---
-------------------

Synastria_Data["Legendaries"] = {
	["Normal"] = {
		{
			{ 1,  49623, "", "=q5=Shadowmourne",                                 "=ds=#h2#, #w1#",                          "" },
			{ 2,  46017, "", "=q5=Val'anyr, Hammer of Ancient Kings",            "=ds=#h3#, #w6#",                          "" },
			{ 16, 34334, "", "=q5=Thori'dal, the Stars' Fury",                   "=ds=#w2#" },
			{ 17, 32837, "", "=q5=Warglaive of Azzinoth",                        "=ds=#h3#, #w10#, =q1=#m1# =ds=#c9#, #c6#" },
			{ 18, 32838, "", "=q5=Warglaive of Azzinoth",                        "=ds=#h4#, #w10#, =q1=#m1# =ds=#c9#, #c6#" },
			{ 20, 19019, "", "=q5=Thunderfury, Blessed Blade of the Windseeker", "=ds=#h1#, #w10#" },
			{ 21, 17182, "", "=q5=Sulfuras, Hand of Ragnaros",                   "=ds=#h2#, #w6#" },
			{ 22, 21176, "", "=q5=Black Qiraji Resonating Crystal",              "=ds=#e26#" },
			{ 24, 22632, "", "=q5=Atiesh, Greatstaff of the Guardian",           "=ds=#w9#, =q1=#m1# =ds=#c1#" },
			{ 25, 22589, "", "=q5=Atiesh, Greatstaff of the Guardian",           "=ds=#w9#, =q1=#m1# =ds=#c3#" },
			{ 26, 22631, "", "=q5=Atiesh, Greatstaff of the Guardian",           "=ds=#w9#, =q1=#m1# =ds=#c5#" },
			{ 27, 22630, "", "=q5=Atiesh, Greatstaff of the Guardian",           "=ds=#w9#, =q1=#m1# =ds=#c8#" },
		},
	},
	info = {
		name = AL["Legendary Items"],
		module = moduleName,
		menu = "SETMENU",
	},
}
