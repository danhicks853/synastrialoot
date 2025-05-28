AL = AL or setmetatable({}, { __index = function(t, k) return k end })
local BabbleBoss = LibStub("LibBabble-Boss-3.0"):GetUnstrictLookupTable()
local moduleName = "SynastriaLootVendors"
Synastria_Data = Synastria_Data or {}
Synastria_Data["Stormwind City"] = {
    ["Normal"] = {
        {
            { 1, 18455, "", "=q4=Sergeant Major's Dragonhide Armsplints", "=ds=#s2#", "", "18%" },
            { 2, 18452, "", "=q4=Sergeant Major's Leather Armsplints",    "=ds=#s2#", "", "18%" },
            { 3, 18454, "", "=q4=Sergeant Major's Dragonhide Armsplints", "=ds=#s2#", "", "18%" },
            { 4, 18456, "", "=q4=Sergeant Major's Silk Cuffs",            "=ds=#s2#", "", "18%" },
            { 5, 29594, "", "=q4=Knight-Lieutenant's Mail Greaves",       "=ds=#s2#", "", "18%" },
            { 6, 29597, "", "=q4=Knight-Captain's Mail Legguards",        "=ds=#s2#", "", "18%" },
            { 7, 29596, "", "=q4=Knight-Captain's Mail Hauberk",          "=ds=#s2#", "", "18%" },
        }
    },
    info = {
        name = BabbleBoss["Stormwind City"],
        module = moduleName,
        instance = "StormwindCity",
    },
};

Synastria_Data["Tanaris"] = {
    ["Normal"] = {
        {
            { 1, 35376, "", "=q4=Stalker's Chain Armor", "=ds=#s2#", "", "18%" },
            { 2, 29182, "", "=q4=Riftmaker",             "=ds=#s2#", "", "18%" },
        }
    },
    info = {
        name = BabbleBoss["Tanaris"],
        module = moduleName,
        instance = "Tanaris",
    },
};

