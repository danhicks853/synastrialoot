AL = AL or setmetatable({}, {__index = function(t, k) return k end})
local BabbleBoss = LibStub("LibBabble-Boss-3.0"):GetUnstrictLookupTable()
local BabbleFaction = LibStub("LibBabble-Faction-3.0"):GetUnstrictLookupTable()
local BabbleInventory = LibStub("LibBabble-Inventory-3.0"):GetUnstrictLookupTable()
local BabbleItemSet = LibStub("LibBabble-ItemSet-3.0"):GetUnstrictLookupTable()
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetUnstrictLookupTable()
local moduleName = "SynastriaLootDalaran"
Synastria_Data = Synastria_Data or {}
-- Emblem of Heroism
Synastria_Data["Emblem Of Heroism"] = {
	["Normal"] = {
		{
			{ 1, 40697, "", "=q4=Elegant Temple Gardens' Girdle", "=ds=#s10#, #a1#", "#HEROISM:40#"};
			{ 2, 40696, "", "=q4=Plush Sash of Guzbah", "=ds=#s10#, #a1#", "#HEROISM:40#"};
			{ 4, 40694, "", "=q4=Jorach's Crocolisk Skin Belt", "=ds=#s10#, #a2#", "#HEROISM:40#"};
			{ 5, 40695, "", "=q4=Vine Belt of the Woodland Dryad", "=ds=#s10#, #a2#", "#HEROISM:40#"};
			{ 7, 40693, "", "=q4=Beadwork Belt of Shamanic Vision", "=ds=#s10#, #a3#", "#HEROISM:40#"};
			{ 8, 40692, "", "=q4=Vereesa's Silver Chain Belt", "=ds=#s10#, #a3#", "#HEROISM:40#"};
			{ 10, 40691, "", "=q4=Magroth's Meditative Cincture", "=ds=#s10#, #a4#", "#HEROISM:40#"};
			{ 11, 40688, "", "=q4=Verdungo's Barbarian Cord", "=ds=#s10#, #a4#", "#HEROISM:40#"};
			{ 12, 40689, "", "=q4=Waistguard of Living Iron", "=ds=#s10#, #a4#", "#HEROISM:40#"};
			{ 16, 40699, "", "=q4=Handbook of Obscure Remedies", "=ds=#s15#", "#HEROISM:25#"};
			{ 17, 40698, "", "=q4=Ward of the Violet Citadel", "=ds=#s15#", "#HEROISM:25#"};
			{ 19, 40704, "", "=q4=Pride", "=ds=#h4#, #w13#", "#HEROISM:50#"};
			{ 20, 40702, "", "=q4=Rolfsen's Ripper", "=ds=#h4#, #w4#", "#HEROISM:50#"};
			{ 21, 40703, "", "=q4=Grasscutter", "=ds=#h4#, #w10#", "#HEROISM:50#"};
			{ 22, 40716, "", "=q4=Lillehoff's Winged Blades", "=ds=#w11#", "#HEROISM:15#"};
			{ 23, 40701, "", "=q4=Crygil's Discarded Plate Panel", "=ds=#w8#", "#HEROISM:35#"};
			{ 24, 40700, "", "=q4=Protective Barricade of the Light", "=ds=#w8#", "#HEROISM:35#"};
		};
		{
			{ 1, 40711, "", "=q4=Idol of Lush Moss", "=ds=#w14#", "#HEROISM:15#"};
			{ 2, 40712, "", "=q4=Idol of Steadfast Renewal", "=ds=#w14#", "#HEROISM:15#"};
			{ 3, 40713, "", "=q4=Idol of the Ravenous Beast", "=ds=#w14#", "#HEROISM:15#"};
			{ 5, 40707, "", "=q4=Libram of Obstruction", "=ds=#w16#", "#HEROISM:15#"};
			{ 6, 40706, "", "=q4=Libram of Reciprocation", "=ds=#w16#", "#HEROISM:15#"};
			{ 7, 40705, "", "=q4=Libram of Renewal", "=ds=#w16#", "#HEROISM:15#"};
			{ 9, 40715, "", "=q4=Sigil of Haunted Dreams", "=ds=#w21#", "#HEROISM:15#"};
			{ 10, 40714, "", "=q4=Sigil of the Unfaltering Knight", "=ds=#w21#", "#HEROISM:15#"};
			{ 12, 40709, "", "=q4=Totem of Forest Growth", "=ds=#w15#", "#HEROISM:15#"};
			{ 13, 40710, "", "=q4=Totem of Splintering", "=ds=#w15#", "#HEROISM:15#"};
			{ 14, 40708, "", "=q4=Totem of the Elemental Plane", "=ds=#w15#", "#HEROISM:15#"};
			{ 16, 40679, "", "=q4=Chained Military Gorget", "=ds=#s2#", "#HEROISM:25#"};
			{ 17, 40680, "", "=q4=Encircling Burnished Gold Chains", "=ds=#s2#", "#HEROISM:25#"};
			{ 18, 40681, "", "=q4=Lattice Choker of Light", "=ds=#s2#", "#HEROISM:25#"};
			{ 19, 40678, "", "=q4=Pendant of the Outcast Hero", "=ds=#s2#", "#HEROISM:25#"};
			{ 21, 40684, "", "=q4=Mirror of Truth", "=ds=#s14#", "#HEROISM:40#"};
			{ 22, 40682, "", "=q4=Sundial of the Exiled", "=ds=#s14#", "#HEROISM:40#"};
			{ 23, 40685, "", "=q4=The Egg of Mortal Essence", "=ds=#s14#", "#HEROISM:40#"};
			{ 24, 40683, "", "=q4=Valor Medal of the First War", "=ds=#s14#", "#HEROISM:40#"};
		};
		{
			{ 1, 40610, "", "=q4=Chestguard of the Lost Conqueror", "=ds=#e15#", "#HEROISM:80#"};
			{ 2, 40611, "", "=q4=Chestguard of the Lost Protector", "=ds=#e15#", "#HEROISM:80#"};
			{ 3, 40612, "", "=q4=Chestguard of the Lost Vanquisher", "=ds=#e15#", "#HEROISM:80#"};
			{ 5, 40613, "", "=q4=Gloves of the Lost Conqueror", "=ds=#e15#", "#HEROISM:60#"};
			{ 6, 40614, "", "=q4=Gloves of the Lost Protector", "=ds=#e15#", "#HEROISM:60#"};
			{ 7, 40615, "", "=q4=Gloves of the Lost Vanquisher", "=ds=#e15#", "#HEROISM:60#"};
			{ 9, 44230, "", "=q4=Reins of the Wooly Mammoth", "=ds=#e26#", "#HEROISM:200#"};
			{ 10, 44231, "", "=q4=Reins of the Wooly Mammoth", "=ds=#e26#", "#HEROISM:200#"};
			{ 16, 36919, "", "=q4=Cardinal Ruby", "=ds=#e7#", "#HEROISM:20#" };
			{ 17, 36922, "", "=q4=King's Amber", "=ds=#e7#", "#HEROISM:20#" };
			{ 18, 36925, "", "=q4=Majestic Zircon", "=ds=#e7#", "#HEROISM:20#" };
			{ 19, 36931, "", "=q4=Ametrine", "=ds=#e7#", "#HEROISM:10#" };
			{ 20, 36928, "", "=q4=Dreadstone", "=ds=#e7#", "#HEROISM:10#" };
			{ 21, 36934, "", "=q4=Eye of Zul", "=ds=#e7#", "#HEROISM:10#" };
			{ 23, 43102, "", "=q3=Frozen Orb", "=ds=#e6#", "#HEROISM:10#"};
		};
	},
    info = {
		name = BabbleBoss["Emblem of Heroism"],
		module = moduleName,
		instance = "dalaran",
	},
};
Synastria_Data["Emblem Of Valor"] = {
	["Normal"] = {
		{
			{ 1, 40724, "", "=q4=Cloak of Kea Feathers", "=ds=#s4#", "#VALOR:25#"};
			{ 2, 40723, "", "=q4=Disguise of the Kumiho", "=ds=#s4#", "#VALOR:25#"};
			{ 3, 40722, "", "=q4=Platinum Mesh Cloak", "=ds=#s4#", "#VALOR:25#"};
			{ 4, 40721, "", "=q4=Hammerhead Sharkskin Cloak", "=ds=#s4#", "#VALOR:25#"};
			{ 6, 40741, "", "=q4=Cuffs of the Shadow Ascendant", "=ds=#s8#, #a1#", "#VALOR:60#"};
			{ 7, 40740, "", "=q4=Wraps of the Astral Traveler", "=ds=#s8#, #a1#", "#VALOR:60#"};
			{ 8, 40751, "", "=q4=Slippers of the Holy Light", "=ds=#s12#, #a1#", "#VALOR:40#"};
			{ 9, 40750, "", "=q4=Xintor's Expeditionary Boots", "=ds=#s12#, #a1#", "#VALOR:40#"};
			{ 11, 40739, "", "=q4=Bands of the Great Tree", "=ds=#s8#, #a2#", "#VALOR:60#"};
			{ 12, 40738, "", "=q4=Wristwraps of the Cutthroat", "=ds=#s8#, #a2#", "#VALOR:60#"};
			{ 13, 40748, "", "=q4=Boots of Captain Ellis", "=ds=#s12#, #a2#", "#VALOR:40#"};
			{ 14, 40749, "", "=q4=Rainey's Chewed Boots", "=ds=#s12#, #a2#", "#VALOR:40#"};
			{ 16, 40736, "", "=q4=Armguard of the Tower Archer", "=ds=#s8#, #a3#", "#VALOR:60#"};
			{ 17, 40737, "", "=q4=Pigmented Clan Bindings", "=ds=#s8#, #a3#", "#VALOR:60#"};
			{ 18, 40746, "", "=q4=Pack-Ice Striders", "=ds=#s12#, #a3#", "#VALOR:40#"};
			{ 19, 40747, "", "=q4=Treads of Coastal Wandering", "=ds=#s12#, #a3#", "#VALOR:40#"};
			{ 21, 40734, "", "=q4=Bracers of Dalaran's Parapets", "=ds=#s8#, #a4#", "#VALOR:60#"};
			{ 22, 40733, "", "=q4=Wristbands of the Sentinel Huntress", "=ds=#s8#, #a4#", "#VALOR:60#"};
			{ 23, 40735, "", "=q4=Zartson's Jungle Vambraces", "=ds=#s8#, #a4#", "#VALOR:60#"};
			{ 24, 40742, "", "=q4=Bladed Steelboots", "=ds=#s12#, #a4#", "#VALOR:40#"};
			{ 25, 40743, "", "=q4=Kyzoc's Ground Stompers", "=ds=#s12#, #a4#", "#VALOR:40#"};
			{ 26, 40745, "", "=q4=Sabatons of Rapid Recovery", "=ds=#s12#, #a4#", "#VALOR:40#"};
		};
		{
			{ 1, 40719, "", "=q4=Band of Channeled Magic", "=ds=#s13#", "#VALOR:25#"};
			{ 2, 40720, "", "=q4=Renewal of Life", "=ds=#s13#", "#VALOR:25#"};
			{ 3, 40717, "", "=q4=Ring of Invincibility", "=ds=#s13#", "#VALOR:25#"};
			{ 4, 40718, "", "=q4=Signet of the Impregnable Fortress", "=ds=#s13#", "#VALOR:25#"};
			{ 6, 40342, "", "=q4=Idol of Awakening", "=ds=#w14#", "#VALOR:25#" };
			{ 7, 40321, "", "=q4=Idol of the Shooting Star", "=ds=#w14#", "#VALOR:25#" };
			{ 8, 39757, "", "=q4=Idol of Worship", "=ds=#w14#", "#VALOR:25#" };
			{ 9, 40191, "", "=q4=Libram of Radiance", "=ds=#w16#", "#VALOR:25#" };
			{ 10, 40337, "", "=q4=Libram of Resurgence", "=ds=#w16#", "#VALOR:25#" };
			{ 11, 40268, "", "=q4=Libram of Tolerance", "=ds=#w16#", "#VALOR:25#" };
			{ 12, 40207, "", "=q4=Sigil of Awareness", "=ds=#w21#", "#VALOR:25#" };
			{ 13, 40322, "", "=q4=Totem of Dueling", "=ds=#w15#", "#VALOR:25#" };
			{ 14, 40267, "", "=q4=Totem of Hex", "=ds=#w15#", "#VALOR:25#" };
			{ 15, 39728, "", "=q4=Totem of Misery", "=ds=#w15#", "#VALOR:25#" };
			{ 16, 40637, "", "=q4=Mantle of the Lost Conqueror", "=ds=#e15#", "#VALOR:60#"};
			{ 17, 40638, "", "=q4=Mantle of the Lost Protector", "=ds=#e15#", "#VALOR:60#"};
			{ 18, 40639, "", "=q4=Mantle of the Lost Vanquisher", "=ds=#e15#", "#VALOR:60#"};
			{ 20, 40634, "", "=q4=Legplates of the Lost Conqueror", "=ds=#e15#", "#VALOR:75#"};
			{ 21, 40635, "", "=q4=Legplates of the Lost Protector", "=ds=#e15#", "#VALOR:75#"};
			{ 22, 40636, "", "=q4=Legplates of the Lost Vanquisher", "=ds=#e15#", "#VALOR:75#"};
		};
	};
    info = {
		name = BabbleBoss["Emblem of Valor"],
		module = moduleName,
		instance = "dalaran",
	},
};
Synastria_Data["Emblem of Frost"] = {
	["Normal"] = {
		{
			{ 1, 50975, "", "=q4=Ermine Coronation Robes", "=ds=#s5#, #a1#", "#FROST:95#" };
			{ 2, 50974, "", "=q4=Meteor Chaser's Raiment", "=ds=#s5#, #a1#", "#FROST:95#" };
			{ 3, 50984, "", "=q4=Gloves of Ambivalence", "=ds=#s9#, #a1#", "#FROST:60#" };
			{ 4, 50983, "", "=q4=Gloves of False Gestures", "=ds=#s9#, #a1#", "#FROST:60#" };
			{ 5, 50996, "", "=q4=Belt of Omission", "=ds=#s10#, #a1#", "#FROST:60#" };
			{ 6, 50997, "", "=q4=Circle of Ossus", "=ds=#s10#, #a1#", "#FROST:60#" };
			{ 8, 50972, "", "=q4=Shadow Seeker's Tunic", "=ds=#s5#, #a2#", "#FROST:95#" };
			{ 9, 50973, "", "=q4=Vestments of Spruce and Fir", "=ds=#s5#, #a2#", "#FROST:95#" };
			{ 10, 50982, "", "=q4=Cat Burglar's Grips", "=ds=#s9#, #a2#", "#FROST:60#" };
			{ 11, 50981, "", "=q4=Gloves of the Great Horned Owl", "=ds=#s9#, #a2#", "#FROST:60#" };
			{ 12, 50994, "", "=q4=Belt of Petrified Ivy", "=ds=#s10#, #a2#", "#FROST:60#" };
			{ 13, 50995, "", "=q4=Vengeful Noose", "=ds=#s10#, #a2#", "#FROST:60#" };
			{ 16, 50970, "", "=q4=Longstrider's Vest", "=ds=#s5#, #a3#", "#FROST:95#" };
			{ 17, 50971, "", "=q4=Mail of the Geyser", "=ds=#s5#, #a3#", "#FROST:95#" };
			{ 18, 50980, "", "=q4=Blizzard Keeper's Mitts", "=ds=#s9#, #a3#", "#FROST:60#" };
			{ 19, 50979, "", "=q4=Logsplitters", "=ds=#s9#, #a3#", "#FROST:60#" };
			{ 20, 50993, "", "=q4=Band of the Night Raven", "=ds=#s10#, #a3#", "#FROST:60#" };
			{ 21, 50992, "", "=q4=Waistband of Despair", "=ds=#s10#, #a3#", "#FROST:60#" };
			{ 22, 50965, "", "=q4=Castle Breaker's Battleplate", "=ds=#s5#, #a4#", "#FROST:95#" };
			{ 23, 50969, "", "=q4=Chestplate of Unspoken Truths", "=ds=#s5#, #a4#", "#FROST:95#" };
			{ 24, 50968, "", "=q4=Cataclysmic Chestguard", "=ds=#s5#, #a4#", "#FROST:95#" };
			{ 25, 50977, "", "=q4=Gatecrasher's Gauntlets", "=ds=#s9#, #a4#", "#FROST:60#" };
			{ 26, 50976, "", "=q4=Gauntlets of Overexposure", "=ds=#s9#, #a4#", "#FROST:60#" };
			{ 27, 50978, "", "=q4=Gauntlets of the Kraken", "=ds=#s9#, #a4#", "#FROST:60#" };
			{ 28, 50989, "", "=q4=Lich Killer's Lanyard", "=ds=#s10#, #a4#", "#FROST:60#" };
			{ 29, 50987, "", "=q4=Malevolant Girdle", "=ds=#s10#, #a4#", "#FROST:60#" };
			{ 30, 50991, "", "=q4=Verdigris Chain Belt", "=ds=#s10#, #a4#", "#FROST:60#" };
		};
		{
			{ 1, 50468, "", "=q4=Drape of the Violet Tower", "=ds=#s4#", "#FROST:50#" };
			{ 2, 50467, "", "=q4=Might of the Ocean Serpent", "=ds=#s4#", "#FROST:50#" };
			{ 3, 50470, "", "=q4=Recovered Scarlet Onslaught Cape", "=ds=#s4#", "#FROST:50#" };
			{ 4, 50466, "", "=q4=Sentinel's Winter Cloak", "=ds=#s4#", "#FROST:50#" };
			{ 5, 50469, "", "=q4=Volde's Cloak of the Night Sky", "=ds=#s4#", "#FROST:50#" };
			{ 7, 50356, "", "=q4=Corroded Skeleton Key", "=ds=#s14#", "#FROST:60#" };
			{ 8, 50355, "", "=q4=Herkuml War Token", "=ds=#s14#", "#FROST:60#" };
			{ 9, 50357, "", "=q4=Maghia's Misguided Quill", "=ds=#s14#", "#FROST:60#" };
			{ 10, 50358, "", "=q4=Purified Lunar Dust", "=ds=#s14#", "#FROST:60#" };
			{ 12, 50474, "", "=q4=Shrapnel Star", "=ds=#w11#", "#FROST:30#" };
			{ 16, 50456, "", "=q4=Idol of the Crying Moon", "=ds=#w14#", "#FROST:30#" };
			{ 17, 50457, "", "=q4=Idol of the Lunar Eclipse", "=ds=#w14#", "#FROST:30#" };
			{ 18, 50454, "", "=q4=Idol of the Black Willow", "=ds=#w14#", "#FROST:30#" };
			{ 19, 50460, "", "=q4=Libram of Blinding Light", "=ds=#w16#", "#FROST:30#" };
			{ 20, 50461, "", "=q4=Libram of the Eternal Tower", "=ds=#w16#", "#FROST:30#" };
			{ 21, 50455, "", "=q4=Libram of Three Truths", "=ds=#w16#", "#FROST:30#" };
			{ 22, 50462, "", "=q4=Sigil of the Bone Gryphon", "=ds=#w21#", "#FROST:30#" };
			{ 23, 50459, "", "=q4=Sigil of the Hanged Man", "=ds=#w21#", "#FROST:30#" };
			{ 24, 50458, "", "=q4=Bizuri's Totem of Shattered Ice", "=ds=#w15#", "#FROST:30#" };
			{ 25, 50463, "", "=q4=Totem of the Avalanche", "=ds=#w15#", "#FROST:30#" };
			{ 26, 50464, "", "=q4=Totem of the Surging Sea", "=ds=#w15#", "#FROST:30#" };
			{ 28, 49908, "", "=q3=Primordial Saronite", "=ds=#e6#", "#FROST:23#" };
			{ 29, 40830, "", "=q4=Relentless Gladiator's Dreadplate Helm", "=ds=", "#FROST:95#"};
			{ 30, 40871, "", "=q4=Relentless Gladiator's Dreadplate Shoulders", "=ds=", "#FROST:60#"};
			{ 31, 40791, "", "=q4=Relentless Gladiator's Dreadplate Chestpiece", "=ds=", "#FROST:95#"};
			{ 32, 40811, "", "=q4=Relentless Gladiator's Dreadplate Gauntlets", "=ds=", "#FROST:60#"};
			{ 33, 40851, "", "=q4=Relentless Gladiator's Dreadplate Legguards", "=ds=", "#FROST:95#"};
			{ 34, 41328, "", "=q4=Relentless Gladiator's Wyrmhide Helm", "=ds=", "#FROST:95#"};
			{ 35, 41282, "", "=q4=Relentless Gladiator's Wyrmhide Spaulders", "=ds=", "#FROST:60#"};
			{ 36, 41317, "", "=q4=Relentless Gladiator's Wyrmhide Robes", "=ds=", "#FROST:95#"};
			{ 37, 41294, "", "=q4=Relentless Gladiator's Wyrmhide Gloves", "=ds=", "#FROST:60#"};
			{ 38, 41305, "", "=q4=Relentless Gladiator's Wyrmhide Legguards", "=ds=", "#FROST:95#"};
			{ 39, 41679, "", "=q4=Relentless Gladiator's Dragonhide Helm", "=ds=", "#FROST:95#"};
			{ 40, 41716, "", "=q4=Relentless Gladiator's Dragonhide Spaulders", "=ds=", "#FROST:60#"};
			{ 41, 41662, "", "=q4=Relentless Gladiator's Dragonhide Robes", "=ds=", "#FROST:95#"};
			{ 42, 41774, "", "=q4=Relentless Gladiator's Dragonhide Gloves", "=ds=", "#FROST:60#"};
			{ 43, 41668, "", "=q4=Relentless Gladiator's Dragonhide Legguards", "=ds=", "#FROST:95#"};
			{ 44, 41322, "", "=q4=Relentless Gladiator's Kodohide Helm", "=ds=", "#FROST:95#"};
			{ 45, 41276, "", "=q4=Relentless Gladiator's Kodohide Spaulders", "=ds=", "#FROST:60#"};
			{ 46, 41311, "", "=q4=Relentless Gladiator's Kodohide Robes", "=ds=", "#FROST:95#"};
			{ 47, 41288, "", "=q4=Relentless Gladiator's Kodohide Gloves", "=ds=", "#FROST:60#"};
			{ 48, 41299, "", "=q4=Relentless Gladiator's Kodohide Legguards", "=ds=", "#FROST:95#"};
			{ 49, 41158, "", "=q4=Relentless Gladiator's Chain Helm", "=ds=", "#FROST:95#"};
			{ 50, 41218, "", "=q4=Relentless Gladiator's Chain Spaulders", "=ds=", "#FROST:60#"};
			{ 51, 41088, "", "=q4=Relentless Gladiator's Chain Armor", "=ds=", "#FROST:95#"};
			{ 52, 41144, "", "=q4=Relentless Gladiator's Chain Gauntlets", "=ds=", "#FROST:60#"};
			{ 53, 41206, "", "=q4=Relentless Gladiator's Chain Leggings", "=ds=", "#FROST:95#"};
			{ 54, 41947, "", "=q4=Relentless Gladiator's Silk Cowl", "=ds=", "#FROST:95#"};
			{ 55, 41966, "", "=q4=Relentless Gladiator's Silk Amice", "=ds=", "#FROST:60#"};
			{ 56, 41954, "", "=q4=Relentless Gladiator's Silk Raiment", "=ds=", "#FROST:95#"};
			{ 57, 41972, "", "=q4=Relentless Gladiator's Silk Handguards", "=ds=", "#FROST:60#"};
			{ 58, 41960, "", "=q4=Relentless Gladiator's Silk Trousers", "=ds=", "#FROST:95#"};
			{ 59, 40831, "", "=q4=Relentless Gladiator's Scaled Helm", "=ds=", "#FROST:95#"};
			{ 60, 40872, "", "=q4=Relentless Gladiator's Scaled Shoulders", "=ds=", "#FROST:60#"};
			{ 61, 40792, "", "=q4=Relentless Gladiator's Scaled Chestpiece", "=ds=", "#FROST:95#"};
			{ 62, 40812, "", "=q4=Relentless Gladiator's Scaled Gauntlets", "=ds=", "#FROST:60#"};
			{ 63, 40852, "", "=q4=Relentless Gladiator's Scaled Legguards", "=ds=", "#FROST:95#"};
			{ 64, 40934, "", "=q4=Relentless Gladiator's Ornamented Headcover", "=ds=", "#FROST:95#"};
			{ 65, 40964, "", "=q4=Relentless Gladiator's Ornamented Spaulders", "=ds=", "#FROST:60#"};
			{ 66, 40910, "", "=q4=Relentless Gladiator's Ornamented Chestguard", "=ds=", "#FROST:95#"};
			{ 67, 40928, "", "=q4=Relentless Gladiator's Ornamented Gloves", "=ds=", "#FROST:60#"};
			{ 68, 40940, "", "=q4=Relentless Gladiator's Ornamented Legplates", "=ds=", "#FROST:95#"};
			{ 69, 41916, "", "=q4=Relentless Gladiator's Satin Hood", "=ds=", "#FROST:95#"};
			{ 70, 41935, "", "=q4=Relentless Gladiator's Satin Mantle", "=ds=", "#FROST:60#"};
			{ 71, 41922, "", "=q4=Relentless Gladiator's Satin Robe", "=ds=", "#FROST:95#"};
			{ 72, 41941, "", "=q4=Relentless Gladiator's Satin Gloves", "=ds=", "#FROST:60#"};
			{ 73, 41928, "", "=q4=Relentless Gladiator's Satin Leggings", "=ds=", "#FROST:95#"};
			{ 74, 41855, "", "=q4=Relentless Gladiator's Mooncloth Hood", "=ds=", "#FROST:95#"};
			{ 75, 41870, "", "=q4=Relentless Gladiator's Mooncloth Mantle", "=ds=", "#FROST:60#"};
			{ 76, 41860, "", "=q4=Relentless Gladiator's Mooncloth Robe", "=ds=", "#FROST:95#"};
			{ 77, 41875, "", "=q4=Relentless Gladiator's Mooncloth Gloves", "=ds=", "#FROST:60#"};
			{ 78, 41865, "", "=q4=Relentless Gladiator's Mooncloth Leggings", "=ds=", "#FROST:95#"};
			{ 79, 41673, "", "=q4=Relentless Gladiator's Leather Helm", "=ds=", "#FROST:95#"};
			{ 80, 41684, "", "=q4=Relentless Gladiator's Leather Spaulders", "=ds=", "#FROST:60#"};
			{ 81, 41651, "", "=q4=Relentless Gladiator's Leather Tunic", "=ds=", "#FROST:95#"};
			{ 82, 41768, "", "=q4=Relentless Gladiator's Leather Gloves", "=ds=", "#FROST:60#"};
			{ 83, 41656, "", "=q4=Relentless Gladiator's Leather Legguards", "=ds=", "#FROST:95#"};
			{ 84, 41020, "", "=q4=Relentless Gladiator's Mail Helm", "=ds=", "#FROST:95#"};
			{ 85, 41045, "", "=q4=Relentless Gladiator's Mail Spaulders", "=ds=", "#FROST:60#"};
			{ 86, 40995, "", "=q4=Relentless Gladiator's Mail Armor", "=ds=", "#FROST:95#"};
			{ 87, 41008, "", "=q4=Relentless Gladiator's Mail Gauntlets", "=ds=", "#FROST:60#"};
			{ 88, 41034, "", "=q4=Relentless Gladiator's Mail Leggings", "=ds=", "#FROST:95#"};
			{ 89, 41152, "", "=q4=Relentless Gladiator's Linked Helm", "=ds=", "#FROST:95#"};
			{ 90, 41212, "", "=q4=Relentless Gladiator's Linked Spaulders", "=ds=", "#FROST:60#"};
			{ 91, 41082, "", "=q4=Relentless Gladiator's Linked Armor", "=ds=", "#FROST:95#"};
			{ 92, 41138, "", "=q4=Relentless Gladiator's Linked Gauntlets", "=ds=", "#FROST:60#"};
			{ 93, 41200, "", "=q4=Relentless Gladiator's Linked Leggings", "=ds=", "#FROST:95#"};
			{ 94, 41014, "", "=q4=Relentless Gladiator's Ringmail Helm", "=ds=", "#FROST:95#"};
			{ 95, 41039, "", "=q4=Relentless Gladiator's Ringmail Spaulders", "=ds=", "#FROST:60#"};
			{ 96, 40994, "", "=q4=Relentless Gladiator's Ringmail Armor", "=ds=", "#FROST:95#"};
			{ 97, 41002, "", "=q4=Relentless Gladiator's Ringmail Gauntlets", "=ds=", "#FROST:60#"};
			{ 98, 41028, "", "=q4=Relentless Gladiator's Ringmail Leggings", "=ds=", "#FROST:95#"};
			{ 99, 41994, "", "=q4=Relentless Gladiator's Felweave Cowl", "=ds=", "#FROST:95#"};
			{ 100, 42012, "", "=q4=Relentless Gladiator's Felweave Amice", "=ds=", "#FROST:60#"};
			{ 101, 41999, "", "=q4=Relentless Gladiator's Felweave Raiment", "=ds=", "#FROST:95#"};
			{ 102, 42018, "", "=q4=Relentless Gladiator's Felweave Handguards", "=ds=", "#FROST:60#"};
			{ 103, 42006, "", "=q4=Relentless Gladiator's Felweave Trousers", "=ds=", "#FROST:95#"};
			{ 104, 40829, "", "=q4=Relentless Gladiator's Plate Helm", "=ds=", "#FROST:95#"};
			{ 105, 40870, "", "=q4=Relentless Gladiator's Plate Shoulders", "=ds=", "#FROST:60#"};
			{ 106, 40790, "", "=q4=Relentless Gladiator's Plate Chestpiece", "=ds=", "#FROST:95#"};
			{ 107, 40810, "", "=q4=Relentless Gladiator's Plate Gauntlets", "=ds=", "#FROST:60#"};
			{ 108, 40850, "", "=q4=Relentless Gladiator's Plate Legguards", "=ds=", "#FROST:95#"};
		};
	},
	info = {
		name = BabbleBoss["Emblem of Frost"],
		module = moduleName,
		instance = "dalaran",
	},
};
Synastria_Data["Emblem of Conquest"] = {
	["Normal"] = {
		{
			{ 1, 45840, "", "=q4=Touch of the Occult", "=ds=#s9#, #a1#", "#CONQUEST:28#" };
			{ 2, 45831, "", "=q4=Sash of Potent Incantations", "=ds=#s10#, #a1#", "#CONQUEST:28#" };
			{ 3, 45848, "", "=q4=Legwraps of the Master Conjurer", "=ds=#s11#, #a1#", "#CONQUEST:39#" };
			{ 5, 45833, "", "=q4=Bladebreaker Gauntlets", "=ds=#s9#, #a4#", "#CONQUEST:28#" };
			{ 6, 45835, "", "=q4=Gauntlets of Serene Blessing", "=ds=#s9#, #a4#", "#CONQUEST:28#" };
			{ 7, 45834, "", "=q4=Gauntlets of the Royal Watch", "=ds=#s9#, #a4#", "#CONQUEST:28#" };
			{ 8, 45824, "", "=q4=Belt of the Singing Blade", "=ds=#s10#, #a4#", "#CONQUEST:28#" };
			{ 9, 45826, "", "=q4=Girdle of Unyielding Trust", "=ds=#s10#, #a4#", "#CONQUEST:28#" };
			{ 10, 45825, "", "=q4=Shieldwarder Girdle", "=ds=#s10#, #a4#", "#CONQUEST:28#" };
			{ 11, 45843, "", "=q4=Legguards of the Peaceful Covenant", "=ds=#s11#, #a4#", "#CONQUEST:39#" };
			{ 12, 45841, "", "=q4=Legplates of the Violet Champion", "=ds=#s11#, #a4#", "#CONQUEST:39#" };
			{ 13, 45842, "", "=q4=Wyrmguard Legplates", "=ds=#s11#, #a4#", "#CONQUEST:39#" };
			{ 16, 45838, "", "=q4=Gloves of the Blind Stalker", "=ds=#s9#, #a2#", "#CONQUEST:28#" };
			{ 17, 45839, "", "=q4=Grips of the Secret Grove", "=ds=#s9#, #a2#", "#CONQUEST:28#" };
			{ 18, 45830, "", "=q4=Belt of the Living Thicket", "=ds=#s10#, #a2#", "#CONQUEST:28#" };
			{ 19, 45829, "", "=q4=Belt of the Twilight Assassin", "=ds=#s10#, #a2#", "#CONQUEST:28#" };
			{ 20, 45846, "", "=q4=Leggings of Wavering Shadow", "=ds=#s11#, #a2#", "#CONQUEST:39#" };
			{ 21, 45847, "", "=q4=Wildstrider Legguards", "=ds=#s11#, #a2#", "#CONQUEST:39#" };
			{ 23, 45837, "", "=q4=Gloves of Augury", "=ds=#s9#, #a3#", "#CONQUEST:28#" };
			{ 24, 45836, "", "=q4=Gloves of Unerring Aim", "=ds=#s9#, #a3#", "#CONQUEST:28#" };
			{ 25, 45827, "", "=q4=Belt of the Ardent Marksman", "=ds=#s10#, #a3#", "#CONQUEST:28#" };
			{ 26, 45828, "", "=q4=Windchill Binding", "=ds=#s10#, #a3#", "#CONQUEST:28#" };
			{ 27, 45844, "", "=q4=Leggings of the Tireless Sentry", "=ds=#s11#, #a3#", "#CONQUEST:39#" };
			{ 28, 45845, "", "=q4=Leggings of the Weary Mystic", "=ds=#s11#, #a3#", "#CONQUEST:39#" };
		};
		{
			{ 1, 45820, "", "=q4=Broach of the Wailing Night", "=ds=#s2#", "#CONQUEST:19#" };
			{ 2, 45822, "", "=q4=Evoker's Charm", "=ds=#s2#", "#CONQUEST:19#" };
			{ 3, 45823, "", "=q4=Frozen Tear of Elune", "=ds=#s2#", "#CONQUEST:19#" };
			{ 4, 45821, "", "=q4=Shard of the Crystal Forest", "=ds=#s2#", "#CONQUEST:19#" };
			{ 5, 45819, "", "=q4=Spiked Battleguard Choker", "=ds=#s2#", "#CONQUEST:19#" };
			{ 7, 45638, "", "=q4=Crown of the Wayward Conqueror", "=ds=", "#CONQUEST:58#" };
			{ 8, 45639, "", "=q4=Crown of the Wayward Protector", "=ds=", "#CONQUEST:58#" };
			{ 9, 45640, "", "=q4=Crown of the Wayward Vanquisher", "=ds=", "#CONQUEST:58#" };
			{ 11, 45632, "", "=q4=Breastplate of the Wayward Conqueror", "=ds=", "#CONQUEST:58#" };
			{ 12, 45633, "", "=q4=Breastplate of the Wayward Protector", "=ds=", "#CONQUEST:58#" };
			{ 13, 45634, "", "=q4=Breastplate of the Wayward Vanquisher", "=ds=", "#CONQUEST:58#" };
			{ 16, 45509, "", "=q4=Idol of the Corruptor", "=ds=#w14#", "#CONQUEST:19#" };
			{ 17, 45270, "", "=q4=Idol of the Crying Wind", "=ds=#w14#", "#CONQUEST:19#" };
			{ 18, 46138, "", "=q4=Idol of the Flourishing Life", "=ds=#w14#", "#CONQUEST:19#" };
			{ 19, 45510, "", "=q4=Libram of Discord", "=ds=#w16#", "#CONQUEST:19#" };
			{ 20, 45436, "", "=q4=Libram of the Resolute", "=ds=#w16#", "#CONQUEST:19#" };
			{ 21, 45145, "", "=q4=Libram of the Sacred Shield", "=ds=#w16#", "#CONQUEST:19#" };
			{ 22, 45144, "", "=q4=Sigil of Deflection", "=ds=#w21#", "#CONQUEST:19#" };
			{ 23, 45254, "", "=q4=Sigil of the Vengeful Heart", "=ds=#w21#", "#CONQUEST:19#" };
			{ 24, 45114, "", "=q4=Steamcaller's Totem", "=ds=#w15#", "#CONQUEST:19#" };
			{ 25, 45255, "", "=q4=Thunderfall Totem", "=ds=#w15#", "#CONQUEST:19#" };
			{ 26, 45169, "", "=q4=Totem of the Dancing Flame", "=ds=#w15#", "#CONQUEST:19#" };
			{ 28, 45087, "", "=q3=Runed Orb", "=ds=#e6#", "#CONQUEST:18#" };
		};
	};
	info = {
		name = BabbleBoss["Emblem of Conquest"],
		module = moduleName,
		instance = "dalaran",
	},
};

