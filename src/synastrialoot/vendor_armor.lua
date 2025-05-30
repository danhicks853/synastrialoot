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


Synastria_Data["Stasis Chambers"] = {
    ["Normal"] = {
        {
            { 1, 32520, "", "=q3=Manaforged Sphere", "=ds=#s15#", "", "10.4%"};
            { 3, 31939, "", "=q3=Dark Cloak", "=ds=#s4#", "", "1.06%"};
            { 4, 31938, "", "=q3=Enigmatic Cloak", "=ds=#s4#", "", "1.06%"};
            { 5, 31936, "", "=q3=Fiery Cloak", "=ds=#s4#", "", "0.8%"};
            { 6, 31935, "", "=q3=Frigid Cloak", "=ds=#s4#", "", "1.5%"};
            { 7, 31937, "", "=q3=Living Cloak", "=ds=#s4#", "", "0.3%"};
            { 9, 31957, "", "=q2=Ethereum Prisoner I.D. Tag", "=ds=#m3#", "", "100%"};
            { 18, 31928, "", "=q3=Dark Band", "=ds=#s13#", "", "0.7%"};
            { 19, 31929, "", "=q3=Enigmatic Band", "=ds=#s13#", "", "0.7%"};
            { 20, 31925, "", "=q3=Fiery Band", "=ds=#s13#", "", "1.2%"};
            { 21, 31926, "", "=q3=Frigid Band", "=ds=#s13#", "", "1.1%"};
            { 22, 31927, "", "=q3=Living Band", "=ds=#s13#", "", "1.1%"};
        };
    };
    info = {
        name = BabbleBoss["Stasis Chambers"],
        module = moduleName,
        instance = "Netherstorm",
    },
};

