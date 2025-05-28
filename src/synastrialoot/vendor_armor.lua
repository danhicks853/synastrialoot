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

Synastria_Data["Armbreaker Huffaz"] = {
    ["Normal"] = {
        {
            { 1, 31943, "", "=q3=Ethereum Band", "=ds=#s13#", "", "10.7%"};
            { 3, 31939, "", "=q3=Dark Cloak", "=ds=#s4#", "", "1.36%"};
            { 4, 31938, "", "=q3=Enigmatic Cloak", "=ds=#s4#", "", "0.4%"};
            { 5, 31936, "", "=q3=Fiery Cloak", "=ds=#s4#", "", "0.36%"};
            { 6, 31935, "", "=q3=Frigid Cloak", "=ds=#s4#", "", "1.1%"};
            { 7, 31937, "", "=q3=Living Cloak", "=ds=#s4#", "", "0.6%"};
            { 9, 31957, "", "=q2=Ethereum Prisoner I.D. Tag", "=ds=#m3#", "", "100%"};
            { 18, 31928, "", "=q3=Dark Band", "=ds=#s13#", "", "0.7%"};
            { 19, 31929, "", "=q3=Enigmatic Band", "=ds=#s13#", "", "0.8%"};
            { 20, 31925, "", "=q3=Fiery Band", "=ds=#s13#", "", "0.5%"};
            { 21, 31926, "", "=q3=Frigid Band", "=ds=#s13#", "", "1.0%"};
            { 22, 31927, "", "=q3=Living Band", "=ds=#s13#", "", "1.3%"};
        };
    };
    info = {
        name = BabbleBoss["Armbreaker Huffaz"],
        module = moduleName,
        instance = "Netherstorm",
    },
};

Synastria_Data["Fel Tinkerer Zortan"] = {
    ["Normal"] = {
        {
            { 1, 31573, "", "=q3=Mistshroud Boots", "=ds=#s12#, #a3#", "", "9.7%"};
            { 3, 31939, "", "=q3=Dark Cloak", "=ds=#s4#", "", "0.94%"};
            { 4, 31938, "", "=q3=Enigmatic Cloak", "=ds=#s4#", "", "1.0%"};
            { 5, 31936, "", "=q3=Fiery Cloak", "=ds=#s4#", "", "0.94%"};
            { 6, 31935, "", "=q3=Frigid Cloak", "=ds=#s4#", "", "0.4%"};
            { 7, 31937, "", "=q3=Living Cloak", "=ds=#s4#", "", "0.7%"};
            { 9, 31957, "", "=q2=Ethereum Prisoner I.D. Tag", "=ds=#m3#", "", "100%"};
            { 18, 31928, "", "=q3=Dark Band", "=ds=#s13#", "", "1.0%"};
            { 19, 31929, "", "=q3=Enigmatic Band", "=ds=#s13#", "", "1.3%"};
            { 20, 31925, "", "=q3=Fiery Band", "=ds=#s13#", "", "1.2%"};
            { 21, 31926, "", "=q3=Frigid Band", "=ds=#s13#", "", "1.0%"};
            { 22, 31927, "", "=q3=Living Band", "=ds=#s13#", "", "1.2%"};
        };
    };
    info = {
        name = BabbleBoss["Fel Tinkerer Zortan"],
        module = moduleName,
        instance = "Netherstorm",
    },
};