Synastria_Data["Emblem of Triumph"] = {
	["Normal"] = {
		{
			{ 2, 47694, "", "=q4=Helm of Clouded Sight", "=ds=#s1#, #a1#", "#TRIUMPH:75#" };
			{ 3, 47693, "", "=q4=Hood of Fiery Aftermath", "=ds=#s1#, #a1#", "#TRIUMPH:75#" };
			{ 4, 47713, "", "=q4=Mantle of Catastrophic Emanation", "=ds=#s3#, #a1#", "#TRIUMPH:50#" };
			{ 5, 47715, "", "=q4=Pauldrons of Revered Mortality", "=ds=#s3#, #a1#", "#TRIUMPH:50#" };
			{ 7, 47690, "", "=q4=Helm of Abundant Growth", "=ds=#s1#, #a2#", "#TRIUMPH:75#" };
			{ 8, 47689, "", "=q4=Hood of Lethal Intent", "=ds=#s1#, #a2#", "#TRIUMPH:75#" };
			{ 9, 47708, "", "=q4=Duskstalker Shoulderpads", "=ds=#s3#, #a2#", "#TRIUMPH:50#" };
			{ 10, 47712, "", "=q4=Shoulders of the Fateful Accord", "=ds=#s3#, #a2#", "#TRIUMPH:50#" };
			{ 17, 47686, "", "=q4=Helm of Inner Warmth", "=ds=#s1#, #a3#", "#TRIUMPH:75#" };
			{ 18, 47685, "", "=q4=Helm of the Brooding Dragon", "=ds=#s1#, #a3#", "#TRIUMPH:75#" };
			{ 19, 47704, "", "=q4=Epaulets of the Devourer", "=ds=#s3#, #a3#", "#TRIUMPH:50#" };
			{ 20, 47707, "", "=q4=Mantle of the Groundbreaker", "=ds=#s3#, #a3#", "#TRIUMPH:50#" };
			{ 22, 47677, "", "=q4=Faceplate of the Honorbound", "=ds=#s1#, #a4#", "#TRIUMPH:75#" };
			{ 23, 47681, "", "=q4=Heaume of the Restless Watch", "=ds=#s1#, #a4#", "#TRIUMPH:75#" };
			{ 24, 47674, "", "=q4=Helm of Thunderous Rampage", "=ds=#s1#, #a4#", "#TRIUMPH:75#" };
			{ 25, 47702, "", "=q4=Pauldrons of the Cavalier", "=ds=#s3#, #a4#", "#TRIUMPH:50#" };
			{ 26, 47697, "", "=q4=Pauldrons of Trembling Rage", "=ds=#s3#, #a4#", "#TRIUMPH:50#" };
			{ 27, 47698, "", "=q4=Shoulderplates of Enduring Order", "=ds=#s3#, #a4#", "#TRIUMPH:50#" };
		};
		{
			{ 2, 47695, "", "=q4=Hood of Clouded Sight", "=ds=#s1#, #a1#", "#TRIUMPH:75#" };
			{ 3, 47692, "", "=q4=Hood of Smoldering Aftermath", "=ds=#s1#, #a1#", "#TRIUMPH:75#" };
			{ 4, 47714, "", "=q4=Pauldrons of Catastrophic Emanation", "=ds=#s3#, #a1#", "#TRIUMPH:50#" };
			{ 5, 47716, "", "=q4=Mantle of Revered Mortality", "=ds=#s3#, #a1#", "#TRIUMPH:50#" };
			{ 7, 47691, "", "=q4=Mask of Abundant Growth", "=ds=#s1#, #a2#", "#TRIUMPH:75#" };
			{ 8, 47688, "", "=q4=Mask of Lethal Intent", "=ds=#s1#, #a2#", "#TRIUMPH:75#" };
			{ 9, 47709, "", "=q4=Duskstalker Pauldrons", "=ds=#s3#, #a2#", "#TRIUMPH:50#" };
			{ 10, 47710, "", "=q4=Epaulets of the Fateful Accord", "=ds=#s3#, #a2#", "#TRIUMPH:50#" };
			{ 17, 47687, "", "=q4=Headguard of Inner Warmth", "=ds=#s1#, #a3#", "#TRIUMPH:75#" };
			{ 18, 47684, "", "=q4=Coif of the Brooding Dragon", "=ds=#s1#, #a3#", "#TRIUMPH:75#" };
			{ 19, 47705, "", "=q4=Pauldrons of the Devourer", "=ds=#s3#, #a3#", "#TRIUMPH:50#" };
			{ 20, 47706, "", "=q4=Shoulders of the Groundbreaker", "=ds=#s3#, #a3#", "#TRIUMPH:50#" };
			{ 22, 47678, "", "=q4=Headplate of the Honorbound", "=ds=#s1#, #a4#", "#TRIUMPH:75#" };
			{ 23, 47682, "", "=q4=Helm of the Restless Watch", "=ds=#s1#, #a4#", "#TRIUMPH:75#" };
			{ 24, 47675, "", "=q4=Faceplate of Thunderous Rampage", "=ds=#s1#, #a4#", "#TRIUMPH:75#" };
			{ 25, 47701, "", "=q4=Shoulderplates of the Cavalier", "=ds=#s3#, #a4#", "#TRIUMPH:50#" };
			{ 26, 47696, "", "=q4=Shoulderplates of Trembling Rage", "=ds=#s3#, #a4#", "#TRIUMPH:50#" };
			{ 27, 47699, "", "=q4=Shoulderguards of Enduring Order", "=ds=#s3#, #a4#", "#TRIUMPH:50#" };
		};
		{
			{ 1, 47732, "", "=q4=Band of the Invoker", "=ds=#s13#", "#TRIUMPH:35#" };
			{ 2, 47729, "", "=q4=Bloodshed Band", "=ds=#s13#", "#TRIUMPH:35#" };
			{ 3, 47731, "", "=q4=Clutch of Fortification", "=ds=#s13#", "#TRIUMPH:35#" };
			{ 4, 47730, "", "=q4=Dexterous Brightstone Ring", "=ds=#s13#", "#TRIUMPH:35#" };
			{ 5, 47733, "", "=q4=Heartmender Circle", "=ds=#s13#", "#TRIUMPH:35#" };
			{ 7, 47735, "", "=q4=Glyph of Indomitability", "=ds=#s14#", "#TRIUMPH:50#" };
			{ 8, 47734, "", "=q4=Mark of Supremacy", "=ds=#s14#", "#TRIUMPH:50#" };
			{ 9, 48722, "", "=q4=Shard of the Crystal Heart", "=ds=#s14#", "#TRIUMPH:50#" };
			{ 10, 48724, "", "=q4=Talisman of Resurgence", "=ds=#s14#", "#TRIUMPH:50#" };
			{ 12, 47659, "", "=q4=Crimson Star", "=ds=#w11#", "#TRIUMPH:25#" };
			{ 13, 47660, "", "=q4=Blades of the Sable Cross", "=ds=#w11#", "#TRIUMPH:25#" };
			{ 14, 47658, "", "=q4=Brimstone Igniter", "=ds=#w12#", "#TRIUMPH:25#" };	
			{ 16, 47671, "", "=q4=Idol of Flaring Growth", "=ds=#w14#", "#TRIUMPH:25#" };
			{ 17, 47670, "", "=q4=Idol of Lunar Fury", "=ds=#w14#", "#TRIUMPH:25#" };
			{ 18, 47668, "", "=q4=Idol of Mutilation", "=ds=#w14#", "#TRIUMPH:25#" };
			{ 19, 47664, "", "=q4=Libram of Defiance", "=ds=#w16#", "#TRIUMPH:25#" };
			{ 20, 47661, "", "=q4=Libram of Valiance", "=ds=#w16#", "#TRIUMPH:25#" };
			{ 21, 47662, "", "=q4=Libram of Veracity", "=ds=#w16#", "#TRIUMPH:25#" };
			{ 22, 47672, "", "=q4=Sigil of Insolence", "=ds=#w21#", "#TRIUMPH:25#" };
			{ 23, 47673, "", "=q4=Sigil of Virulence", "=ds=#w21#", "#TRIUMPH:25#" };
			{ 24, 47665, "", "=q4=Totem of Calming Tides", "=ds=#w15#", "#TRIUMPH:25#" };
			{ 25, 47666, "", "=q4=Totem of Electrifying Wind", "=ds=#w15#", "#TRIUMPH:25#" };
			{ 26, 47667, "", "=q4=Totem of Quaking Earth", "=ds=#w15#", "#TRIUMPH:25#" };
			{ 28, 47556, "", "=q3=Crusader Orb", "=ds=#e6#", "#TRIUMPH:15#"};
		};
	};
	info = {
		name = BabbleBoss["Emblem of Triumph"],
		module = moduleName,
		instance = "dalaran",
	},
};

Synastria_Data["Emblem Heirlooms"] = {
	["Normal"] = {
		{
			{ 1, 42985, "", "=q7=Tattered Dreadmist Mantle", "=ds=#s3#, #a1#", "#CHAMPSEAL:60# #HEROISM:40#"};
			{ 2, 42984, "", "=q7=Preened Ironfeather Shoulders", "=ds=#s3#, #a2#", "#HEROISM:40# #CHAMPSEAL:60#"};
			{ 3, 42952, "", "=q7=Stained Shadowcraft Spaulders", "=ds=#s3#, #a2#", "#HEROISM:40# #CHAMPSEAL:60#"};
			{ 4, 42950, "", "=q7=Champion Herod's Shoulder", "=ds=#s3#, #a3#", "#HEROISM:40# #CHAMPSEAL:60#"};
			{ 5, 42951, "", "=q7=Mystical Pauldrons of Elements", "=ds=#s3#, #a3#", "#HEROISM:40# #CHAMPSEAL:60#"};
			{ 6, 42949, "", "=q7=Polished Spaulders of Valor", "=ds=#s3#, #a4#", "#HEROISM:40# #CHAMPSEAL:60#"};
			{ 8, 48691, "", "=q7=Tattered Dreadmist Robe", "=ds=#s5#, #a1#", "#HEROISM:40# #CHAMPSEAL:60#"};
			{ 9, 48687, "", "=q7=Preened Ironfeather Breastplate", "=ds=#s5#, #a2#", "#HEROISM:40# #CHAMPSEAL:60#"};
			{ 10, 48689, "", "=q7=Stained Shadowcraft Tunic", "=ds=#s5#, #a2#", "#HEROISM:40# #CHAMPSEAL:60#"};
			{ 11, 48677, "", "=q7=Champion's Deathdealer Breastplate", "=ds=#s5#, #a3#", "#HEROISM:40# #CHAMPSEAL:60#"};
			{ 12, 48683, "", "=q7=Mystical Vest of Elements", "=ds=#s5#, #a3#", "#HEROISM:40# #CHAMPSEAL:60#"};
			{ 13, 48685, "", "=q7=Polished Breastplate of Valor", "=ds=#s5#, #a4#", "#HEROISM:40# #CHAMPSEAL:60#"};
			{ 18, 42992, "", "=q7=Discerning Eye of the Beast", "=ds=#s14#", "#HEROISM:50# #CHAMPSEAL:75#"};
			{ 19, 42991, "", "=q7=Swift Hand of Justice", "=ds=#s14#", "#HEROISM:50# #CHAMPSEAL:75#"};
			{ 21, 42944, "", "=q7=Balanced Heartseeker", "=ds=#h1#, #w4#", "#HEROISM:40# #CHAMPSEAL:60#"};
			{ 22, 42945, "", "=q7=Venerable Dal'Rend's Sacred Charge", "=ds=#h3#, #w10#", "#HEROISM:40# #CHAMPSEAL:60#"};
			{ 23, 42943, "", "=q7=Bloodied Arcanite Reaper", "=ds=#h2#, #w1#", "#HEROISM:65# #CHAMPSEAL:95#"};
			{ 24, 42948, "", "=q7=Devout Aurastone Hammer", "=ds=#h3#, #w6#", "#HEROISM:50# #CHAMPSEAL:75#"};
			{ 25, 48716, "", "=q7=Venerable Mass of McGowan", "=ds=#h1#, #w6#", "#HEROISM:40# #CHAMPSEAL:75#"};
			{ 26, 48718, "", "=q7=Repurposed Lava Dredger", "=ds=#h2#, #w6#", "#HEROISM:65# #CHAMPSEAL:95#"};
			{ 27, 42947, "", "=q7=Dignified Headmaster's Charge", "=ds=#w9#", "#HEROISM:65# #CHAMPSEAL:95#"};
			{ 28, 42946, "", "=q7=Charmed Ancient Bone Bow", "=ds=#w2#", "#HEROISM:65# #CHAMPSEAL:95#"};
		};
	};
	info = {
		name = BabbleBoss["Emblem Heirlooms"],
		module = moduleName,
		instance = "dalaran",
	},
};

Synastria_Data["Kirin Tor Reputation"] = {
	["Normal"] = {
		{
			{ 1, 0, "Spell_Fire_MasterOfElements", "=q6=#r2#", ""};
			{ 2, 43157, "", "=q1=Tabard of the Kirin Tor", "=ds=#s7#"};
			{ 4, 0, "Spell_Fire_MasterOfElements", "=q6=#r3#", ""};
			{ 5, 44167, "", "=q3=Shroud of Dedicated Research", "=ds=#s4#"};
			{ 6, 44170, "", "=q3=Helm of the Majestic Stag", "=ds=#s1#, #a2#"};
			{ 7, 44171, "", "=q3=Spaulders of Grounded Lightning", "=ds=#s3#, #a3#"};
			{ 8, 44166, "", "=q3=Lightblade Rivener", "=ds=#h1#, #w4#"};
			{ 9, 44141, "", "=q3=Arcanum of the Flame's Soul", "=ds=#s1# #e17#"};
			{ 16, 0, "Spell_Fire_MasterOfElements", "=q6=#r4#", ""};
			{ 17, 44179, "", "=q3=Mind-Expanding Leggings", "=ds=#s11#, #a2#"};
			{ 18, 44176, "", "=q3=Girdle of the Warrior Magi", "=ds=#s10#, #a4#"};
			{ 19, 44173, "", "=q3=Flameheart Spell Scalpel", "=ds=#h3#, #w4#"};
			{ 20, 44174, "", "=q3=Stave of Shrouded Mysteries", "=ds=#w9#"};
			{ 21, 44159, "", "=q7=Arcanum of Burning Mysteries", "=ds=#s1# #e17#"};
			{ 23, 0, "Spell_Fire_MasterOfElements", "=q6=#r5#", ""};
			{ 24, 44180, "", "=q4=Robes of Crackling Flame", "=ds=#s5#, #a1#"};
			{ 25, 44181, "", "=q4=Ghostflicker Waistband", "=ds=#s10#, #a2#"};
			{ 26, 44182, "", "=q4=Boots of Twinkling Stars", "=ds=#s12#, #a3#"};
			{ 27, 44183, "", "=q4=Fireproven Gauntlets", "=ds=#s9#, #a4#"};
			{ 28, 41718, "", "=q3=Design: Brilliant Scarlet Ruby", "=ds=#p12# (390)"};
			{ 29, 42188, "", "=q1=Pattern: Sapphire Spellthread", "=ds=#p8# (430)"};
		};
	};
	info = {
		name = BabbleBoss["Kirin Tor Reputation"],
		module = moduleName,
		instance = "dalaran",
	},
};

Synastria_Data["Dalaran Rings"] = {
    ["Normal"] = {
        {
            { 1, 40586, "", "=q4=Band of the Kirin Tor", "=ds=#s13#" },
            { 2, 45688, "", "=q4=Inscribed Band of the Kirin Tor", "=ds=#s13#" },
            { 3, 48954, "", "=q4=Etched Band of the Kirin Tor", "=ds=#s13#" },
            { 4, 51560, "", "=q4=Runed Band of the Kirin Tor", "=ds=#s13#" },
            { 5, 44934, "", "=q4=Loop of the Kirin Tor", "=ds=#s13#" },
            { 6, 45689, "", "=q4=Inscribed Loop of the Kirin Tor", "=ds=#s13#" },
            { 7, 48955, "", "=q4=Etched Loop of the Kirin Tor", "=ds=#s13#" },
            { 8, 51558, "", "=q4=Runed Loop of the Kirin Tor", "=ds=#s13#" },
            { 9, 44935, "", "=q4=Ring of the Kirin Tor", "=ds=#s13#" },
            { 10, 45690, "", "=q4=Inscribed Ring of the Kirin Tor", "=ds=#s13#" },
            { 11, 48956, "", "=q4=Etched Ring of the Kirin Tor", "=ds=#s13#" },
            { 12, 51559, "", "=q4=Runed Ring of the Kirin Tor", "=ds=#s13#" },
            { 13, 40585, "", "=q4=Signet of the Kirin Tor", "=ds=#s13#" },
            { 14, 45691, "", "=q4=Inscribed Signet of the Kirin Tor", "=ds=#s13#" },
            { 15, 48957, "", "=q4=Etched Signet of the Kirin Tor", "=ds=#s13#" },
            { 16, 51557, "", "=q4=Runed Signet of the Kirin Tor", "=ds=#s13#" }
        }
    };
    info = {
        name = BabbleBoss["Dalaran Rings"],
        module = moduleName,
        instance = "dalaran",
    },
};