Synastria_Data["Abyssal Council"] = {
    ["Normal"] = {
        {
            { 1, 0, "INV_Box_01", "=q6="..AL["The Duke of Cynders"], "=q1=#j19#"};
            { 2, 20665, "", "=q3=Abyssal Leather Leggings", "=ds=#s11#, #a2#", "", "22.50%"};
            { 3, 20666, "", "=q3=Hardened Steel Warhammer", "=ds=#h3#, #w6#", "", "30.47%"};
            { 4, 20514, "", "=q3=Abyssal Signet", "=ds=#m3#", "", "100%"};
            { 5, 20664, "", "=q2=Abyssal Cloth Sash", "=ds=#s10#, #a1#", "", "27.08%"};
            { 6, 21989, "", "=q1=Cinder of Cynders", "=ds=#m3#", "", "100%"};
            { 8, 0, "INV_Box_01", "=q6="..AL["The Duke of Fathoms"], "=q1=#j20#"};
            { 9, 20668, "", "=q3=Abyssal Mail Legguards", "=ds=#s11#, #a3#", "", "22.40%"};
            { 10, 20669, "", "=q3=Darkstone Claymore", "=ds=#h2#, #w10#", "", "29.62%"};
            { 11, 20514, "", "=q3=Abyssal Signet", "=ds=#m3#", "", "100%"};
            { 12, 20667, "", "=q2=Abyssal Leather Belt", "=ds=#s10#, #a2#", "", "29.04%"};
            { 16, 0, "INV_Box_01", "=q6="..AL["The Duke of Zephyrs"], "=q1=#j21#"};
            { 17, 20674, "", "=q3=Abyssal Cloth Pants", "=ds=#s11#, #a1#", "", "21.83%"};
            { 18, 20675, "", "=q3=Soulrender", "=ds=#h1#, #w1#", "", "29.73%"};
            { 19, 20514, "", "=q3=Abyssal Signet", "=ds=#m3#", "", "100%"};
            { 20, 20673, "", "=q2=Abyssal Plate Girdle", "=ds=#s10#, #a4#", "", "27.11%"};
            { 23, 0, "INV_Box_01", "=q6="..AL["The Duke of Shards"], "=q1=#j22#"};
            { 24, 20671, "", "=q3=Abyssal Plate Legplates", "=ds=#s11#, #a4#", "", "22.63%"};
            { 25, 20672, "", "=q3=Sparkling Crystal Wand", "=ds=#w12#", "", "28.90%"};
            { 26, 20514, "", "=q3=Abyssal Signet", "=ds=#m3#", "", "100%"};
            { 27, 20670, "", "=q2=Abyssal Mail Clutch", "=ds=#s10#, #a3#", "", "28.16%"};
            { 1, 0, "INV_Box_01", "=q6="..AL["Crimson Templar"], "=q1=#j19#"};
            { 2, 20657, "", "=q3=Crystal Tipped Stiletto", "=ds=#h1#, #w4#", "", "2.31%"};
            { 3, 20655, "", "=q2=Abyssal Cloth Handwraps", "=ds=#s9#, #a1#", "", "13.03%"};
            { 4, 20656, "", "=q2=Abyssal Mail Sabatons", "=ds=#s12#, #a3#", "", "12.89%"};
            { 5, 20513, "", "=q2=Abyssal Crest", "=ds=#m3#", "", "100%"};
            { 7, 0, "INV_Box_01", "=q6="..AL["Azure Templar"], "=q1=#j20#"};
            { 8, 20654, "", "=q3=Amethyst War Staff", "=ds=#w9#", "", "2.38%"};
            { 9, 20652, "", "=q2=Abyssal Cloth Slippers", "=ds=#s12#, #a1#", "", "12.94%"};
            { 10, 20653, "", "=q2=Abyssal Plate Gauntlets", "=ds=#s9#, #a4#", "", "13.61%"};
            { 11, 20513, "", "=q2=Abyssal Crest", "=ds=#m3#", "", "100%"};
            { 16, 0, "INV_Box_01", "=q6="..AL["Hoary Templar"], "=q1=#j21#"};
            { 17, 20660, "", "=q3=Stonecutting Glaive", "=ds=#w7#", "", "2.22%"};
            { 18, 20658, "", "=q2=Abyssal Leather Boots", "=ds=#s12#, #a2#", "", "13.16%"};
            { 19, 20659, "", "=q2=Abyssal Mail Handguards", "=ds=#s9#, #a3#", "", "12.64%"};
            { 20, 20513, "", "=q2=Abyssal Crest", "=ds=#m3#", "", "100%"};
            { 22, 0, "INV_Box_01", "=q6="..AL["Earthen Templar"], "=q1=#j22#"};
            { 23, 20663, "", "=q3=Deep Strike Bow", "=ds=#w2#", "", "2.55%"};
            { 24, 20661, "", "=q2=Abyssal Leather Gloves", "=ds=#s9#, #a2#", "", "13.16%"};
            { 25, 20662, "", "=q2=Abyssal Plate Greaves", "=ds=#s12#, #a4#", "", "12.93%"};
            { 26, 20513, "", "=q2=Abyssal Crest", "=ds=#m3#", "", "100%"};
        };
    },
    info = {
        name = BabbleBoss["Abyssal Council"],
        module = moduleName,
        instance = "Silithus",
    },
}

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
Synastria_Data["Quartermaster Miranda Breechlock"] = {
    ["Normal"] = {
        {
            { 1, 227813, "", "=q4=Drinkable Stratholme Holy Water", "=ds=#s2#", "", "18%" }, -- Drinkable Stratholme Holy Water
            { 2, 227814, "", "=q4=Radiant Girdle of the Dawn", "=ds=#s2#", "", "18%" }, -- Radiant Girdle of the Dawn
            { 3, 227815, "", "=q4=Fine Dawn Treaders", "=ds=#s2#", "", "18%" }, -- Fine Dawn Treaders
            { 4, 227816, "", "=q4=Argent Elite Boots", "=ds=#s2#", "", "18%" }, -- Argent Elite Boots
            { 5, 227817, "", "=q4=Radiant Gloves of the Dawn", "=ds=#s2#", "", "18%" }, -- Radiant Gloves of the Dawn
            { 6, 227818, "", "=q4=Glowing Mantle of the Dawn", "=ds=#s2#", "", "18%" }, -- Glowing Mantle of the Dawn
            { 7, 227819, "", "=q4=Blessed Flame Mantle of the Dawn", "=ds=#s2#", "", "18%" }, -- Blessed Flame Mantle of the Dawn
            { 8, 227859, "", "=q4=Shimmering Dawnbringer Shoulders", "=ds=#s2#", "", "18%" }, -- Shimmering Dawnbringer Shoulders
            { 9, 227888, "", "=q4=Argent Elite Shoulders", "=ds=#s2#", "", "18%" }, -- Argent Elite Shoulders
            { 10, 233197, "", "=q4=Argent Training Manual", "=ds=#s2#", "", "18%" }, -- Argent Training Manual
            { 11, 233197, "", "=q4=Argent Training Manual", "=ds=#s2#", "", "18%" }, -- Argent Training Manual (duplicate)
            { 12, 233198, "", "=q4=Horn of the Dawn", "=ds=#s2#", "", "18%" }, -- Horn of the Dawn
            { 13, 233198, "", "=q4=Horn of the Dawn", "=ds=#s2#", "", "18%" }, -- Horn of the Dawn (duplicate)
            { 14, 12698, "", "=q4=Plans: Dawnbringer Shoulders", "=ds=#s2#", "", "18%" }, -- Plans: Dawnbringer Shoulders
            { 15, 12844, "", "=q4=Argent Dawn Valor Token", "=ds=#s2#", "", "18%" }, -- Argent Dawn Valor Token
            { 16, 13482, "", "=q4=Recipe: Transmute Air to Fire", "=ds=#s2#", "", "18%" }, -- Recipe: Transmute Air to Fire
            { 17, 13724, "", "=q4=Enriched Manna Biscuit", "=ds=#s2#", "", "18%" }, -- Enriched Manna Biscuit
            { 18, 13810, "", "=q4=Blessed Sunfruit", "=ds=#s2#", "", "18%" }, -- Blessed Sunfruit
            { 19, 13813, "", "=q4=Blessed Sunfruit Juice", "=ds=#s2#", "", "18%" }, -- Blessed Sunfruit Juice
            { 20, 18169, "", "=q4=Flame Mantle of the Dawn", "=ds=#s2#", "", "18%" }, -- Flame Mantle of the Dawn
            { 21, 18170, "", "=q4=Frost Mantle of the Dawn", "=ds=#s2#", "", "18%" }, -- Frost Mantle of the Dawn
            { 22, 18171, "", "=q4=Arcane Mantle of the Dawn", "=ds=#s2#", "", "18%" }, -- Arcane Mantle of the Dawn
            { 23, 18172, "", "=q4=Nature Mantle of the Dawn", "=ds=#s2#", "", "18%" }, -- Nature Mantle of the Dawn
            { 24, 18173, "", "=q4=Shadow Mantle of the Dawn", "=ds=#s2#", "", "18%" }, -- Shadow Mantle of the Dawn
            { 25, 18182, "", "=q4=Chromatic Mantle of the Dawn", "=ds=#s2#", "", "18%" }, -- Chromatic Mantle of the Dawn
            { 26, 19203, "", "=q4=Plans: Girdle of the Dawn", "=ds=#s2#", "", "18%" }, -- Plans: Girdle of the Dawn
            { 27, 19205, "", "=q4=Plans: Gloves of the Dawn", "=ds=#s2#", "", "18%" }, -- Plans: Gloves of the Dawn
            { 28, 19216, "", "=q4=Pattern: Argent Boots", "=ds=#s2#", "", "18%" }, -- Pattern: Argent Boots
            { 29, 19217, "", "=q4=Pattern: Argent Shoulders", "=ds=#s2#", "", "18%" }, -- Pattern: Argent Shoulders
            { 30, 19328, "", "=q4=Pattern: Dawn Treaders", "=ds=#s2#", "", "18%" }, -- Pattern: Dawn Treaders
            { 31, 19329, "", "=q4=Pattern: Golden Mantle of the Dawn", "=ds=#s2#", "", "18%" }, -- Pattern: Golden Mantle of the Dawn
            { 32, 19442, "", "=q4=Formula: Powerful Anti-Venom", "=ds=#s2#", "", "18%" }, -- Formula: Powerful Anti-Venom
            { 33, 19446, "", "=q4=Formula: Enchant Bracer - Mana Regeneration", "=ds=#s2#", "", "18%" }, -- Formula: Enchant Bracer - Mana Regeneration
            { 34, 19447, "", "=q4=Formula: Enchant Bracer - Healing", "=ds=#s2#", "", "18%" }, -- Formula: Enchant Bracer - Healing
            { 35, 22014, "", "=q4=Hallowed Brazier", "=ds=#s2#", "", "18%" } -- Hallowed Brazier
        }
    },
    info = {
        name = BabbleBoss["Quartermaster Miranda Breechlock"],
        module = moduleName,
        instance = "Eastern Plaguelands",
    },
};
Synastria_Data["Darkscreecher Akkarai"] = {
    ["Normal"] = {
        {
            { 1, 32529, "", "=q3=Heretic's Gauntlets", "=ds=#s9#, #a4#", "", "17.3%"};
            { 2, 32715, "", "=q2=Akkarai's Talons", "=ds=#m3#", "", "100%"};
            { 4, 31558, "", "=q3=Windchanneller's Bindings", "=ds=#s8#, #a1#", "", "5.3%"};
            { 5, 31555, "", "=q3=Windchanneller's Ceinture", "=ds=#s10#, #a1#", "", "4.3%"};
            { 6, 31566, "", "=q3=Skystalker's Bracers", "=ds=#s8#, #a2#", "", "6.8%"};
            { 7, 31563, "", "=q3=Skystalker's Cord", "=ds=#s10#, #a2#", "", "6.2%"};
            { 8, 31574, "", "=q3=Mistshroud Bracers", "=ds=#s8#, #a3#", "", "4.1%"};
            { 9, 31571, "", "=q3=Mistshroud Belt", "=ds=#s10#, #a3#", "", "4.5%"};
            { 10, 31582, "", "=q3=Slatesteel Bracers", "=ds=#s8#, #a4#", "", "6.7%"};
            { 11, 31579, "", "=q3=Slatesteel Girdle", "=ds=#s10#, #a4#", "", "5.5%"};
            { 12, 32514, "", "=q3=Skettis Band", "=ds=#s13#", "", "31.5%"};
        };
    };
    info = {
        name = BabbleBoss["Darkscreecher Akkarai"],
        module = moduleName,
        instance = "Terokkar Forest",
    },
};