Synastria_Data["Forgosh"] = {
    ["Normal"] = {
        {
            { 1, 31565, "", "=q3=Skystalker's Boots", "=ds=#s12#, #a2#", "", "8.5%"};
            { 3, 31939, "", "=q3=Dark Cloak", "=ds=#s4#", "", "2.63%"};
            { 4, 31938, "", "=q3=Enigmatic Cloak", "=ds=#s4#", "", "0.29%"};
            { 5, 31936, "", "=q3=Fiery Cloak", "=ds=#s4#", "", "0.9%"};
            { 6, 31935, "", "=q3=Frigid Cloak", "=ds=#s4#", "", "0.7%"};
            { 7, 31937, "", "=q3=Living Cloak", "=ds=#s4#", "", "1.0%"};
            { 9, 31957, "", "=q2=Ethereum Prisoner I.D. Tag", "=ds=#m3#", "", "100%"};
            { 18, 31928, "", "=q3=Dark Band", "=ds=#s13#", "", "0.9%"};
            { 19, 31929, "", "=q3=Enigmatic Band", "=ds=#s13#", "", "1.9%"};
            { 20, 31925, "", "=q3=Fiery Band", "=ds=#s13#", "", "0.5%"};
            { 21, 31926, "", "=q3=Frigid Band", "=ds=#s13#", "", "1.0%"};
            { 22, 31927, "", "=q3=Living Band", "=ds=#s13#", "", "0.7%"};
        };
    };
    info = {
        name = BabbleBoss["Forgosh"],
        module = moduleName,
        instance = "Netherstorm",
    },
};

Synastria_Data["Gul'bor"] = {
    ["Normal"] = {
        {
            { 1, 31940, "", "=q3=Ethereum Torque", "=ds=#s2#", "", "9.5%"};
            { 3, 31939, "", "=q3=Dark Cloak", "=ds=#s4#", "", "0.66%"};
            { 4, 31938, "", "=q3=Enigmatic Cloak", "=ds=#s4#", "", "0.66%"};
            { 5, 31936, "", "=q3=Fiery Cloak", "=ds=#s4#", "", "1.1%"};
            { 6, 31935, "", "=q3=Frigid Cloak", "=ds=#s4#", "", "1.1%"};
            { 7, 31937, "", "=q3=Living Cloak", "=ds=#s4#", "", "0.8%"};
            { 9, 31957, "", "=q2=Ethereum Prisoner I.D. Tag", "=ds=#m3#", "", "100%"};
            { 18, 31928, "", "=q3=Dark Band", "=ds=#s13#", "", "0.7%"};
            { 19, 31929, "", "=q3=Enigmatic Band", "=ds=#s13#", "", "0.9%"};
            { 20, 31925, "", "=q3=Fiery Band", "=ds=#s13#", "", "0.8%"};
            { 21, 31926, "", "=q3=Frigid Band", "=ds=#s13#", "", "0.8%"};
            { 22, 31927, "", "=q3=Living Band", "=ds=#s13#", "", "2.0%"};
        };
    };
    info = {
        name = BabbleBoss["Gul'bor"],
        module = moduleName,
        instance = "Netherstorm",
    },
};

Synastria_Data["Malevus the Mad"] = {
    ["Normal"] = {
        {
            { 1, 31581, "", "=q3=Slatesteel Boots", "=ds=#s12#, #a4#", "", "10.5%"};
            { 3, 31939, "", "=q3=Dark Cloak", "=ds=#s4#", "", "2.46%"};
            { 4, 31938, "", "=q3=Enigmatic Cloak", "=ds=#s4#", "", "0.70%"};
            { 5, 31936, "", "=q3=Fiery Cloak", "=ds=#s4#", "", "1.5%"};
            { 6, 31935, "", "=q3=Frigid Cloak", "=ds=#s4#", "", "0.7%"};
            { 7, 31937, "", "=q3=Living Cloak", "=ds=#s4#", "", "1.3%"};
            { 9, 31957, "", "=q2=Ethereum Prisoner I.D. Tag", "=ds=#m3#", "", "100%"};
            { 18, 31928, "", "=q3=Dark Band", "=ds=#s13#", "", "0.5%"};
            { 19, 31929, "", "=q3=Enigmatic Band", "=ds=#s13#", "", "0.8%"};
            { 20, 31925, "", "=q3=Fiery Band", "=ds=#s13#", "", "1.75%"};
            { 21, 31926, "", "=q3=Frigid Band", "=ds=#s13#", "", "0.6%"};
            { 22, 31927, "", "=q3=Living Band", "=ds=#s13#", "", "1.8%"};
        };
    };
    info = {
        name = BabbleBoss["Malevus the Mad"],
        module = moduleName,
        instance = "Netherstorm",
    },
};