Synastria_Data["Tier: Death Knight"] = {
	["Normal"] = {
		{
			{ 1, 0, "spell_deathknight_frostpresence", "=q6=#t7s10_1#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
			{ 2, 39619, "", "=q4=Heroes' Scourgeborne Helmet", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39621, "", "=q4=Heroes' Scourgeborne Shoulderplates", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39617, "", "=q4=Heroes' Scourgeborne Battleplate", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39618, "", "=q4=Heroes' Scourgeborne Gauntlets", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39620, "", "=q4=Heroes' Scourgeborne Legplates", "=ds="..BabbleBoss["Thaddius"]};
			{ 8, 0, "spell_deathknight_frostpresence", "=q6=#t7s10_1#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
			{ 9, 40554, "", "=q4=Valorous Scourgeborne Helmet", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40557, "", "=q4=Valorous Scourgeborne Shoulderplates", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40550, "", "=q4=Valorous Scourgeborne Battleplate", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40552, "", "=q4=Valorous Scourgeborne Gauntlets", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40556, "", "=q4=Valorous Scourgeborne Legplates", "=ds="..BabbleBoss["Thaddius"]};
			{ 16, 0, "spell_deathknight_frostpresence", "=q6=#t8s10_1#", "=q5="..AL["Tier 8"].." ("..AL["10 Man"]..")"};
			{ 17, 45342, "", "=q4=Valorous Darkruned Helmet", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45344, "", "=q4=Valorous Darkruned Shoulderplates", "=ds="..BabbleBoss.Thorim};
			{ 19, 45340, "", "=q4=Valorous Darkruned Battleplate", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 45341, "", "=q4=Valorous Darkruned Gauntlets", "=ds="..BabbleBoss.Freya};
			{ 21, 45343, "", "=q4=Valorous Darkruned Legplates", "=ds="..BabbleBoss.Hodir};
			{ 23, 0, "spell_deathknight_frostpresence", "=q6=#t8s10_1#", "=q5="..AL["Tier 8"].." ("..AL["25 Man"]..")"};
			{ 24, 46115, "", "=q4=Conqueror's Darkruned Helmet", "=ds="..BabbleBoss.Thorim};
			{ 25, 46117, "", "=q4=Conqueror's Darkruned Shoulderplates", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46111, "", "=q4=Conqueror's Darkruned Battleplate", "=ds="..BabbleBoss.Hodir};
			{ 27, 46113, "", "=q4=Conqueror's Darkruned Gauntlets", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46116, "", "=q4=Conqueror's Darkruned Legplates", "=ds="..BabbleBoss.Freya};
		};
		{
			{ 1, 0, "spell_deathknight_bloodpresence", "=q6=#t7s10_2#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
			{ 2, 39625, "", "=q4=Heroes' Scourgeborne Faceguard", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39627, "", "=q4=Heroes' Scourgeborne Pauldrons", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39623, "", "=q4=Heroes' Scourgeborne Chestguard", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39624, "", "=q4=Heroes' Scourgeborne Handguards", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39626, "", "=q4=Heroes' Scourgeborne Legguards", "=ds="..BabbleBoss["Thaddius"]};
			{ 8, 0, "spell_deathknight_bloodpresence", "=q6=#t7s10_2#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
			{ 9, 40565, "", "=q4=Valorous Scourgeborne Faceguard", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40568, "", "=q4=Valorous Scourgeborne Pauldrons", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40559, "", "=q4=Valorous Scourgeborne Chestguard", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40563, "", "=q4=Valorous Scourgeborne Handguards", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40567, "", "=q4=Valorous Scourgeborne Legguards", "=ds="..BabbleBoss["Thaddius"]};
			{ 16, 0, "spell_deathknight_bloodpresence", "=q6=#t8s10_2#", "=q5="..AL["Tier 8"].." ("..AL["10 Man"]..")"};
			{ 17, 45336, "", "=q4=Valorous Darkruned Faceguard", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45339, "", "=q4=Valorous Darkruned Pauldrons", "=ds="..BabbleBoss.Thorim};
			{ 19, 45335, "", "=q4=Valorous Darkruned Chestguard", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 45337, "", "=q4=Valorous Darkruned Handguards", "=ds="..BabbleBoss.Freya};
			{ 21, 45338, "", "=q4=Valorous Darkruned Legguards", "=ds="..BabbleBoss.Hodir};
			{ 23, 0, "spell_deathknight_bloodpresence", "=q6=#t8s10_2#", "=q5="..AL["Tier 8"].." ("..AL["25 Man"]..")"};
			{ 24, 46120, "", "=q4=Conqueror's Darkruned Faceguard", "=ds="..BabbleBoss.Thorim};
			{ 25, 46122, "", "=q4=Conqueror's Darkruned Pauldrons", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46118, "", "=q4=Conqueror's Darkruned Chestguard", "=ds="..BabbleBoss.Hodir};
			{ 27, 46119, "", "=q4=Conqueror's Darkruned Handguards", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46121, "", "=q4=Conqueror's Darkruned Legguards", "=ds="..BabbleBoss.Freya};
		};
		{
			{ 1, 0, "spell_deathknight_bloodpresence", "=q6=#t9s10_1a#", "=q5="..AL["Tier 9"]};
			{ 2, 48529, "", "=q4=Thassarian's Faceguard of Conquest", "=ds=#s1#, #a4#", "#TRIUMPH:50#"};
			{ 3, 48535, "", "=q4=Thassarian's Pauldrons of Conquest", "=ds=#s3#, #a4#", "#TRIUMPH:30#"};
			{ 4, 48531, "", "=q4=Thassarian's Chestguard of Conquest", "=ds=#s5#, #a4#", "#TRIUMPH:50#"};
			{ 5, 48537, "", "=q4=Thassarian's Handguards of Conquest", "=ds=#s9#, #a4#", "#TRIUMPH:30#"};
			{ 6, 48533, "", "=q4=Thassarian's Legguards of Conquest", "=ds=#s11#, #a4#", "#TRIUMPH:50#"};
			{ 8, 0, "spell_deathknight_bloodpresence", "=q6=#t9s10_1a#", "=q5="..AL["Tier 9"]};
			{ 9, 48540, "", "=q4=Thassarian's Faceguard of Triumph", "=ds=#s1#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48542, "", "=q4=Thassarian's Pauldrons of Triumph", "=ds=#s3#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48538, "", "=q4=Thassarian's Chestguard of Triumph", "=ds=#s5#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48539, "", "=q4=Thassarian's Handguards of Triumph", "=ds=#s9#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48541, "", "=q4=Thassarian's Legguards of Triumph", "=ds=#s11#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "spell_deathknight_bloodpresence", "=q6=#t9s10_1a#", "=q5="..AL["Tier 9"]};
			{ 17, 48545, "", "=q4=Thassarian's Faceguard of Triumph", "=ds=#s1#, #a4#"};
			{ 18, 48543, "", "=q4=Thassarian's Pauldrons of Triumph", "=ds=#s3#, #a4#"};
			{ 19, 48547, "", "=q4=Thassarian's Chestguard of Triumph", "=ds=#s5#, #a4#"};
			{ 20, 48546, "", "=q4=Thassarian's Handguards of Triumph", "=ds=#s9#, #a4#"};
			{ 21, 48544, "", "=q4=Thassarian's Legguards of Triumph", "=ds=#s11#, #a4#"};
		};
		{
			{ 1, 0, "spell_deathknight_bloodpresence", "=q6=#t9s10_1h#", "=q5="..AL["Tier 9"]};
			{ 2, 48560, "", "=q4=Koltira's Faceguard of Conquest", "=ds=#s1#, #a4#", "#TRIUMPH:50#"};
			{ 3, 48562, "", "=q4=Koltira's Pauldrons of Conquest", "=ds=#s3#, #a4#", "#TRIUMPH:30#"};
			{ 4, 48558, "", "=q4=Koltira's Chestguard of Conquest", "=ds=#s5#, #a4#", "#TRIUMPH:50#"};
			{ 5, 48559, "", "=q4=Koltira's Handguards of Conquest", "=ds=#s9#, #a4#", "#TRIUMPH:30#"};
			{ 6, 48561, "", "=q4=Koltira's Legguards of Conquest", "=ds=#s11#, #a4#", "#TRIUMPH:50#"};
			{ 8, 0, "spell_deathknight_bloodpresence", "=q6=#t9s10_1h#", "=q5="..AL["Tier 9"]};
			{ 9, 48555, "", "=q4=Koltira's Faceguard of Triumph", "=ds=#s1#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48553, "", "=q4=Koltira's Pauldrons of Triumph", "=ds=#s3#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48557, "", "=q4=Koltira's Chestguard of Triumph", "=ds=#s5#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48556, "", "=q4=Koltira's Handguards of Triumph", "=ds=#s9#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48554, "", "=q4=Koltira's Legguards of Triumph", "=ds=#s11#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "spell_deathknight_bloodpresence", "=q6=#t9s10_1h#", "=q5="..AL["Tier 9"]};
			{ 17, 48550, "", "=q4=Koltira's Faceguard of Triumph", "=ds=#s1#, #a4#"};
			{ 18, 48552, "", "=q4=Koltira's Pauldrons of Triumph", "=ds=#s3#, #a4#"};
			{ 19, 48548, "", "=q4=Koltira's Chestguard of Triumph", "=ds=#s5#, #a4#"};
			{ 20, 48549, "", "=q4=Koltira's Handguards of Triumph", "=ds=#s9#, #a4#"};
			{ 21, 48551, "", "=q4=Koltira's Legguards of Triumph", "=ds=#s11#, #a4#"};
		};
	};
    info = {
        name = BabbleBoss["Tier: Death Knight"],
        module = moduleName,
        instance = "dalaran",
    },
}



Synastria_Data["Tier: Druid"] = {
	["Normal"] = {
		{
			{ 1, 0, "ability_racial_bearform", "=q6=#t7s1_2#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
			{ 2, 39553, "", "=q4=Heroes' Dreamwalker Headguard", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39556, "", "=q4=Heroes' Dreamwalker Shoulderpads", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39554, "", "=q4=Heroes' Dreamwalker Raiments", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39557, "", "=q4=Heroes' Dreamwalker Handgrips", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39555, "", "=q4=Heroes' Dreamwalker Legguards", "=ds="..BabbleBoss["Thaddius"]};
			{ 8, 0, "ability_racial_bearform", "=q6=#t7s1_2#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
			{ 9, 40473, "", "=q4=Valorous Dreamwalker Headguard", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40494, "", "=q4=Valorous Dreamwalker Shoulderpads", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40471, "", "=q4=Valorous Dreamwalker Raiments", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40472, "", "=q4=Valorous Dreamwalker Handgrips", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40493, "", "=q4=Valorous Dreamwalker Legguards", "=ds="..BabbleBoss["Thaddius"]};
			{ 16, 0, "ability_racial_bearform", "=q6=#t8s1_2#", "=q5="..AL["Tier 8"].." ("..AL["10 Man"]..")"};
			{ 17, 45356, "", "=q4=Valorous Nightsong Headguard", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45359, "", "=q4=Valorous Nightsong Shoulderpads", "=ds="..BabbleBoss.Thorim};
			{ 19, 45358, "", "=q4=Valorous Nightsong Raiments", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 45355, "", "=q4=Valorous Nightsong Handgrips", "=ds="..BabbleBoss.Freya};
			{ 21, 45357, "", "=q4=Valorous Nightsong Legguards", "=ds="..BabbleBoss.Hodir};
			{ 23, 0, "ability_racial_bearform", "=q6=#t8s1_2#", "=q5="..AL["Tier 8"].." ("..AL["25 Man"]..")"};
			{ 24, 46161, "", "=q4=Conqueror's Nightsong Headguard", "=ds="..BabbleBoss.Thorim};
			{ 25, 46157, "", "=q4=Conqueror's Nightsong Shoulderpads", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46159, "", "=q4=Conqueror's Nightsong Raiments", "=ds="..BabbleBoss.Hodir};
			{ 27, 46158, "", "=q4=Conqueror's Nightsong Handgrips", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46160, "", "=q4=Conqueror's Nightsong Legguards", "=ds="..BabbleBoss.Freya};
		};
		{
			{ 1, 0, "spell_nature_healingtouch", "=q6=#t7s1_3#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
			{ 2, 39531, "", "=q4=Heroes' Dreamwalker Headpiece", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39542, "", "=q4=Heroes' Dreamwalker Spaulders", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39538, "", "=q4=Heroes' Dreamwalker Robe", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39543, "", "=q4=Heroes' Dreamwalker Handguards", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39539, "", "=q4=Heroes' Dreamwalker Leggings", "=ds="..BabbleBoss["Thaddius"]};
			{ 8, 0, "spell_nature_healingtouch", "=q6=#t7s1_3#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
			{ 9, 40461, "", "=q4=Valorous Dreamwalker Headpiece", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40465, "", "=q4=Valorous Dreamwalker Spaulders", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40463, "", "=q4=Valorous Dreamwalker Robe", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40460, "", "=q4=Valorous Dreamwalker Handguards", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40462, "", "=q4=Valorous Dreamwalker Leggings", "=ds="..BabbleBoss["Thaddius"]};
			{ 16, 0, "spell_nature_healingtouch", "=q6=#t8s1_3#", "=q5="..AL["Tier 8"].." ("..AL["10 Man"]..")"};
			{ 17, 45346, "", "=q4=Valorous Nightsong Headpiece", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45349, "", "=q4=Valorous Nightsong Spaulders", "=ds="..BabbleBoss.Thorim};
			{ 19, 45348, "", "=q4=Valorous Nightsong Robe", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 45345, "", "=q4=Valorous Nightsong Handguards", "=ds="..BabbleBoss.Freya};
			{ 21, 45347, "", "=q4=Valorous Nightsong Leggings", "=ds="..BabbleBoss.Hodir};
			{ 23, 0, "spell_nature_healingtouch", "=q6=#t8s1_3#", "=q5="..AL["Tier 8"].." ("..AL["25 Man"]..")"};
			{ 24, 46184, "", "=q4=Conqueror's Nightsong Headpiece", "=ds="..BabbleBoss.Thorim};
			{ 25, 46187, "", "=q4=Conqueror's Nightsong Spaulders", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46186, "", "=q4=Conqueror's Nightsong Robe", "=ds="..BabbleBoss.Hodir};
			{ 27, 46183, "", "=q4=Conqueror's Nightsong Handguards", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46185, "", "=q4=Conqueror's Nightsong Leggings", "=ds="..BabbleBoss.Freya};
		};
		{
			{ 1, 0, "spell_nature_starfall", "=q6=#t7s1_1#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
			{ 2, 39545, "", "=q4=Heroes' Dreamwalker Cover", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39548, "", "=q4=Heroes' Dreamwalker Mantle", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39547, "", "=q4=Heroes' Dreamwalker Vestments", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39544, "", "=q4=Heroes' Dreamwalker Gloves", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39546, "", "=q4=Heroes' Dreamwalker Trousers", "=ds="..BabbleBoss["Thaddius"]};
			{ 8, 0, "spell_nature_starfall", "=q6=#t7s1_1#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
			{ 9, 40467, "", "=q4=Valorous Dreamwalker Cover", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40470, "", "=q4=Valorous Dreamwalker Mantle", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40469, "", "=q4=Valorous Dreamwalker Vestments", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40466, "", "=q4=Valorous Dreamwalker Gloves", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40468, "", "=q4=Valorous Dreamwalker Trousers", "=ds="..BabbleBoss["Thaddius"]};
			{ 16, 0, "spell_nature_starfall", "=q6=#t8s1_1#", "=q5="..AL["Tier 8"].." ("..AL["10 Man"]..")"};
			{ 17, 46313, "", "=q4=Valorous Nightsong Cover", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45352, "", "=q4=Valorous Nightsong Mantle", "=ds="..BabbleBoss.Thorim};
			{ 19, 45354, "", "=q4=Valorous Nightsong Vestments", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 45351, "", "=q4=Valorous Nightsong Gloves", "=ds="..BabbleBoss.Freya};
			{ 21, 45353, "", "=q4=Valorous Nightsong Trousers", "=ds="..BabbleBoss.Hodir};
			{ 23, 0, "spell_nature_starfall", "=q6=#t8s1_1#", "=q5="..AL["Tier 8"].." ("..AL["25 Man"]..")"};
			{ 24, 46191, "", "=q4=Conqueror's Nightsong Cover", "=ds="..BabbleBoss.Thorim};
			{ 25, 46196, "", "=q4=Conqueror's Nightsong Mantle", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46194, "", "=q4=Conqueror's Nightsong Vestments", "=ds="..BabbleBoss.Hodir};
			{ 27, 46189, "", "=q4=Conqueror's Nightsong Gloves", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46192, "", "=q4=Conqueror's Nightsong Trousers", "=ds="..BabbleBoss.Freya};
		};
		{
			{ 1, 0, "spell_nature_healingtouch", "=q6=#t9s1_1a#", "=q5="..AL["Tier 9"]};
			{ 2, 48102, "", "=q4=Malfurion's Headpiece of Conquest", "=ds=#s1#, #a2#", "#TRIUMPH:50#"};
			{ 3, 48131, "", "=q4=Malfurion's Spaulders of Conquest", "=ds=#s3#, #a2#", "#TRIUMPH:30#"};
			{ 4, 48129, "", "=q4=Malfurion's Robe of Conquest", "=ds=#s5#, #a2#", "#TRIUMPH:50#"};
			{ 5, 48132, "", "=q4=Malfurion's Handguards of Conquest", "=ds=#s9#, #a2#", "#TRIUMPH:30#"};
			{ 6, 48130, "", "=q4=Malfurion's Leggings of Conquest", "=ds=#s11#, #a2#", "#TRIUMPH:50#"};
			{ 8, 0, "spell_nature_healingtouch", "=q6=#t9s1_1a#", "=q5="..AL["Tier 9"]};
			{ 9, 48134, "", "=q4=Malfurion's Headpiece of Triumph", "=ds=#s1#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48137, "", "=q4=Malfurion's Spaulders of Triumph", "=ds=#s3#, #a2#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48136, "", "=q4=Malfurion's Robe of Triumph", "=ds=#s5#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48133, "", "=q4=Malfurion's Handguards of Triumph", "=ds=#s9#, #a2#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48135, "", "=q4=Malfurion's Leggings of Triumph", "=ds=#s11#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "spell_nature_healingtouch", "=q6=#t9s1_1a#", "=q5="..AL["Tier 9"]};
			{ 17, 48141, "", "=q4=Malfurion's Headpiece of Triumph", "=ds=#s1#, #a2#"};
			{ 18, 48138, "", "=q4=Malfurion's Spaulders of Triumph", "=ds=#s3#, #a2#"};
			{ 19, 48139, "", "=q4=Malfurion's Robe of Triumph", "=ds=#s5#, #a2#"};
			{ 20, 48142, "", "=q4=Malfurion's Handguards of Triumph", "=ds=#s9#, #a2#"};
			{ 21, 48140, "", "=q4=Malfurion's Leggings of Triumph", "=ds=#s11#, #a2#"};
		};
		{
			{ 1, 0, "spell_nature_healingtouch", "=q6=#t9s1_1h#", "=q5="..AL["Tier 9"]};
			{ 2, 48154, "", "=q4=Runetotem's Headpiece of Conquest", "=ds=#s1#, #a2#", "#TRIUMPH:50#"};
			{ 3, 48157, "", "=q4=Runetotem's Spaulders of Conquest", "=ds=#s3#, #a2#", "#TRIUMPH:30#"};
			{ 4, 48156, "", "=q4=Runetotem's Robe of Conquest", "=ds=#s5#, #a2#", "#TRIUMPH:50#"};
			{ 5, 48153, "", "=q4=Runetotem's Handguards of Conquest", "=ds=#s9#, #a2#", "#TRIUMPH:30#"};
			{ 6, 48155, "", "=q4=Runetotem's Leggings of Conquest", "=ds=#s11#, #a2#", "#TRIUMPH:50#"};
			{ 8, 0, "spell_nature_healingtouch", "=q6=#t9s1_1h#", "=q5="..AL["Tier 9"]};
			{ 9, 48151, "", "=q4=Runetotem's Headpiece of Triumph", "=ds=#s1#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48148, "", "=q4=Runetotem's Spaulders of Triumph", "=ds=#s3#, #a2#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48149, "", "=q4=Runetotem's Robe of Triumph", "=ds=#s5#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48152, "", "=q4=Runetotem's Handguards of Triumph", "=ds=#s9#, #a2#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48150, "", "=q4=Runetotem's Leggings of Triumph", "=ds=#s11#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "spell_nature_healingtouch", "=q6=#t9s1_1h#", "=q5="..AL["Tier 9"]};
			{ 17, 48144, "", "=q4=Runetotem's Headpiece of Triumph", "=ds=#s1#, #a2#" };
			{ 18, 48147, "", "=q4=Runetotem's Spaulders of Triumph", "=ds=#s3#, #a2#"};
			{ 19, 48146, "", "=q4=Runetotem's Robe of Triumph", "=ds=#s5#, #a2#"};
			{ 20, 48143, "", "=q4=Runetotem's Handguards of Triumph", "=ds=#s9#, #a2#"};
			{ 21, 48145, "", "=q4=Runetotem's Leggings of Triumph", "=ds=#s11#, #a2#"};
		};
		{
			{ 1, 0, "ability_racial_bearform", "=q6=#t9s1_2a#", "=q5="..AL["Tier 9"]};
			{ 2, 48214, "", "=q4=Malfurion's Headguard of Conquest", "=ds=#s1#, #a2#", "#TRIUMPH:50#"};
			{ 3, 48217, "", "=q4=Malfurion's Shoulderpads of Conquest", "=ds=#s3#, #a2#", "#TRIUMPH:30#"};
			{ 4, 48216, "", "=q4=Malfurion's Raiments of Conquest", "=ds=#s5#, #a2#", "#TRIUMPH:50#"};
			{ 5, 48213, "", "=q4=Malfurion's Handgrips of Conquest", "=ds=#s9#, #a2#", "#TRIUMPH:30#"};
			{ 6, 48215, "", "=q4=Malfurion's Legguards of Conquest", "=ds=#s11#, #a2#", "#TRIUMPH:50#"};
			{ 8, 0, "ability_racial_bearform", "=q6=#t9s1_2a#", "=q5="..AL["Tier 9"]};
			{ 9, 48211, "", "=q4=Malfurion's Headguard of Triumph", "=ds=#s1#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48208, "", "=q4=Malfurion's Shoulderpads of Triumph", "=ds=#s3#, #a2#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48209, "", "=q4=Malfurion's Raiments of Triumph", "=ds=#s5#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48212, "", "=q4=Malfurion's Handgrips of Triumph", "=ds=#s9#, #a2#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48210, "", "=q4=Malfurion's Legguards of Triumph", "=ds=#s11#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "ability_racial_bearform", "=q6=#t9s1_2a#", "=q5="..AL["Tier 9"]};
			{ 17, 48204, "", "=q4=Malfurion's Headguard of Triumph", "=ds=#s1#, #a2#"};
			{ 18, 48207, "", "=q4=Malfurion's Shoulderpads of Triumph", "=ds=#s3#, #a2#"};
			{ 19, 48206, "", "=q4=Malfurion's Raiments of Triumph", "=ds=#s5#, #a2#"};
			{ 20, 48203, "", "=q4=Malfurion's Handgrips of Triumph", "=ds=#s9#, #a2#"};
			{ 21, 48205, "", "=q4=Malfurion's Legguards of Triumph", "=ds=#s11#, #a2#"};
		};
		{
			{ 1, 0, "ability_racial_bearform", "=q6=#t9s1_2h#", "=q5="..AL["Tier 9"]};
			{ 2, 48188, "", "=q4=Runetotem's Headguard of Conquest", "=ds=#s1#, #a2#", "#TRIUMPH:50#"};
			{ 3, 48191, "", "=q4=Runetotem's Shoulderpads of Conquest", "=ds=#s3#, #a2#", "#TRIUMPH:30#"};
			{ 4, 48189, "", "=q4=Runetotem's Raiments of Conquest", "=ds=#s5#, #a2#", "#TRIUMPH:50#"};
			{ 5, 48192, "", "=q4=Runetotem's Handgrips of Conquest", "=ds=#s9#, #a2#", "#TRIUMPH:30#"};
			{ 6, 48190, "", "=q4=Runetotem's Legguards of Conquest", "=ds=#s11#, #a2#", "#TRIUMPH:50#"};
			{ 8, 0, "ability_racial_bearform", "=q6=#t9s1_2h#", "=q5="..AL["Tier 9"]};
			{ 9, 48194, "", "=q4=Runetotem's Headguard of Triumph", "=ds=#s1#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48197, "", "=q4=Runetotem's Shoulderpads of Triumph", "=ds=#s3#, #a2#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48196, "", "=q4=Runetotem's Raiments of Triumph", "=ds=#s5#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48193, "", "=q4=Runetotem's Handgrips of Triumph", "=ds=#s9#, #a2#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48195, "", "=q4=Runetotem's Legguards of Triumph", "=ds=#s11#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "ability_racial_bearform", "=q6=#t9s1_2h#", "=q5="..AL["Tier 9"]};
			{ 17, 48201, "", "=q4=Runetotem's Headguard of Triumph", "=ds=#s1#, #a2#"};
			{ 18, 48198, "", "=q4=Runetotem's Shoulderpads of Triumph", "=ds=#s3#, #a2#"};
			{ 19, 48199, "", "=q4=Runetotem's Raiments of Triumph", "=ds=#s5#, #a2#"};
			{ 20, 48202, "", "=q4=Runetotem's Handgrips of Triumph", "=ds=#s9#, #a2#"};
			{ 21, 48200, "", "=q4=Runetotem's Legguards of Triumph", "=ds=#s11#, #a2#"};
		};
		{
			{ 1, 0, "spell_nature_starfall", "=q6=#t9s1_3a#", "=q5="..AL["Tier 9"]};
			{ 2, 48158, "", "=q4=Malfurion's Cover of Conquest", "=ds=#s1#, #a2#", "#TRIUMPH:50#"};
			{ 3, 48161, "", "=q4=Malfurion's Mantle of Conquest", "=ds=#s3#, #a2#", "#TRIUMPH:30#"};
			{ 4, 48159, "", "=q4=Malfurion's Vestments of Conquest", "=ds=#s5#, #a2#", "#TRIUMPH:50#"};
			{ 5, 48162, "", "=q4=Malfurion's Gloves of Conquest", "=ds=#s9#, #a2#", "#TRIUMPH:30#"};
			{ 6, 48160, "", "=q4=Malfurion's Trousers of Conquest", "=ds=#s11#, #a2#", "#TRIUMPH:50#"};
			{ 8, 0, "spell_nature_starfall", "=q6=#t9s1_3a#", "=q5="..AL["Tier 9"]};
			{ 9, 48164, "", "=q4=Malfurion's Cover of Triumph", "=ds=#s1#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48167, "", "=q4=Malfurion's Mantle of Triumph", "=ds=#s3#, #a2#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48166, "", "=q4=Malfurion's Vestments of Triumph", "=ds=#s5#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48163, "", "=q4=Malfurion's Gloves of Triumph", "=ds=#s9#, #a2#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48165, "", "=q4=Malfurion's Trousers of Triumph", "=ds=#s11#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "spell_nature_starfall", "=q6=#t9s1_3a#", "=q5="..AL["Tier 9"]};
			{ 17, 48171, "", "=q4=Malfurion's Cover of Triumph", "=ds=#s1#, #a2#"};
			{ 18, 48168, "", "=q4=Malfurion's Mantle of Triumph", "=ds=#s3#, #a2#"};
			{ 19, 48169, "", "=q4=Malfurion's Vestments of Triumph", "=ds=#s5#, #a2#"};
			{ 20, 48172, "", "=q4=Malfurion's Gloves of Triumph", "=ds=#s9#, #a2#"};
			{ 21, 48170, "", "=q4=Malfurion's Trousers of Triumph", "=ds=#s11#, #a2#"};
		};
		{
			{ 1, 0, "spell_nature_starfall", "=q6=#t9s1_3h#", "=q5="..AL["Tier 9"]};
			{ 2, 48184, "", "=q4=Runetotem's Cover of Conquest", "=ds=#s1#, #a2#", "#TRIUMPH:50#"};
			{ 3, 48187, "", "=q4=Runetotem's Mantle of Conquest", "=ds=#s3#, #a2#", "#TRIUMPH:30#"};
			{ 4, 48186, "", "=q4=Runetotem's Vestments of Conquest", "=ds=#s5#, #a2#", "#TRIUMPH:50#"};
			{ 5, 48183, "", "=q4=Runetotem's Gloves of Conquest", "=ds=#s9#, #a2#", "#TRIUMPH:30#"};
			{ 6, 48185, "", "=q4=Runetotem's Trousers of Conquest", "=ds=#s11#, #a2#", "#TRIUMPH:50#"};
			{ 8, 0, "spell_nature_starfall", "=q6=#t9s1_3h#", "=q5="..AL["Tier 9"]};
			{ 9, 48181, "", "=q4=Runetotem's Cover of Triumph", "=ds=#s1#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48178, "", "=q4=Runetotem's Mantle of Triumph", "=ds=#s3#, #a2#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48179, "", "=q4=Runetotem's Vestments of Triumph", "=ds=#s5#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48182, "", "=q4=Runetotem's Gloves of Triumph", "=ds=#s9#, #a2#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48180, "", "=q4=Runetotem's Trousers of Triumph", "=ds=#s11#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "spell_nature_starfall", "=q6=#t9s1_3h#", "=q5="..AL["Tier 9"]};
			{ 17, 48174, "", "=q4=Runetotem's Cover of Triumph", "=ds=#s1#, #a2#"};
			{ 18, 48177, "", "=q4=Runetotem's Mantle of Triumph", "=ds=#s3#, #a2#"};
			{ 19, 48176, "", "=q4=Runetotem's Vestments of Triumph", "=ds=#s5#, #a2#"};
			{ 20, 48173, "", "=q4=Runetotem's Gloves of Triumph", "=ds=#s9#, #a2#"};
			{ 21, 48175, "", "=q4=Runetotem's Trousers of Triumph", "=ds=#s11#, #a2#"};
		};
	};
    info = {
        name = BabbleBoss["Tier: Druid"],
        module = moduleName,
        instance = "dalaran",
    },
}

Synastria_Data["Tier: Hunter"] = {
	["Normal"] = {
		{
			{ 2, 39578, "", "=q4=Heroes' Cryptstalker Headpiece", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39581, "", "=q4=Heroes' Cryptstalker Spaulders", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39579, "", "=q4=Heroes' Cryptstalker Tunic", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39582, "", "=q4=Heroes' Cryptstalker Handguards", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39580, "", "=q4=Heroes' Cryptstalker Legguards", "=ds="..BabbleBoss["Thaddius"]};
			{ 9, 40505, "", "=q4=Valorous Cryptstalker Headpiece", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40507, "", "=q4=Valorous Cryptstalker Spaulders", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40503, "", "=q4=Valorous Cryptstalker Tunic", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40504, "", "=q4=Valorous Cryptstalker Handguards", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40506, "", "=q4=Valorous Cryptstalker Legguards", "=ds="..BabbleBoss["Thaddius"]};
			{ 17, 45361, "", "=q4=Valorous Scourgestalker Headpiece", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45363, "", "=q4=Valorous Scourgestalker Spaulders", "=ds="..BabbleBoss.Thorim};
			{ 19, 45364, "", "=q4=Valorous Scourgestalker Tunic", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 45360, "", "=q4=Valorous Scourgestalker Handguards", "=ds="..BabbleBoss.Freya};
			{ 21, 45362, "", "=q4=Valorous Scourgestalker Legguards", "=ds="..BabbleBoss.Hodir};
			{ 24, 46143, "", "=q4=Conqueror's Scourgestalker Headpiece", "=ds="..BabbleBoss.Thorim};
			{ 25, 46145, "", "=q4=Conqueror's Scourgestalker Spaulders", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46141, "", "=q4=Conqueror's Scourgestalker Tunic", "=ds="..BabbleBoss.Hodir};
			{ 27, 46142, "", "=q4=Conqueror's Scourgestalker Handguards", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46144, "", "=q4=Conqueror's Scourgestalker Legguards", "=ds="..BabbleBoss.Freya};
		};
		{
			{ 1, 0, "inv_weapon_bow_07", "=q6=#t9s2_a#", "=q5="..AL["Tier 9"]};
			{ 2, 48250, "", "=q4=Windrunner's Headpiece of Conquest", "=ds=#s1#, #a3#", "#TRIUMPH:50#"};
			{ 3, 48253, "", "=q4=Windrunner's Spaulders of Conquest", "=ds=#s3#, #a3#", "#TRIUMPH:30#"};
			{ 4, 48251, "", "=q4=Windrunner's Tunic of Conquest", "=ds=#s5#, #a3#", "#TRIUMPH:50#"};
			{ 5, 48254, "", "=q4=Windrunner's Handguards of Conquest", "=ds=#s9#, #a3#", "#TRIUMPH:30#"};
			{ 6, 48252, "", "=q4=Windrunner's Legguards of Conquest", "=ds=#s11#, #a3#", "#TRIUMPH:50#"};
			{ 8, 0, "inv_weapon_bow_07", "=q6=#t9s2_a#", "=q5="..AL["Tier 9"]};
			{ 9, 48257, "", "=q4=Windrunner's Headpiece of Triumph", "=ds=#s1#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48259, "", "=q4=Windrunner's Spaulders of Triumph", "=ds=#s3#, #a3#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48255, "", "=q4=Windrunner's Tunic of Triumph", "=ds=#s5#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48256, "", "=q4=Windrunner's Handguards of Triumph", "=ds=#s9#, #a3#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48258, "", "=q4=Windrunner's Legguards of Triumph", "=ds=#s11#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "inv_weapon_bow_07", "=q6=#t9s2_h#", "=q5="..AL["Tier 9"]};
			{ 17, 48262, "", "=q4=Windrunner's Headpiece of Triumph", "=ds=#s1#, #a3#"};
			{ 18, 48260, "", "=q4=Windrunner's Spaulders of Triumph", "=ds=#s3#, #a3#"};
			{ 19, 48264, "", "=q4=Windrunner's Tunic of Triumph", "=ds=#s5#, #a3#"};
			{ 20, 48263, "", "=q4=Windrunner's Handguards of Triumph", "=ds=#s9#, #a3#"};
			{ 21, 48261, "", "=q4=Windrunner's Legguards of Triumph", "=ds=#s11#, #a3#"};
		};
		{
			{ 1, 0, "inv_weapon_bow_07", "=q6=#t9s2_h#", "=q5="..AL["Tier 9"]};
			{ 2, 48277, "", "=q4=Windrunner's Headpiece of Conquest", "=ds=#s1#, #a3#", "#TRIUMPH:50#"};
			{ 3, 48279, "", "=q4=Windrunner's Spaulders of Conquest", "=ds=#s3#, #a3#", "#TRIUMPH:30#"};
			{ 4, 48275, "", "=q4=Windrunner's Tunic of Conquest", "=ds=#s5#, #a3#", "#TRIUMPH:50#"};
			{ 5, 48276, "", "=q4=Windrunner's Handguards of Conquest", "=ds=#s9#, #a3#", "#TRIUMPH:30#"};
			{ 6, 48278, "", "=q4=Windrunner's Legguards of Conquest", "=ds=#s11#, #a3#", "#TRIUMPH:50#"};
			{ 8, 0, "inv_weapon_bow_07", "=q6=#t9s2_h#", "=q5="..AL["Tier 9"]};
			{ 9, 48272, "", "=q4=Windrunner's Headpiece of Triumph", "=ds=#s1#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48270, "", "=q4=Windrunner's Spaulders of Triumph", "=ds=#s3#, #a3#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48274, "", "=q4=Windrunner's Tunic of Triumph", "=ds=#s5#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48273, "", "=q4=Windrunner's Handguards of Triumph", "=ds=#s9#, #a3#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48271, "", "=q4=Windrunner's Legguards of Triumph", "=ds=#s11#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "inv_weapon_bow_07", "=q6=#t9s2_h#", "=q5="..AL["Tier 9"]};
			{ 17, 48267, "", "=q4=Windrunner's Headpiece of Triumph", "=ds=#s1#, #a3#"};
			{ 18, 48269, "", "=q4=Windrunner's Spaulders of Triumph", "=ds=#s3#, #a3#"};
			{ 19, 48265, "", "=q4=Windrunner's Tunic of Triumph", "=ds=#s5#, #a3#"};
			{ 20, 48266, "", "=q4=Windrunner's Handguards of Triumph", "=ds=#s9#, #a3#"};
			{ 21, 48268, "", "=q4=Windrunner's Legguards of Triumph", "=ds=#s11#, #a3#"};
		};
	};
    info = {
        name = BabbleBoss["Tier: Hunter"],
        module = moduleName,
        instance = "dalaran",
    },
}

Synastria_Data["Tier: Mage"] = {
	["Normal"] = {
		{
			{ 1, 0, "inv_staff_13", "=q6=#t7s3#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
			{ 2, 39491, "", "=q4=Heroes' Frostfire Circlet", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39494, "", "=q4=Heroes' Frostfire Shoulderpads", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39492, "", "=q4=Heroes' Frostfire Robe", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39495, "", "=q4=Heroes' Frostfire Gloves", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39493, "", "=q4=Heroes' Frostfire Leggings", "=ds="..BabbleBoss["Thaddius"]};
			{ 8, 0, "inv_staff_13", "=q6=#t7s3#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
			{ 9, 40416, "", "=q4=Valorous Frostfire Circlet", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40419, "", "=q4=Valorous Frostfire Shoulderpads", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40418, "", "=q4=Valorous Frostfire Robe", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40415, "", "=q4=Valorous Frostfire Gloves", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40417, "", "=q4=Valorous Frostfire Leggings", "=ds="..BabbleBoss["Thaddius"]};
			{ 16, 0, "inv_staff_13", "=q6=#t8s3#", "=q5="..AL["Tier 8"].." ("..AL["10 Man"]..")"};
			{ 17, 45365, "", "=q4=Valorous Kirin Tor Hood", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45369, "", "=q4=Valorous Kirin Tor Shoulderpads", "=ds="..BabbleBoss.Thorim};
			{ 19, 45368, "", "=q4=Valorous Kirin Tor Tunic", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 46131, "", "=q4=Valorous Kirin Tor Gauntlets", "=ds="..BabbleBoss.Freya};
			{ 21, 45367, "", "=q4=Valorous Kirin Tor Leggings", "=ds="..BabbleBoss.Hodir};
			{ 23, 0, "inv_staff_13", "=q6=#t8s3#", "=q5="..AL["Tier 8"].." ("..AL["25 Man"]..")"};
			{ 24, 46129, "", "=q4=Conqueror's Kirin Tor Hood", "=ds="..BabbleBoss.Thorim};
			{ 25, 46134, "", "=q4=Conqueror's Kirin Tor Shoulderpads", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46130, "", "=q4=Conqueror's Kirin Tor Tunic", "=ds="..BabbleBoss.Hodir};
			{ 27, 46132, "", "=q4=Conqueror's Kirin Tor Gauntlets", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46133, "", "=q4=Conqueror's Kirin Tor Leggings", "=ds="..BabbleBoss.Freya};
		};
		{
			{ 1, 0, "inv_staff_13", "=q6=#t9s3_a#", "=q5="..AL["Tier 9"]};
			{ 2, 47748, "", "=q4=Khadgar's Hood of Conquest", "=ds=#s1#, #a1#", "#TRIUMPH:50#"};
			{ 3, 47751, "", "=q4=Khadgar's Shoulderpads of Conquest", "=ds=#s3#, #a1#", "#TRIUMPH:30#"};
			{ 4, 47749, "", "=q4=Khadgar's Robe of Conquest", "=ds=#s5#, #a1#", "#TRIUMPH:50#"};
			{ 5, 47752, "", "=q4=Khadgar's Gauntlets of Conquest", "=ds=#s9#, #a1#", "#TRIUMPH:30#"};
			{ 6, 47750, "", "=q4=Khadgar's Leggings of Conquest", "=ds=#s11#, #a1#", "#TRIUMPH:50#"};
			{ 8, 0, "inv_staff_13", "=q6=#t9s3_a#", "=q5="..AL["Tier 9"]};
			{ 9, 47754, "", "=q4=Khadgar's Hood of Triumph", "=ds=#s1#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 47757, "", "=q4=Khadgar's Shoulderpads of Triumph", "=ds=#s3#, #a1#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 47756, "", "=q4=Khadgar's Robe of Triumph", "=ds=#s5#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 47753, "", "=q4=Khadgar's Gauntlets of Triumph", "=ds=#s9#, #a1#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 47755, "", "=q4=Khadgar's Leggings of Triumph", "=ds=#s11#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "inv_staff_13", "=q6=#t9s3_a#", "=q5="..AL["Tier 9"]};
			{ 17, 47761, "", "=q4=Khadgar's Hood of Triumph", "=ds=#s1#, #a1#"};
			{ 18, 47758, "", "=q4=Khadgar's Shoulderpads of Triumph", "=ds=#s3#, #a1#"};
			{ 19, 47759, "", "=q4=Khadgar's Robe of Triumph", "=ds=#s5#, #a1#"};
			{ 20, 47762, "", "=q4=Khadgar's Gauntlets of Triumph", "=ds=#s9#, #a1#"};
			{ 21, 47760, "", "=q4=Khadgar's Leggings of Triumph", "=ds=#s11#, #a1#"};
		};
		{
			{ 1, 0, "inv_staff_13", "=q6=#t9s3_h#", "=q5="..AL["Tier 9"]};
			{ 2, 47774, "", "=q4=Sunstrider's Hood of Conquest", "=ds=#s1#, #a1#", "#TRIUMPH:50#"};
			{ 3, 47777, "", "=q4=Sunstrider's Shoulderpads of Conquest", "=ds=#s3#, #a1#", "#TRIUMPH:30#"};
			{ 4, 47776, "", "=q4=Sunstrider's Robe of Conquest", "=ds=#s5#, #a1#", "#TRIUMPH:50#"};
			{ 5, 47773, "", "=q4=Sunstrider's Gauntlets of Conquest", "=ds=#s9#, #a1#", "#TRIUMPH:30#"};
			{ 6, 47775, "", "=q4=Sunstrider's Leggings of Conquest", "=ds=#s11#, #a1#", "#TRIUMPH:50#"};
			{ 8, 0, "inv_staff_13", "=q6=#t9s3_h#", "=q5="..AL["Tier 9"]};
			{ 9, 47771, "", "=q4=Sunstrider's Hood of Triumph", "=ds=#s1#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 47768, "", "=q4=Sunstrider's Shoulderpads of Triumph", "=ds=#s3#, #a1#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 47769, "", "=q4=Sunstrider's Robe of Triumph", "=ds=#s5#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 47772, "", "=q4=Sunstrider's Gauntlets of Triumph", "=ds=#s9#, #a1#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 47770, "", "=q4=Sunstrider's Leggings of Triumph", "=ds=#s11#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "inv_staff_13", "=q6=#t9s3_h#", "=q5="..AL["Tier 9"]};
			{ 17, 47764, "", "=q4=Sunstrider's Hood of Triumph", "=ds=#s1#, #a1#"};
			{ 18, 47767, "", "=q4=Sunstrider's Shoulderpads of Triumph", "=ds=#s3#, #a1#"};
			{ 19, 47766, "", "=q4=Sunstrider's Robe of Triumph", "=ds=#s5#, #a1#"};
			{ 20, 47763, "", "=q4=Sunstrider's Gauntlets of Triumph", "=ds=#s9#, #a1#"};
			{ 21, 47765, "", "=q4=Sunstrider's Leggings of Triumph", "=ds=#s11#, #a1#"};
		};
	};
    info = {
        name = BabbleBoss["Tier: Mage"],
        module = moduleName,
        instance = "dalaran",
    },
}

Synastria_Data["Tier: Paladin"] = {
	["Normal"] = {
		{
			{ 2, 39628, "", "=q4=Heroes' Redemption Headpiece", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39631, "", "=q4=Heroes' Redemption Spaulders", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39629, "", "=q4=Heroes' Redemption Tunic", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39632, "", "=q4=Heroes' Redemption Gloves", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39630, "", "=q4=Heroes' Redemption Greaves", "=ds="..BabbleBoss["Thaddius"]};
			{ 8, 0, "Spell_Holy_HolyBolt", "=q6=#t7s4_1#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
			{ 9, 40571, "", "=q4=Valorous Redemption Headpiece", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40573, "", "=q4=Valorous Redemption Spaulders", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40569, "", "=q4=Valorous Redemption Tunic", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40570, "", "=q4=Valorous Redemption Gloves", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40572, "", "=q4=Valorous Redemption Greaves", "=ds="..BabbleBoss["Thaddius"]};
			{ 16, 0, "Spell_Holy_HolyBolt", "=q6=#t8s4_1#", "=q5=("..AL["10 Man"]..")"};
			{ 17, 45372, "", "=q4=Valorous Aegis Headpiece", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45373, "", "=q4=Valorous Aegis Spaulders", "=ds="..BabbleBoss.Thorim};
			{ 19, 45374, "", "=q4=Valorous Aegis Tunic", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 45370, "", "=q4=Valorous Aegis Gloves", "=ds="..BabbleBoss.Freya};
			{ 21, 45371, "", "=q4=Valorous Aegis Greaves", "=ds="..BabbleBoss.Hodir};
			{ 23, 0, "Spell_Holy_HolyBolt", "=q6=#t8s4_1#", "=q5="..AL["Tier 8"].." ("..AL["25 Man"]..")"};
			{ 24, 46180, "", "=q4=Conqueror's Aegis Headpiece", "=ds="..BabbleBoss.Thorim};
			{ 25, 46182, "", "=q4=Conqueror's Aegis Spaulders", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46178, "", "=q4=Conqueror's Aegis Tunic", "=ds="..BabbleBoss.Hodir};
			{ 27, 46179, "", "=q4=Conqueror's Aegis Gloves", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46181, "", "=q4=Conqueror's Aegis Greaves", "=ds="..BabbleBoss.Freya};
		};
		{
			{ 1, 0, "Spell_Holy_AuraOfLight", "=q6=#t7s4_2#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
			{ 2, 39635, "", "=q4=Heroes' Redemption Helm", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39637, "", "=q4=Heroes' Redemption Shoulderplates", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39633, "", "=q4=Heroes' Redemption Chestpiece", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39634, "", "=q4=Heroes' Redemption Gauntlets", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39636, "", "=q4=Heroes' Redemption Legplates", "=ds="..BabbleBoss["Thaddius"]};
			{ 8, 0, "Spell_Holy_AuraOfLight", "=q6=#t7s4_2#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
			{ 9, 40576, "", "=q4=Valorous Redemption Helm", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40578, "", "=q4=Valorous Redemption Shoulderplates", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40574, "", "=q4=Valorous Redemption Chestpiece", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40575, "", "=q4=Valorous Redemption Gauntlets", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40577, "", "=q4=Valorous Redemption Legplates", "=ds="..BabbleBoss["Thaddius"]};
			{ 16, 0, "Spell_Holy_AuraOfLight", "=q6=#t8s4_2#", "=q5=("..AL["10 Man"]..")"};
			{ 17, 45377, "", "=q4=Valorous Aegis Helm", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45380, "", "=q4=Valorous Aegis Shoulderplates", "=ds="..BabbleBoss.Thorim};
			{ 19, 45375, "", "=q4=Valorous Aegis Battleplate", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 45376, "", "=q4=Valorous Aegis Gauntlets", "=ds="..BabbleBoss.Freya};
			{ 21, 45379, "", "=q4=Valorous Aegis Legplates", "=ds="..BabbleBoss.Hodir};
			{ 23, 0, "Spell_Holy_AuraOfLight", "=q6=#t8s4_2#", "=q5="..AL["Tier 8"].." ("..AL["25 Man"]..")"};
			{ 24, 46156, "", "=q4=Conqueror's Aegis Helm", "=ds="..BabbleBoss.Thorim};
			{ 25, 46152, "", "=q4=Conqueror's Aegis Shoulderplates", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46154, "", "=q4=Conqueror's Aegis Battleplate", "=ds="..BabbleBoss.Hodir};
			{ 27, 46155, "", "=q4=Conqueror's Aegis Gauntlets", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46153, "", "=q4=Conqueror's Aegis Legplates", "=ds="..BabbleBoss.Freya};
		};
		{
			{ 1, 0, "spell_holy_devotionaura", "=q6=#t7s4_3#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
			{ 2, 39640, "", "=q4=Heroes' Redemption Faceguard", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39642, "", "=q4=Heroes' Redemption Shouldergards", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39638, "", "=q4=Heroes' Redemption Breastplate", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39639, "", "=q4=Heroes' Redemption Handguards", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39641, "", "=q4=Heroes' Redemption Legguards", "=ds="..BabbleBoss["Thaddius"]};
			{ 8, 0, "spell_holy_devotionaura", "=q6=#t7s4_3#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
			{ 9, 40581, "", "=q4=Valorous Redemption Faceguard", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40584, "", "=q4=Valorous Redemption Shouldergards", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40579, "", "=q4=Valorous Redemption Breastplate", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40580, "", "=q4=Valorous Redemption Handguards", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40583, "", "=q4=Valorous Redemption Legguards", "=ds="..BabbleBoss["Thaddius"]};
			{ 16, 0, "spell_holy_devotionaura", "=q6=#t8s4_3#", "=q5=("..AL["10 Man"]..")"};
			{ 17, 45382, "", "=q4=Valorous Aegis Faceguard", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45385, "", "=q4=Valorous Aegis Shouldergards", "=ds="..BabbleBoss.Thorim};
			{ 19, 45381, "", "=q4=Valorous Aegis Breastplate", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 45383, "", "=q4=Valorous Aegis Handguards", "=ds="..BabbleBoss.Freya};
			{ 21, 45384, "", "=q4=Valorous Aegis Legguards", "=ds="..BabbleBoss.Hodir};
			{ 23, 0, "spell_holy_devotionaura", "=q6=#t8s4_3#", "=q5="..AL["Tier 8"].." ("..AL["25 Man"]..")"};
			{ 24, 46175, "", "=q4=Conqueror's Aegis Faceguard", "=ds="..BabbleBoss.Thorim};
			{ 25, 46177, "", "=q4=Conqueror's Aegis Shouldergards", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46173, "", "=q4=Conqueror's Aegis Breastplate", "=ds="..BabbleBoss.Hodir};
			{ 27, 46174, "", "=q4=Conqueror's Aegis Handguards", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46176, "", "=q4=Conqueror's Aegis Legguards", "=ds="..BabbleBoss.Freya};
		};
		
		{
			{ 1, 0, "Spell_Holy_HolyBolt", "=q6=#t9s4_1a#", "=q5="..AL["Tier 9"]};
			{ 2, 48564, "", "=q4=Turalyon's Headpiece of Conquest", "=ds=#s1#, #a4#", "#TRIUMPH:50#"};
			{ 3, 48572, "", "=q4=Turalyon's Spaulders of Conquest", "=ds=#s3#, #a4#", "#TRIUMPH:30#"};
			{ 4, 48566, "", "=q4=Turalyon's Tunic of Conquest", "=ds=#s5#, #a4#", "#TRIUMPH:50#"};
			{ 5, 48574, "", "=q4=Turalyon's Gloves of Conquest", "=ds=#s9#, #a4#", "#TRIUMPH:30#"};
			{ 6, 48568, "", "=q4=Turalyon's Greaves of Conquest", "=ds=#s11#, #a4#", "#TRIUMPH:50#"};
			{ 8, 0, "Spell_Holy_HolyBolt", "=q6=#t9s4_1a#", "=q5="..AL["Tier 9"]};
			{ 9, 48577, "", "=q4=Turalyon's Headpiece of Triumph", "=ds=#s1#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48579, "", "=q4=Turalyon's Spaulders of Triumph", "=ds=#s3#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48575, "", "=q4=Turalyon's Tunic of Triumph", "=ds=#s5#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48576, "", "=q4=Turalyon's Gloves of Triumph", "=ds=#s9#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48578, "", "=q4=Turalyon's Greaves of Triumph", "=ds=#s11#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "Spell_Holy_HolyBolt", "=q6=#t9s4_1a#", "=q5="..AL["Tier 9"]};
			{ 17, 48582, "", "=q4=Turalyon's Headpiece of Triumph", "=ds=#s1#, #a4#"};
			{ 18, 48580, "", "=q4=Turalyon's Spaulders of Triumph", "=ds=#s3#, #a4#"};
			{ 19, 48584, "", "=q4=Turalyon's Tunic of Triumph", "=ds=#s5#, #a4#"};
			{ 20, 48583, "", "=q4=Turalyon's Gloves of Triumph", "=ds=#s9#, #a4#"};
			{ 21, 48581, "", "=q4=Turalyon's Greaves of Triumph", "=ds=#s11#, #a4#"};
		};
		{
			{ 1, 0, "Spell_Holy_HolyBolt", "=q6=#t9s4_1h#", "=q5="..AL["Tier 9"]};
			{ 2, 48597, "", "=q4=Liadrin's Headpiece of Conquest", "=ds=#s1#, #a4#", "#TRIUMPH:50#"};
			{ 3, 48595, "", "=q4=Liadrin's Spaulders of Conquest", "=ds=#s3#, #a4#", "#TRIUMPH:30#"};
			{ 4, 48599, "", "=q4=Liadrin's Tunic of Conquest", "=ds=#s5#, #a4#", "#TRIUMPH:50#"};
			{ 5, 48598, "", "=q4=Liadrin's Gloves of Conquest", "=ds=#s9#, #a4#", "#TRIUMPH:30#"};
			{ 6, 48596, "", "=q4=Liadrin's Greaves of Conquest", "=ds=#s11#, #a4#", "#TRIUMPH:50#"};
			{ 8, 0, "Spell_Holy_HolyBolt", "=q6=#t9s4_1h#", "=q5="..AL["Tier 9"]};
			{ 9, 48592, "", "=q4=Liadrin's Headpiece of Triumph", "=ds=#s1#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48590, "", "=q4=Liadrin's Spaulders of Triumph", "=ds=#s3#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48594, "", "=q4=Liadrin's Tunic of Triumph", "=ds=#s5#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48593, "", "=q4=Liadrin's Gloves of Triumph", "=ds=#s9#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48591, "", "=q4=Liadrin's Greaves of Triumph", "=ds=#s11#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "Spell_Holy_HolyBolt", "=q6=#t9s4_1h#", "=q5="..AL["Tier 9"]};
			{ 17, 48587, "", "=q4=Liadrin's Headpiece of Triumph", "=ds=#s1#, #a4#"};
			{ 18, 48585, "", "=q4=Liadrin's Spaulders of Triumph", "=ds=#s3#, #a4#"};
			{ 19, 48589, "", "=q4=Liadrin's Tunic of Triumph", "=ds=#s5#, #a4#"};
			{ 20, 48588, "", "=q4=Liadrin's Gloves of Triumph", "=ds=#s9#, #a4#"};
			{ 21, 48586, "", "=q4=Liadrin's Greaves of Triumph", "=ds=#s11#, #a4#"};
		};
		{
			{ 1, 0, "Spell_Holy_AuraOfLight", "=q6=#t9s4_2a#", "=q5="..AL["Tier 9"]};
			{ 2, 48604, "", "=q4=Turalyon's Helm of Conquest", "=ds=#s1#, #a4#", "#TRIUMPH:50#"};
			{ 3, 48606, "", "=q4=Turalyon's Shoulderplates of Conquest", "=ds=#s3#, #a4#", "#TRIUMPH:30#"};
			{ 4, 48602, "", "=q4=Turalyon's Battleplate of Conquest", "=ds=#s5#, #a4#", "#TRIUMPH:50#"};
			{ 5, 48603, "", "=q4=Turalyon's Gauntlets of Conquest", "=ds=#s9#, #a4#", "#TRIUMPH:30#"};
			{ 6, 48605, "", "=q4=Turalyon's Legplates of Conquest", "=ds=#s11#, #a4#", "#TRIUMPH:50#"};
			{ 8, 0, "Spell_Holy_AuraOfLight", "=q6=#t9s4_2a#", "=q5="..AL["Tier 9"]};
			{ 9, 48609, "", "=q4=Turalyon's Helm of Triumph", "=ds=#s1#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48611, "", "=q4=Turalyon's Shoulderplates of Triumph", "=ds=#s3#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48607, "", "=q4=Turalyon's Battleplate of Triumph", "=ds=#s5#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48608, "", "=q4=Turalyon's Gauntlets of Triumph", "=ds=#s9#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48610, "", "=q4=Turalyon's Legplates of Triumph", "=ds=#s11#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "Spell_Holy_AuraOfLight", "=q6=#t9s4_2a#", "=q5="..AL["Tier 9"]};
			{ 17, 48614, "", "=q4=Turalyon's Helm of Triumph", "=ds=#s1#, #a4#"};
			{ 18, 48612, "", "=q4=Turalyon's Shoulderplates of Triumph", "=ds=#s3#, #a4#"};
			{ 19, 48616, "", "=q4=Turalyon's Battleplate of Triumph", "=ds=#s5#, #a4#"};
			{ 20, 48615, "", "=q4=Turalyon's Gauntlets of Triumph", "=ds=#s9#, #a4#"};
			{ 21, 48613, "", "=q4=Turalyon's Legplates of Triumph", "=ds=#s11#, #a4#"};
		};
		{
			{ 1, 0, "Spell_Holy_AuraOfLight", "=q6=#t9s4_2h#", "=q5="..AL["Tier 9"]};
			{ 2, 48629, "", "=q4=Liadrin's Helm of Conquest", "=ds=#s1#, #a4#", "#TRIUMPH:50#"};
			{ 3, 48627, "", "=q4=Liadrin's Shoulderplates of Conquest", "=ds=#s3#, #a4#", "#TRIUMPH:30#"};
			{ 4, 48631, "", "=q4=Liadrin's Battleplate of Conquest", "=ds=#s5#, #a4#", "#TRIUMPH:50#"};
			{ 5, 48630, "", "=q4=Liadrin's Gauntlets of Conquest", "=ds=#s9#, #a4#", "#TRIUMPH:30#"};
			{ 6, 48628, "", "=q4=Liadrin's Legplates of Conquest", "=ds=#s11#, #a4#", "#TRIUMPH:50#"};
			{ 8, 0, "Spell_Holy_AuraOfLight", "=q6=#t9s4_2h#", "=q5="..AL["Tier 9"]};
			{ 9, 48624, "", "=q4=Liadrin's Helm of Triumph", "=ds=#s1#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48622, "", "=q4=Liadrin's Shoulderplates of Triumph", "=ds=#s3#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48626, "", "=q4=Liadrin's Battleplate of Triumph", "=ds=#s5#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48625, "", "=q4=Liadrin's Gauntlets of Triumph", "=ds=#s9#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48623, "", "=q4=Liadrin's Legplates of Triumph", "=ds=#s11#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "Spell_Holy_AuraOfLight", "=q6=#t9s4_2h#", "=q5="..AL["Tier 9"]};
			{ 17, 48619, "", "=q4=Liadrin's Helm of Triumph", "=ds=#s1#, #a4#"};
			{ 18, 48621, "", "=q4=Liadrin's Shoulderplates of Triumph", "=ds=#s3#, #a4#"};
			{ 19, 48617, "", "=q4=Liadrin's Battleplate of Triumph", "=ds=#s5#, #a4#"};
			{ 20, 48618, "", "=q4=Liadrin's Gauntlets of Triumph", "=ds=#s9#, #a4#"};
			{ 21, 48620, "", "=q4=Liadrin's Legplates of Triumph", "=ds=#s11#, #a4#"};
		};
		{
			{ 1, 0, "spell_holy_devotionaura", "=q6=#t9s4_3a#", "=q5="..AL["Tier 9"]};
			{ 2, 48634, "", "=q4=Turalyon's Faceguard of Conquest", "=ds=#s1#, #a4#", "#TRIUMPH:50#"};
			{ 3, 48636, "", "=q4=Turalyon's Shoulderguards of Conquest", "=ds=#s3#, #a4#", "#TRIUMPH:30#"};
			{ 4, 48632, "", "=q4=Turalyon's Breastplate of Conquest", "=ds=#s5#, #a4#", "#TRIUMPH:50#"};
			{ 5, 48633, "", "=q4=Turalyon's Handguards of Conquest", "=ds=#s9#, #a4#", "#TRIUMPH:30#"};
			{ 6, 48635, "", "=q4=Turalyon's Legguards of Conquest", "=ds=#s11#, #a4#", "#TRIUMPH:50#"};
			{ 8, 0, "spell_holy_devotionaura", "=q6=#t9s4_3a#", "=q5="..AL["Tier 9"]};
			{ 9, 48639, "", "=q4=Turalyon's Faceguard of Triumph", "=ds=#s1#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48637, "", "=q4=Turalyon's Shoulderguards of Triumph", "=ds=#s3#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48641, "", "=q4=Turalyon's Breastplate of Triumph", "=ds=#s5#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48640, "", "=q4=Turalyon's Handguards of Triumph", "=ds=#s9#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48638, "", "=q4=Turalyon's Legguards of Triumph", "=ds=#s11#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "spell_holy_devotionaura", "=q6=#t9s4_3a#", "=q5="..AL["Tier 9"]};
			{ 17, 48644, "", "=q4=Turalyon's Faceguard of Triumph", "=ds=#s1#, #a4#"};
			{ 18, 48646, "", "=q4=Turalyon's Shoulderguards of Triumph", "=ds=#s3#, #a4#"};
			{ 19, 48642, "", "=q4=Turalyon's Breastplate of Triumph", "=ds=#s5#, #a4#"};
			{ 20, 48643, "", "=q4=Turalyon's Handguards of Triumph", "=ds=#s9#, #a4#"};
			{ 21, 48645, "", "=q4=Turalyon's Legguards of Triumph", "=ds=#s11#, #a4#"};
		};
		{
			{ 1, 0, "spell_holy_devotionaura", "=q6=#t9s4_3h#", "=q5="..AL["Tier 9"]};
			{ 2, 48654, "", "=q4=Liadrin's Faceguard of Conquest", "=ds=#s1#, #a4#", "#TRIUMPH:50#"};
			{ 3, 48656, "", "=q4=Liadrin's Shoulderguards of Conquest", "=ds=#s3#, #a4#", "#TRIUMPH:30#"};
			{ 4, 48652, "", "=q4=Liadrin's Breastplate of Conquest", "=ds=#s5#, #a4#", "#TRIUMPH:50#"};
			{ 5, 48653, "", "=q4=Liadrin's Handguards of Conquest", "=ds=#s9#, #a4#", "#TRIUMPH:30#"};
			{ 6, 48655, "", "=q4=Liadrin's Legguards of Conquest", "=ds=#s11#, #a4#", "#TRIUMPH:50#"};
			{ 8, 0, "spell_holy_devotionaura", "=q6=#t9s4_3h#", "=q5="..AL["Tier 9"]};
			{ 9, 48659, "", "=q4=Liadrin's Faceguard of Triumph", "=ds=#s1#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48661, "", "=q4=Liadrin's Shoulderguards of Triumph", "=ds=#s3#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48657, "", "=q4=Liadrin's Breastplate of Triumph", "=ds=#s5#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48658, "", "=q4=Liadrin's Handguards of Triumph", "=ds=#s9#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48660, "", "=q4=Liadrin's Legguards of Triumph", "=ds=#s11#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "spell_holy_devotionaura", "=q6=#t9s4_3h#", "=q5="..AL["Tier 9"]};
			{ 17, 48649, "", "=q4=Liadrin's Faceguard of Triumph", "=ds=#s1#, #a4#"};
			{ 18, 48647, "", "=q4=Liadrin's Shoulderguards of Triumph", "=ds=#s3#, #a4#"};
			{ 19, 48651, "", "=q4=Liadrin's Breastplate of Triumph", "=ds=#s5#, #a4#"};
			{ 20, 48650, "", "=q4=Liadrin's Handguards of Triumph", "=ds=#s9#, #a4#"};
			{ 21, 48648, "", "=q4=Liadrin's Legguards of Triumph", "=ds=#s11#, #a4#"};
		};
	};
    info = {
        name = BabbleBoss["Tier: Paladin"],
        module = moduleName,
        instance = "dalaran",
    },
}

Synastria_Data["Tier: Priest"] = {
	["Normal"] = {
		{
			{ 1, 0, "spell_shadow_shadowwordpain", "=q6=#t7s5_2#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
			{ 2, 39521, "", "=q4=Heroes' Circlet of Faith", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39529, "", "=q4=Heroes' Mantle of Faith", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39523, "", "=q4=Heroes' Raiments of Faith", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39530, "", "=q4=Heroes' Handwraps of Faith", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39528, "", "=q4=Heroes' Pants of Faith", "=ds="..BabbleBoss["Thaddius"]};
			{ 8, 0, "spell_shadow_shadowwordpain", "=q6=#t7s5_2#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
			{ 9, 40456, "", "=q4=Valorous Circlet of Faith", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40459, "", "=q4=Valorous Mantle of Faith", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40458, "", "=q4=Valorous Raiments of Faith", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40454, "", "=q4=Valorous Handwraps of Faith", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40457, "", "=q4=Valorous Pants of Faith", "=ds="..BabbleBoss["Thaddius"]};
			{ 16, 0, "spell_shadow_shadowwordpain", "=q6=#t8s5_2#", "=q5="..AL["Tier 8"].." ("..AL["10 Man"]..")"};
			{ 17, 45391, "", "=q4=Valorous Circlet of Sanctification", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45393, "", "=q4=Valorous Mantle of Sanctification", "=ds="..BabbleBoss.Thorim};
			{ 19, 45395, "", "=q4=Valorous Raiments of Sanctification", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 45392, "", "=q4=Valorous Handwraps of Sanctification", "=ds="..BabbleBoss.Freya};
			{ 21, 45394, "", "=q4=Valorous Pants of Sanctification", "=ds="..BabbleBoss.Hodir};
			{ 23, 0, "spell_shadow_shadowwordpain", "=q6=#t8s5_2#", "=q5="..AL["Tier 8"].." ("..AL["25 Man"]..")"};
			{ 24, 46172, "", "=q4=Conqueror's Circlet of Sanctification", "=ds="..BabbleBoss.Thorim};
			{ 25, 46165, "", "=q4=Conqueror's Mantle of Sanctification", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46168, "", "=q4=Conqueror's Raiments of Sanctification", "=ds="..BabbleBoss.Hodir};
			{ 27, 46163, "", "=q4=Conqueror's Handwraps of Sanctification", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46170, "", "=q4=Conqueror's Pants of Sanctification", "=ds="..BabbleBoss.Freya};
		};
		{
			{ 1, 0, "spell_holy_guardianspirit", "=q6=#t7s5_1#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
			{ 2, 39514, "", "=q4=Heroes' Crown of Faith", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39518, "", "=q4=Heroes' Shoulderpads of Faith", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39515, "", "=q4=Heroes' Robe of Faith", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39519, "", "=q4=Heroes' Gloves of Faith", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39517, "", "=q4=Heroes' Leggings of Faith", "=ds="..BabbleBoss["Thaddius"]};
			{ 8, 0, "spell_holy_guardianspirit", "=q6=#t7s5_1#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
			{ 9, 40447, "", "=q4=Valorous Crown of Faith", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40450, "", "=q4=Valorous Shoulderpads of Faith", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40449, "", "=q4=Valorous Robe of Faith", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40445, "", "=q4=Valorous Gloves of Faith", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40448, "", "=q4=Valorous Leggings of Faith", "=ds="..BabbleBoss["Thaddius"]};
			{ 16, 0, "spell_holy_guardianspirit", "=q6=#t8s5_1#", "=q5="..AL["Tier 8"].." ("..AL["10 Man"]..")"};
			{ 17, 45386, "", "=q4=Valorous Cowl of Sanctification", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45390, "", "=q4=Valorous Shoulderpads of Sanctification", "=ds="..BabbleBoss.Thorim};
			{ 19, 45389, "", "=q4=Valorous Robe of Sanctification", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 45387, "", "=q4=Valorous Gloves of Sanctification", "=ds="..BabbleBoss.Freya};
			{ 21, 45388, "", "=q4=Valorous Leggings of Sanctification", "=ds="..BabbleBoss.Hodir};
			{ 23, 0, "spell_holy_guardianspirit", "=q6=#t8s5_1#", "=q5="..AL["Tier 8"].." ("..AL["25 Man"]..")"};
			{ 24, 46197, "", "=q4=Conqueror's Cowl of Sanctification", "=ds="..BabbleBoss.Thorim};
			{ 25, 46190, "", "=q4=Conqueror's Shoulderpads of Sanctification", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46193, "", "=q4=Conqueror's Robe of Sanctification", "=ds="..BabbleBoss.Hodir};
			{ 27, 46188, "", "=q4=Conqueror's Gloves of Sanctification", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46195, "", "=q4=Conqueror's Leggings of Sanctification", "=ds="..BabbleBoss.Freya};
		};
		{
			{ 1, 0, "spell_shadow_shadowwordpain", "=q6=#t9s5_1a#", "=q5="..AL["Tier 9"]};
			{ 2, 48073, "", "=q4=Velen's Circlet of Conquest", "=ds=#s1#, #a1#", "#TRIUMPH:50#"};
			{ 3, 48076, "", "=q4=Velen's Mantle of Conquest", "=ds=#s3#, #a1#", "#TRIUMPH:30#"};
			{ 4, 48075, "", "=q4=Velen's Raiments of Conquest", "=ds=#s5#, #a1#", "#TRIUMPH:50#"};
			{ 5, 48072, "", "=q4=Velen's Handwraps of Conquest", "=ds=#s9#, #a1#", "#TRIUMPH:30#"};
			{ 6, 48074, "", "=q4=Velen's Pants of Conquest", "=ds=#s11#, #a1#", "#TRIUMPH:50#"};
			{ 8, 0, "spell_shadow_shadowwordpain", "=q6=#t9s5_1a#", "=q5="..AL["Tier 9"]};
			{ 9, 48078, "", "=q4=Velen's Circlet of Triumph", "=ds=#s1#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48081, "", "=q4=Velen's Mantle of Triumph", "=ds=#s3#, #a1#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48080, "", "=q4=Velen's Raiments of Triumph", "=ds=#s5#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48077, "", "=q4=Velen's Handwraps of Triumph", "=ds=#s9#, #a1#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48079, "", "=q4=Velen's Pants of Triumph", "=ds=#s11#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "spell_shadow_shadowwordpain", "=q6=#t9s5_1a#", "=q5="..AL["Tier 9"]};
			{ 17, 48085, "", "=q4=Velen's Circlet of Triumph", "=ds=#s1#, #a1#"};
			{ 18, 48082, "", "=q4=Velen's Mantle of Triumph", "=ds=#s3#, #a1#"};
			{ 19, 48083, "", "=q4=Velen's Raiments of Triumph", "=ds=#s5#, #a1#"};
			{ 20, 48086, "", "=q4=Velen's Handwraps of Triumph", "=ds=#s9#, #a1#"};
			{ 21, 48084, "", "=q4=Velen's Pants of Triumph", "=ds=#s11#, #a1#"};
		};
		{
			{ 1, 0, "spell_shadow_shadowwordpain", "=q6=#t9s5_1h#", "=q5="..AL["Tier 9"]};
			{ 2, 48098, "", "=q4=Zabra's Circlet of Conquest", "=ds=#s1#, #a1#", "#TRIUMPH:50#"};
			{ 3, 48101, "", "=q4=Zabra's Mantle of Conquest", "=ds=#s3#, #a1#", "#TRIUMPH:30#"};
			{ 4, 48100, "", "=q4=Zabra's Raiments of Conquest", "=ds=#s5#, #a1#", "#TRIUMPH:50#"};
			{ 5, 48097, "", "=q4=Zabra's Handwraps of Conquest", "=ds=#s9#, #a1#", "#TRIUMPH:30#"};
			{ 6, 48099, "", "=q4=Zabra's Pants of Conquest", "=ds=#s11#, #a1#", "#TRIUMPH:50#"};
			{ 8, 0, "spell_shadow_shadowwordpain", "=q6=#t9s5_1h#", "=q5="..AL["Tier 9"]};
			{ 9, 48095, "", "=q4=Zabra's Circlet of Triumph", "=ds=#s1#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48092, "", "=q4=Zabra's Mantle of Triumph", "=ds=#s3#, #a1#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48093, "", "=q4=Zabra's Raiments of Triumph", "=ds=#s5#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48096, "", "=q4=Zabra's Handwraps of Triumph", "=ds=#s9#, #a1#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48094, "", "=q4=Zabra's Pants of Triumph", "=ds=#s11#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "spell_shadow_shadowwordpain", "=q6=#t9s5_1h#", "=q5="..AL["Tier 9"]};
			{ 17, 48088, "", "=q4=Zabra's Circlet of Triumph", "=ds=#s1#, #a1#"};
			{ 18, 48091, "", "=q4=Zabra's Mantle of Triumph", "=ds=#s3#, #a1#"};
			{ 19, 48090, "", "=q4=Zabra's Raiments of Triumph", "=ds=#s5#, #a1#"};
			{ 20, 48087, "", "=q4=Zabra's Handwraps of Triumph", "=ds=#s9#, #a1#"};
			{ 21, 48089, "", "=q4=Zabra's Pants of Triumph", "=ds=#s11#, #a1#"};
		};
		{
			{ 1, 0, "spell_holy_guardianspirit", "=q6=#t9s5_2a#", "=q5="..AL["Tier 9"]};
			{ 2, 47914, "", "=q4=Velen's Cowl of Conquest", "=ds=#s1#, #a1#", "#TRIUMPH:50#"};
			{ 3, 47981, "", "=q4=Velen's Shoulderpads of Conquest", "=ds=#s3#, #a1#", "#TRIUMPH:30#"};
			{ 4, 47936, "", "=q4=Velen's Robe of Conquest", "=ds=#s5#, #a1#", "#TRIUMPH:50#"};
			{ 5, 47982, "", "=q4=Velen's Gloves of Conquest", "=ds=#s9#, #a1#", "#TRIUMPH:30#"};
			{ 6, 47980, "", "=q4=Velen's Leggings of Conquest", "=ds=#s11#, #a1#", "#TRIUMPH:50#"};
			{ 8, 0, "spell_holy_guardianspirit", "=q6=#t9s5_2a#", "=q5="..AL["Tier 9"]};
			{ 9, 47984, "", "=q4=Velen's Cowl of Triumph", "=ds=#s1#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 47987, "", "=q4=Velen's Shoulderpads of Triumph", "=ds=#s3#, #a1#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 47986, "", "=q4=Velen's Robe of Triumph", "=ds=#s5#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 47983, "", "=q4=Velen's Gloves of Triumph", "=ds=#s9#, #a1#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 47985, "", "=q4=Velen's Leggings of Triumph", "=ds=#s11#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "spell_holy_guardianspirit", "=q6=#t9s5_2a#", "=q5="..AL["Tier 9"]};
			{ 17, 48035, "", "=q4=Velen's Cowl of Triumph", "=ds=#s1#, #a1#"};
			{ 18, 48029, "", "=q4=Velen's Shoulderpads of Triumph", "=ds=#s3#, #a1#"};
			{ 19, 48031, "", "=q4=Velen's Robe of Triumph", "=ds=#s5#, #a1#"};
			{ 20, 48037, "", "=q4=Velen's Gloves of Triumph", "=ds=#s9#, #a1#"};
			{ 21, 48033, "", "=q4=Velen's Leggings of Triumph", "=ds=#s11#, #a1#"};
		};
		{
			{ 1, 0, "spell_holy_guardianspirit", "=q6=#t9s5_2h#", "=q5="..AL["Tier 9"]};
			{ 2, 48068, "", "=q4=Zabra's Cowl of Conquest", "=ds=#s1#, #a1#", "#TRIUMPH:50#"};
			{ 3, 48071, "", "=q4=Zabra's Shoulderpads of Conquest", "=ds=#s3#, #a1#", "#TRIUMPH:30#"};
			{ 4, 48070, "", "=q4=Zabra's Robe of Conquest", "=ds=#s5#, #a1#", "#TRIUMPH:50#"};
			{ 5, 48067, "", "=q4=Zabra's Gloves of Conquest", "=ds=#s9#, #a1#", "#TRIUMPH:30#"};
			{ 6, 48069, "", "=q4=Zabra's Leggings of Conquest", "=ds=#s11#, #a1#", "#TRIUMPH:50#"};
			{ 8, 0, "spell_holy_guardianspirit", "=q6=#t9s5_2h#", "=q5="..AL["Tier 9"]};
			{ 9, 48065, "", "=q4=Zabra's Cowl of Triumph", "=ds=#s1#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48062, "", "=q4=Zabra's Shoulderpads of Triumph", "=ds=#s3#, #a1#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48063, "", "=q4=Zabra's Robe of Triumph", "=ds=#s5#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48066, "", "=q4=Zabra's Gloves of Triumph", "=ds=#s9#, #a1#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48064, "", "=q4=Zabra's Leggings of Triumph", "=ds=#s11#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "spell_holy_guardianspirit", "=q6=#t9s5_2h#", "=q5="..AL["Tier 9"]};
			{ 17, 48058, "", "=q4=Zabra's Cowl of Triumph", "=ds=#s1#, #a1#"};
			{ 18, 48061, "", "=q4=Zabra's Shoulderpads of Triumph", "=ds=#s3#, #a1#"};
			{ 19, 48060, "", "=q4=Zabra's Robe of Triumph", "=ds=#s5#, #a1#"};
			{ 20, 48057, "", "=q4=Zabra's Gloves of Triumph", "=ds=#s9#, #a1#"};
			{ 21, 48059, "", "=q4=Zabra's Leggings of Triumph", "=ds=#s11#, #a1#"};
		},
	};
    info = {
        name = BabbleBoss["Tier: Priest"],
        module = moduleName,
        instance = "dalaran",
    },
}

Synastria_Data["Tier: Rogue"] = {
	["Normal"] = {
		{
			{ 1, 0, "inv_throwingknife_04", "=q6=#t7s6#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
			{ 2, 39561, "", "=q4=Heroes' Bonescythe Helmet", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39565, "", "=q4=Heroes' Bonescythe Pauldrons", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39558, "", "=q4=Heroes' Bonescythe Breastplate", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39560, "", "=q4=Heroes' Bonescythe Gauntlets", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39564, "", "=q4=Heroes' Bonescythe Legplates", "=ds="..BabbleBoss["Thaddius"]};
			{ 8, 0, "inv_throwingknife_04", "=q6=#t7s6#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
			{ 9, 40499, "", "=q4=Valorous Bonescythe Helmet", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40502, "", "=q4=Valorous Bonescythe Pauldrons", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40495, "", "=q4=Valorous Bonescythe Breastplate", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40496, "", "=q4=Valorous Bonescythe Gauntlets", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40500, "", "=q4=Valorous Bonescythe Legplates", "=ds="..BabbleBoss["Thaddius"]};
			{ 16, 0, "inv_throwingknife_04", "=q6=#t8s6#", "=q5="..AL["Tier 8"].." ("..AL["10 Man"]..")"};
			{ 17, 45398, "", "=q4=Valorous Terrorblade Helmet", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45400, "", "=q4=Valorous Terrorblade Pauldrons", "=ds="..BabbleBoss.Thorim};
			{ 19, 45396, "", "=q4=Valorous Terrorblade Breastplate", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 45397, "", "=q4=Valorous Terrorblade Gauntlets", "=ds="..BabbleBoss.Freya};
			{ 21, 45399, "", "=q4=Valorous Terrorblade Legplates", "=ds="..BabbleBoss.Hodir};
			{ 23, 0, "inv_throwingknife_04", "=q6=#t8s6#", "=q5="..AL["Tier 8"].." ("..AL["25 Man"]..")"};
			{ 24, 46125, "", "=q4=Conqueror's Terrorblade Helmet", "=ds="..BabbleBoss.Thorim};
			{ 25, 46127, "", "=q4=Conqueror's Terrorblade Pauldrons", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46123, "", "=q4=Conqueror's Terrorblade Breastplate", "=ds="..BabbleBoss.Hodir};
			{ 27, 46124, "", "=q4=Conqueror's Terrorblade Gauntlets", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46126, "", "=q4=Conqueror's Terrorblade Legplates", "=ds="..BabbleBoss.Freya};
		};
		{
			{ 1, 0, "inv_throwingknife_04", "=q6=#t9s6_a#", "=q5="..AL["Tier 9"]};
			{ 2, 48218, "", "=q4=VanCleef's Helmet of Conquest", "=ds=#s1#, #a2#", "#TRIUMPH:50#"};
			{ 3, 48221, "", "=q4=VanCleef's Pauldrons of Conquest", "=ds=#s3#, #a2#", "#TRIUMPH:30#"};
			{ 4, 48219, "", "=q4=VanCleef's Breastplate of Conquest", "=ds=#s5#, #a2#", "#TRIUMPH:50#"};
			{ 5, 48222, "", "=q4=VanCleef's Gauntlets of Conquest", "=ds=#s9#, #a2#", "#TRIUMPH:30#"};
			{ 6, 48220, "", "=q4=VanCleef's Legplates of Conquest", "=ds=#s11#, #a2#", "#TRIUMPH:50#"};
			{ 8, 0, "inv_throwingknife_04", "=q6=#t9s6_a#", "=q5="..AL["Tier 9"]};
			{ 9, 48225, "", "=q4=VanCleef's Helmet of Triumph", "=ds=#s1#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48227, "", "=q4=VanCleef's Pauldrons of Triumph", "=ds=#s3#, #a2#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48223, "", "=q4=VanCleef's Breastplate of Triumph", "=ds=#s5#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48224, "", "=q4=VanCleef's Gauntlets of Triumph", "=ds=#s9#, #a2#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48226, "", "=q4=VanCleef's Legplates of Triumph", "=ds=#s11#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "inv_throwingknife_04", "=q6=#t9s6_a#", "=q5="..AL["Tier 9"]};
			{ 17, 48230, "", "=q4=VanCleef's Helmet of Triumph", "=ds=#s1#, #a2#"};
			{ 18, 48228, "", "=q4=VanCleef's Pauldrons of Triumph", "=ds=#s3#, #a2#"};
			{ 19, 48232, "", "=q4=VanCleef's Breastplate of Triumph", "=ds=#s5#, #a2#"};
			{ 20, 48231, "", "=q4=VanCleef's Gauntlets of Triumph", "=ds=#s9#, #a2#"};
			{ 21, 48229, "", "=q4=VanCleef's Legplates of Triumph", "=ds=#s11#, #a2#"};
		},
		{
			{ 1, 0, "inv_throwingknife_04", "=q6=#t9s6_h#", "=q5="..AL["Tier 9"]};
			{ 2, 48245, "", "=q4=Garona's Helmet of Conquest", "=ds=#s1#, #a2#", "#TRIUMPH:50#"};
			{ 3, 48247, "", "=q4=Garona's Pauldrons of Conquest", "=ds=#s3#, #a2#", "#TRIUMPH:30#"};
			{ 4, 48243, "", "=q4=Garona's Breastplate of Conquest", "=ds=#s5#, #a2#", "#TRIUMPH:50#"};
			{ 5, 48244, "", "=q4=Garona's Gauntlets of Conquest", "=ds=#s9#, #a2#", "#TRIUMPH:30#"};
			{ 6, 48246, "", "=q4=Garona's Legplates of Conquest", "=ds=#s11#, #a2#", "#TRIUMPH:50#"};
			{ 8, 0, "inv_throwingknife_04", "=q6=#t9s6_h#", "=q5="..AL["Tier 9"]};
			{ 9, 48240, "", "=q4=Garona's Helmet of Triumph", "=ds=#s1#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48238, "", "=q4=Garona's Pauldrons of Triumph", "=ds=#s3#, #a2#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48242, "", "=q4=Garona's Breastplate of Triumph", "=ds=#s5#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48241, "", "=q4=Garona's Gauntlets of Triumph", "=ds=#s9#, #a2#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48239, "", "=q4=Garona's Legplates of Triumph", "=ds=#s11#, #a2#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "inv_throwingknife_04", "=q6=#t9s6_h#", "=q5="..AL["Tier 9"]};
			{ 17, 48235, "", "=q4=Garona's Helmet of Triumph", "=ds=#s1#, #a2#"};
			{ 18, 48237, "", "=q4=Garona's Pauldrons of Triumph", "=ds=#s3#, #a2#"};
			{ 19, 48233, "", "=q4=Garona's Breastplate of Triumph", "=ds=#s5#, #a2#"};
			{ 20, 48234, "", "=q4=Garona's Gauntlets of Triumph", "=ds=#s9#, #a2#"};
			{ 21, 48236, "", "=q4=Garona's Legplates of Triumph", "=ds=#s11#, #a2#"};
		};
	};
    info = {
        name = BabbleBoss["Tier: Rogue"],
        module = moduleName,
        instance = "dalaran",
    },
}

Synastria_Data["Tier: Shaman"] = {
	["Normal"] = {
		{
			{ 1, 0, "spell_nature_magicimmunity", "=q6=#t7s7_3#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
			{ 2, 39583, "", "=q4=Heroes' Earthshatter Headpiece", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39590, "", "=q4=Heroes' Earthshatter Spaulders", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39588, "", "=q4=Heroes' Earthshatter Tunic", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39591, "", "=q4=Heroes' Earthshatter Handguards", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39589, "", "=q4=Heroes' Earthshatter Legguards", "=ds="..BabbleBoss["Thaddius"]};
			{ 8, 0, "spell_nature_magicimmunity", "=q6=#t7s7_3#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
			{ 9, 40510, "", "=q4=Valorous Earthshatter Headpiece", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40513, "", "=q4=Valorous Earthshatter Spaulders", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40508, "", "=q4=Valorous Earthshatter Tunic", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40509, "", "=q4=Valorous Earthshatter Handguards", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40512, "", "=q4=Valorous Earthshatter Legguards", "=ds="..BabbleBoss["Thaddius"]};
			{ 16, 0, "spell_nature_magicimmunity", "=q6=#t8s7_3#", "=q5="..AL["Tier 8"].." ("..AL["10 Man"]..")"};
			{ 17, 45402, "", "=q4=Valorous Worldbreaker Headpiece", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45404, "", "=q4=Valorous Worldbreaker Spaulders", "=ds="..BabbleBoss.Thorim};
			{ 19, 45405, "", "=q4=Valorous Worldbreaker Tunic", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 45401, "", "=q4=Valorous Worldbreaker Handguards", "=ds="..BabbleBoss.Freya};
			{ 21, 45403, "", "=q4=Valorous Worldbreaker Legguards", "=ds="..BabbleBoss.Hodir};
			{ 23, 0, "spell_nature_magicimmunity", "=q6=#t8s7_3#", "=q5="..AL["Tier 8"].." ("..AL["25 Man"]..")"};
			{ 24, 46201, "", "=q4=Conqueror's Worldbreaker Headpiece", "=ds="..BabbleBoss.Thorim};
			{ 25, 46204, "", "=q4=Conqueror's Worldbreaker Spaulders", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46198, "", "=q4=Conqueror's Worldbreaker Tunic", "=ds="..BabbleBoss.Hodir};
			{ 27, 46199, "", "=q4=Conqueror's Worldbreaker Handguards", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46202, "", "=q4=Conqueror's Worldbreaker Legguards", "=ds="..BabbleBoss.Freya};
		};
		{
			{ 1, 0, "spell_nature_lightningshield", "=q6=#t7s7_2#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
			{ 2, 39602, "", "=q4=Heroes' Earthshatter Faceguard", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39604, "", "=q4=Heroes' Earthshatter Shoulderguards", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39597, "", "=q4=Heroes' Earthshatter Chestguard", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39601, "", "=q4=Heroes' Earthshatter Grips", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39603, "", "=q4=Heroes' Earthshatter War-Kilt", "=ds="..BabbleBoss["Thaddius"]};
			{ 8, 0, "spell_nature_lightningshield", "=q6=#t7s7_2#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
			{ 9, 40521, "", "=q4=Valorous Earthshatter Faceguard", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40524, "", "=q4=Valorous Earthshatter Shoulderguards", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40523, "", "=q4=Valorous Earthshatter Chestguard", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40520, "", "=q4=Valorous Earthshatter Grips", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40522, "", "=q4=Valorous Earthshatter War-Kilt", "=ds="..BabbleBoss["Thaddius"]};
			{ 16, 0, "spell_nature_lightningshield", "=q6=#t8s7_2#", "=q5="..AL["Tier 8"].." ("..AL["10 Man"]..")"};
			{ 17, 45412, "", "=q4=Valorous Worldbreaker Faceguard", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45415, "", "=q4=Valorous Worldbreaker Shoulderguards", "=ds="..BabbleBoss.Thorim};
			{ 19, 45413, "", "=q4=Valorous Worldbreaker Chestguard", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 45414, "", "=q4=Valorous Worldbreaker Grips", "=ds="..BabbleBoss.Freya};
			{ 21, 45416, "", "=q4=Valorous Worldbreaker War-Kilt", "=ds="..BabbleBoss.Hodir};
			{ 23, 0, "spell_nature_lightningshield", "=q6=#t8s7_2#", "=q5="..AL["Tier 8"].." ("..AL["25 Man"]..")"};
			{ 24, 46212, "", "=q4=Conqueror's Worldbreaker Faceguard", "=ds="..BabbleBoss.Thorim};
			{ 25, 46203, "", "=q4=Conqueror's Worldbreaker Shoulderguards", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46205, "", "=q4=Conqueror's Worldbreaker Chestguard", "=ds="..BabbleBoss.Hodir};
			{ 27, 46200, "", "=q4=Conqueror's Worldbreaker Grips", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46208, "", "=q4=Conqueror's Worldbreaker War-Kilt", "=ds="..BabbleBoss.Freya};
		};
		{
			{ 1, 0, "Spell_Nature_Lightning", "=q6=#t7s7_1#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
			{ 2, 39594, "", "=q4=Heroes' Earthshatter Helm", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39596, "", "=q4=Heroes' Earthshatter Shoulderpads", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39592, "", "=q4=Heroes' Earthshatter Hauberk", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39593, "", "=q4=Heroes' Earthshatter Gloves", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39595, "", "=q4=Heroes' Earthshatter Kilt", "=ds="..BabbleBoss["Thaddius"]};
			{ 8, 0, "Spell_Nature_Lightning", "=q6=#t7s7_1#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
			{ 9, 40516, "", "=q4=Valorous Earthshatter Helm", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40518, "", "=q4=Valorous Earthshatter Shoulderpads", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40514, "", "=q4=Valorous Earthshatter Hauberk", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40515, "", "=q4=Valorous Earthshatter Gloves", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40517, "", "=q4=Valorous Earthshatter Kilt", "=ds="..BabbleBoss["Thaddius"]};
			{ 16, 0, "Spell_Nature_Lightning", "=q6=#t8s7_1#", "=q5="..AL["Tier 8"].." ("..AL["10 Man"]..")"};
			{ 17, 45408, "", "=q4=Valorous Worldbreaker Helm", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45410, "", "=q4=Valorous Worldbreaker Shoulderpads", "=ds="..BabbleBoss.Thorim};
			{ 19, 45411, "", "=q4=Valorous Worldbreaker Hauberk", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 45406, "", "=q4=Valorous Worldbreaker Gloves", "=ds="..BabbleBoss.Freya};
			{ 21, 45409, "", "=q4=Valorous Worldbreaker Kilt", "=ds="..BabbleBoss.Hodir};
			{ 23, 0, "Spell_Nature_Lightning", "=q6=#t8s7_1#", "=q5="..AL["Tier 8"].." ("..AL["25 Man"]..")"};
			{ 24, 46209, "", "=q4=Conqueror's Worldbreaker Helm", "=ds="..BabbleBoss.Thorim};
			{ 25, 46211, "", "=q4=Conqueror's Worldbreaker Shoulderpads", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46206, "", "=q4=Conqueror's Worldbreaker Hauberk", "=ds="..BabbleBoss.Hodir};
			{ 27, 46207, "", "=q4=Conqueror's Worldbreaker Gloves", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46210, "", "=q4=Conqueror's Worldbreaker Kilt", "=ds="..BabbleBoss.Freya};
		};
		{
			{ 1, 0, "Spell_Nature_Lightning", "=q6=#t9s7_3a#", "=q5="..AL["Tier 9"]};
			{ 2, 48313, "", "=q4=Nobundo's Helm of Conquest", "=ds=#s1#, #a3#", "#TRIUMPH:50#"};
			{ 3, 48315, "", "=q4=Nobundo's Shoulderpads of Conquest", "=ds=#s3#, #a3#", "#TRIUMPH:30#"};
			{ 4, 48310, "", "=q4=Nobundo's Hauberk of Conquest", "=ds=#s5#, #a3#", "#TRIUMPH:50#"};
			{ 5, 48312, "", "=q4=Nobundo's Gloves of Conquest", "=ds=#s9#, #a3#", "#TRIUMPH:30#"};
			{ 6, 48314, "", "=q4=Nobundo's Kilt of Conquest", "=ds=#s11#, #a3#", "#TRIUMPH:50#"};
			{ 8, 0, "Spell_Nature_Lightning", "=q6=#t9s7_3a#", "=q5="..AL["Tier 9"]};
			{ 9, 48318, "", "=q4=Nobundo's Helm of Triumph", "=ds=#s1#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48320, "", "=q4=Nobundo's Shoulderpads of Triumph", "=ds=#s3#, #a3#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48316, "", "=q4=Nobundo's Hauberk of Triumph", "=ds=#s5#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48317, "", "=q4=Nobundo's Gloves of Triumph", "=ds=#s9#, #a3#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48319, "", "=q4=Nobundo's Kilt of Triumph", "=ds=#s11#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "Spell_Nature_Lightning", "=q6=#t9s7_3a#", "=q5="..AL["Tier 9"]};
			{ 17, 48323, "", "=q4=Nobundo's Helm of Triumph", "=ds=#s1#, #a3#"};
			{ 18, 48321, "", "=q4=Nobundo's Shoulderpads of Triumph", "=ds=#s3#, #a3#"};
			{ 19, 48325, "", "=q4=Nobundo's Hauberk of Triumph", "=ds=#s5#, #a3#"};
			{ 20, 48324, "", "=q4=Nobundo's Gloves of Triumph", "=ds=#s9#, #a3#"};
			{ 21, 48322, "", "=q4=Nobundo's Kilt of Triumph", "=ds=#s11#, #a3#"};
		};
		{
			{ 1, 0, "Spell_Nature_Lightning", "=q6=#t9s7_3h#", "=q5="..AL["Tier 9"]};
			{ 2, 48338, "", "=q4=Thrall's Helm of Conquest", "=ds=#s1#, #a3#", "#TRIUMPH:50#"};
			{ 3, 48340, "", "=q4=Thrall's Shoulderpads of Conquest", "=ds=#s3#, #a3#", "#TRIUMPH:30#"};
			{ 4, 48336, "", "=q4=Thrall's Hauberk of Conquest", "=ds=#s5#, #a3#", "#TRIUMPH:50#"};
			{ 5, 48337, "", "=q4=Thrall's Gloves of Conquest", "=ds=#s9#, #a3#", "#TRIUMPH:30#"};
			{ 6, 48339, "", "=q4=Thrall's Kilt of Conquest", "=ds=#s11#, #a3#", "#TRIUMPH:50#"};
			{ 8, 0, "Spell_Nature_Lightning", "=q6=#t9s7_3h#", "=q5="..AL["Tier 9"]};
			{ 9, 48333, "", "=q4=Thrall's Helm of Triumph", "=ds=#s1#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48331, "", "=q4=Thrall's Shoulderpads of Triumph", "=ds=#s3#, #a3#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48335, "", "=q4=Thrall's Hauberk of Triumph", "=ds=#s5#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48334, "", "=q4=Thrall's Gloves of Triumph", "=ds=#s9#, #a3#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48332, "", "=q4=Thrall's Kilt of Triumph", "=ds=#s11#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "Spell_Nature_Lightning", "=q6=#t9s7_3h#", "=q5="..AL["Tier 9"]};
			{ 17, 48328, "", "=q4=Thrall's Helm of Triumph", "=ds=#s1#, #a3#"};
			{ 18, 48330, "", "=q4=Thrall's Shoulderpads of Triumph", "=ds=#s3#, #a3#"};
			{ 19, 48326, "", "=q4=Thrall's Hauberk of Triumph", "=ds=#s5#, #a3#"};
			{ 20, 48327, "", "=q4=Thrall's Gloves of Triumph", "=ds=#s9#, #a3#"};
			{ 21, 48329, "", "=q4=Thrall's Kilt of Triumph", "=ds=#s11#, #a3#"};
		};
		{
			{ 1, 0, "spell_nature_lightningshield", "=q6=#t9s7_2a#", "=q5="..AL["Tier 9"]};
			{ 2, 48343, "", "=q4=Nobundo's Faceguard of Conquest", "=ds=#s1#, #a3#", "#TRIUMPH:50#"};
			{ 3, 48345, "", "=q4=Nobundo's Shoulderguards of Conquest", "=ds=#s3#, #a3#", "#TRIUMPH:30#"};
			{ 4, 48341, "", "=q4=Nobundo's Chestguard of Conquest", "=ds=#s5#, #a3#", "#TRIUMPH:50#"};
			{ 5, 48342, "", "=q4=Nobundo's Grips of Conquest", "=ds=#s9#, #a3#", "#TRIUMPH:30#"};
			{ 6, 48344, "", "=q4=Nobundo's War-Kilt of Conquest", "=ds=#s11#, #a3#", "#TRIUMPH:50#"};
			{ 8, 0, "spell_nature_lightningshield", "=q6=#t9s7_2a#", "=q5="..AL["Tier 9"]};
			{ 9, 48348, "", "=q4=Nobundo's Faceguard of Triumph", "=ds=#s1#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48350, "", "=q4=Nobundo's Shoulderguards of Triumph", "=ds=#s3#, #a3#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48346, "", "=q4=Nobundo's Chestguard of Triumph", "=ds=#s5#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48347, "", "=q4=Nobundo's Grips of Triumph", "=ds=#s9#, #a3#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48349, "", "=q4=Nobundo's War-Kilt of Triumph", "=ds=#s11#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "spell_nature_lightningshield", "=q6=#t9s7_2a#", "=q5="..AL["Tier 9"]};
			{ 17, 48353, "", "=q4=Nobundo's Faceguard of Triumph", "=ds=#s1#, #a3#"};
			{ 18, 48351, "", "=q4=Nobundo's Shoulderguards of Triumph", "=ds=#s3#, #a3#"};
			{ 19, 48355, "", "=q4=Nobundo's Chestguard of Triumph", "=ds=#s5#, #a3#"};
			{ 20, 48354, "", "=q4=Nobundo's Grips of Triumph", "=ds=#s9#, #a3#"};
			{ 21, 48352, "", "=q4=Nobundo's War-Kilt of Triumph", "=ds=#s11#, #a3#"};
		};
		{
			{ 1, 0, "spell_nature_lightningshield", "=q6=#t9s7_2h#", "=q5="..AL["Tier 9"]};
			{ 2, 48368, "", "=q4=Thrall's Faceguard of Conquest", "=ds=#s1#, #a3#", "#TRIUMPH:50#"};
			{ 3, 48370, "", "=q4=Thrall's Shoulderguards of Conquest", "=ds=#s3#, #a3#", "#TRIUMPH:30#"};
			{ 4, 48366, "", "=q4=Thrall's Chestguard of Conquest", "=ds=#s5#, #a3#", "#TRIUMPH:50#"};
			{ 5, 48367, "", "=q4=Thrall's Grips of Conquest", "=ds=#s9#, #a3#", "#TRIUMPH:30#"};
			{ 6, 48369, "", "=q4=Thrall's War-Kilt of Conquest", "=ds=#s11#, #a3#", "#TRIUMPH:50#"};
			{ 8, 0, "spell_nature_lightningshield", "=q6=#t9s7_2h#", "=q5="..AL["Tier 9"]};
			{ 9, 48363, "", "=q4=Thrall's Faceguard of Triumph", "=ds=#s1#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48361, "", "=q4=Thrall's Shoulderguards of Triumph", "=ds=#s3#, #a3#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48365, "", "=q4=Thrall's Chestguard of Triumph", "=ds=#s5#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48364, "", "=q4=Thrall's Grips of Triumph", "=ds=#s9#, #a3#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48362, "", "=q4=Thrall's War-Kilt of Triumph", "=ds=#s11#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "spell_nature_lightningshield", "=q6=#t9s7_2h#", "=q5="..AL["Tier 9"]};
			{ 17, 48358, "", "=q4=Thrall's Faceguard of Triumph", "=ds=#s1#, #a3#"};
			{ 18, 48360, "", "=q4=Thrall's Shoulderguards of Triumph", "=ds=#s3#, #a3#"};
			{ 19, 48356, "", "=q4=Thrall's Chestguard of Triumph", "=ds=#s5#, #a3#"};
			{ 20, 48357, "", "=q4=Thrall's Grips of Triumph", "=ds=#s9#, #a3#"};
			{ 21, 48359, "", "=q4=Thrall's War-Kilt of Triumph", "=ds=#s11#, #a3#"};
		};
		{
			{ 1, 0, "spell_nature_magicimmunity", "=q6=#t9s7_1a#", "=q5="..AL["Tier 9"]};
			{ 2, 48280, "", "=q4=Nobundo's Headpiece of Conquest", "=ds=#s1#, #a3#", "#TRIUMPH:50#"};
			{ 3, 48283, "", "=q4=Nobundo's Spaulders of Conquest", "=ds=#s3#, #a3#", "#TRIUMPH:30#"};
			{ 4, 48281, "", "=q4=Nobundo's Tunic of Conquest", "=ds=#s5#, #a3#", "#TRIUMPH:50#"};
			{ 5, 48284, "", "=q4=Nobundo's Handguards of Conquest", "=ds=#s9#, #a3#", "#TRIUMPH:30#"};
			{ 6, 48282, "", "=q4=Nobundo's Legguards of Conquest", "=ds=#s11#, #a3#", "#TRIUMPH:50#"};
			{ 8, 0, "spell_nature_magicimmunity", "=q6=#t9s7_1a#", "=q5="..AL["Tier 9"]};
			{ 9, 48287, "", "=q4=Nobundo's Headpiece of Triumph", "=ds=#s1#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48289, "", "=q4=Nobundo's Spaulders of Triumph", "=ds=#s3#, #a3#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48285, "", "=q4=Nobundo's Tunic of Triumph", "=ds=#s5#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48286, "", "=q4=Nobundo's Handguards of Triumph", "=ds=#s9#, #a3#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48288, "", "=q4=Nobundo's Legguards of Triumph", "=ds=#s11#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "spell_nature_magicimmunity", "=q6=#t9s7_1a#", "=q5="..AL["Tier 9"]};
			{ 17, 48292, "", "=q4=Nobundo's Headpiece of Triumph", "=ds=#s1#, #a3#"};
			{ 18, 48290, "", "=q4=Nobundo's Spaulders of Triumph", "=ds=#s3#, #a3#"};
			{ 19, 48294, "", "=q4=Nobundo's Tunic of Triumph", "=ds=#s5#, #a3#"};
			{ 20, 48293, "", "=q4=Nobundo's Handguards of Triumph", "=ds=#s9#, #a3#"};
			{ 21, 48291, "", "=q4=Nobundo's Legguards of Triumph", "=ds=#s11#, #a3#"};
		};
		{
			{ 1, 0, "spell_nature_magicimmunity", "=q6=#t9s7_1h#", "=q5="..AL["Tier 9"]};
			{ 2, 48297, "", "=q4=Thrall's Headpiece of Conquest", "=ds=#s1#, #a3#", "#TRIUMPH:50#"};
			{ 3, 48299, "", "=q4=Thrall's Spaulders of Conquest", "=ds=#s3#, #a3#", "#TRIUMPH:30#"};
			{ 4, 48295, "", "=q4=Thrall's Tunic of Conquest", "=ds=#s5#, #a3#", "#TRIUMPH:50#"};
			{ 5, 48296, "", "=q4=Thrall's Handguards of Conquest", "=ds=#s9#, #a3#", "#TRIUMPH:30#"};
			{ 6, 48298, "", "=q4=Thrall's Legguards of Conquest", "=ds=#s11#, #a3#", "#TRIUMPH:50#"};
			{ 8, 0, "spell_nature_magicimmunity", "=q6=#t9s7_1h#", "=q5="..AL["Tier 9"]};
			{ 9, 48302, "", "=q4=Thrall's Headpiece of Triumph", "=ds=#s1#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48304, "", "=q4=Thrall's Spaulders of Triumph", "=ds=#s3#, #a3#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48300, "", "=q4=Thrall's Tunic of Triumph", "=ds=#s5#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48301, "", "=q4=Thrall's Handguards of Triumph", "=ds=#s9#, #a3#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48303, "", "=q4=Thrall's Legguards of Triumph", "=ds=#s11#, #a3#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "spell_nature_magicimmunity", "=q6=#t9s7_1h#", "=q5="..AL["Tier 9"]};
			{ 17, 48307, "", "=q4=Thrall's Headpiece of Triumph", "=ds=#s1#, #a3#"};
			{ 18, 48309, "", "=q4=Thrall's Spaulders of Triumph", "=ds=#s3#, #a3#"};
			{ 19, 48305, "", "=q4=Thrall's Tunic of Triumph", "=ds=#s5#, #a3#"};
			{ 20, 48306, "", "=q4=Thrall's Handguards of Triumph", "=ds=#s9#, #a3#"};
			{ 21, 48308, "", "=q4=Thrall's Legguards of Triumph", "=ds=#s11#, #a3#"};
		};
	};
    info = {
        name = BabbleBoss["Tier: Shaman"],
        module = moduleName,
        instance = "dalaran",
    },
}

Synastria_Data["Tier: Warlock"] = {
	["Normal"] = {
		{
			{ 1, 0, "spell_nature_drowsy", "=q6=#t7s8#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
			{ 2, 39496, "", "=q4=Heroes' Plagueheart Circlet", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39499, "", "=q4=Heroes' Plagueheart Shoulderpads", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39497, "", "=q4=Heroes' Plagueheart Robe", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39500, "", "=q4=Heroes' Plagueheart Gloves", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39498, "", "=q4=Heroes' Plagueheart Leggings", "=ds="..BabbleBoss["Thaddius"]};
			{ 8, 0, "spell_nature_drowsy", "=q6=#t7s8#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
			{ 9, 40421, "", "=q4=Valorous Plagueheart Circlet", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40424, "", "=q4=Valorous Plagueheart Shoulderpads", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40423, "", "=q4=Valorous Plagueheart Robe", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40420, "", "=q4=Valorous Plagueheart Gloves", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40422, "", "=q4=Valorous Plagueheart Leggings", "=ds="..BabbleBoss["Thaddius"]};
			{ 16, 0, "spell_nature_drowsy", "=q6=#t8s8#", "=q5="..AL["Tier 8"].." ("..AL["10 Man"]..")"};
			{ 17, 45417, "", "=q4=Valorous Deathbringer Hood", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45422, "", "=q4=Valorous Deathbringer Shoulderpads", "=ds="..BabbleBoss.Thorim};
			{ 19, 45421, "", "=q4=Valorous Deathbringer Robe", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 45419, "", "=q4=Valorous Deathbringer Gloves", "=ds="..BabbleBoss.Freya};
			{ 21, 45420, "", "=q4=Valorous Deathbringer Leggings", "=ds="..BabbleBoss.Hodir};
			{ 23, 0, "spell_nature_drowsy", "=q6=#t8s8#", "=q5="..AL["Tier 8"].." ("..AL["25 Man"]..")"};
			{ 24, 46140, "", "=q4=Conqueror's Deathbringer Hood", "=ds="..BabbleBoss.Thorim};
			{ 25, 46136, "", "=q4=Conqueror's Deathbringer Shoulderpads", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46137, "", "=q4=Conqueror's Deathbringer Robe", "=ds="..BabbleBoss.Hodir};
			{ 27, 46135, "", "=q4=Conqueror's Deathbringer Gloves", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46139, "", "=q4=Conqueror's Deathbringer Leggings", "=ds="..BabbleBoss.Freya};
		};
		{
			{ 1, 0, "spell_nature_drowsy", "=q6=#t9s8_a#", "=q5="..AL["Tier 9"]};
			{ 2, 47784, "", "=q4=Kel'Thuzad's Hood of Conquest", "=ds=#s1#, #a1#", "#TRIUMPH:50#"};
			{ 3, 47787, "", "=q4=Kel'Thuzad's Shoulderpads of Conquest", "=ds=#s3#, #a1#", "#TRIUMPH:30#"};
			{ 4, 47786, "", "=q4=Kel'Thuzad's Robe of Conquest", "=ds=#s5#, #a1#", "#TRIUMPH:50#"};
			{ 5, 47783, "", "=q4=Kel'Thuzad's Gloves of Conquest", "=ds=#s9#, #a1#", "#TRIUMPH:30#"};
			{ 6, 47785, "", "=q4=Kel'Thuzad's Leggings of Conquest", "=ds=#s11#, #a1#", "#TRIUMPH:50#"};
			{ 8, 0, "spell_nature_drowsy", "=q6=#t9s8_a#", "=q5="..AL["Tier 9"]};
			{ 9, 47778, "", "=q4=Kel'Thuzad's Hood of Triumph", "=ds=#s1#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 47781, "", "=q4=Kel'Thuzad's Shoulderpads of Triumph", "=ds=#s3#, #a1#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 47779, "", "=q4=Kel'Thuzad's Robe of Triumph", "=ds=#s5#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 47782, "", "=q4=Kel'Thuzad's Gloves of Triumph", "=ds=#s9#, #a1#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 47780, "", "=q4=Kel'Thuzad's Leggings of Triumph", "=ds=#s11#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "spell_nature_drowsy", "=q6=#t9s8_a#", "=q5="..AL["Tier 9"]};
			{ 17, 47789, "", "=q4=Kel'Thuzad's Hood of Triumph", "=ds=#s1#, #a1#"};
			{ 18, 47792, "", "=q4=Kel'Thuzad's Shoulderpads of Triumph", "=ds=#s3#, #a1#"};
			{ 19, 47791, "", "=q4=Kel'Thuzad's Robe of Triumph", "=ds=#s5#, #a1#"};
			{ 20, 47788, "", "=q4=Kel'Thuzad's Gloves of Triumph", "=ds=#s9#, #a1#"};
			{ 21, 47790, "", "=q4=Kel'Thuzad's Leggings of Triumph", "=ds=#s11#, #a1#"};
		};
		{
			{ 1, 0, "spell_shadow_rainoffire", "=q6=#t9s8_h#", "=q5="..AL["Tier 9"]};
			{ 2, 47801, "", "=q4=Gul'dan's Hood of Conquest", "=ds=#s1#, #a1#", "#TRIUMPH:50#"};
			{ 3, 47798, "", "=q4=Gul'dan's Shoulderpads of Conquest", "=ds=#s3#, #a1#", "#TRIUMPH:30#"};
			{ 4, 47799, "", "=q4=Gul'dan's Robe of Conquest", "=ds=#s5#, #a1#", "#TRIUMPH:50#"};
			{ 5, 47802, "", "=q4=Gul'dan's Gloves of Conquest", "=ds=#s9#, #a1#", "#TRIUMPH:30#"};
			{ 6, 47800, "", "=q4=Gul'dan's Leggings of Conquest", "=ds=#s11#, #a1#", "#TRIUMPH:50#"};
			{ 8, 0, "spell_shadow_rainoffire", "=q6=#t9s8_h#", "=q5="..AL["Tier 9"]};
			{ 9, 47804, "", "=q4=Gul'dan's Hood of Triumph", "=ds=#s1#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 47807, "", "=q4=Gul'dan's Shoulderpads of Triumph", "=ds=#s3#, #a1#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 47806, "", "=q4=Gul'dan's Robe of Triumph", "=ds=#s5#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 47803, "", "=q4=Gul'dan's Gloves of Triumph", "=ds=#s9#, #a1#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 47805, "", "=q4=Gul'dan's Leggings of Triumph", "=ds=#s11#, #a1#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "spell_shadow_rainoffire", "=q6=#t9s8_h#", "=q5="..AL["Tier 9"]};
			{ 17, 47796, "", "=q4=Gul'dan's Hood of Triumph", "=ds=#s1#, #a1#"};
			{ 18, 47793, "", "=q4=Gul'dan's Shoulderpads of Triumph", "=ds=#s3#, #a1#"};
			{ 19, 47794, "", "=q4=Gul'dan's Robe of Triumph", "=ds=#s5#, #a1#"};
			{ 20, 47797, "", "=q4=Gul'dan's Gloves of Triumph", "=ds=#s9#, #a1#"};
			{ 21, 47795, "", "=q4=Gul'dan's Leggings of Triumph", "=ds=#s11#, #a1#"};
		};
	};
    info = {
        name = BabbleBoss["Tier: Warlock"],
        module = moduleName,
        instance = "dalaran",
    },
}

Synastria_Data["Tier: Warrior"] = {
	["Normal"] = {
		{
			{ 1, 0, "ability_warrior_innerrage", "=q6=#t7s9_1#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
			{ 2, 39605, "", "=q4=Heroes' Dreadnaught Helmet", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39608, "", "=q4=Heroes' Dreadnaught Shoulderplates", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39606, "", "=q4=Heroes' Dreadnaught Battleplate", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39609, "", "=q4=Heroes' Dreadnaught Gauntlets", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39607, "", "=q4=Heroes' Dreadnaught Legplates", "=ds="..BabbleBoss["Thaddius"]};
			{ 8, 0, "ability_warrior_innerrage", "=q6=#t7s9_1#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
			{ 9, 40528, "", "=q4=Valorous Dreadnaught Helmet", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40530, "", "=q4=Valorous Dreadnaught Shoulderplates", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40525, "", "=q4=Valorous Dreadnaught Battleplate", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40527, "", "=q4=Valorous Dreadnaught Gauntlets", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40529, "", "=q4=Valorous Dreadnaught Legplates", "=ds="..BabbleBoss["Thaddius"]};
			{ 16, 0, "ability_warrior_innerrage", "=q6=#t8s9_1#", "=q5="..AL["Tier 8"].." ("..AL["10 Man"]..")"};
			{ 17, 45431, "", "=q4=Valorous Siegebreaker Helmet", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45433, "", "=q4=Valorous Siegebreaker Shoulderplates", "=ds="..BabbleBoss.Thorim};
			{ 19, 45429, "", "=q4=Valorous Siegebreaker Battleplate", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 45430, "", "=q4=Valorous Siegebreaker Gauntlets", "=ds="..BabbleBoss.Freya};
			{ 21, 45432, "", "=q4=Valorous Siegebreaker Legplates", "=ds="..BabbleBoss.Hodir};
			{ 23, 0, "ability_warrior_innerrage", "=q6=#t8s9_1#", "=q5="..AL["Tier 8"].." ("..AL["25 Man"]..")"};
			{ 24, 46151, "", "=q4=Conqueror's Siegebreaker Helmet", "=ds="..BabbleBoss.Thorim};
			{ 25, 46149, "", "=q4=Conqueror's Siegebreaker Shoulderplates", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46146, "", "=q4=Conqueror's Siegebreaker Battleplate", "=ds="..BabbleBoss.Hodir};
			{ 27, 46148, "", "=q4=Conqueror's Siegebreaker Gauntlets", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46150, "", "=q4=Conqueror's Siegebreaker Legplates", "=ds="..BabbleBoss.Freya};
		};
		{
			{ 1, 0, "ability_warrior_defensivestance", "=q6=#t7s9_2#", "=q5="..AL["Tier 7"].." ("..AL["10 Man"]..")"};
			{ 2, 39610, "", "=q4=Heroes' Dreadnaught Greathelm", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 3, 39613, "", "=q4=Heroes' Dreadnaught Pauldrons", "=ds="..BabbleBoss["Loatheb"]};
			{ 4, 39611, "", "=q4=Heroes' Dreadnaught Breastplate", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 5, 39622, "", "=q4=Heroes' Dreadnaught Handguards", "=ds="..BabbleBoss["Sartharion"]};
			{ 6, 39612, "", "=q4=Heroes' Dreadnaught Legguards", "=ds="..BabbleBoss["Thaddius"]};
			{ 8, 0, "ability_warrior_defensivestance", "=q6=#t7s9_2#", "=q5="..AL["Tier 7"].." ("..AL["25 Man"]..")"};
			{ 9, 40546, "", "=q4=Valorous Dreadnaught Greathelm", "=ds="..BabbleBoss["Kel'Thuzad"]};
			{ 10, 40548, "", "=q4=Valorous Dreadnaught Pauldrons", "=ds="..BabbleBoss["Loatheb"]};
			{ 11, 40544, "", "=q4=Valorous Dreadnaught Breastplate", "=ds="..BabbleBoss["The Four Horsemen"]};
			{ 12, 40545, "", "=q4=Valorous Dreadnaught Handguards", "=ds="..BabbleBoss["Sartharion"]};
			{ 13, 40547, "", "=q4=Valorous Dreadnaught Legguards", "=ds="..BabbleBoss["Thaddius"]};
			{ 16, 0, "ability_warrior_defensivestance", "=q6=#t8s9_2#", "=q5="..AL["Tier 8"].." ("..AL["10 Man"]..")"};
			{ 17, 45425, "", "=q4=Valorous Siegebreaker Greathelm", "=ds="..BabbleBoss["Mimiron"]};
			{ 18, 45428, "", "=q4=Valorous Siegebreaker Pauldrons", "=ds="..BabbleBoss.Thorim};
			{ 19, 45424, "", "=q4=Valorous Siegebreaker Breastplate", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 20, 45426, "", "=q4=Valorous Siegebreaker Handguards", "=ds="..BabbleBoss.Freya};
			{ 21, 45427, "", "=q4=Valorous Siegebreaker Legguards", "=ds="..BabbleBoss.Hodir};
			{ 23, 0, "ability_warrior_defensivestance", "=q6=#t8s9_2#", "=q5="..AL["Tier 8"].." ("..AL["25 Man"]..")"};
			{ 24, 46166, "", "=q4=Conqueror's Siegebreaker Greathelm", "=ds="..BabbleBoss.Thorim};
			{ 25, 46167, "", "=q4=Conqueror's Siegebreaker Pauldrons", "=ds="..BabbleBoss["Yogg-Saron"]};
			{ 26, 46162, "", "=q4=Conqueror's Siegebreaker Breastplate", "=ds="..BabbleBoss.Hodir};
			{ 27, 46164, "", "=q4=Conqueror's Siegebreaker Handguards", "=ds="..BabbleBoss["Mimiron"]};
			{ 28, 46169, "", "=q4=Conqueror's Siegebreaker Legguards", "=ds="..BabbleBoss.Freya};
		};
		
		{
			{ 1, 0, "ability_warrior_innerrage", "=q6=#t9s9_1a#", "=q5="..AL["Tier 9"]};
			{ 2, 48371, "", "=q4=Wrynn's Helmet of Conquest", "=ds=#s1#, #a4#", "#TRIUMPH:50#"};
			{ 3, 48374, "", "=q4=Wrynn's Shoulderplates of Conquest", "=ds=#s3#, #a4#", "#TRIUMPH:30#"};
			{ 4, 48372, "", "=q4=Wrynn's Battleplate of Conquest", "=ds=#s5#, #a4#", "#TRIUMPH:50#"};
			{ 5, 48375, "", "=q4=Wrynn's Gauntlets of Conquest", "=ds=#s9#, #a4#", "#TRIUMPH:30#"};
			{ 6, 48373, "", "=q4=Wrynn's Legplates of Conquest", "=ds=#s11#, #a4#", "#TRIUMPH:50#"};
			{ 8, 0, "ability_warrior_innerrage", "=q6=#t9s9_1a#", "=q5="..AL["Tier 9"]};
			{ 9, 48378, "", "=q4=Wrynn's Helmet of Triumph", "=ds=#s1#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48380, "", "=q4=Wrynn's Shoulderplates of Triumph", "=ds=#s3#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48376, "", "=q4=Wrynn's Battleplate of Triumph", "=ds=#s5#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48377, "", "=q4=Wrynn's Gauntlets of Triumph", "=ds=#s9#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48379, "", "=q4=Wrynn's Legplates of Triumph", "=ds=#s11#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "ability_warrior_innerrage", "=q6=#t9s9_1a#", "=q5="..AL["Tier 9"]};
			{ 17, 48383, "", "=q4=Wrynn's Helmet of Triumph", "=ds=#s1#, #a4#"};
			{ 18, 48381, "", "=q4=Wrynn's Shoulderplates of Triumph", "=ds=#s3#, #a4#"};
			{ 19, 48385, "", "=q4=Wrynn's Battleplate of Triumph", "=ds=#s5#, #a4#"};
			{ 20, 48384, "", "=q4=Wrynn's Gauntlets of Triumph", "=ds=#s9#, #a4#"};
			{ 21, 48382, "", "=q4=Wrynn's Legplates of Triumph", "=ds=#s11#, #a4#"};
		};
		{
			{ 1, 0, "ability_warrior_innerrage", "=q6=#t9s9_1h#", "=q5="..AL["Tier 9"]};
			{ 2, 48388, "", "=q4=Hellscream's Helmet of Conquest", "=ds=#s1#, #a4#", "#TRIUMPH:50#"};
			{ 3, 48390, "", "=q4=Hellscream's Shoulderplates of Conquest", "=ds=#s3#, #a4#", "#TRIUMPH:30#"};
			{ 4, 48386, "", "=q4=Hellscream's Battleplate of Conquest", "=ds=#s5#, #a4#", "#TRIUMPH:50#"};
			{ 5, 48387, "", "=q4=Hellscream's Gauntlets of Conquest", "=ds=#s9#, #a4#", "#TRIUMPH:30#"};
			{ 6, 48389, "", "=q4=Hellscream's Legplates of Conquest", "=ds=#s11#, #a4#", "#TRIUMPH:50#"};
			{ 8, 0, "ability_warrior_innerrage", "=q6=#t9s9_1h#", "=q5="..AL["Tier 9"]};
			{ 9, 48393, "", "=q4=Hellscream's Helmet of Triumph", "=ds=#s1#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48395, "", "=q4=Hellscream's Shoulderplates of Triumph", "=ds=#s3#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48391, "", "=q4=Hellscream's Battleplate of Triumph", "=ds=#s5#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48392, "", "=q4=Hellscream's Gauntlets of Triumph", "=ds=#s9#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48394, "", "=q4=Hellscream's Legplates of Triumph", "=ds=#s11#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "ability_warrior_innerrage", "=q6=#t9s9_1h#", "=q5="..AL["Tier 9"]};
			{ 17, 48398, "", "=q4=Hellscream's Helmet of Triumph", "=ds=#s1#, #a4#"};
			{ 18, 48400, "", "=q4=Hellscream's Shoulderplates of Triumph", "=ds=#s3#, #a4#"};
			{ 19, 48396, "", "=q4=Hellscream's Battleplate of Triumph", "=ds=#s5#, #a4#"};
			{ 20, 48397, "", "=q4=Hellscream's Gauntlets of Triumph", "=ds=#s9#, #a4#"};
			{ 21, 48399, "", "=q4=Hellscream's Legplates of Triumph", "=ds=#s11#, #a4#"};
		};
		{
			{ 1, 0, "ability_warrior_defensivestance", "=q6=#t9s9_2a#", "=q5="..AL["Tier 9"]};
			{ 2, 48429, "", "=q4=Wrynn's Greathelm of Conquest", "=ds=#s1#, #a4#", "#TRIUMPH:50#"};
			{ 3, 48448, "", "=q4=Wrynn's Pauldrons of Conquest", "=ds=#s3#, #a4#", "#TRIUMPH:30#"};
			{ 4, 48436, "", "=q4=Wrynn's Breastplate of Conquest", "=ds=#s5#, #a4#", "#TRIUMPH:50#"};
			{ 5, 48449, "", "=q4=Wrynn's Handguards of Conquest", "=ds=#s9#, #a4#", "#TRIUMPH:30#"};
			{ 6, 48445, "", "=q4=Wrynn's Legguards of Conquest", "=ds=#s11#, #a4#", "#TRIUMPH:50#"};
			{ 8, 0, "ability_warrior_defensivestance", "=q6=#t9s9_2a#", "=q5="..AL["Tier 9"]};
			{ 9, 48430, "", "=q4=Wrynn's Greathelm of Triumph", "=ds=#s1#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48454, "", "=q4=Wrynn's Pauldrons of Triumph", "=ds=#s3#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48450, "", "=q4=Wrynn's Breastplate of Triumph", "=ds=#s5#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48452, "", "=q4=Wrynn's Handguards of Triumph", "=ds=#s9#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48446, "", "=q4=Wrynn's Legguards of Triumph", "=ds=#s11#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "ability_warrior_defensivestance", "=q6=#t9s9_2a#", "=q5="..AL["Tier 9"]};
			{ 17, 48433, "", "=q4=Wrynn's Greathelm of Triumph", "=ds=#s1#, #a4#"};
			{ 18, 48455, "", "=q4=Wrynn's Pauldrons of Triumph", "=ds=#s3#, #a4#"};
			{ 19, 48451, "", "=q4=Wrynn's Breastplate of Triumph", "=ds=#s5#, #a4#"};
			{ 20, 48453, "", "=q4=Wrynn's Handguards of Triumph", "=ds=#s9#, #a4#"};
			{ 21, 48447, "", "=q4=Wrynn's Legguards of Triumph", "=ds=#s11#, #a4#"};
		};
		{
			{ 1, 0, "ability_warrior_defensivestance", "=q6=#t9s9_2h#", "=q5="..AL["Tier 9"]};
			{ 2, 48458, "", "=q4=Hellscream's Greathelm of Conquest", "=ds=#s1#, #a4#", "#TRIUMPH:50#"};
			{ 3, 48460, "", "=q4=Hellscream's Pauldrons of Conquest", "=ds=#s3#, #a4#", "#TRIUMPH:30#"};
			{ 4, 48456, "", "=q4=Hellscream's Breastplate of Conquest", "=ds=#s5#, #a4#", "#TRIUMPH:50#"};
			{ 5, 48457, "", "=q4=Hellscream's Handguards of Conquest", "=ds=#s9#, #a4#", "#TRIUMPH:30#"};
			{ 6, 48459, "", "=q4=Hellscream's Legguards of Conquest", "=ds=#s11#, #a4#", "#TRIUMPH:50#"};
			{ 8, 0, "ability_warrior_defensivestance", "=q6=#t9s9_2h#", "=q5="..AL["Tier 9"]};
			{ 9, 48463, "", "=q4=Hellscream's Greathelm of Triumph", "=ds=#s1#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 10, 48465, "", "=q4=Hellscream's Pauldrons of Triumph", "=ds=#s3#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 11, 48461, "", "=q4=Hellscream's Breastplate of Triumph", "=ds=#s5#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 12, 48462, "", "=q4=Hellscream's Handguards of Triumph", "=ds=#s9#, #a4#", "#TRIUMPH:45# 1 #trophyofthecrusade#"};
			{ 13, 48464, "", "=q4=Hellscream's Legguards of Triumph", "=ds=#s11#, #a4#", "#TRIUMPH:75# 1 #trophyofthecrusade#"};
			{ 16, 0, "ability_warrior_defensivestance", "=q6=#t9s9_2h#", "=q5="..AL["Tier 9"]};
			{ 17, 48468, "", "=q4=Hellscream's Greathelm of Triumph", "=ds=#s1#, #a4#"};
			{ 18, 48470, "", "=q4=Hellscream's Pauldrons of Triumph", "=ds=#s3#, #a4#"};
			{ 19, 48466, "", "=q4=Hellscream's Breastplate of Triumph", "=ds=#s5#, #a4#"};
			{ 20, 48467, "", "=q4=Hellscream's Handguards of Triumph", "=ds=#s9#, #a4#"};
			{ 21, 48469, "", "=q4=Hellscream's Legguards of Triumph", "=ds=#s11#, #a4#"};
		};
	};
    info = {
        name = BabbleBoss["Tier: Warrior"],
        module = moduleName,
        instance = "dalaran",
    },
}

Synastria_Data["Arena Weapons"] = {
	["Normal"] = {
		{
			{ 1, 51530, "", "=q4=Wrathful Gladiator's Left Render", "=ds=#h4#, #w13#", "#HONOR:760#"};
			{ 2, 51523, "", "=q4=Wrathful Gladiator's Right Ripper", "=ds=#h3#, #w13#", "#HONOR:1785#"};
			{ 3, 51443, "", "=q4=Wrathful Gladiator's Left Ripper", "=ds=#h4#, #w13#", "#HONOR:760#"};
			{ 5, 51406, "", "=q4=Wrathful Gladiator's Blade of Alacrity", "=ds=#h3#, #w4#", "#HONOR:1830#"};
			{ 6, 51397, "", "=q4=Wrathful Gladiator's Spellblade", "=ds=#h3#, #w4#", "#HONOR:1830#"};
			{ 7, 51517, "", "=q4=Wrathful Gladiator's Shanker", "=ds=#h1#, #w4#", "#HONOR:1785#"};
			{ 8, 51527, "", "=q4=Wrathful Gladiator's Mutilator", "=ds=#h4#, #w4#", "#HONOR:760#"};
			{ 9, 51441, "", "=q4=Wrathful Gladiator's Shiv", "=ds=#h4#, #w4#", "#HONOR:760#"};
			{ 11, 51521, "", "=q4=Wrathful Gladiator's Slicer", "=ds=#h1#, #w10#", "#HONOR:1785#"};
			{ 12, 51447, "", "=q4=Wrathful Gladiator's Quickblade", "=ds=#h4#, #w10#", "#HONOR:760#"};
			{ 16, 51515, "", "=q4=Wrathful Gladiator's Cleaver", "=ds=#h1#, #w1#", "#HONOR:1785#"};
			{ 17, 51525, "", "=q4=Wrathful Gladiator's Chopper", "=ds=#h4#, #w1#", "#HONOR:760#"};
			{ 18, 51439, "", "=q4=Wrathful Gladiator's Hacker", "=ds=#h4#, #w1#", "#HONOR:760#"};
			{ 20, 51453, "", "=q4=Wrathful Gladiator's Gavel", "=ds=#h3#, #w6#", "#HONOR:1830#"};
			{ 21, 51519, "", "=q4=Wrathful Gladiator's Pummeler", "=ds=#h1#, #w6#", "#HONOR:1785#"};
			{ 22, 51445, "", "=q4=Wrathful Gladiator's Bonecracker", "=ds=#h4#, #w6#", "#HONOR:760#"};
			{ 24, 51392, "", "=q4=Wrathful Gladiator's Greatsword", "=ds=#h2#, #w10#", "#HONOR:2550#"};
			{ 25, 51388, "", "=q4=Wrathful Gladiator's Decapitator", "=ds=#h2#, #w1#", "#HONOR:2550#"};
			{ 26, 51390, "", "=q4=Wrathful Gladiator's Bonegrinder", "=ds=#h2#, #w6#", "#HONOR:2550#"};
			{ 28, 51480, "", "=q4=Wrathful Gladiator's Pike", "=ds=#w7#", "#HONOR:2550#"};
		};
		{
			{ 1, 51394, "", "=q4=Wrathful Gladiator's Longbow", "=ds=#w2#", "#HONOR:2550#"};
			{ 2, 51411, "", "=q4=Wrathful Gladiator's Heavy Crossbow", "=ds=#w3#", "#HONOR:2550#"};
			{ 3, 51449, "", "=q4=Wrathful Gladiator's Rifle", "=ds=#w5#", "#HONOR:2550#"};
			{ 5, 51404, "", "=q4=Wrathful Gladiator's Battle Staff", "=ds=#w9#", "#HONOR:2550#"};
			{ 6, 51456, "", "=q4=Wrathful Gladiator's Energy Staff", "=ds=#w9#", "#HONOR:2550#"};
			{ 7, 51402, "", "=q4=Wrathful Gladiator's Focus Staff", "=ds=#w9#", "#HONOR:2550#"};
			{ 8, 51431, "", "=q4=Wrathful Gladiator's Staff", "=ds=#w9#", "#HONOR:2550#"};
			{ 9, 51400, "", "=q4=Wrathful Gladiator's War Staff", "=ds=#w9#", "#HONOR:2550#"};
			{ 11, 51452, "", "=q4=Wrathful Gladiator's Barrier", "=ds=#w8#", "#HONOR:190#"};
			{ 12, 51455, "", "=q4=Wrathful Gladiator's Redoubt", "=ds=#w8#", "#HONOR:190#"};
			{ 13, 51533, "", "=q4=Wrathful Gladiator's Shield Wall", "=ds=#w8#", "#HONOR:190#"};
			{ 16, 51535, "", "=q4=Wrathful Gladiator's War Edge", "=ds=#w11#", "#HONOR:260#"};
			{ 18, 51532, "", "=q4=Wrathful Gladiator's Baton of Light", "=ds=#w12#", "#HONOR:260#"};
			{ 19, 51531, "", "=q4=Wrathful Gladiator's Piercing Touch", "=ds=#w12#", "#HONOR:260#"};
			{ 20, 51410, "", "=q4=Wrathful Gladiator's Touch of Defeat", "=ds=#w12#", "#HONOR:260#"};
			{ 21, 51451, "", "=q4=Wrathful Gladiator's Wand of Alacrity", "=ds=#w12#", "#HONOR:260#"};
			{ 23, 51407, "", "=q4=Wrathful Gladiator's Compendium", "=ds=#s15#", "#HONOR:190#"};
			{ 24, 51396, "", "=q4=Wrathful Gladiator's Endgame", "=ds=#s15#", "#HONOR:190#"};
			{ 25, 51408, "", "=q4=Wrathful Gladiator's Grimoire", "=ds=#s15#", "#HONOR:190#"};
			{ 26, 51409, "", "=q4=Wrathful Gladiator's Reprieve", "=ds=#s15#", "#HONOR:190#"};
		};
	};
    info = {
        name = BabbleBoss["Arena Weapons"],
        module = moduleName,
        instance = "dalaran",
    },
}


Synastria_Data["PVP Sets"] = {
	["Normal"] = {
		{
			{ 1, 0, "spell_deathknight_classicon", "=q6=#arenas10#", ""};
			{ 2, 51415, "", "=q4=Wrathful Gladiator's Dreadplate Helm", "=ds=", "#HONOR:1650#"};
			{ 3, 51418, "", "=q4=Wrathful Gladiator's Dreadplate Shoulders", "=ds=", "#HONOR:1040#"};
			{ 4, 51413, "", "=q4=Wrathful Gladiator's Dreadplate Chestpiece", "=ds=", "#HONOR:1650#"};
			{ 5, 51414, "", "=q4=Wrathful Gladiator's Dreadplate Gauntlets", "=ds=", "#HONOR:1040#"};
			{ 6, 51416, "", "=q4=Wrathful Gladiator's Dreadplate Legguards", "=ds=", "#HONOR:1650#"};
			{ 8, 0, "spell_deathknight_classicon", "=q6=#arenas10#", ""};

			{ 16, 0, "spell_deathknight_classicon", "=q6=#arenas10#", ""};
			{ 17, 40827, "", "=q4=Furious Gladiator's Dreadplate Helm", "=ds=", "#JUSTICE:935#"};
			{ 18, 40868, "", "=q4=Furious Gladiator's Dreadplate Shoulders", "=ds=", "#JUSTICE:591#"};
			{ 19, 40787, "", "=q4=Furious Gladiator's Dreadplate Chestpiece", "=ds=", "#JUSTICE:935#"};
			{ 20, 40809, "", "=q4=Furious Gladiator's Dreadplate Gauntlets", "=ds=", "#JUSTICE:591#"};
			{ 21, 40848, "", "=q4=Furious Gladiator's Dreadplate Legguards", "=ds=", "#JUSTICE:935#"};
			{ 23, 0, "spell_deathknight_classicon", "=q6=#arenas10#", ""};
			{ 24, 40824, "", "=q4=Deadly Gladiator's Dreadplate Helm", "=ds=", "#JUSTICE:770#"};
			{ 25, 40863, "", "=q4=Deadly Gladiator's Dreadplate Shoulders", "=ds=", "#JUSTICE:487#"};
			{ 26, 40784, "", "=q4=Deadly Gladiator's Dreadplate Chestpiece", "=ds=", "#JUSTICE:770#"};
			{ 27, 40806, "", "=q4=Deadly Gladiator's Dreadplate Gauntlets", "=ds=", "#JUSTICE:487#"};
			{ 28, 40845, "", "=q4=Deadly Gladiator's Dreadplate Legguards", "=ds=", "#JUSTICE:770#"};
		};
		{
			{ 1, 0, "spell_deathknight_classicon", "=q6=#arenas10#", ""};
			{ 2, 40820, "", "=q4=Hateful Gladiator's Dreadplate Helm", "=ds=", "#JUSTICE:660#"};
			{ 3, 40860, "", "=q4=Hateful Gladiator's Dreadplate Shoulders", "=ds=", "#JUSTICE:417#"};
			{ 4, 40781, "", "=q4=Hateful Gladiator's Dreadplate Chestpiece", "=ds=", "#JUSTICE:660#"};
			{ 5, 40803, "", "=q4=Hateful Gladiator's Dreadplate Gauntlets", "=ds=", "#JUSTICE:417#"};
			{ 6, 40841, "", "=q4=Hateful Gladiator's Dreadplate Legguards", "=ds=", "#JUSTICE:660#"};
			{ 8, 0, "spell_deathknight_classicon", "=q6=#arenas10#", ""};
			{ 9, 40817, "", "=q3=Savage Gladiator's Dreadplate Helm", "=ds=", "#JUSTICE:550#"};
			{ 10, 40857, "", "=q3=Savage Gladiator's Dreadplate Shoulders", "=ds=", "#JUSTICE:348#"};
			{ 11, 40779, "", "=q3=Savage Gladiator's Dreadplate Chestpiece", "=ds=", "#JUSTICE:550#"};
			{ 12, 40799, "", "=q3=Savage Gladiator's Dreadplate Gauntlets", "=ds=", "#JUSTICE:348#"};
			{ 13, 40837, "", "=q3=Savage Gladiator's Dreadplate Legguards", "=ds=", "#JUSTICE:550#"};
		};
		{
			{ 1, 0, "spell_nature_starfall", "=q6=#arenas1_2#", ""};
			{ 2, 51435, "", "=q4=Wrathful Gladiator's Wyrmhide Helm", "=ds=", "#HONOR:1650#"};
			{ 3, 51438, "", "=q4=Wrathful Gladiator's Wyrmhide Spaulders", "=ds=", "#HONOR:1040#"};
			{ 4, 51433, "", "=q4=Wrathful Gladiator's Wyrmhide Robes", "=ds=", "#HONOR:1650#"};
			{ 5, 51434, "", "=q4=Wrathful Gladiator's Wyrmhide Gloves", "=ds=", "#HONOR:1040#"};
			{ 6, 51436, "", "=q4=Wrathful Gladiator's Wyrmhide Legguards", "=ds=", "#HONOR:1650#"};
			{ 8, 0, "spell_nature_starfall", "=q6=#arenas1_2#", ""};

			{ 16, 0, "spell_nature_starfall", "=q6=#arenas1_2#", ""};
			{ 17, 41327, "", "=q4=Furious Gladiator's Wyrmhide Helm", "=ds=", "#JUSTICE:935#"};
			{ 18, 41281, "", "=q4=Furious Gladiator's Wyrmhide Spaulders", "=ds=", "#JUSTICE:591#"};
			{ 19, 41316, "", "=q4=Furious Gladiator's Wyrmhide Robes", "=ds=", "#JUSTICE:935#"};
			{ 20, 41293, "", "=q4=Furious Gladiator's Wyrmhide Gloves", "=ds=", "#JUSTICE:591#"};
			{ 21, 41304, "", "=q4=Furious Gladiator's Wyrmhide Legguards", "=ds=", "#JUSTICE:935#"};
			{ 23, 0, "spell_nature_starfall", "=q6=#arenas1_2#", ""};
			{ 24, 41326, "", "=q4=Deadly Gladiator's Wyrmhide Helm", "=ds=", "#JUSTICE:770#"};
			{ 25, 41280, "", "=q4=Deadly Gladiator's Wyrmhide Spaulders", "=ds=", "#JUSTICE:487#"};
			{ 26, 41315, "", "=q4=Deadly Gladiator's Wyrmhide Robes", "=ds=", "#JUSTICE:770#"};
			{ 27, 41292, "", "=q4=Deadly Gladiator's Wyrmhide Gloves", "=ds=", "#JUSTICE:487#"};
			{ 28, 41303, "", "=q4=Deadly Gladiator's Wyrmhide Legguards", "=ds=", "#JUSTICE:770#"};
		};
		{
			{ 1, 0, "spell_nature_starfall", "=q6=#arenas1_2#", ""};
			{ 2, 41325, "", "=q4=Hateful Gladiator's Wyrmhide Helm", "=ds=", "#JUSTICE:660#"};
			{ 3, 41279, "", "=q4=Hateful Gladiator's Wyrmhide Spaulders", "=ds=", "#JUSTICE:417#"};
			{ 4, 41314, "", "=q4=Hateful Gladiator's Wyrmhide Robes", "=ds=", "#JUSTICE:660#"};
			{ 5, 41291, "", "=q4=Hateful Gladiator's Wyrmhide Gloves", "=ds=", "#JUSTICE:417#"};
			{ 6, 41302, "", "=q4=Hateful Gladiator's Wyrmhide Legguards", "=ds=", "#JUSTICE:660#"};
			{ 8, 0, "spell_nature_starfall", "=q6=#arenas1_2#", ""};
			{ 9, 41324, "", "=q3=Savage Gladiator's Wyrmhide Helm", "=ds=", "#JUSTICE:550#"};
			{ 10, 41278, "", "=q3=Savage Gladiator's Wyrmhide Spaulders", "=ds=", "#JUSTICE:348#"};
			{ 11, 41313, "", "=q3=Savage Gladiator's Wyrmhide Robes", "=ds=", "#JUSTICE:550#"};
			{ 12, 41290, "", "=q3=Savage Gladiator's Wyrmhide Gloves", "=ds=", "#JUSTICE:348#"};
			{ 13, 41301, "", "=q3=Savage Gladiator's Wyrmhide Legguards", "=ds=", "#JUSTICE:550#"};
		};
		{
			{ 1, 0, "ability_racial_bearform", "=q6=#arenas1_1#", ""};
			{ 2, 51427, "", "=q4=Wrathful Gladiator's Dragonhide Helm", "=ds=", "#HONOR:1650#"};
			{ 3, 51430, "", "=q4=Wrathful Gladiator's Dragonhide Spaulders", "=ds=", "#HONOR:1040#"};
			{ 4, 51425, "", "=q4=Wrathful Gladiator's Dragonhide Robes", "=ds=", "#HONOR:1650#"};
			{ 5, 51426, "", "=q4=Wrathful Gladiator's Dragonhide Gloves", "=ds=", "#HONOR:1040#"};
			{ 6, 51428, "", "=q4=Wrathful Gladiator's Dragonhide Legguards", "=ds=", "#HONOR:1650#"};
			{ 8, 0, "ability_racial_bearform", "=q6=#arenas1_1#", ""};

			{ 16, 0, "ability_racial_bearform", "=q6=#arenas1_1#", ""};
			{ 17, 41678, "", "=q4=Furious Gladiator's Dragonhide Helm", "=ds=", "#JUSTICE:935#"};
			{ 18, 41715, "", "=q4=Furious Gladiator's Dragonhide Spaulders", "=ds=", "#JUSTICE:591#"};
			{ 19, 41661, "", "=q4=Furious Gladiator's Dragonhide Robes", "=ds=", "#JUSTICE:935#"};
			{ 20, 41773, "", "=q4=Furious Gladiator's Dragonhide Gloves", "=ds=", "#JUSTICE:591#"};
			{ 21, 41667, "", "=q4=Furious Gladiator's Dragonhide Legguards", "=ds=", "#JUSTICE:935#"};
			{ 23, 0, "ability_racial_bearform", "=q6=#arenas1_1#", ""};
			{ 24, 41677, "", "=q4=Deadly Gladiator's Dragonhide Helm", "=ds=", "#JUSTICE:770#"};
			{ 25, 41714, "", "=q4=Deadly Gladiator's Dragonhide Spaulders", "=ds=", "#JUSTICE:487#"};
			{ 26, 41660, "", "=q4=Deadly Gladiator's Dragonhide Robes", "=ds=", "#JUSTICE:770#"};
			{ 27, 41772, "", "=q4=Deadly Gladiator's Dragonhide Gloves", "=ds=", "#JUSTICE:487#"};
			{ 28, 41666, "", "=q4=Deadly Gladiator's Dragonhide Legguards", "=ds=", "#JUSTICE:770#"};
		};
		{
			{ 1, 0, "ability_racial_bearform", "=q6=#arenas1_1#", ""};
			{ 2, 41676, "", "=q4=Hateful Gladiator's Dragonhide Helm", "=ds=", "#JUSTICE:660#"};
			{ 3, 41713, "", "=q4=Hateful Gladiator's Dragonhide Spaulders", "=ds=", "#JUSTICE:417#"};
			{ 4, 41659, "", "=q4=Hateful Gladiator's Dragonhide Robes", "=ds=", "#JUSTICE:660#"};
			{ 5, 41771, "", "=q4=Hateful Gladiator's Dragonhide Gloves", "=ds=", "#JUSTICE:417#"};
			{ 6, 41665, "", "=q4=Hateful Gladiator's Dragonhide Legguards", "=ds=", "#JUSTICE:660#"};
			{ 8, 0, "ability_racial_bearform", "=q6=#arenas1_1#", ""};
			{ 9, 41675, "", "=q3=Savage Gladiator's Dragonhide Helm", "=ds=", "#JUSTICE:550#"};
			{ 10, 41712, "", "=q3=Savage Gladiator's Dragonhide Spaulders", "=ds=", "#JUSTICE:348#"};
			{ 11, 41658, "", "=q3=Savage Gladiator's Dragonhide Robes", "=ds=", "#JUSTICE:550#"};
			{ 12, 41770, "", "=q3=Savage Gladiator's Dragonhide Gloves", "=ds=", "#JUSTICE:348#"};
			{ 13, 41664, "", "=q3=Savage Gladiator's Dragonhide Legguards", "=ds=", "#JUSTICE:550#"};
		};
		{
			{ 1, 0, "spell_nature_healingtouch", "=q6=#arenas1_3#", ""};
			{ 2, 51421, "", "=q4=Wrathful Gladiator's Kodohide Helm", "=ds=", "#HONOR:1650#"};
			{ 3, 51424, "", "=q4=Wrathful Gladiator's Kodohide Spaulders", "=ds=", "#HONOR:1040#"};
			{ 4, 51419, "", "=q4=Wrathful Gladiator's Kodohide Robes", "=ds=", "#HONOR:1650#"};
			{ 5, 51420, "", "=q4=Wrathful Gladiator's Kodohide Gloves", "=ds=", "#HONOR:1040#"};
			{ 6, 51422, "", "=q4=Wrathful Gladiator's Kodohide Legguards", "=ds=", "#HONOR:1650#"};
			{ 8, 0, "spell_nature_healingtouch", "=q6=#arenas1_3#", ""};

			{ 16, 0, "spell_nature_healingtouch", "=q6=#arenas1_3#", ""};
			{ 17, 41321, "", "=q4=Furious Gladiator's Kodohide Helm", "=ds=", "#JUSTICE:935#"};
			{ 18, 41275, "", "=q4=Furious Gladiator's Kodohide Spaulders", "=ds=", "#JUSTICE:591#"};
			{ 19, 41310, "", "=q4=Furious Gladiator's Kodohide Robes", "=ds=", "#JUSTICE:935#"};
			{ 20, 41287, "", "=q4=Furious Gladiator's Kodohide Gloves", "=ds=", "#JUSTICE:591#"};
			{ 21, 41298, "", "=q4=Furious Gladiator's Kodohide Legguards", "=ds=", "#JUSTICE:935#"};
			{ 23, 0, "spell_nature_healingtouch", "=q6=#arenas1_3#", ""};
			{ 24, 41320, "", "=q4=Deadly Gladiator's Kodohide Helm", "=ds=", "#JUSTICE:770#"};
			{ 25, 41274, "", "=q4=Deadly Gladiator's Kodohide Spaulders", "=ds=", "#JUSTICE:487#"};
			{ 26, 41309, "", "=q4=Deadly Gladiator's Kodohide Robes", "=ds=", "#JUSTICE:770#"};
			{ 27, 41286, "", "=q4=Deadly Gladiator's Kodohide Gloves", "=ds=", "#JUSTICE:487#"};
			{ 28, 41297, "", "=q4=Deadly Gladiator's Kodohide Legguards", "=ds=", "#JUSTICE:770#"};
		};
		{
			{ 1, 0, "spell_nature_healingtouch", "=q6=#arenas1_3#", ""};
			{ 2, 41319, "", "=q4=Hateful Gladiator's Kodohide Helm", "=ds=", "#JUSTICE:660#"};
			{ 3, 41273, "", "=q4=Hateful Gladiator's Kodohide Spaulders", "=ds=", "#JUSTICE:417#"};
			{ 4, 41308, "", "=q4=Hateful Gladiator's Kodohide Robes", "=ds=", "#JUSTICE:660#"};
			{ 5, 41284, "", "=q4=Hateful Gladiator's Kodohide Gloves", "=ds=", "#JUSTICE:417#"};
			{ 6, 41296, "", "=q4=Hateful Gladiator's Kodohide Legguards", "=ds=", "#JUSTICE:660#"};
			{ 8, 0, "spell_nature_healingtouch", "=q6=#arenas1_3#", ""};
			{ 9, 41269, "", "=q3=Savage Gladiator's Kodohide Helm", "=ds=", "#JUSTICE:550#"};
			{ 10, 41271, "", "=q3=Savage Gladiator's Kodohide Spaulders", "=ds=", "#JUSTICE:348#"};
			{ 11, 41272, "", "=q3=Savage Gladiator's Kodohide Robes", "=ds=", "#JUSTICE:550#"};
			{ 12, 41268, "", "=q3=Savage Gladiator's Kodohide Gloves", "=ds=", "#JUSTICE:348#"};
			{ 13, 41270, "", "=q3=Savage Gladiator's Kodohide Legguards", "=ds=", "#JUSTICE:550#"};
		};
		{
			{ 1, 0, "inv_weapon_bow_07", "=q6=#arenas2#", ""};
			{ 2, 51460, "", "=q4=Wrathful Gladiator's Chain Helm", "=ds=", "#HONOR:1650#"};
			{ 3, 51462, "", "=q4=Wrathful Gladiator's Chain Spaulders", "=ds=", "#HONOR:1040#"};
			{ 4, 51458, "", "=q4=Wrathful Gladiator's Chain Armor", "=ds=", "#HONOR:1650#"};
			{ 5, 51459, "", "=q4=Wrathful Gladiator's Chain Gauntlets", "=ds=", "#HONOR:1040#"};
			{ 6, 51461, "", "=q4=Wrathful Gladiator's Chain Leggings", "=ds=", "#HONOR:1650#"};
			{ 8, 0, "inv_weapon_bow_07", "=q6=#arenas2#", ""};

			{ 16, 0, "inv_weapon_bow_07", "=q6=#arenas2#", ""};
			{ 17, 41157, "", "=q4=Furious Gladiator's Chain Helm", "=ds=", "#JUSTICE:935#"};
			{ 18, 41217, "", "=q4=Furious Gladiator's Chain Spaulders", "=ds=", "#JUSTICE:591#"};
			{ 19, 41087, "", "=q4=Furious Gladiator's Chain Armor", "=ds=", "#JUSTICE:935#"};
			{ 20, 41143, "", "=q4=Furious Gladiator's Chain Gauntlets", "=ds=", "#JUSTICE:591#"};
			{ 21, 41205, "", "=q4=Furious Gladiator's Chain Leggings", "=ds=", "#JUSTICE:935#"};
			{ 23, 0, "inv_weapon_bow_07", "=q6=#arenas2#", ""};
			{ 24, 41156, "", "=q4=Deadly Gladiator's Chain Helm", "=ds=", "#JUSTICE:770#"};
			{ 25, 41216, "", "=q4=Deadly Gladiator's Chain Spaulders", "=ds=", "#JUSTICE:487#"};
			{ 26, 41086, "", "=q4=Deadly Gladiator's Chain Armor", "=ds=", "#JUSTICE:770#"};
			{ 27, 41142, "", "=q4=Deadly Gladiator's Chain Gauntlets", "=ds=", "#JUSTICE:487#"};
			{ 28, 41204, "", "=q4=Deadly Gladiator's Chain Leggings", "=ds=", "#JUSTICE:770#"};
		};
		{
			{ 1, 0, "inv_weapon_bow_07", "=q6=#arenas2#", ""};
			{ 2, 41155, "", "=q4=Hateful Gladiator's Chain Helm", "=ds=", "#JUSTICE:660#"};
			{ 3, 41215, "", "=q4=Hateful Gladiator's Chain Spaulders", "=ds=", "#JUSTICE:417#"};
			{ 4, 41085, "", "=q4=Hateful Gladiator's Chain Armor", "=ds=", "#JUSTICE:660#"};
			{ 5, 41141, "", "=q4=Hateful Gladiator's Chain Gauntlets", "=ds=", "#JUSTICE:417#"};
			{ 6, 41203, "", "=q4=Hateful Gladiator's Chain Leggings", "=ds=", "#JUSTICE:660#"};
			{ 8, 0, "inv_weapon_bow_07", "=q6=#arenas2#", ""};
			{ 9, 41154, "", "=q3=Savage Gladiator's Chain Helm", "=ds=", "#JUSTICE:550#"};
			{ 10, 41214, "", "=q3=Savage Gladiator's Chain Spaulders", "=ds=", "#JUSTICE:348#"};
			{ 11, 41084, "", "=q3=Savage Gladiator's Chain Armor", "=ds=", "#JUSTICE:550#"};
			{ 12, 41140, "", "=q3=Savage Gladiator's Chain Gauntlets", "=ds=", "#JUSTICE:348#"};
			{ 13, 41202, "", "=q3=Savage Gladiator's Chain Leggings", "=ds=", "#JUSTICE:550#"};
		};
		{
			{ 1, 0, "inv_staff_13", "=q6=#arenas3#", ""};
			{ 2, 51465, "", "=q4=Wrathful Gladiator's Silk Cowl", "=ds=", "#HONOR:1650#"};
			{ 3, 51467, "", "=q4=Wrathful Gladiator's Silk Amice", "=ds=", "#HONOR:1040#"};
			{ 4, 51463, "", "=q4=Wrathful Gladiator's Silk Raiment", "=ds=", "#HONOR:1650#"};
			{ 5, 51464, "", "=q4=Wrathful Gladiator's Silk Handguards", "=ds=", "#HONOR:1040#"};
			{ 6, 51466, "", "=q4=Wrathful Gladiator's Silk Trousers", "=ds=", "#HONOR:1650#"};
			{ 8, 0, "inv_staff_13", "=q6=#arenas3#", ""};

			{ 16, 0, "inv_staff_13", "=q6=#arenas3#", ""};
			{ 17, 41946, "", "=q4=Furious Gladiator's Silk Cowl", "=ds=", "#JUSTICE:935#"};
			{ 18, 41965, "", "=q4=Furious Gladiator's Silk Amice", "=ds=", "#JUSTICE:591#"};
			{ 19, 41953, "", "=q4=Furious Gladiator's Silk Raiment", "=ds=", "#JUSTICE:935#"};
			{ 20, 41971, "", "=q4=Furious Gladiator's Silk Handguards", "=ds=", "#JUSTICE:591#"};
			{ 21, 41959, "", "=q4=Furious Gladiator's Silk Trousers", "=ds=", "#JUSTICE:935#"};
			{ 23, 0, "inv_staff_13", "=q6=#arenas3#", ""};
			{ 24, 41945, "", "=q4=Deadly Gladiator's Silk Cowl", "=ds=", "#JUSTICE:770#"};
			{ 25, 41964, "", "=q4=Deadly Gladiator's Silk Amice", "=ds=", "#JUSTICE:487#"};
			{ 26, 41951, "", "=q4=Deadly Gladiator's Silk Raiment", "=ds=", "#JUSTICE:770#"};
			{ 27, 41970, "", "=q4=Deadly Gladiator's Silk Handguards", "=ds=", "#JUSTICE:487#"};
			{ 28, 41958, "", "=q4=Deadly Gladiator's Silk Trousers", "=ds=", "#JUSTICE:770#"};
		};
		{
			{ 1, 0, "inv_staff_13", "=q6=#arenas3#", ""};
			{ 2, 41944, "", "=q4=Hateful Gladiator's Silk Cowl", "=ds=", "#JUSTICE:660#"};
			{ 3, 41963, "", "=q4=Hateful Gladiator's Silk Amice", "=ds=", "#JUSTICE:417#"};
			{ 4, 41950, "", "=q4=Hateful Gladiator's Silk Raiment", "=ds=", "#JUSTICE:660#"};
			{ 5, 41969, "", "=q4=Hateful Gladiator's Silk Handguards", "=ds=", "#JUSTICE:417#"};
			{ 6, 41957, "", "=q4=Hateful Gladiator's Silk Trousers", "=ds=", "#JUSTICE:660#"};
			{ 8, 0, "inv_staff_13", "=q6=#arenas3#", ""};
			{ 9, 41943, "", "=q3=Savage Gladiator's Silk Cowl", "=ds=", "#JUSTICE:550#"};
			{ 10, 41962, "", "=q3=Savage Gladiator's Silk Amice", "=ds=", "#JUSTICE:348#"};
			{ 11, 41949, "", "=q3=Savage Gladiator's Silk Raiment", "=ds=", "#JUSTICE:550#"};
			{ 12, 41968, "", "=q3=Savage Gladiator's Silk Handguards", "=ds=", "#JUSTICE:348#"};
			{ 13, 41956, "", "=q3=Savage Gladiator's Silk Trousers", "=ds=", "#JUSTICE:550#"};
		};
		{
			{ 1, 0, "Spell_Holy_AuraOfLight", "=q6=#arenas4_2#", ""};
			{ 2, 51476, "", "=q4=Wrathful Gladiator's Scaled Helm", "=ds=", "#HONOR:1650#"};
			{ 3, 51479, "", "=q4=Wrathful Gladiator's Scaled Shoulders", "=ds=", "#HONOR:1040#"};
			{ 4, 51474, "", "=q4=Wrathful Gladiator's Scaled Chestpiece", "=ds=", "#HONOR:1650#"};
			{ 5, 51475, "", "=q4=Wrathful Gladiator's Scaled Gauntlets", "=ds=", "#HONOR:1040#"};
			{ 6, 51477, "", "=q4=Wrathful Gladiator's Scaled Legguards", "=ds=", "#HONOR:1650#"};
			{ 8, 0, "Spell_Holy_AuraOfLight", "=q6=#arenas4_2#", ""};

			{ 16, 0, "Spell_Holy_AuraOfLight", "=q6=#arenas4_2#", ""};
			{ 17, 40828, "", "=q4=Furious Gladiator's Scaled Helm", "=ds=", "#JUSTICE:935#"};
			{ 18, 40869, "", "=q4=Furious Gladiator's Scaled Shoulders", "=ds=", "#JUSTICE:591#"};
			{ 19, 40788, "", "=q4=Furious Gladiator's Scaled Chestpiece", "=ds=", "#JUSTICE:935#"};
			{ 20, 40808, "", "=q4=Furious Gladiator's Scaled Gauntlets", "=ds=", "#JUSTICE:591#"};
			{ 21, 40849, "", "=q4=Furious Gladiator's Scaled Legguards", "=ds=", "#JUSTICE:935#"};
			{ 23, 0, "Spell_Holy_AuraOfLight", "=q6=#arenas4_2#", ""};
			{ 24, 40825, "", "=q4=Deadly Gladiator's Scaled Helm", "=ds=", "#JUSTICE:770#"};
			{ 25, 40864, "", "=q4=Deadly Gladiator's Scaled Shoulders", "=ds=", "#JUSTICE:487#"};
			{ 26, 40785, "", "=q4=Deadly Gladiator's Scaled Chestpiece", "=ds=", "#JUSTICE:770#"};
			{ 27, 40805, "", "=q4=Deadly Gladiator's Scaled Gauntlets", "=ds=", "#JUSTICE:487#"};
			{ 28, 40846, "", "=q4=Deadly Gladiator's Scaled Legguards", "=ds=", "#JUSTICE:770#"};
		};
		{
			{ 1, 0, "Spell_Holy_AuraOfLight", "=q6=#arenas4_2#", ""};
			{ 2, 40821, "", "=q4=Hateful Gladiator's Scaled Helm", "=ds=", "#JUSTICE:660#"};
			{ 3, 40861, "", "=q4=Hateful Gladiator's Scaled Shoulders", "=ds=", "#JUSTICE:417#"};
			{ 4, 40782, "", "=q4=Hateful Gladiator's Scaled Chestpiece", "=ds=", "#JUSTICE:660#"};
			{ 5, 40802, "", "=q4=Hateful Gladiator's Scaled Gauntlets", "=ds=", "#JUSTICE:417#"};
			{ 6, 40842, "", "=q4=Hateful Gladiator's Scaled Legguards", "=ds=", "#JUSTICE:660#"};
			{ 8, 0, "Spell_Holy_AuraOfLight", "=q6=#arenas4_2#", ""};
			{ 9, 40818, "", "=q3=Savage Gladiator's Scaled Helm", "=ds=", "#JUSTICE:550#"};
			{ 10, 40858, "", "=q3=Savage Gladiator's Scaled Shoulders", "=ds=", "#JUSTICE:348#"};
			{ 11, 40780, "", "=q3=Savage Gladiator's Scaled Chestpiece", "=ds=", "#JUSTICE:550#"};
			{ 12, 40798, "", "=q3=Savage Gladiator's Scaled Gauntlets", "=ds=", "#JUSTICE:348#"};
			{ 13, 40838, "", "=q3=Savage Gladiator's Scaled Legguards", "=ds=", "#JUSTICE:550#"};
		};
		{
			{ 1, 0, "Spell_Holy_HolyBolt", "=q6=#arenas4_3#", ""};
			{ 2, 51470, "", "=q4=Wrathful Gladiator's Ornamented Headcover", "=ds=", "#HONOR:1650#"};
			{ 3, 51473, "", "=q4=Wrathful Gladiator's Ornamented Spaulders", "=ds=", "#HONOR:1040#"};
			{ 4, 51468, "", "=q4=Wrathful Gladiator's Ornamented Chestguard", "=ds=", "#HONOR:1650#"};
			{ 5, 51469, "", "=q4=Wrathful Gladiator's Ornamented Gloves", "=ds=", "#HONOR:1040#"};
			{ 6, 51471, "", "=q4=Wrathful Gladiator's Ornamented Legplates", "=ds=", "#HONOR:1650#"};
			{ 8, 0, "Spell_Holy_HolyBolt", "=q6=#arenas4_3#", ""};

			{ 16, 0, "Spell_Holy_HolyBolt", "=q6=#arenas4_3#", ""};
			{ 17, 40933, "", "=q4=Furious Gladiator's Ornamented Headcover", "=ds=", "#JUSTICE:935#"};
			{ 18, 40963, "", "=q4=Furious Gladiator's Ornamented Spaulders", "=ds=", "#JUSTICE:591#"};
			{ 19, 40907, "", "=q4=Furious Gladiator's Ornamented Chestguard", "=ds=", "#JUSTICE:935#"};
			{ 20, 40927, "", "=q4=Furious Gladiator's Ornamented Gloves", "=ds=", "#JUSTICE:591#"};
			{ 21, 40939, "", "=q4=Furious Gladiator's Ornamented Legplates", "=ds=", "#JUSTICE:935#"};
			{ 23, 0, "Spell_Holy_HolyBolt", "=q6=#arenas4_3#", ""};
			{ 24, 40932, "", "=q4=Deadly Gladiator's Ornamented Headcover", "=ds=", "#JUSTICE:770#"};
			{ 25, 40962, "", "=q4=Deadly Gladiator's Ornamented Spaulders", "=ds=", "#JUSTICE:487#"};
			{ 26, 40905, "", "=q4=Deadly Gladiator's Ornamented Chestguard", "=ds=", "#JUSTICE:770#"};
			{ 27, 40926, "", "=q4=Deadly Gladiator's Ornamented Gloves", "=ds=", "#JUSTICE:487#"};
			{ 28, 40938, "", "=q4=Deadly Gladiator's Ornamented Legplates", "=ds=", "#JUSTICE:770#"};
		};
		{
			{ 1, 0, "Spell_Holy_HolyBolt", "=q6=#arenas4_3#", ""};
			{ 2, 40931, "", "=q4=Hateful Gladiator's Ornamented Headcover", "=ds=", "#JUSTICE:660#"};
			{ 3, 40961, "", "=q4=Hateful Gladiator's Ornamented Spaulders", "=ds=", "#JUSTICE:417#"};
			{ 4, 40904, "", "=q4=Hateful Gladiator's Ornamented Gloves", "=ds=", "#JUSTICE:660#"};
			{ 5, 40925, "", "=q4=Hateful Gladiator's Ornamented Chestguard", "=ds=", "#JUSTICE:417#"};
			{ 6, 40937, "", "=q4=Hateful Gladiator's Ornamented Legplates", "=ds=", "#JUSTICE:660#"};
			{ 8, 0, "Spell_Holy_HolyBolt", "=q6=#arenas4_3#", ""};
			{ 9, 40930, "", "=q3=Savage Gladiator's Ornamented Headcover", "=ds=", "#JUSTICE:550#"};
			{ 10, 40960, "", "=q3=Savage Gladiator's Ornamented Spaulders", "=ds=", "#JUSTICE:348#"};
			{ 11, 40898, "", "=q3=Savage Gladiator's Ornamented Chestguard", "=ds=", "#JUSTICE:550#"};
			{ 12, 40918, "", "=q3=Savage Gladiator's Ornamented Gloves", "=ds=", "#JUSTICE:348#"};
			{ 13, 40936, "", "=q3=Savage Gladiator's Ornamented Legplates", "=ds=", "#JUSTICE:550#"};
		};
		{
			{ 1, 0, "spell_shadow_shadowwordpain", "=q6=#arenas5_1#", ""};
			{ 2, 51489, "", "=q4=Wrathful Gladiator's Satin Hood", "=ds=", "#HONOR:1650#"};
			{ 3, 51491, "", "=q4=Wrathful Gladiator's Satin Mantle", "=ds=", "#HONOR:1040#"};
			{ 4, 51487, "", "=q4=Wrathful Gladiator's Satin Robe", "=ds=", "#HONOR:1650#"};
			{ 5, 51488, "", "=q4=Wrathful Gladiator's Satin Gloves", "=ds=", "#HONOR:1040#"};
			{ 6, 51490, "", "=q4=Wrathful Gladiator's Satin Leggings", "=ds=", "#HONOR:1650#"};
			{ 8, 0, "spell_shadow_shadowwordpain", "=q6=#arenas5_1#", ""};

			{ 16, 0, "spell_shadow_shadowwordpain", "=q6=#arenas5_1#", ""};
			{ 17, 41915, "", "=q4=Furious Gladiator's Satin Hood", "=ds=", "#JUSTICE:935#"};
			{ 18, 41934, "", "=q4=Furious Gladiator's Satin Mantle", "=ds=", "#JUSTICE:591#"};
			{ 19, 41921, "", "=q4=Furious Gladiator's Satin Robe", "=ds=", "#JUSTICE:935#"};
			{ 20, 41940, "", "=q4=Furious Gladiator's Satin Gloves", "=ds=", "#JUSTICE:591#"};
			{ 21, 41927, "", "=q4=Furious Gladiator's Satin Leggings", "=ds=", "#JUSTICE:935#"};
			{ 23, 0, "spell_shadow_shadowwordpain", "=q6=#arenas5_1#", ""};
			{ 24, 41914, "", "=q4=Deadly Gladiator's Satin Hood", "=ds=", "#JUSTICE:770#"};
			{ 25, 41933, "", "=q4=Deadly Gladiator's Satin Mantle", "=ds=", "#JUSTICE:487#"};
			{ 26, 41920, "", "=q4=Deadly Gladiator's Satin Robe", "=ds=", "#JUSTICE:770#"};
			{ 27, 41939, "", "=q4=Deadly Gladiator's Satin Gloves", "=ds=", "#JUSTICE:487#"};
			{ 28, 41926, "", "=q4=Deadly Gladiator's Satin Leggings", "=ds=", "#JUSTICE:770#"};
		};
		{
			{ 1, 0, "spell_shadow_shadowwordpain", "=q6=#arenas5_1#", ""};
			{ 2, 41913, "", "=q4=Hateful Gladiator's Satin Hood", "=ds=", "#JUSTICE:660#"};
			{ 3, 41931, "", "=q4=Hateful Gladiator's Satin Mantle", "=ds=", "#JUSTICE:417#"};
			{ 4, 41919, "", "=q4=Hateful Gladiator's Satin Robe", "=ds=", "#JUSTICE:660#"};
			{ 5, 41938, "", "=q4=Hateful Gladiator's Satin Gloves", "=ds=", "#JUSTICE:417#"};
			{ 6, 41925, "", "=q4=Hateful Gladiator's Satin Leggings", "=ds=", "#JUSTICE:660#"};
			{ 8, 0, "spell_shadow_shadowwordpain", "=q6=#arenas5_1#", ""};
			{ 9, 41912, "", "=q3=Savage Gladiator's Satin Hood", "=ds=", "#JUSTICE:550#"};
			{ 10, 41930, "", "=q3=Savage Gladiator's Satin Mantle", "=ds=", "#JUSTICE:348#"};
			{ 11, 41918, "", "=q3=Savage Gladiator's Satin Robe", "=ds=", "#JUSTICE:550#"};
			{ 12, 41937, "", "=q3=Savage Gladiator's Satin Gloves", "=ds=", "#JUSTICE:348#"};
			{ 13, 41924, "", "=q3=Savage Gladiator's Satin Leggings", "=ds=", "#JUSTICE:550#"};
		};
		{
			{ 1, 0, "spell_holy_guardianspirit", "=q6=#arenas5_2#", ""};
			{ 2, 51484, "", "=q4=Wrathful Gladiator's Mooncloth Hood", "=ds=", "#HONOR:1650#"};
			{ 3, 51486, "", "=q4=Wrathful Gladiator's Mooncloth Mantle", "=ds=", "#HONOR:1040#"};
			{ 4, 51482, "", "=q4=Wrathful Gladiator's Mooncloth Robe", "=ds=", "#HONOR:1650#"};
			{ 5, 51483, "", "=q4=Wrathful Gladiator's Mooncloth Gloves", "=ds=", "#HONOR:1040#"};
			{ 6, 51485, "", "=q4=Wrathful Gladiator's Mooncloth Leggings", "=ds=", "#HONOR:1650#"};
			{ 8, 0, "spell_holy_guardianspirit", "=q6=#arenas5_2#", ""};

			{ 16, 0, "spell_holy_guardianspirit", "=q6=#arenas5_2#", ""};
			{ 17, 41854, "", "=q4=Furious Gladiator's Mooncloth Hood", "=ds=", "#JUSTICE:935#"};
			{ 18, 41869, "", "=q4=Furious Gladiator's Mooncloth Mantle", "=ds=", "#JUSTICE:591#"};
			{ 19, 41859, "", "=q4=Furious Gladiator's Mooncloth Robe", "=ds=", "#JUSTICE:935#"};
			{ 20, 41874, "", "=q4=Furious Gladiator's Mooncloth Gloves", "=ds=", "#JUSTICE:591#"};
			{ 21, 41864, "", "=q4=Furious Gladiator's Mooncloth Leggings", "=ds=", "#JUSTICE:935#"};
			{ 23, 0, "spell_holy_guardianspirit", "=q6=#arenas5_2#", ""};
			{ 24, 41853, "", "=q4=Deadly Gladiator's Mooncloth Hood", "=ds=", "#JUSTICE:770#"};
			{ 25, 41868, "", "=q4=Deadly Gladiator's Mooncloth Mantle", "=ds=", "#JUSTICE:487#"};
			{ 26, 41858, "", "=q4=Deadly Gladiator's Mooncloth Robe", "=ds=", "#JUSTICE:770#"};
			{ 27, 41873, "", "=q4=Deadly Gladiator's Mooncloth Gloves", "=ds=", "#JUSTICE:487#"};
			{ 28, 41863, "", "=q4=Deadly Gladiator's Mooncloth Leggings", "=ds=", "#JUSTICE:770#"};
		};
		{
			{ 1, 0, "spell_holy_guardianspirit", "=q6=#arenas5_2#", ""};
			{ 2, 41852, "", "=q4=Hateful Gladiator's Mooncloth Hood", "=ds=", "#JUSTICE:660#"};
			{ 3, 41867, "", "=q4=Hateful Gladiator's Mooncloth Mantle", "=ds=", "#JUSTICE:417#"};
			{ 4, 41857, "", "=q4=Hateful Gladiator's Mooncloth Robe", "=ds=", "#JUSTICE:660#"};
			{ 5, 41872, "", "=q4=Hateful Gladiator's Mooncloth Gloves", "=ds=", "#JUSTICE:417#"};
			{ 6, 41862, "", "=q4=Hateful Gladiator's Mooncloth Leggings", "=ds=", "#JUSTICE:660#"};
			{ 8, 0, "spell_holy_guardianspirit", "=q6=#arenas5_2#", ""};
			{ 9, 41848, "", "=q3=Savage Gladiator's Mooncloth Hood", "=ds=", "#JUSTICE:550#"};
			{ 10, 41850, "", "=q3=Savage Gladiator's Mooncloth Mantle", "=ds=", "#JUSTICE:348#"};
			{ 11, 41851, "", "=q3=Savage Gladiator's Mooncloth Robe", "=ds=", "#JUSTICE:550#"};
			{ 12, 41847, "", "=q3=Savage Gladiator's Mooncloth Gloves", "=ds=", "#JUSTICE:348#"};
			{ 13, 41849, "", "=q3=Savage Gladiator's Mooncloth Leggings", "=ds=", "#JUSTICE:550#"};
		};
		{
			{ 1, 0, "inv_throwingknife_04", "=q6=#arenas6#", ""};
			{ 2, 51494, "", "=q4=Wrathful Gladiator's Leather Helm", "=ds=", "#HONOR:1650#"};
			{ 3, 51496, "", "=q4=Wrathful Gladiator's Leather Spaulders", "=ds=", "#HONOR:1040#"};
			{ 4, 51492, "", "=q4=Wrathful Gladiator's Leather Tunic", "=ds=", "#HONOR:1650#"};
			{ 5, 51493, "", "=q4=Wrathful Gladiator's Leather Gloves", "=ds=", "#HONOR:1040#"};
			{ 6, 51495, "", "=q4=Wrathful Gladiator's Leather Legguards", "=ds=", "#HONOR:1650#"};
			{ 8, 0, "inv_throwingknife_04", "=q6=#arenas6#", ""};

			{ 16, 0, "inv_throwingknife_04", "=q6=#arenas6#", ""};
			{ 17, 41672, "", "=q4=Furious Gladiator's Leather Helm", "=ds=", "#JUSTICE:935#"};
			{ 18, 41683, "", "=q4=Furious Gladiator's Leather Spaulders", "=ds=", "#JUSTICE:591#"};
			{ 19, 41650, "", "=q4=Furious Gladiator's Leather Tunic", "=ds=", "#JUSTICE:935#"};
			{ 20, 41767, "", "=q4=Furious Gladiator's Leather Gloves", "=ds=", "#JUSTICE:591#"};
			{ 21, 41655, "", "=q4=Furious Gladiator's Leather Legguards", "=ds=", "#JUSTICE:935#"};
			{ 23, 0, "inv_throwingknife_04", "=q6=#arenas6#", ""};
			{ 24, 41671, "", "=q4=Deadly Gladiator's Leather Helm", "=ds=", "#JUSTICE:770#"};
			{ 25, 41682, "", "=q4=Deadly Gladiator's Leather Spaulders", "=ds=", "#JUSTICE:487#"};
			{ 26, 41649, "", "=q4=Deadly Gladiator's Leather Tunic", "=ds=", "#JUSTICE:770#"};
			{ 27, 41766, "", "=q4=Deadly Gladiator's Leather Gloves", "=ds=", "#JUSTICE:487#"};
			{ 28, 41654, "", "=q4=Deadly Gladiator's Leather Legguards", "=ds=", "#JUSTICE:770#"};
		};
		{
			{ 1, 0, "inv_throwingknife_04", "=q6=#arenas6#", ""};
			{ 2, 41670, "", "=q4=Hateful Gladiator's Leather Helm", "=ds=", "#JUSTICE:660#"};
			{ 3, 41681, "", "=q4=Hateful Gladiator's Leather Spaulders", "=ds=", "#JUSTICE:417#"};
			{ 4, 41648, "", "=q4=Hateful Gladiator's Leather Tunic", "=ds=", "#JUSTICE:660#"};
			{ 5, 41765, "", "=q4=Hateful Gladiator's Leather Gloves", "=ds=", "#JUSTICE:417#"};
			{ 6, 41653, "", "=q4=Hateful Gladiator's Leather Legguards", "=ds=", "#JUSTICE:660#"};
			{ 8, 0, "inv_throwingknife_04", "=q6=#arenas6#", ""};
			{ 9, 41644, "", "=q3=Savage Gladiator's Leather Helm", "=ds=", "#JUSTICE:550#"};
			{ 10, 41646, "", "=q3=Savage Gladiator's Leather Spaulders", "=ds=", "#JUSTICE:348#"};
			{ 11, 41647, "", "=q3=Savage Gladiator's Leather Tunic", "=ds=", "#JUSTICE:550#"};
			{ 12, 41643, "", "=q3=Savage Gladiator's Leather Gloves", "=ds=", "#JUSTICE:348#"};
			{ 13, 41645, "", "=q3=Savage Gladiator's Leather Legguards", "=ds=", "#JUSTICE:550#"};
		};
		{
			{ 1, 0, "Spell_Nature_Lightning", "=q6=#arenas7_2#", ""};
			{ 2, 51511, "", "=q4=Wrathful Gladiator's Mail Helm", "=ds=", "#HONOR:1650#"};
			{ 3, 51514, "", "=q4=Wrathful Gladiator's Mail Spaulders", "=ds=", "#HONOR:1040#"};
			{ 4, 51509, "", "=q4=Wrathful Gladiator's Mail Armor", "=ds=", "#HONOR:1650#"};
			{ 5, 51510, "", "=q4=Wrathful Gladiator's Mail Gauntlets", "=ds=", "#HONOR:1040#"};
			{ 6, 51512, "", "=q4=Wrathful Gladiator's Mail Leggings", "=ds=", "#HONOR:1650#"};
			{ 8, 0, "Spell_Nature_Lightning", "=q6=#arenas7_2#", ""};

			{ 16, 0, "Spell_Nature_Lightning", "=q6=#arenas7_2#", ""};
			{ 17, 41019, "", "=q4=Furious Gladiator's Mail Helm", "=ds=", "#JUSTICE:935#"};
			{ 18, 41044, "", "=q4=Furious Gladiator's Mail Spaulders", "=ds=", "#JUSTICE:591#"};
			{ 19, 40993, "", "=q4=Furious Gladiator's Mail Armor", "=ds=", "#JUSTICE:935#"};
			{ 20, 41007, "", "=q4=Furious Gladiator's Mail Gauntlets", "=ds=", "#JUSTICE:591#"};
			{ 21, 41033, "", "=q4=Furious Gladiator's Mail Leggings", "=ds=", "#JUSTICE:935#"};
			{ 23, 0, "Spell_Nature_Lightning", "=q6=#arenas7_2#", ""};
			{ 24, 41018, "", "=q4=Deadly Gladiator's Mail Helm", "=ds=", "#JUSTICE:770#"};
			{ 25, 41043, "", "=q4=Deadly Gladiator's Mail Spaulders", "=ds=", "#JUSTICE:487#"};
			{ 26, 40991, "", "=q4=Deadly Gladiator's Mail Armor", "=ds=", "#JUSTICE:770#"};
			{ 27, 41006, "", "=q4=Deadly Gladiator's Mail Gauntlets", "=ds=", "#JUSTICE:487#"};
			{ 28, 41032, "", "=q4=Deadly Gladiator's Mail Leggings", "=ds=", "#JUSTICE:770#"};
		};
		{
			{ 1, 0, "Spell_Nature_Lightning", "=q6=#arenas7_2#", ""};
			{ 2, 41017, "", "=q4=Hateful Gladiator's Mail Helm", "=ds=", "#JUSTICE:660#"};
			{ 3, 41042, "", "=q4=Hateful Gladiator's Mail Spaulders", "=ds=", "#JUSTICE:417#"};
			{ 4, 40989, "", "=q4=Hateful Gladiator's Mail Armor", "=ds=", "#JUSTICE:660#"};
			{ 5, 41005, "", "=q4=Hateful Gladiator's Mail Gauntlets", "=ds=", "#JUSTICE:417#"};
			{ 6, 41031, "", "=q4=Hateful Gladiator's Mail Leggings", "=ds=", "#JUSTICE:660#"};
			{ 8, 0, "Spell_Nature_Lightning", "=q6=#arenas7_2#", ""};
			{ 9, 41016, "", "=q3=Savage Gladiator's Mail Helm", "=ds=", "#JUSTICE:550#"};
			{ 10, 41041, "", "=q3=Savage Gladiator's Mail Spaulders", "=ds=", "#JUSTICE:348#"};
			{ 11, 40987, "", "=q3=Savage Gladiator's Mail Armor", "=ds=", "#JUSTICE:550#"};
			{ 12, 41004, "", "=q3=Savage Gladiator's Mail Gauntlets", "=ds=", "#JUSTICE:348#"};
			{ 13, 41030, "", "=q3=Savage Gladiator's Mail Leggings", "=ds=", "#JUSTICE:550#"};
		};
		{
			{ 1, 0, "spell_nature_lightningshield", "=q6=#arenas7_1#", ""};
			{ 2, 51505, "", "=q4=Wrathful Gladiator's Linked Helm", "=ds=", "#HONOR:1650#"};
			{ 3, 51508, "", "=q4=Wrathful Gladiator's Linked Spaulders", "=ds=", "#HONOR:1040#"};
			{ 4, 51503, "", "=q4=Wrathful Gladiator's Linked Armor", "=ds=", "#HONOR:1650#"};
			{ 5, 51504, "", "=q4=Wrathful Gladiator's Linked Gauntlets", "=ds=", "#HONOR:1040#"};
			{ 6, 51506, "", "=q4=Wrathful Gladiator's Linked Leggings", "=ds=", "#HONOR:1650#"};
			{ 8, 0, "spell_nature_lightningshield", "=q6=#arenas7_1#", ""};

			{ 16, 0, "spell_nature_lightningshield", "=q6=#arenas7_1#", ""};
			{ 17, 41151, "", "=q4=Furious Gladiator's Linked Helm", "=ds=", "#JUSTICE:935#"};
			{ 18, 41211, "", "=q4=Furious Gladiator's Linked Spaulders", "=ds=", "#JUSTICE:591#"};
			{ 19, 41081, "", "=q4=Furious Gladiator's Linked Armor", "=ds=", "#JUSTICE:935#"};
			{ 20, 41137, "", "=q4=Furious Gladiator's Linked Gauntlets", "=ds=", "#JUSTICE:591#"};
			{ 21, 41199, "", "=q4=Furious Gladiator's Linked Leggings", "=ds=", "#JUSTICE:935#"};
			{ 23, 0, "spell_nature_lightningshield", "=q6=#arenas7_1#", ""};
			{ 24, 41150, "", "=q4=Deadly Gladiator's Linked Helm", "=ds=", "#JUSTICE:770#"};
			{ 25, 41210, "", "=q4=Deadly Gladiator's Linked Spaulders", "=ds=", "#JUSTICE:487#"};
			{ 26, 41080, "", "=q4=Deadly Gladiator's Linked Armor", "=ds=", "#JUSTICE:770#"};
			{ 27, 41136, "", "=q4=Deadly Gladiator's Linked Gauntlets", "=ds=", "#JUSTICE:487#"};
			{ 28, 41198, "", "=q4=Deadly Gladiator's Linked Leggings", "=ds=", "#JUSTICE:770#"};
		};
		{
			{ 1, 0, "spell_nature_lightningshield", "=q6=#arenas7_1#", ""};
			{ 2, 41149, "", "=q4=Hateful Gladiator's Linked Helm", "=ds=", "#JUSTICE:660#"};
			{ 3, 41209, "", "=q4=Hateful Gladiator's Linked Spaulders", "=ds=", "#JUSTICE:417#"};
			{ 4, 41079, "", "=q4=Hateful Gladiator's Linked Armor", "=ds=", "#JUSTICE:660#"};
			{ 5, 41135, "", "=q4=Hateful Gladiator's Linked Gauntlets", "=ds=", "#JUSTICE:417#"};
			{ 6, 41162, "", "=q4=Hateful Gladiator's Linked Leggings", "=ds=", "#JUSTICE:660#"};
			{ 8, 0, "spell_nature_lightningshield", "=q6=#arenas7_1#", ""};
			{ 9, 41148, "", "=q3=Savage Gladiator's Linked Helm", "=ds=", "#JUSTICE:550#"};
			{ 10, 41208, "", "=q3=Savage Gladiator's Linked Spaulders", "=ds=", "#JUSTICE:348#"};
			{ 11, 41078, "", "=q3=Savage Gladiator's Linked Armor", "=ds=", "#JUSTICE:550#"};
			{ 12, 41134, "", "=q3=Savage Gladiator's Linked Gauntlets", "=ds=", "#JUSTICE:348#"};
			{ 13, 41160, "", "=q3=Savage Gladiator's Linked Leggings", "=ds=", "#JUSTICE:550#"};
		};
		{
			{ 1, 0, "spell_nature_magicimmunity", "=q6=#arenas7_3#", ""};
			{ 2, 51499, "", "=q4=Wrathful Gladiator's Ringmail Helm", "=ds=", "#HONOR:1650#"};
			{ 3, 51502, "", "=q4=Wrathful Gladiator's Ringmail Spaulders", "=ds=", "#HONOR:1040#"};
			{ 4, 51497, "", "=q4=Wrathful Gladiator's Ringmail Armor", "=ds=", "#HONOR:1650#"};
			{ 5, 51498, "", "=q4=Wrathful Gladiator's Ringmail Gauntlets", "=ds=", "#HONOR:1040#"};
			{ 6, 51500, "", "=q4=Wrathful Gladiator's Ringmail Leggings", "=ds=", "#HONOR:1650#"};
			{ 8, 0, "spell_nature_magicimmunity", "=q6=#arenas7_3#", ""};

			{ 16, 0, "spell_nature_magicimmunity", "=q6=#arenas7_3#", ""};
			{ 17, 41013, "", "=q4=Furious Gladiator's Ringmail Helm", "=ds=", "#JUSTICE:935#"};
			{ 18, 41038, "", "=q4=Furious Gladiator's Ringmail Spaulders", "=ds=", "#JUSTICE:591#"};
			{ 19, 40992, "", "=q4=Furious Gladiator's Ringmail Armor", "=ds=", "#JUSTICE:935#"};
			{ 20, 41001, "", "=q4=Furious Gladiator's Ringmail Gauntlets", "=ds=", "#JUSTICE:591#"};
			{ 21, 41027, "", "=q4=Furious Gladiator's Ringmail Leggings", "=ds=", "#JUSTICE:935#"};
			{ 23, 0, "spell_nature_magicimmunity", "=q6=#arenas7_3#", ""};
			{ 24, 41012, "", "=q4=Deadly Gladiator's Ringmail Helm", "=ds=", "#JUSTICE:770#"};
			{ 25, 41037, "", "=q4=Deadly Gladiator's Ringmail Spaulders", "=ds=", "#JUSTICE:487#"};
			{ 26, 40990, "", "=q4=Deadly Gladiator's Ringmail Armor", "=ds=", "#JUSTICE:770#"};
			{ 27, 41000, "", "=q4=Deadly Gladiator's Ringmail Gauntlets", "=ds=", "#JUSTICE:487#"};
			{ 28, 41026, "", "=q4=Deadly Gladiator's Ringmail Leggings", "=ds=", "#JUSTICE:770#"};
		};
		{
			{ 1, 0, "spell_nature_magicimmunity", "=q6=#arenas7_3#", ""};
			{ 2, 41011, "", "=q4=Hateful Gladiator's Ringmail Helm", "=ds=", "#JUSTICE:660#"};
			{ 3, 41036, "", "=q4=Hateful Gladiator's Ringmail Spaulders", "=ds=", "#JUSTICE:417#"};
			{ 4, 40988, "", "=q4=Hateful Gladiator's Ringmail Armor", "=ds=", "#JUSTICE:660#"};
			{ 5, 40999, "", "=q4=Hateful Gladiator's Ringmail Gauntlets", "=ds=", "#JUSTICE:417#"};
			{ 6, 41025, "", "=q4=Hateful Gladiator's Ringmail Leggings", "=ds=", "#JUSTICE:660#"};
			{ 8, 0, "spell_nature_magicimmunity", "=q6=#arenas7_3#", ""};
			{ 9, 41010, "", "=q3=Savage Gladiator's Ringmail Helm", "=ds=", "#JUSTICE:550#"};
			{ 10, 41024, "", "=q3=Savage Gladiator's Ringmail Spaulders", "=ds=", "#JUSTICE:348#"};
			{ 11, 40986, "", "=q3=Savage Gladiator's Ringmail Armor", "=ds=", "#JUSTICE:550#"};
			{ 12, 40998, "", "=q3=Savage Gladiator's Ringmail Gauntlets", "=ds=", "#JUSTICE:348#"};
			{ 13, 41023, "", "=q3=Savage Gladiator's Ringmail Leggings", "=ds=", "#JUSTICE:550#"};
		};
		{
			{ 1, 0, "spell_nature_drowsy", "=q6=#arenas8_2#", ""};
			{ 2, 51538, "", "=q4=Wrathful Gladiator's Felweave Cowl", "=ds=", "#HONOR:1650#"};
			{ 3, 51540, "", "=q4=Wrathful Gladiator's Felweave Amice", "=ds=", "#HONOR:1040#"};
			{ 4, 51536, "", "=q4=Wrathful Gladiator's Felweave Raiment", "=ds=", "#HONOR:1650#"};
			{ 5, 51537, "", "=q4=Wrathful Gladiator's Felweave Handguards", "=ds=", "#HONOR:1040#"};
			{ 6, 51539, "", "=q4=Wrathful Gladiator's Felweave Trousers", "=ds=", "#HONOR:1650#"};
			{ 8, 0, "spell_nature_drowsy", "=q6=#arenas8_2#", ""};

			{ 16, 0, "spell_nature_drowsy", "=q6=#arenas8_2#", ""};
			{ 17, 41993, "", "=q4=Furious Gladiator's Felweave Cowl", "=ds=", "#JUSTICE:935#"};
			{ 18, 42011, "", "=q4=Furious Gladiator's Felweave Amice", "=ds=", "#JUSTICE:591#"};
			{ 19, 41998, "", "=q4=Furious Gladiator's Felweave Raiment", "=ds=", "#JUSTICE:935#"};
			{ 20, 42017, "", "=q4=Furious Gladiator's Felweave Handguards", "=ds=", "#JUSTICE:591#"};
			{ 21, 42005, "", "=q4=Furious Gladiator's Felweave Trousers", "=ds=", "#JUSTICE:935#"};
			{ 23, 0, "spell_nature_drowsy", "=q6=#arenas8_2#", ""};
			{ 24, 41992, "", "=q4=Deadly Gladiator's Felweave Cowl", "=ds=", "#JUSTICE:770#"};
			{ 25, 42010, "", "=q4=Deadly Gladiator's Felweave Amice", "=ds=", "#JUSTICE:487#"};
			{ 26, 41997, "", "=q4=Deadly Gladiator's Felweave Raiment", "=ds=", "#JUSTICE:770#"};
			{ 27, 42016, "", "=q4=Deadly Gladiator's Felweave Handguards", "=ds=", "#JUSTICE:487#"};
			{ 28, 42004, "", "=q4=Deadly Gladiator's Felweave Trousers", "=ds=", "#JUSTICE:770#"};
		};
		{
			{ 1, 0, "spell_nature_drowsy", "=q6=#arenas8_2#", ""};
			{ 2, 41991, "", "=q4=Hateful Gladiator's Felweave Cowl", "=ds=", "#JUSTICE:660#"};
			{ 3, 42009, "", "=q4=Hateful Gladiator's Felweave Amice", "=ds=", "#JUSTICE:417#"};
			{ 4, 42001, "", "=q4=Hateful Gladiator's Felweave Raiment", "=ds=", "#JUSTICE:660#"};
			{ 5, 42015, "", "=q4=Hateful Gladiator's Felweave Handguards", "=ds=", "#JUSTICE:417#"};
			{ 6, 42003, "", "=q4=Hateful Gladiator's Felweave Trousers", "=ds=", "#JUSTICE:660#"};
			{ 8, 0, "spell_nature_drowsy", "=q6=#arenas8_2#", ""};
			{ 9, 41990, "", "=q3=Savage Gladiator's Felweave Cowl", "=ds=", "#JUSTICE:550#"};
			{ 10, 42008, "", "=q3=Savage Gladiator's Felweave Amice", "=ds=", "#JUSTICE:348#"};
			{ 11, 41996, "", "=q3=Savage Gladiator's Felweave Raiment", "=ds=", "#JUSTICE:550#"};
			{ 12, 42014, "", "=q3=Savage Gladiator's Felweave Handguards", "=ds=", "#JUSTICE:348#"};
			{ 13, 42002, "", "=q3=Savage Gladiator's Felweave Trousers", "=ds=", "#JUSTICE:550#"};
		};
		{
			{ 1, 0, "ability_warrior_innerrage", "=q6=#arenas9#", ""};
			{ 2, 51543, "", "=q4=Wrathful Gladiator's Plate Helm", "=ds=", "#HONOR:1650#"};
			{ 3, 51545, "", "=q4=Wrathful Gladiator's Plate Shoulders", "=ds=", "#HONOR:1040#"};
			{ 4, 51541, "", "=q4=Wrathful Gladiator's Plate Chestpiece", "=ds=", "#HONOR:1650#"};
			{ 5, 51542, "", "=q4=Wrathful Gladiator's Plate Gauntlets", "=ds=", "#HONOR:1040#"};
			{ 6, 51544, "", "=q4=Wrathful Gladiator's Plate Legguards", "=ds=", "#HONOR:1650#"};
			{ 8, 0, "ability_warrior_innerrage", "=q6=#arenas9#", ""};

			{ 16, 0, "ability_warrior_innerrage", "=q6=#arenas9#", ""};
			{ 17, 40826, "", "=q4=Furious Gladiator's Plate Helm", "=ds=", "#JUSTICE:935#"};
			{ 18, 40866, "", "=q4=Furious Gladiator's Plate Shoulders", "=ds=", "#JUSTICE:591#"};
			{ 19, 40789, "", "=q4=Furious Gladiator's Plate Chestpiece", "=ds=", "#JUSTICE:935#"};
			{ 20, 40807, "", "=q4=Furious Gladiator's Plate Gauntlets", "=ds=", "#JUSTICE:591#"};
			{ 21, 40847, "", "=q4=Furious Gladiator's Plate Legguards", "=ds=", "#JUSTICE:935#"};
			{ 23, 0, "ability_warrior_innerrage", "=q6=#arenas9#", ""};
			{ 24, 40823, "", "=q4=Deadly Gladiator's Plate Helm", "=ds=", "#JUSTICE:770#"};
			{ 25, 40862, "", "=q4=Deadly Gladiator's Plate Shoulders", "=ds=", "#JUSTICE:487#"};
			{ 26, 40786, "", "=q4=Deadly Gladiator's Plate Chestpiece", "=ds=", "#JUSTICE:770#"};
			{ 27, 40804, "", "=q4=Deadly Gladiator's Plate Gauntlets", "=ds=", "#JUSTICE:487#"};
			{ 28, 40844, "", "=q4=Deadly Gladiator's Plate Legguards", "=ds=", "#JUSTICE:770#"};
		};
		{
			{ 1, 0, "ability_warrior_innerrage", "=q6=#arenas9#", ""};
			{ 2, 40819, "", "=q4=Hateful Gladiator's Plate Helm", "=ds=", "#JUSTICE:660#"};
			{ 3, 40859, "", "=q4=Hateful Gladiator's Plate Shoulders", "=ds=", "#JUSTICE:417#"};
			{ 4, 40783, "", "=q4=Hateful Gladiator's Plate Chestpiece", "=ds=", "#JUSTICE:660#"};
			{ 5, 40801, "", "=q4=Hateful Gladiator's Plate Gauntlets", "=ds=", "#JUSTICE:417#"};
			{ 6, 40840, "", "=q4=Hateful Gladiator's Plate Legguards", "=ds=", "#JUSTICE:660#"};
			{ 8, 0, "ability_warrior_innerrage", "=q6=#arenas9#", ""};
			{ 9, 40816, "", "=q3=Savage Gladiator's Plate Helm", "=ds=", "#JUSTICE:550#"};
			{ 10, 40856, "", "=q3=Savage Gladiator's Plate Shoulders", "=ds=", "#JUSTICE:348#"};
			{ 11, 40778, "", "=q3=Savage Gladiator's Plate Chestpiece", "=ds=", "#JUSTICE:550#"};
			{ 12, 40797, "", "=q3=Savage Gladiator's Plate Gauntlets", "=ds=", "#JUSTICE:348#"};
			{ 13, 40836, "", "=q3=Savage Gladiator's Plate Legguards", "=ds=", "#JUSTICE:550#"};
		};
	};
	info = {
		name = BabbleBoss["PVP Sets"],
		module = moduleName,
		instance = "dalaran",
	};
}
-- Synastria_Data["Boss NameA"] = {
-- 	["Normal"] = {
-- 		{
-- 			
-- 		}
-- 	};
-- 	info = {
-- 		name = BabbleBoss["Boss Name"],
-- 		module = moduleName,
-- 		instance = "dalaran",
-- 	},
-- };