Synastria_Data["Karrog"] = {
    ["Normal"] = {
        {
            { 1, 32533, "", "=q3=Karrog's Shard", "=ds=#s15#", "", "15.0%"};
            { 2, 32717, "", "=q2=Karrog's Spine", "=ds=#m3#", "", "100%"};
            { 4, 31558, "", "=q3=Windchanneller's Bindings", "=ds=#s8#, #a1#", "", "5.6%"};
            { 5, 31555, "", "=q3=Windchanneller's Ceinture", "=ds=#s10#, #a1#", "", "6.8%"};
            { 6, 31566, "", "=q3=Skystalker's Bracers", "=ds=#s8#, #a2#", "", "6.0%"};
            { 7, 31563, "", "=q3=Skystalker's Cord", "=ds=#s10#, #a2#", "", "8.0%"};
            { 8, 31574, "", "=q3=Mistshroud Bracers", "=ds=#s8#, #a3#", "", "5.6%"};
            { 9, 31571, "", "=q3=Mistshroud Belt", "=ds=#s10#, #a3#", "", "3.6%"};
            { 10, 31582, "", "=q3=Slatesteel Bracers", "=ds=#s8#, #a4#", "", "4.3%"};
            { 11, 31579, "", "=q3=Slatesteel Girdle", "=ds=#s10#, #a4#", "", "5.3%"};
            { 12, 32514, "", "=q3=Skettis Band", "=ds=#s13#", "", "24.9%"};
        };
    };
    info = {
        name = BabbleBoss["Karrog"],
        module = moduleName,
        instance = "Terokkar Forest",
    },
};