Synastria_Data["Porfus the Gem Gorger"] = {
    ["Normal"] = {
        {
            { 1, 31557, "", "=q3=Windchanneller's Boots", "=ds=#s12#, #a1#", "", "7.9%"};
            { 3, 31939, "", "=q3=Dark Cloak", "=ds=#s4#", "", "1.89%"};
            { 4, 31938, "", "=q3=Enigmatic Cloak", "=ds=#s4#", "", "0.81%"};
            { 5, 31936, "", "=q3=Fiery Cloak", "=ds=#s4#", "", "1.0%"};
            { 6, 31935, "", "=q3=Frigid Cloak", "=ds=#s4#", "", "0.7%"};
            { 7, 31937, "", "=q3=Living Cloak", "=ds=#s4#", "", "1.1%"};
            { 9, 31957, "", "=q2=Ethereum Prisoner I.D. Tag", "=ds=#m3#", "", "100%"};
            { 18, 31928, "", "=q3=Dark Band", "=ds=#s13#", "", "0.7%"};
            { 19, 31929, "", "=q3=Enigmatic Band", "=ds=#s13#", "", "0.6%"};
            { 20, 31925, "", "=q3=Fiery Band", "=ds=#s13#", "", "1.8%"};
            { 21, 31926, "", "=q3=Frigid Band", "=ds=#s13#", "", "1.0%"};
            { 22, 31927, "", "=q3=Living Band", "=ds=#s13#", "", "1.1%"};
        };
    };
    info = {
        name = BabbleBoss["Porfus the Gem Gorger"],
        module = moduleName,
        instance = "Netherstorm",
    },
};

Synastria_Data["Wrathbringer Laz-Tarash"] = {
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
        name = BabbleBoss["Wrathbringer Laz-tarash"],
        module = moduleName,
        instance = "Netherstorm",
    },
};

Synastria_Data["Bashir Stasis Chambers"] = {
    ["Normal"] = {
        {
            { 1, 0, "INV_Box_01", "=q6="..AL["Trelopades"], ""};
            { 2, 32522, "", "=q3=Demonic Bulwark", "=ds=#w8#", "", ""};
            { 3, 31941, "", "=q2=Mark of the Nexus-King", "=ds=#m3#", "", ""};
            { 5, 0, "INV_Box_01", "=q6="..AL["King Dorfbruiser"], ""};
            { 6, 31577, "", "=q3=Slatesteel Shoulders", "=ds=#s3#, #a4#", "", ""};
            { 7, 31941, "", "=q2=Mark of the Nexus-King", "=ds=#m3#", "", ""};
            { 9, 0, "INV_Box_01", "=q6="..AL["Gorgolon the All-seeing"], ""};
            { 10, 31569, "", "=q3=Mistshroud Shoulders", "=ds=#s3#, #a3#", "", ""};
            { 11, 31941, "", "=q2=Mark of the Nexus-King", "=ds=#m3#", "", ""};
            { 16, 0, "INV_Box_01", "=q6="..AL["Matron Li-sahar"], ""};
            { 17, 31553, "", "=q3=Windchanneller's Mantle", "=ds=#s3#, #a1#", "", ""};
            { 18, 31941, "", "=q2=Mark of the Nexus-King", "=ds=#m3#", "", ""};
            { 20, 0, "INV_Box_01", "=q6="..AL["Solus the Eternal"], ""};
            { 21, 31561, "", "=q3=Skystalker's Shoulders", "=ds=#s3#, #a2#", "", ""};
            { 22, 31941, "", "=q2=Mark of the Nexus-King", "=ds=#m3#", "", ""};
        };
    };
    info = {
        name = BabbleBoss["Bashir Stasis Chambers"],
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