Synastria_Data["Isle of Quel'Danas"] = {
    ["Normal"] = {
        {
            { 1,  34675, "", "=q4=Sunward Crest",                        "=ds=#s2#", "", "18%" },
            { 2,  34547, "", "=q4=Onslaught Waistguard",                 "=ds=#s2#", "", "18%" },
            { 3,  34572, "", "=q4=Thunderheart Footwraps",               "=ds=#s2#", "", "18%" },
            { 4,  34542, "", "=q4=Skyshatter Cord",                      "=ds=#s2#", "", "18%" },
            { 5,  34555, "", "=q4=Thunderheart Cord",                    "=ds=#s2#", "", "18%" },
            { 6,  34431, "", "=q4=Lightbringer Bands",                   "=ds=#s2#", "", "18%" },
            { 7,  34527, "", "=q4=Belt of Absolution",                   "=ds=#s2#", "", "18%" },
            { 8,  34574, "", "=q4=Boots of the Tempest",                 "=ds=#s2#", "", "18%" },
            { 9,  34566, "", "=q4=Skyshatter Treads",                    "=ds=#s2#", "", "18%" },
            { 10, 34575, "", "=q4=Slayer's Boots",                       "=ds=#s2#", "", "18%" },
            { 11, 34389, "", "=q4=Spaulders of the Thalassian Defender", "=ds=#s2#", "", "18%" },
            { 12, 34397, "", "=q4=Bladed Chaos Tunic",                   "=ds=#s2#", "", "18%" },
            { 13, 34388, "", "=q4=Pauldrons of Berserking",              "=ds=#s2#", "", "18%" },
            { 14, 34399, "", "=q4=Robes of Ghostly Hatred",              "=ds=#s2#", "", "18%" },
            { 15, 34401, "", "=q4=Helm of Uther's Resolve",              "=ds=#s2#", "", "18%" },
            { 16, 34398, "", "=q4=Utopian Tunic of Elune",               "=ds=#s2#", "", "18%" },
            { 17, 34404, "", "=q4=Mask of the Fury Hunter",              "=ds=#s2#", "", "18%" },
            { 18, 34665, "", "=q4=Bombardier's Blade",                   "=ds=#s2#", "", "18%" },
            { 19, 34666, "", "=q4=The Sunbreaker",                       "=ds=#s2#", "", "18%" },
            { 20, 34674, "", "=q4=Truestrike Crossbow",                  "=ds=#s2#", "", "18%" },
        }
    },
    info = {
        name = BabbleBoss["Isle of Quel'Danas"],
        module = moduleName,
        instance = "Isle of Quel'Danas",
    },
};
Synastria_Data["Zangarmarsh"] = {
    ["Normal"] = {
        {
            { 1, 35342, "", "=q4=Satin Robe",               "=ds=#s2#", "", "18%" },
            { 2, 25835, "", "=q4=Explorer's Walking Stick", "=ds=#s2#", "", "18%" },
            { 3, 27930, "", "=q4=Splintermark",             "=ds=#s2#", "", "18%" },
            { 4, 27928, "", "=q4=Terminal Edge",            "=ds=#s2#", "", "18%" },
            { 5, 27931, "", "=q4=Splintermark",             "=ds=#s2#", "", "18%" },
            { 6, 27929, "", "=q4=Terminal Edge",            "=ds=#s2#", "", "18%" },
            { 7, 29150, "", "=q4=Hardened Stone Shard",     "=ds=#s2#", "", "18%" },
        }
    },
    info = {
        name = BabbleBoss["Zangarmarsh"],
        module = moduleName,
        instance = "Zangarmarsh",
    },
};
Synastria_Data["Orgrimmar"] = {
    ["Normal"] = {
        {
            { 1, 29602, "", "=q4=Legionnaire's Lamellar Breastplate", "=ds=#s2#", "", "18%" },
        }
    },
    info = {
        name = BabbleBoss["Orgrimmar"],
        module = moduleName,
        instance = "Orgrimmar",
    },
};
Synastria_Data["Shattrath City"] = {
    ["Normal"] = {
        {
            { 1,  32085, "", "=q4=Warpstalker Helm",                     "=ds=#s2#", "", "18%" },
            { 2,  29369, "", "=q4=Shawl of Shifting Probabilities",      "=ds=#s2#", "", "18%" },
            { 3,  29382, "", "=q4=Blood Knight War Cloak",               "=ds=#s2#", "", "18%" },
            { 4,  29268, "", "=q4=Mazthoril Honor Shield",               "=ds=#s2#", "", "18%" },
            { 5,  30770, "", "=q4=Inferno Forged Boots",                 "=ds=#s2#", "", "18%" },
            { 6,  33557, "", "=q4=Gargon's Bracers of Peaceful Slumber", "=ds=#s2#", "", "18%" },
            { 7,  33810, "", "=q4=Amani Mask of Death",                  "=ds=#s2#", "", "18%" },
            { 8,  33586, "", "=q4=Studious Wraps",                       "=ds=#s2#", "", "18%" },
            { 9,  33512, "", "=q4=Furious Deathgrips",                   "=ds=#s2#", "", "18%" },
            { 10, 33536, "", "=q4=Stormwrap",                            "=ds=#s2#", "", "18%" },
            { 11, 33222, "", "=q4=Nyn'jah's Tabi Boots",                 "=ds=#s2#", "", "18%" },
            { 12, 33331, "", "=q4=Chain of Unleashed Rage",              "=ds=#s2#", "", "18%" },
            { 13, 33514, "", "=q4=Pauldrons of Gruesome Fate",           "=ds=#s2#", "", "18%" },
            { 14, 33552, "", "=q4=Pants of Splendid Recovery",           "=ds=#s2#", "", "18%" },
            { 15, 33579, "", "=q4=Vestments of Hibernation",             "=ds=#s2#", "", "18%" },
            { 16, 33559, "", "=q4=Starfire Waistband",                   "=ds=#s2#", "", "18%" },
            { 17, 33386, "", "=q4=Man'kin'do's Belt",                    "=ds=#s2#", "", "18%" },
            { 18, 33538, "", "=q4=Shallow-grave Trousers",               "=ds=#s2#", "", "18%" },
            { 19, 33972, "", "=q4=Mask of Primal Power",                 "=ds=#s2#", "", "18%" },
            { 20, 33333, "", "=q4=Kharmaa's Shroud of Hope",             "=ds=#s2#", "", "18%" },
            { 21, 35321, "", "=q4=Cloak of Arcane Alacrity",             "=ds=#s2#", "", "18%" },
            { 22, 35370, "", "=q4=Opportunist's Leather Tunic",          "=ds=#s2#", "", "18%" },
            { 23, 29129, "", "=q4=Anchorite's Robes",                    "=ds=#s2#", "", "18%" },
            { 24, 29124, "", "=q4=Vindicator's Brand",                   "=ds=#s2#", "", "18%" },
        }
    },
    info = {
        name = BabbleBoss["Shattrath City"],
        module = moduleName,
        instance = "Shattrath City",
    },
};
Synastria_Data[" Ashenvale"] = {
    ["Normal"] = {
        {
            { 1, 19530, "", "=q4=Caretaker's Cape", "=ds=#s2#", "", "18%" },
        }
    },
    info = {
        name = BabbleBoss["Ashenvale"],
        module = moduleName,
        instance = "Ashenvale",
    },
};
Synastria_Data["Eversong Woods"] = {
    ["Normal"] = {
        {
            { 1, 20924, "", "=q4=Sun Cured Pants",  "=ds=#s2#", "", "18%" },
            { 2, 20921, "", "=q4=Sun Cured Boots",  "=ds=#s2#", "", "18%" },
            { 3, 20923, "", "=q4=Sun Cured Gloves", "=ds=#s2#", "", "18%" },
        }
    },
    info = {
        name = BabbleBoss["Eversong Woods"],
        module = moduleName,
        instance = "Eversong Woods",
    },
};
Synastria_Data["The Barrens"] = {
    ["Normal"] = {
        {
            { 1, 19526, "", "=q4=Battle Healer's Cloak",         "=ds=#s2#", "", "18%" },
            { 2, 22651, "", "=q4=Outrider's Plate Legguards",    "=ds=#s2#", "", "18%" },
            { 3, 30498, "", "=q4=Outrider's Lamellar Legguards", "=ds=#s2#", "", "18%" },
        }
    },
    info = {
        name = BabbleBoss["The Barrens"],
        module = moduleName,
        instance = "The Barrens",
    },
};
Synastria_Data["Hellfire Peninsula"] = {
    ["Normal"] = {
        {
            { 1, 35339, "", "=q4=Satin Hood",          "=ds=#s2#", "", "18%" },
            { 2, 35360, "", "=q4=Dragonhide Robe",     "=ds=#s2#", "", "18%" },
            { 3, 29151, "", "=q4=Veteran's Musket",    "=ds=#s2#", "", "18%" },
            { 4, 25825, "", "=q4=Footman's Longsword", "=ds=#s2#", "", "18%" },
            { 5, 29166, "", "=q4=Hellforged Halberd",  "=ds=#s2#", "", "18%" },
            { 6, 29167, "", "=q4=Blackened Spear",     "=ds=#s2#", "", "18%" },
            { 7, 25823, "", "=q4=Grunt's Waraxe",      "=ds=#s2#", "", "18%" },
            { 8, 29152, "", "=q4=Marksman's Bow",      "=ds=#s2#", "", "18%" },
        }
    },
    info = {
        name = BabbleBoss["Hellfire Peninsula"],
        module = moduleName,
        instance = "Hellfire Peninsula",
    },
};
Synastria_Data["Arathi Highlands"] = {
    ["Normal"] = {
        {
            { 1,  20125, "", "=q4=Highlander's Plate Girdle",       "=ds=#s2#", "", "18%" },
            { 2,  20101, "", "=q4=Highlander's Lizardhide Boots",   "=ds=#s2#", "", "18%" },
            { 3,  20128, "", "=q4=Highlander's Plate Greaves",      "=ds=#s2#", "", "18%" },
            { 4,  20119, "", "=q4=Highlander's Mail Girdle",        "=ds=#s2#", "", "18%" },
            { 5,  20042, "", "=q4=Highlander's Lamellar Girdle",    "=ds=#s2#", "", "18%" },
            { 6,  20053, "", "=q4=Highlander's Lizardhide Boots",   "=ds=#s2#", "", "18%" },
            { 7,  20058, "", "=q4=Highlander's Lamellar Spaulders", "=ds=#s2#", "", "18%" },
            { 8,  20191, "", "=q4=Defiler's Leather Girdle",        "=ds=#s2#", "", "18%" },
            { 9,  20154, "", "=q4=Defiler's Chain Greaves",         "=ds=#s2#", "", "18%" },
            { 10, 20194, "", "=q4=Defiler's Leather Shoulders",     "=ds=#s2#", "", "18%" },
        }
    },
    info = {
        name = BabbleBoss["Arathi Highlands"],
        module = moduleName,
        instance = "Arathi Highlands",
    },
};
Synastria_Data["Nagrand"] = {
    ["Normal"] = {
        {
            { 1, 29136, "", "=q4=Far Seer's Helm",  "=ds=#s2#", "", "18%" },
            { 2, 29138, "", "=q4=Arechron's Gift",  "=ds=#s2#", "", "18%" },
            { 3, 30599, "", "=q4=Avenging Blades",  "=ds=#s2#", "", "18%" },
            { 4, 30568, "", "=q4=The Sharp Cookie", "=ds=#s2#", "", "18%" },
        }
    },
    info = {
        name = BabbleBoss["Nagrand"],
        module = moduleName,
        instance = "Nagrand",
    },
};
Synastria_Data["Netherstorm"] = {
    ["Normal"] = {
        {
            { 1, 29372, "", "=q4=Void-Talon", "=ds=#s2#", "", "18%" },
        }
    },
    info = {
        name = BabbleBoss["Netherstorm"],
        module = moduleName,
        instance = "Netherstorm",
    },
};
Synastria_Data["Provisioner Vredigar"] = {
    ["Normal"] = {
        {
            { 1, 22985, "", "=q4=Suncrown Breastplate", "=ds=#s2#", "", "18%" }, -- Suncrown Breastplate
            { 2, 22986, "", "=q4=Apothecary's Robe", "=ds=#s2#", "", "18%" }, -- Apothecary's Robe
            { 3, 22987, "", "=q4=Deathstalker's Vest", "=ds=#s2#", "", "18%" }, -- Deathstalker's Vest
            { 4, 22990, "", "=q4=Tranquillien Champion's Cloak", "=ds=#s2#", "", "18%" }, -- Tranquillien Champion's Cloak
            { 5, 22991, "", "=q4=Apprentice Boots", "=ds=#s2#", "", "18%" }, -- Apprentice Boots
            { 6, 22992, "", "=q4=Bogwalker Boots", "=ds=#s2#", "", "18%" }, -- Bogwalker Boots
            { 7, 22993, "", "=q4=Volunteer's Greaves", "=ds=#s2#", "", "18%" }, -- Volunteer's Greaves
            { 8, 28155, "", "=q4=Apothecary's Waistband", "=ds=#s2#", "", "18%" }, -- Apothecary's Waistband
            { 9, 28158, "", "=q4=Batskin Belt", "=ds=#s2#", "", "18%" }, -- Batskin Belt
            { 10, 28162, "", "=q4=Tranquillien Defender's Girdle", "=ds=#s2#", "", "18%" }, -- Tranquillien Defender's Girdle
            { 11, 28164, "", "=q4=Tranquillien Flamberge", "=ds=#s2#", "", "18%" }, -- Tranquillien Flamberge
            { 12, 132571, "", "=q4=Woodrunner's Footpads", "=ds=#s2#", "", "18%" }, -- Woodrunner's Footpads
            { 13, 132572, "", "=q4=Deathstalker's Hauberk", "=ds=#s2#", "", "18%" }, -- Deathstalker's Hauberk
            { 14, 132573, "", "=q4=Tranquillen Pathfinder's Cinch", "=ds=#s2#", "", "18%" } -- Tranquillen Pathfinder's Cinch
        }
    },
    info = {
        name = BabbleBoss["Provisioner Vredigar"],
        module = moduleName,
        instance = "Ghostlands",
    },
};