Synastria_Data["Gezzarak the Huntress"] = {
    ["Normal"] = {
        {
            { 1, 32531, "", "=q3=Gezzarak's Fang", "=ds=#s2#", "", "16.9%"};
            { 2, 32716, "", "=q2=Gezzarak's Claws", "=ds=#m3#", "", "100%"};
            { 4, 31558, "", "=q3=Windchanneller's Bindings", "=ds=#s8#, #a1#", "", "5.2%"};
            { 5, 31555, "", "=q3=Windchanneller's Ceinture", "=ds=#s10#, #a1#", "", "6.9%"};
            { 6, 31566, "", "=q3=Skystalker's Bracers", "=ds=#s8#, #a2#", "", "5.2%"};
            { 7, 31563, "", "=q3=Skystalker's Cord", "=ds=#s10#, #a2#", "", "4.9%"};
            { 8, 31574, "", "=q3=Mistshroud Bracers", "=ds=#s8#, #a3#", "", "5.8%"};
            { 9, 31571, "", "=q3=Mistshroud Belt", "=ds=#s10#, #a3#", "", "5.4%"};
            { 10, 31582, "", "=q3=Slatesteel Bracers", "=ds=#s8#, #a4#", "", "6.2%"};
            { 11, 31579, "", "=q3=Slatesteel Girdle", "=ds=#s10#, #a4#", "", "4.6%"};
            { 12, 32514, "", "=q3=Skettis Band", "=ds=#s13#", "", "25.7%"};
        };
    };
    info = {
        name = BabbleBoss["Gezzarak the Huntress"],
        module = moduleName,
        instance = "Terokkar Forest",
    },
};

Synastria_Data["Vakkiz the Windrager"] = {
    ["Normal"] = {
        {
            { 1, 32532, "", "=q3=Windrager's Coils", "=ds=#s8#, #a3#", "", "18.1%"};
            { 2, 32718, "", "=q2=Vakkiz's Scale", "=ds=#m3#", "", "100%"};
            { 4, 31558, "", "=q3=Windchanneller's Bindings", "=ds=#s8#, #a1#", "", "5.0%"};
            { 5, 31555, "", "=q3=Windchanneller's Ceinture", "=ds=#s10#, #a1#", "", "4.4%"};
            { 6, 31566, "", "=q3=Skystalker's Bracers", "=ds=#s8#, #a2#", "", "4.1%"};
            { 7, 31563, "", "=q3=Skystalker's Cord", "=ds=#s10#, #a2#", "", "3.9%"};
            { 8, 31574, "", "=q3=Mistshroud Bracers", "=ds=#s8#, #a3#", "", "5.7%"};
            { 9, 31571, "", "=q3=Mistshroud Belt", "=ds=#s10#, #a3#", "", "6.3%"};
            { 10, 31582, "", "=q3=Slatesteel Bracers", "=ds=#s8#, #a4#", "", "5.8%"};
            { 11, 31579, "", "=q3=Slatesteel Girdle", "=ds=#s10#, #a4#", "", "2.7%"};
            { 12, 32514, "", "=q3=Skettis Band", "=ds=#s13#", "", "28.7%"};
        };
    };
    info = {
        name = BabbleBoss["Vakkiz the Windrager"],
        module = moduleName,
        instance = "Terokkar Forest",
    },
};

Synastria_Data["Terokk"] = {
    ["Normal"] = {
        {
            { 1, 32540, "", "=q4=Terokk's Might", "=ds=#s4#", "", "4.6%"};
            { 2, 32541, "", "=q4=Terokk's Wisdom", "=ds=#s4#", "", "4.6%"};
            { 3, 31556, "", "=q3=Windchanneller's Leggings", "=ds=#s11#, #a1#", "", "14.3%"};
            { 4, 31564, "", "=q3=Skystalker's Leggings", "=ds=#s11#, #a2#", "", "13.9%"};
            { 5, 31572, "", "=q3=Mistshroud Pants", "=ds=#s11#, #a3#", "", "10.7%"};
            { 6, 31580, "", "=q3=Slatesteel Leggings", "=ds=#s11#, #a4#", "", "11.6%"};
            { 7, 32535, "", "=q3=Gift of the Talonpriests", "=ds=#s13#", "", "7.9%"};
            { 8, 32534, "", "=q3=Brooch of the Immortal King", "=ds=#s14#", "", "11.2%"};
            { 9, 32782, "", "=q3=Time-Lost Figurine", "=ds=#s14#", "", ""};
            { 10, 32536, "", "=q3=Terokk's Gavel", "=ds=#h1#, #w6#", "", "6.7%"};
            { 11, 32537, "", "=q3=Terokk's Gavel", "=ds=#h1#, #w6#", "", "7.9%"};
        };
    };
    info = {
        name = BabbleBoss["Terokk"],
        module = moduleName,
        instance = "Terokkar Forest",
    },
};

Synastria_Data["Talonpriest Ishaal"] = {
    ["Normal"] = {
        {
            { 1, 32523, "", "=q1=Ishaal's Almanac", "=ds=#m2#"};
        };
    };
    info = {
        name = BabbleBoss["Talonpriest Ishaal"],
        module = moduleName,
        instance = "Terokkar Forest",
    },
};

Synastria_Data["Hazzik's Package"] = {
    ["Normal"] = {
        {
            { 1, 32687, "", "=q1=Hazzik's Package", "=ds=#m3#"};
        };
    };
    info = {
        name = BabbleBoss["Hazzik's Package"],
        module = moduleName,
        instance = "Terrokar Forest",
    },
};
