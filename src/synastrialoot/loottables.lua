local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(self, event, addonName)
	if addonName == "synastrialoot" then
		local BabbleZoneLib = LibStub("LibBabble-Zone-3.0")
		local BabbleZone = BabbleZoneLib
			and (
				BabbleZoneLib.GetUnstrictLookupTable and BabbleZoneLib:GetUnstrictLookupTable()
				or BabbleZoneLib.GetLookupTable and BabbleZoneLib:GetLookupTable()
				or BabbleZoneLib
			)
		-- Robust Babble library access pattern
		local function GetBabbleTable(libname)
			local lib = LibStub(libname)
			if lib then
				if lib.GetUnstrictLookupTable then
					return lib:GetUnstrictLookupTable()
				elseif lib.GetLookupTable then
					return lib:GetLookupTable()
				else
					return lib
				end
			end
			return nil
		end

		local BabbleZone = GetBabbleTable("LibBabble-Zone-3.0")
		local BabbleInventory = GetBabbleTable("LibBabble-Inventory-3.0")

		Synastria_LootTableRegister = {
			["Instances"] = {
				----------------------
				--- Custom Data ---
				----------------------
				["Terokkar Forest"] = {
					["Bosses"] = {
						{ "Darkscreecher Akkarai", 1 },
						{ "Gezzarak the Huntress", 2 },
						{ "Vakkiz the Windrager", 3 },
						{ "Terokk", 4 },
						{ "Talonpriest Ishaal", 5 },
						{ "Hazzik's Package", 6 },
					},
					["Info"] = { "Terokkar Forest", "VendorArmor", mapname = "Terokkar Forest" },
				},
				["Eastern Plaguelands"] = {
					["Bosses"] = {
						{ "Quartermaster Miranda Breechlock", 1 },
					},
					["Info"] = { "Eastern Plaguelands", "VendorArmor", mapname = "Eastern Plaguelands" },
				},
				["Ghostlands"] = {
					["Bosses"] = {
						{ "Provisioner Vredigar", 1 },
					},
					["Info"] = { "Ghostlands", "VendorArmor", mapname = "Ghostlands" },
				},
				["Azshara"] = {
					["Bosses"] = {
						{ "Azuregos", 1 },
					},
					["Info"] = { BabbleZone["Azshara"], "SynastriaLootClassic", mapname = "Azshara" },
				},
				["The Hinterlands"] = {
					["Bosses"] = {
						{ "Taerar",  1 },
						{ "Emeriss", 2 },
						{ "Lethon",  3 },
						{ "Ysondre", 4 },
					},
					["Info"] = { BabbleZone["The Hinterlands"], "SynastriaLootClassic", mapname = "The Hinterlands" },
				},
				["Feralas"] = {
					["Bosses"] = {
						{ "Taerar",  1 },
						{ "Emeriss", 2 },
						{ "Lethon",  3 },
						{ "Ysondre", 4 },
					},
					["Info"] = { BabbleZone["Feralas"], "SynastriaLootClassic", mapname = "Feralas" },
				},
				["Duskwood"] = {
					["Bosses"] = {
						{ "Taerar",  1 },
						{ "Emeriss", 2 },
						{ "Lethon",  3 },
						{ "Ysondre", 4 },
					},
					["Info"] = { BabbleZone["Duskwood"], "SynastriaLootClassic", mapname = "Duskwood" },
				},
				["Ashenvale"] = {
					["Bosses"] = {
						{ "Taerar",    1 },
						{ "Emeriss",   2 },
						{ "Lethon",    3 },
						{ "Ysondre",   4 },
						{ "Ashenvale", 5 },
					},
					["Info"] = { BabbleZone["Ashenvale"], "SynastriaLootClassic", mapname = "Ashenvale" },
				},
				["Hellfire Peninsula"] = {
					["Bosses"] = {
						{ "Doom Lord Kazzak",   1 },
						{ "Hellfire Peninsula", 2 },
					},
					["Info"] = { BabbleZone["Hellfire Peninsula"], "SynastriaLootClassic", mapname = "Hellfire Peninsula" },
				},
				["Shadowmoon Valley"] = {
					["Bosses"] = {
						{ "Doomwalker", 1 },
					},
					["Info"] = { BabbleZone["Shadowmoon Valley"], "SynastriaLootClassic", mapname = "Shadowmoon Valley" },
				},
				["Dalaran"] = {
					["Bosses"] = {
						{ "Emblem of Heroism",    1 },
						{ "Emblem of Valor",      2 },
						{ "Emblem of Conquest",   3 },
						{ "Emblem of Triumph",    4 },
						{ "Emblem of Frost",      5 },
						{ "Emblem Heirlooms",     6 },
						{ "Kirin Tor Reputation", 7 },
						{ "Dalaran Rings",        8 },
						{ "Tier: Druid",          9 },
						{ "Tier: Hunter",         10 },
						{ "Tier: Shaman",         11 },
						{ "Tier: Warlock",        12 },
						{ "Tier: Warrior",        13 },
						{ "Tier: Paladin",        14 },
						{ "Tier: Priest",         15 },
						{ "Tier: Rogue",          16 },
						{ "Tier: Mage",           17 },
						{ "Tier: Death Knight",   18 },
						{ "Arena Weapons",        19 },
						{ "PVP Sets",             20 },
					},
					["Info"] = { BabbleZone["Dalaran"], "SynastriaLootDalaran", mapname = "Dalaran" },
				},
				["GrizzlyHills"] = {
					["Bosses"] = {
						{ "VentureBay", 1 },
					},
					["Info"] = { BabbleZone["Grizzly Hills"], "SynastriaLootWotLK", mapname = "Grizzly Hills" },
				},
				["SholazarBasin"] = {
					["Bosses"] = {
						{ "TheOracles",       1 },
						{ "FrenzyheartTribe", 2 },
					},
					["Info"] = { BabbleZone["Sholazar Basin"], "SynastriaLootWotLK", mapname = "Sholazar Basin" },
				},
				["BoreanTundra"] = {
					["Bosses"] = {
						{ "AllianceVanguard", 1 },
						{ "HordeExpedition",  2 },
						{ "WinterfinRetreat", 3 },
					},
					["Info"] = { BabbleZone["Borean Tundra"], "SynastriaLootWotLK", mapname = "Borean Tundra" },
				},
				["HowlingFjord"] = {
					["Bosses"] = {
						{ "AllianceVanguard", 1 },
						{ "HordeExpedition",  2 },
					},
					["Info"] = { BabbleZone["Howling Fjord"], "SynastriaLootWotLK", mapname = "Howling Fjord" },
				},
				["Icecrown"] = {
					["Bosses"] = {
						{ "ArgentCrusade",           1 },
						{ "ArgentTournamentFaction", 2 },
						{ "KnightsoftheEbonBlade",   3 },
					},
					["Info"] = { BabbleZone["Icecrown"], "SynastriaLootWotLK", mapname = "Icecrown" },
				},
				["Dragonblight"] = {
					["Bosses"] = {
						{ "TheKaluak",         1 },
						{ "TheWyrmrestAccord", 2 },
					},
					["Info"] = { BabbleZone["Dragonblight"], "SynastriaLootWotLK", mapname = "Dragonblight" },
				},
				["StormPeaks"] = {
					["Bosses"] = {
						{ "TheSonsofHodir", 1 },
					},
					["Info"] = { BabbleZone["The Storm Peaks"], "SynastriaLootWotLK", mapname = "The Storm Peaks" },
				},
				["LakeWintergrasp"] = {
					["Bosses"] = {
						{ "LakeWintergrasp", 1 },
					},
					["Info"] = { BabbleZone["Wintergrasp"], "SynastriaLootWotLK", mapname = "Wintergrasp" },
				},

				["Stormwind City"] = {
					["Bosses"] = {
						{ "Stormwind City", 1 },
					},
					["Info"] = { BabbleZone["Stormwind City"], "VendorArmor", mapname = "Stormwind City" },
				},
				["Tanaris"] = {
					["Bosses"] = {
						{ "Tanaris", 1 },
					},
					["Info"] = { BabbleZone["Tanaris"], "VendorArmor", mapname = "Tanaris" },
				},
				["Isle of Quel'Danas"] = {
					["Bosses"] = {
						{ "Isle of Quel'Danas", 1 },
					},
					["Info"] = { BabbleZone["Isle of Quel'Danas"], "VendorArmor", mapname = "Isle of Quel'Danas" },
				},
				["Zangarmarsh"] = {
					["Bosses"] = {
						{ "Zangarmarsh", 1 },
					},
					["Info"] = { BabbleZone["Zangarmarsh"], "VendorArmor", mapname = "Zangarmarsh" },
				},
				["Orgrimmar"] = {
					["Bosses"] = {
						{ "Orgrimmar", 1 },
					},
					["Info"] = { BabbleZone["Orgrimmar"], "VendorArmor", mapname = "Orgrimmar" },
				},
				["Shattrath City"] = {
					["Bosses"] = {
						{ "Shattrath City", 1 },
					},
					["Info"] = { BabbleZone["Shattrath City"], "VendorArmor", mapname = "Shattrath City" },
				},
				["Eversong Woods"] = {
					["Bosses"] = {
						{ "Eversong Woods", 1 },
					},
					["Info"] = { BabbleZone["Eversong Woods"], "VendorArmor", mapname = "Eversong Woods" },
				},
				["The Barrens"] = {
					["Bosses"] = {
						{ "The Barrens", 1 },
					},
					["Info"] = { BabbleZone["The Barrens"], "VendorArmor", mapname = "The Barrens" },
				},
				["Arathi Highlands"] = {
					["Bosses"] = {
						{ "Arathi Highlands", 1 },
					},
					["Info"] = { BabbleZone["Arathi Highlands"], "VendorArmor", mapname = "Arathi Highlands" },
				},
				["Nagrand"] = {
					["Bosses"] = {
						{ "Nagrand", 1 },
					},
					["Info"] = { BabbleZone["Nagrand"], "VendorArmor", mapname = "Nagrand" },
				},
				["Netherstorm"] = {
					["Bosses"] = {
						{ "Statis Chambers", 1 },
						{ "Netherstorm", 2 },
					},
					["Info"] = { BabbleZone["Netherstorm"], "VendorArmor", mapname = "Netherstorm" },
				},
				["Silithus"] = {
					["Bosses"] = {
						{ "Abyssal Council", 1 },
					},
					["Info"] = { BabbleZone["Silithus"], "VendorArmor", mapname = "Silithus" },
				},

				-----------------------
				--- WotLK Instances ---
				---------------------------

				---- Dungeons

				["AhnKahet"] = {
					["Bosses"] = {
						{ "AhnkahetElderNadox",         1 },
						{ "AhnkahetPrinceTaldaram",     2 },
						{ "AhnkahetAmanitar",           3 },
						{ "AhnkahetJedogaShadowseeker", 4 },
						{ "AhnkahetHeraldVolazj",       5 },
						{ "AhnkahetTrash",              6 },
					},
					["Info"] = { BabbleZone["Ahn'kahet: The Old Kingdom"], "SynastriaWotLK", mapname = "Ahnkahet" },
				},

				["AzjolNerub"] = {
					["Bosses"] = {
						{ "AzjolNerubKrikthirTheGatewatcher", 1 },
						{ "AzjolNerubHadronox",               2 },
						{ "AzjolNerubAnubarak",               3 },
						{ "AzjolNerubTrash",                  4 },
					},
					["Info"] = { BabbleZone["Azjol-Nerub"], "SynastriaWotLK", mapname = "AzjolNerub" },
				},

				["CoTCullingOfStratholme"] = {
					["Bosses"] = {
						{ "TheCullingOfStratholmeMeathook",               1 },
						{ "TheCullingOfStratholmeSalrammTheFleshcrafter", 2 },
						{ "TheCullingOfStratholmeChronoLordEpoch",        3 },
						{ "TheCullingOfStratholmeMalGanis",               4 },
						{ "TheCullingOfStratholmeTrash",                  5 },
					},
					["Info"] = { BabbleZone["The Culling of Stratholme"], "SynastriaWotLK", mapname = "CoTStratholme" },
				},

				["DrakTharonKeep"] = {
					["Bosses"] = {
						{ "DrakTharonKeepTrollgore",          1 },
						{ "DrakTharonKeepNovosTheSummoner",   2 },
						{ "DrakTharonKeepKingDred",           3 },
						{ "DrakTharonKeepTheProphetTharonja", 4 },
						{ "DrakTharonKeepTrash",              5 },
					},
					["Info"] = { BabbleZone["Drak'Tharon Keep"], "SynastriaWotLK", mapname = "DrakTharonKeep" },
				},

				["FHTheForgeOfSouls"] = {
					["Bosses"] = {
						{ "ForgeOfSoulsBronjahm",        1 },
						{ "ForgeOfSoulsDevourerOfSouls", 2 },
						{ "FrozenHallsTrash",            3 },
					},
					["Info"] = { BabbleZone["The Forge of Souls"], "SynastriaWotLK", mapname = "TheForgeofSouls" },
				},

				["FHHallsOfReflection"] = {
					["Bosses"] = {
						{ "HallsOfReflectionFalric",      1 },
						{ "HallsOfReflectionMarwyn",      2 },
						{ "HallsOfReflectionTheLichKing", 3 },
						{ "FrozenHallsTrash",             4 },
					},
					["Info"] = { BabbleZone["Halls of Reflection"], "SynastriaWotLK", mapname = "HallsofReflection" },
				},

				["FHPitOfSaron"] = {
					["Bosses"] = {
						{ "PitOfSaronForgemasterGarfrost", 1 },
						{ "PitOfSaronKrickAndIck",         2 },
						{ "PitOfSaronScourgelordTyrannus", 3 },
						{ "FrozenHallsTrash",              4 },
					},
					["Info"] = { BabbleZone["Pit of Saron"], "SynastriaWotLK", mapname = "PitofSaron" },
				},

				["Gundrak"] = {
					["Bosses"] = {
						{ "GundrakMoorabi",          1 },
						{ "GundrakEckTheFerocious",  2 },
						{ "GundrakDrakkariColossus", 3 },
						{ "GundrakSladran",          4 },
						{ "GundrakGaldarah",         5 },
						{ "GundrakTrash",            6 },
					},
					["Info"] = { BabbleZone["Gundrak"], "SynastriaWotLK", mapname = "Gundrak" },
				},

				["TheNexus"] = {
					["Bosses"] = {
						{ "TheNexusCommander",            1 },
						{ "TheNexusGrandMagusTelestra",   2 },
						{ "TheNexusAnomalus",             3 },
						{ "TheNexusOrmorokTheTreeShaper", 4 },
						{ "TheNexusKeristrasza",          5 },
						{ "TheNexusTrash",                5 },
					},
					["Info"] = { BabbleZone["The Nexus"], "SynastriaWotLK", mapname = "TheNexus" },
				},

				["The Oculus"] = {
					["Bosses"] = {
						{ "TheOculusDrakosTheInterrogator", 1 },
						{ "TheOculusVarosCloudstrider",     2 },
						{ "TheOculusMageLordUrom",          3 },
						{ "TheOculusLeyGuardianEregos",     4 },
						{ "TheOculusTrash",                 5 },
					},
					["Info"] = { BabbleZone["The Oculus"], "SynastriaWotLK", mapname = "The Oculus" },
				},

				["TrialOfTheChampion"] = {
					["Bosses"] = {
						{ "TrialOfTheChampionGrandChampions",           1 },
						{ "TrialOfTheChampionArgentConfessorPaletress", 2 },
						{ "TrialOfTheChampionEadricThePure",            3 },
						{ "TrialOfTheChampionTheBlackKnight",           4 },
					},
					["Info"] = { BabbleZone["Trial of the Champion"], "SynastriaWotLK", mapname = "TheArgentColiseum" },
				},

				["UlduarHallsofStone"] = {
					["Bosses"] = {
						{ "HallsOfStoneKrystallus",           1 },
						{ "HallsOfStoneMaidenOfGrief",        2 },
						{ "HallsOfStoneTribunalOfTheAges",    3 },
						{ "HallsOfStoneSjonnirTheIronshaper", 4 },
						{ "HallsOfStoneTrash",                5 },
					},
					["Info"] = { BabbleZone["Halls of Stone"], "SynastriaWotLK", mapname = "Ulduar77" },
				},

				["UlduarHallsofLightning"] = {
					["Bosses"] = {
						{ "HallsOfLightningGeneralBjarngrim", 1 },
						{ "HallsOfLightningVolkhan",          2 },
						{ "HallsOfLightningIonar",            3 },
						{ "HallsOfLightningLoken",            4 },
						{ "HallsOfLightningTrash",            5 },
					},
					["Info"] = { BabbleZone["Halls of Lightning"], "SynastriaWotLK", mapname = "HallsofLightning" },
				},

				["UtgardeKeep"] = {
					["Bosses"] = {
						{ "UtgardeKeepPrinceKeleseth",     1 },
						{ "UtgardeKeepSkarvaldAndDalronn", 2 },
						{ "UtgardeKeepIngvarThePlunderer", 3 },
						{ "UtgardeKeepTrash",              4 },
					},
					["Info"] = { BabbleZone["Utgarde Keep"], "SynastriaWotLK", mapname = "UtgardeKeep" },
				},

				["UtgardePinnacle"] = {
					["Bosses"] = {
						{ "UtgardePinnacleSvalaSorrowgrave", 1 },
						{ "UtgardePinnacleGortokPalehoof",   2 },
						{ "UtgardePinnacleSkadiTheRuthless", 3 },
						{ "UtgardePinnacleKingYmiron",       4 },
						{ "UtgardePinnacleTrash",            5 },
					},
					["Info"] = { BabbleZone["Utgarde Pinnacle"], "SynastriaWotLK", mapname = "UtgardePinnacle" },
				},

				["VioletHold"] = {
					["Bosses"] = {
						{ "TheVioletHoldErekem",                1 },
						{ "TheVioletHoldIchoron",               2 },
						{ "TheVioletHoldLavanthor",             3 },
						{ "TheVioletHoldMoragg",                4 },
						{ "TheVioletHoldXevozz",                5 },
						{ "TheVioletHoldZuramatTheObliterator", 6 },
						{ "TheVioletHoldCyanigosa",             7 },
						{ "TheVioletHoldTrash",                 8 },
					},
					["Info"] = { BabbleZone["The Violet Hold"], "SynastriaWotLK", mapname = "VioletHold" },
				},

				---- Raids

				["IcecrownCitadel"] = {
					["Bosses"] = {
						{ "IcecrownCitadelLordMarrowgar",        1 },
						{ "IcecrownCitadelLadyDeathwhisper",     2 },
						{ "IcecrownCitadelGunshipBattle",        3 },
						{ "IcecrownCitadelDeathbringerSaurfang", 4 },
						{ "IcecrownCitadelFestergut",            5 },
						{ "IcecrownCitadelRotface",              6 },
						{ "IcecrownCitadelProfessorPutricide",   7 },
						{ "IcecrownCitadelBloodPrinceCouncil",   8 },
						{ "IcecrownCitadelBloodQueenLanathel",   9 },
						{ "IcecrownCitadelValithriaDreamwalker", 10 },
						{ "IcecrownCitadelSindragosa",           11 },
						{ "IcecrownCitadelTheLichKing",          12 },
						{ "IcecrownCitadelTrash",                13 },
					},
					["Info"] = {
						BabbleZone["Icecrown Citadel"],
						"SynastriaWotLK",
						mapname = "IcecrownCitadel",
						raid = true,
					},
				},

				["Naxxramas"] = {
					["Bosses"] = {
						{ "NaxxramasPatchwerk",            1 },
						{ "NaxxramasGrobbulus",            2 },
						{ "NaxxramasGluth",                3 },
						{ "NaxxramasThaddius",             4 },
						{ "NaxxramasAnubRekhan",           5 },
						{ "NaxxramasGrandWidowFaerlina",   6 },
						{ "NaxxramasMaexxna",              7 },
						{ "NaxxramasInstructorRazuvious",  8 },
						{ "NaxxramasGothikTheHarvester",   9 },
						{ "NaxxramasFourHorseman",         10 },
						{ "NaxxramasNothThePlaguebringer", 11 },
						{ "NaxxramasHeiganTheUnclean",     12 },
						{ "NaxxramasLoatheb",              13 },
						{ "NaxxramasSapphiron",            14 },
						{ "NaxxramasKelThuzad",            15 },
						{ "NaxxramasTrash",                16 },
					},
					["Info"] = { BabbleZone["Naxxramas"], "SynastriaWotLK", mapname = "Naxxramas", raid = true },
				},

				["ObsidianSanctum"] = {
					["Bosses"] = {
						{ "ObsidianSanctumSartharion", 1 },
					},
					["Info"] = {
						BabbleZone["The Obsidian Sanctum"],
						"SynastriaWotLK",
						mapname = "TheObsidianSanctum",
						raid = true,
					},
				},

				["OnyxiasLair"] = {
					["Bosses"] = {
						{ "OnyxiasLairOnyxia", 1 },
					},
					["Info"] = { BabbleZone["Onyxia's Lair"], "SynastriaWotLK", mapname = "OnyxiasLair", raid = true },
				},

				["RubySanctum"] = {
					["Bosses"] = {
						{ "RubySanctumHalion", 1 },
					},
					["Info"] = {
						BabbleZone["The Ruby Sanctum"],
						"SynastriaWotLK",
						mapname = "TheRubySanctum",
						raid = true,
					},
				},

				["TheEyeOfEternity"] = {
					["Bosses"] = {
						{ "TheEyeOfEternityMalygos", 1 },
					},
					["Info"] = {
						BabbleZone["The Eye of Eternity"],
						"SynastriaWotLK",
						mapname = "TheEyeofEternity",
						raid = true,
					},
				},

				["Trial Of The Crusader"] = {
					["Bosses"] = {
						{ "TheBeastsOfNorthrend",  1 },
						{ "LordJaraxxus",     		  2 },
						{ "FactionChampions", 		  3 },
						{ "TheTwinValkyr",         4 },
						{ "Anubarak",         		  5 },
						{ "Tribute",          		  6 },
					},
					["Info"] = {
						BabbleZone["Trial of the Crusader"],
						"SynastriaWotLK",
						mapname = "TrialOfTheCrusader",
						raid = true,
					},
				},

				["Ulduar"] = {
					["Bosses"] = {
						{ "UlduarFlameLeviathan",        1 },
						{ "UlduarIgnisTheFurnaceMaster", 2 },
						{ "UlduarRazorscale",            3 },
						{ "UlduarXT002Deconstructor",    4 },
						{ "UlduarIronCouncil",           1 },
						{ "UlduarAlgalonTheObserver",    2 },
						{ "UlduarKologarn",              3 },
						{ "UlduarAuriaya",               1 },
						{ "UlduarHodir",                 2 },
						{ "UlduarThorim",                3 },
						{ "UlduarFreya",                 4 },
						{ "UlduarMimiron",               1 },
						{ "UlduarGeneralVezax",          1 },
						{ "UlduarYoggSaron",             2 },
						{ "UlduarTrash",                 3 },
						{ "UlduarPatterns",              4 },
					},
					["Info"] = {
						BabbleZone["Ulduar"],
						"SynastriaWotLK",
						mapname = "Ulduar",
						raid = true,
					},
				},

				["Vault Of Archavon"] = {
					["Bosses"] = {
						{ "Archavon", 1 },
						{ "Emalon",   2 },
						{ "Koralon",  3 },
						{ "Toravon",  4 },
					},
					["Info"] = {
						BabbleZone["Vault of Archavon"],
						"SynastriaWotLK",
						mapname = "Vault Of Archavon",
						raid = true,
						disableCompare = true,
					},
				},

				--------------------
				--- BC Instances ---
				--------------------

				---- Dungeons

				["AuchAuchenaiCrypts"] = {
					["Bosses"] = {
						{ "AuchenaiCryptsShirrakTheDeadWatcher", 1 },
						{ "AuchenaiCryptsExarchMaladaar",        2 },
						{ "AuchenaiCryptsAvatarOfTheMartyred",   3 },
						{ "AuchindounTrash",                     4 },
					},
					["Info"] = { BabbleZone["Auchenai Crypts"], "SynastriaBurningCrusade", mapname = "AuchenaiCrypts" },
				},

				["AuchManaTombs"] = {
					["Bosses"] = {
						{ "ManaTombsPandemonius",        1 },
						{ "ManaTombsTavarok",            2 },
						{ "ManaTombsNexusPrinceShaffar", 3 },
						{ "ManaTombsYor",                4 },
						{ "AuchindounTrash",             5 },
					},
					["Info"] = { BabbleZone["Mana-Tombs"], "SynastriaBurningCrusade", mapname = "ManaTombs" },
				},

				["AuchSethekkHalls"] = {
					["Bosses"] = {
						{ "SethekkHallsDarkweaverSyth", 1 },
						{ "SethekkHallsAnzu",           2 },
						{ "SethekkHallsTalonKingIkiss", 3 },
						{ "AuchindounTrash",            4 },
					},
					["Info"] = { BabbleZone["Sethekk Halls"], "SynastriaBurningCrusade", mapname = "SethekkHalls" },
				},

				["AuchShadowLabyrinth"] = {
					["Bosses"] = {
						{ "ShadowLabyrinthAmbassadorHellmaw",    1 },
						{ "ShadowLabyrinthBlackheartTheInciter", 2 },
						{ "ShadowLabyrinthGrandmasterVorpil",    3 },
						{ "ShadowLabyrinthMurmur",               4 },
						{ "AuchindounTrash",                     5 },
					},
					["Info"] = {
						BabbleZone["Shadow Labyrinth"],
						"SynastriaBurningCrusade",
						mapname = "ShadowLabyrinth",
					},
				},

				["CoTOldHillsbrad"] = {
					["Bosses"] = {
						{ "OldHillsbradLieutenantDrake", 1 },
						{ "OldHillsbradCaptainSkarloc",  2 },
						{ "OldHillsbradEpochHunter",     3 },
						{ "CavernsOfTimeTrash",          4 },
					},
					["Info"] = {
						BabbleZone["Old Hillsbrad Foothills"],
						"SynastriaBurningCrusade",
						mapname = "CoTHillsbradFoothills",
					},
				},

				["CoTBlackMorass"] = {
					["Bosses"] = {
						{ "BlackMorassChronoLordDeja", 1 },
						{ "BlackMorassTemporus",       2 },
						{ "BlackMorassAeonus",         3 },
						{ "CavernsOfTimeTrash",        4 },
					},
					["Info"] = {
						BabbleZone["The Black Morass"],
						"SynastriaBurningCrusade",
						mapname = "CoTTheBlackMorass",
					},
				},

				["CFRTheSlavePens"] = {
					["Bosses"] = {
						{ "SlavePensMennuTheBetrayer",  1 },
						{ "SlavePensRokmarTheCrackler", 2 },
						{ "SlavePensQuagmirran",        3 },
					},
					["Info"] = { BabbleZone["The Slave Pens"], "SynastriaBurningCrusade", mapname = "TheSlavePens" },
				},

				["CFRTheSteamvault"] = {
					["Bosses"] = {
						{ "SteamvaultHydromancerThespia",   1 },
						{ "SteamvaultMekgineerSteamrigger", 2 },
						{ "SteamvaultWarlordKalithresh",    3 },
						{ "SteamvaultTrash",                4 },
					},
					["Info"] = { BabbleZone["The Steamvault"], "SynastriaBurningCrusade", mapname = "TheSteamvault" },
				},

				["CFRTheUnderbog"] = {
					["Bosses"] = {
						{ "UnderbogHungarfen",        1 },
						{ "UnderbogGhazan",           2 },
						{ "UnderbogSwamplordMuselek", 3 },
						{ "UnderbogTheBlackStalker",  4 },
					},
					["Info"] = { BabbleZone["The Underbog"], "SynastriaBurningCrusade", mapname = "TheUnderbog" },
				},

				["Hellfire Ramparts"] = {
					["Bosses"] = {
						{ "HellfireRampartsWatchkeeperGargolmar", 1 },
						{ "HellfireRampartsOmorTheUnscarred",     2 },
						{ "HellfireRampartsVazrudenNazan",        3 },
					},
					["Info"] = {
						BabbleZone["Hellfire Ramparts"],
						"SynastriaBurningCrusade",
						mapname = "Hellfire Ramparts",
					},
				},

				["HCBloodFurnace"] = {
					["Bosses"] = {
						{ "BloodFurnaceTheMaker",          1 },
						{ "BloodFurnaceBroggok",           2 },
						{ "BloodFurnaceKelidanTheBreaker", 3 },
					},
					["Info"] = {
						BabbleZone["The Blood Furnace"],
						"SynastriaBurningCrusade",
						mapname = "TheBloodFurnace",
					},
				},

				["HCTheShatteredHalls"] = {
					["Bosses"] = {
						{ "ShatteredHallsGrandWarlockNethekurse",   1 },
						{ "ShatteredHallsBloodGuardPorung",         2 },
						{ "ShatteredHallsWarbringerOmrogg",         3 },
						{ "ShatteredHallsWarchiefKargathBladefist", 4 },
						{ "ShatteredHallsTrash",                    5 },
					},
					["Info"] = {
						BabbleZone["The Shattered Halls"],
						"SynastriaBurningCrusade",
						mapname = "TheShatteredHalls",
					},
				},

				["MagistersTerrace"] = {
					["Bosses"] = {
						{ "MagistersTerraceSelinFireheart",     1 },
						{ "MagistersTerraceVexallus",           2 },
						{ "MagistersTerracePriestessDelrissa",  3 },
						{ "MagistersTerraceKaelthasSunstrider", 4 },
						{ "MagistersTerraceTrash",              5 },
					},
					["Info"] = {
						BabbleZone["Magisters' Terrace"],
						"SynastriaBurningCrusade",
						mapname = "MagistersTerrace",
					},
				},

				["TempestKeepArcatraz"] = {
					["Bosses"] = {
						{ "ArcatrazZerekethTheUnbound",      1 },
						{ "ArcatrazDalliahTheDoomsayer",     2 },
						{ "ArcatrazWrathScryerSoccothrates", 3 },
						{ "ArcatrazHarbingerSkyriss",        4 },
						{ "TempestKeepTrash",                5 },
					},
					["Info"] = { BabbleZone["The Arcatraz"], "SynastriaBurningCrusade", mapname = "TheArcatraz" },
				},

				["TempestKeepBotanica"] = {
					["Bosses"] = {
						{ "BotanicaCommanderSarannis",    1 },
						{ "BotanicaHighBotanistFreywinn", 2 },
						{ "BotanicaThorngrinTheTender",   3 },
						{ "BotanicaLaj",                  4 },
						{ "BotanicaWarpSplinter",         5 },
						{ "TempestKeepTrash",             6 },
					},
					["Info"] = { BabbleZone["The Botanica"], "SynastriaBurningCrusade", mapname = "TheBotanica" },
				},

				["TempestKeepMechanar"] = {
					["Bosses"] = {
						{ "MechanarGatewatcherIronHand",    1 },
						{ "MechanarMechanoLordCapacitus",   2 },
						{ "MechanarGatewatcherGyroKill",    3 },
						{ "MechanarCacheOfTheLegion",       4 },
						{ "MechanarNethermancerSepethrea",  5 },
						{ "MechanarPathaleonTheCalculator", 6 },
						{ "TempestKeepTrash",               7 },
					},
					["Info"] = { BabbleZone["The Mechanar"], "SynastriaBurningCrusade", mapname = "TheMechanar" },
				},

				---- Raids

				["BlackTemple"] = {
					["Bosses"] = {
						{ "BlackTempleHighWarlordNajentus", 1 },
						{ "BlackTempleSupremus",            2 },
						{ "BlackTempleShadeOfAkama",        3 },
						{ "BlackTempleTeronGorefiend",   1 },
						{ "BlackTempleGurtoggBloodboil", 2 },
						{ "BlackTempleReliquaryOfSouls", 3 },
						{ "BlackTempleMotherShahraz",      1 },
						{ "BlackTempleTheIllidariCouncil", 2 },
						{ "BlackTempleIllidanStormrage",   3 },
						{ "BlackTempleTrash",              4 },
						{ "BlackTemplePatterns",           5 },
					},
					["Info"] = {
						BabbleZone["Black Temple"],
						"SynastriaBurningCrusade",
						sortOrder = { "BlackTempleStart", "BlackTempleBasement", "BlackTempleTop" },
						raid = true,
						mapname = "BlackTemple",
					},
				},

				["CoTHyjalEnt"] = "CoTHyjalEaI",
				["CoTHyjal"] = "CoTHyjalEaI",
				["CoTHyjalEaI"] = {
					["CoTHyjalEnt"] = {
						{ "ScaleSands", 1, hide = true },
					},
					["CoTHyjal"] = {
						{ "HyjalRageWinterchill", 1 },
						{ "HyjalAnetheron",       2 },
						{ "HyjalKazrogal",        3 },
						{ "HyjalAzgalor",         4 },
						{ "HyjalArchimonde",      5 },
						{ "HyjalTrash",           6 },
					},
					["Info"] = {
						BabbleZone["Hyjal"],
						"SynastriaBurningCrusade",
						sortOrder = { "CoTHyjalEnt", "CoTHyjal" },
						raid = true,
						mapname = "CoTMountHyjal",
					},
				},

				["CFRSerpentshrineCavern"] = {
					["Bosses"] = {
						{ "SerpentshrineCavernHydrossTheUnstable",   1 },
						{ "SerpentshrineCavernTheLurkerBelow",       2 },
						{ "SerpentshrineCavernLeotherasTheBlind",    3 },
						{ "SerpentshrineCavernFathomLordKarathress", 4 },
						{ "SerpentshrineCavernMorogrimTidewalker",   5 },
						{ "SerpentshrineCavernLadyVashj",            6 },
						{ "SerpentshrineCavernTrash",                7 },
					},
					["Info"] = {
						BabbleZone["Serpentshrine Cavern"],
						"SynastriaBurningCrusade",
						raid = true,
						mapname = "CoilfangReservoir",
					},
				},

				["GruulsLair"] = {
					["Bosses"] = {
						{ "GruulsLairHighKingMaulgar",      1 },
						{ "GruulsLairGruulTheDragonkiller", 1 },
					},
					["Info"] = {
						BabbleZone["Gruul's Lair"],
						"SynastriaBurningCrusade",
						raid = true,
						mapname = "GruulsLair",
					},
				},

				["HCMagtheridonsLair"] = {
					["Bosses"] = {
						{ "MagtheridonsLairMagtheridon", 1 },
					},
					["Info"] = {
						BabbleZone["Magtheridon's Lair"],
						"SynastriaBurningCrusade",
						raid = true,
						mapname = "MagtheridonsLair",
					},
				},

				["KarazhanEnt"] = "KarazhanEaI",
				["KarazhanStart"] = "KarazhanEaI",
				["KarazhanEnd"] = "KarazhanEaI",
				["KarazhanEaI"] = {
					["KarazhanEnt"] = {
						{ "KaraCharredBoneFragment", 1, hide = true },
					},
					["KarazhanStart"] = {
						{ "KarazhanServantsQuarters",   1 },
						{ "KarazhanAttumenTheHuntsman", 2 },
						{ "KarazhanMoroes",             3 },
						{ "KarazhanMaidenOfVirtue",     4 },
						{ "KarazhanOpera",              5 },
						{ "KarazhanNightbane",          6 },
					},
					["KarazhanEnd"] = {
						{ "KarazhanTheCurator",       1 },
						{ "KarazhanTerestianIllhoof", 2 },
						{ "KarazhanShadeOfAran",      3 },
						{ "KarazhanNetherspite",      4 },
						{ "KarazhanChess",            5 },
						{ "KarazhanPrinceMalchezaar", 6 },
						{ "KarazhanTrash",            7 },
					},
					["Info"] = {
						BabbleZone["Karazhan"],
						"SynastriaBurningCrusade",
						sortOrder = { "KarazhanEnt", "KarazhanStart", "KarazhanEnd" },
						raid = true,
						mapname = "Karazhan",
					},
				},

				["SunwellPlateau"] = {
					["Bosses"] = {
						{ "SunwellPlateauKalecgos",    1 },
						{ "SunwellPlateauBrutallus",   2 },
						{ "SunwellPlateauFelmyst",     3 },
						{ "SunwellPlateauEredarTwins", 4 },
						{ "SunwellPlateauMuru",        5 },
						{ "SunwellPlateauKiljaeden",   6 },
						{ "SunwellPlateauTrash",       7 },
						{ "SunwellPlateauPatterns",    8 },
					},
					["Info"] = {
						BabbleZone["Sunwell Plateau"],
						"SynastriaBurningCrusade",
						raid = true,
						mapname = "SunwellPlateau",
					},
				},

				["TempestKeepTheEye"] = {
					["Bosses"] = {
						{ "TheEyeAlar",                    1 },
						{ "TheEyeVoidReaver",              2 },
						{ "TheEyeHighAstromancerSolarian", 3 },
						{ "TheEyeKaelthasSunstrider",      4 },
						{ "TheEyeTrash",                   5 },
					},
					["Info"] = {
						BabbleZone["The Eye"],
						"SynastriaBurningCrusade",
						raid = true,
						mapname = "TempestKeep",
					},
				},

				["ZulAman"] = {
					["Bosses"] = {
						{ "ZulAmanAkilzon",          1 },
						{ "ZulAmanNalorakk",         2 },
						{ "ZulAmanJanalai",          3 },
						{ "ZulAmanHalazzi",          4 },
						{ "ZulAmanHexLordMalacrass", 5 },
						{ "ZulAmanZuljin",           6 },
						{ "ZulAmanTimedChests",      7 },
						{ "ZulAmanTrash",            8 },
					},
					["Info"] = { BabbleZone["Zul'Aman"], "SynastriaBurningCrusade", raid = true, mapname = "ZulAman" },
				},

				["WorldBossesBC"] = {
					["Bosses"] = {
						{ "WBDoomLordKazzak", 1 },
						{ "WBDoomwalker",     2 },
					},
					["Info"] = {
						BabbleZone["World Bosses Outland"],
						"SynastriaBurningCrusade",
						mapname = "WorldBossesBC",
						raid = true,
					},
				},

				-------------------------
				--- Classic Instances ---
				-------------------------

				["BlackfathomDeeps"] = {
					["Bosses"] = {
						{ "BlackfathomDeepsGhamoora",           1 },
						{ "BlackfathomDeepsLadySarevess",       2 },
						{ "BlackfathomDeepsGelihast",           3 },
						{ "BlackfathomDeepsBaronAquanis",       4 },
						{ "BlackfathomDeepsOldSerrakis",        5 },
						{ "BlackfathomDeepsTwilightLordKelris", 6 },
						{ "BlackfathomDeepsAkumai",             7 },
						{ "BlackfathomDeepsTrash",              8 },
					},
					["Info"] = (function()
						local zoneName = BabbleZone and BabbleZone["Blackfathom Deeps"]
						if not zoneName then
							-- Print available keys for debugging
							local count = 0
							for k, v in pairs(BabbleZone or {}) do
								if count < 10 then
									count = count + 1
								end
							end
							zoneName = "Blackfathom Deeps" -- fallback to English name
						end
						return {
							"[23] " .. zoneName,
							"SynastriaClassicWoW",
							mapname = "BlackFathomDeeps",
						}
					end)(),
				},

				["BlackrockDepths"] = {
					["Bosses"] = {
						{ "BlackrockDepthsHighInterrogatorGerstahn", 1 },
						{ "BlackrockDepthsLordRoccor",               2 },
						{ "BlackrockDepthsHoundmasterGrebmar",       3 },
						{ "BlackrockDepthsBaelGar",                  4 },
						{ "BlackrockDepthsLordIncendius",            5 },
						{ "BlackrockDepthsFineousDarkvire",          6 },
						{ "BlackrockDepthsWarderStilgiss",           7 },
						{ "BlackrockDepthsDarkKeepers",              8 },
						{ "BlackrockDepthsTheVault",                 9 },
						{ "BlackrockDepthsWatchmanDoomgrip",         10 },
						{ "BlackrockDepthsPyromancerLoregrain",      11 },
						{ "BlackrockDepthsArena",                    12 },
						{ "BlackrockDepthsTheldren",                 13 },
						{ "BlackrockDepthsGeneralAngerforge",        14 },
						{ "BlackrockDepthsGolemLordArgelmach",       15 },
						{ "BlackrockDepthsGrimGuzzler",              16 },
						{ "BlackrockDepthsAmbassadorFlamelash",      17 },
						{ "BlackrockDepthsSummonersTomb",            18 },
						{ "BlackrockDepthsMagmus",                   19 },
						{ "BlackrockDepthsEmperorDagranThaurissan",  20 },
						{ "BlackrockDepthsPanzorTheInvincible",      21 },
						{ "BlackrockDepthsTrash",                    22 },
					},
					["Info"] = {
						"[55] " .. BabbleZone["Blackrock Depths"],
						"SynastriaClassicWoW",
						mapname = "BlackrockDepths",
					},
				},

				--		["BlackrockMountainEnt"] = {
				--			["Bosses"] = {
				--				{ "BlackrockMountainEntLoot", { 12, 13, 14 }, hide = true },
				--			},
				--			["Info"] = { BabbleZone["Blackrock Mountain"], "SynastriaClassicWoW" },
				--		},

				["BlackrockSpireLower"] = {
					["Bosses"] = {
						{ "LowerBlackrockSpireHighlordOmokk",         1 },
						{ "LowerBlackrockSpireShadowHunterVoshgajin", 2 },
						{ "LowerBlackrockSpireWarMasterVoone",        3 },
						{ "LowerBlackrockSpireMorGrayhoof",           4 },
						{ "LowerBlackrockSpireMotherSmolderweb",      5 },
						{ "LowerBlackrockSpireUrokDoomhowl",          6 },
						{ "LowerBlackrockSpireQuartermasterZigris",   7 },
						{ "LowerBlackrockSpireHalycon",               8 },
						{ "LowerBlackrockSpireGizrulTheSlavener",     9 },
						{ "LowerBlackrockSpireOverlordWyrmthalak",    10 },
						{ "LowerBlackrockSpireBurningFelguard",       11 },
						{ "LowerBlackrockSpireSpirestoneButcher",     12 },
						{ "LowerBlackrockSpireBannokGrimaxe",         13 },
						{ "LowerBlackrockSpireCrystalFang",           14 },
						{ "LowerBlackrockSpireSpirestoneBattleLord",  15 },
						{ "LowerBlackrockSpireSpirestoneLordMagus",   16 },
						{ "LowerBlackrockSpireGhokBashguud",          17 },
						{ "LowerBlackrockSpireTrash",                 18 },
					},
					["Info"] = {
						"[60] " .. BabbleZone["Lower Blackrock Spire"],
						"SynastriaClassicWoW",
						mapname = "BlackrockSpire",
					},
				},

				["BlackrockSpireUpper"] = {
					["Bosses"] = {
						{ "UpperBlackrockSpirePyroguardEmberseer",    1 },
						{ "UpperBlackrockSpireFatherFlame",           2 },
						{ "UpperBlackrockSpireSolakarFlamewreath",    3 },
						{ "UpperBlackrockSpireGoralukAnvilcrack",     4 },
						{ "UpperBlackrockSpireWarchiefRendBlackhand", 5 },
						{ "UpperBlackrockSpireTheBeast",              6 },
						{ "UpperBlackrockSpireLordValthalak",         7 },
						{ "UpperBlackrockSpireGeneralDrakkisath",     8 },
						{ "UpperBlackrockSpireJedRunewatcher",        9 },
						{ "UpperBlackrockSpireTrash",                 10 },
					},
					["Info"] = {
						"[60] " .. BabbleZone["Upper Blackrock Spire"],
						"SynastriaClassicWoW",
						mapname = "BlackrockSpire",
					},
				},

				["BlackwingLair"] = {
					["Bosses"] = {
						{ "BlackwingLairRazorgoreTheUntamed",   1 },
						{ "BlackwingLairVaelastraszTheCorrupt", 2 },
						{ "BlackwingLairBroodlordLashlayer",    3 },
						{ "BlackwingLairFiremaw",               4 },
						{ "BlackwingLairEbonroc",               5 },
						{ "BlackwingLairFlamegor",              6 },
						{ "BlackwingLairChromaggus",            7 },
						{ "BlackwingLairNefarian",              8 },
						{ "BlackwingLairTrashMobs",             9 },
					},
					["Info"] = {
						"[60] " .. BabbleZone["Blackwing Lair"],
						"SynastriaClassicWoW",
						mapname = "BlackwingLair",
						raid = true,
					},
				},

				["DireMaulEast"] = {
					["Bosses"] = {
						{ "DireMaulEastPusillin",            1 },
						{ "DireMaulEastLethtendris",         2 },
						{ "DireMaulEastHydrospawn",          3 },
						{ "DireMaulEastZevrimThornhoof",     4 },
						{ "DireMaulEastAlzzinTheWildshaper", 5 },
						{ "DireMaulEastIsalien",             6 },
						{ "DireMaulEastTrash",               7 },
						{ "DireMaulBooks",                   8 },
					},
					["Info"] = {
						"[60] " .. BabbleZone["Dire Maul (East)"],
						"SynastriaClassicWoW",
						mapname = "DireMaul",
					},
				},

				["DireMaulNorth"] = {
					["Bosses"] = {
						{ "DireMaulNorthGuardMoldar",        1 },
						{ "DireMaulNorthStomperKreeg",       2 },
						{ "DireMaulNorthGuardFengus",        3 },
						{ "DireMaulNorthGuardSlipkik",       4 },
						{ "DireMaulNorthKnotThimblejack",    5 },
						{ "DireMaulNorthCaptainKromcrush",   6 },
						{ "DireMaulNorthKingGordok",         7 },
						{ "DireMaulNorthChoRushTheObserver", 8 },
						{ "DireMaulNorthTribute",            9 },
						{ "DireMaulNorthTrash",              10 },
					},
					["Info"] = {
						"[60] " .. BabbleZone["Dire Maul (North)"],
						"SynastriaClassicWoW",
						mapname = "DireMaul",
					},
				},

				["DireMaulWest"] = {
					["Bosses"] = {
						{ "DireMaulWestTendrisWarpwood",   1 },
						{ "DireMaulWestMagisterKalendris", 2 },
						{ "DireMaulWestIllyannaRavenoak",  3 },
						{ "DireMaulWestImmolthar",         4 },
						{ "DireMaulWestLordHelnurath",     5 },
						{ "DireMaulWestPrinceTortheldrin", 6 },
						{ "DireMaulWestTsuzee",            7 },
						{ "DireMaulWestTrash",             8 },
						{ "DireMaulBooks",                 9 },
					},
					["Info"] = {
						"[60] " .. BabbleZone["Dire Maul (West)"],
						"SynastriaClassicWoW",
						mapname = "DireMaul",
					},
				},

				["Maraudon"] = {
					["Bosses"] = {
						{ "MaraudonVeng",                1 },
						{ "MaraudonNoxxion",             2 },
						{ "MaraudonRazorlash",           3 },
						{ "MaraudonMaraudos",            4 },
						{ "MaraudonLordVyletongue",      5 },
						{ "MaraudonCelebrasTheCursed",   6 },
						{ "MaraudonLandslide",           7 },
						{ "MaraudonTinkererGizlock",     8 },
						{ "MaraudonRotgrip",             9 },
						{ "MaraudonPrincessTheradras",   10 },
						{ "MaraudonMeshlokTheHarvester", 11 },
					},
					["Info"] = { "[47] " .. BabbleZone["Maraudon"], "SynastriaClassicWoW", mapname = "Maraudon" },
				},

				["Uldaman"] = {
					["Bosses"] = {
						{ "UldamanLostVikings",        1 },
						{ "UldamanRevelosh",           2 },
						{ "UldamanIronaya",            3 },
						{ "UldamanObsidianSentinel",   4 },
						{ "UldamanAncientStoneKeeper", 5 },
						{ "UldamanGalgannFirehammer",  6 },
						{ "UldamanGrimlok",            7 },
						{ "UldamanArchaedas",          8 },
						{ "UldamanTrash",              9 },
					},
					["Info"] = { "[39] " .. BabbleZone["Uldaman"], "SynastriaClassicWoW", mapname = "Uldaman" },
				},

				["StratholmeCrusader"] = {
					["Bosses"] = {
						{ "LiveStratholmeFrasSiabi",             1 },
						{ "LiveStratholmeTheUnforgiven",         2 },
						{ "LiveStratholmeHearthsingerForresten", 3 },
						{ "LiveStratholmeTimmyTheCruel",         4 },
						{ "LiveStratholmeMalorTheZealous",       5 },
						{ "LiveStratholmeCrimsonHammersmith",    6 },
						{ "LiveStratholmeCannonMasterWilley",    7 },
						{ "LiveStratholmeArchivistGalford",      8 },
						{ "LiveStratholmeBalnazzar",             9 },
						{ "LiveStratholmeSothosJarien",          10 },
						{ "LiveStratholmeSkul",                  11 },
						{ "StratholmeTrash",                     12 },
					},
					["Info"] = {
						"[60] " .. BabbleZone["Stratholme"] .. " - " .. AL["Crusader's Square"],
						"SynastriaClassicWoW",
						mapname = "Stratholme",
					},
				},

				["StratholmeGauntlet"] = {
					["Bosses"] = {
						{ "UndeadStratholmeMagistrateBarthilas",  1 },
						{ "UndeadStratholmeBlackGuardSwordsmith", 2 },
						{ "UndeadStratholmeBaronessAnastari",     3 },
						{ "UndeadStratholmeNerubenkan",           4 },
						{ "UndeadStratholmeMalekiThePallid",      5 },
						{ "UndeadStratholmeRamsteinTheGorger",    6 },
						{ "UndeadStratholmeBaronRivendare",       7 },
						{ "UndeadStratholmeStonespine",           8 },
						{ "StratholmeTrash",                      9 },
					},
					["Info"] = {
						"[60] " .. BabbleZone["Stratholme"] .. " - " .. AL["The Gauntlet"],
						"SynastriaClassicWoW",
						mapname = "Stratholme",
					},
				},

				["RazorfenDowns"] = {
					["Bosses"] = {
						{ "RazorfenDownsTutenkash",              1 },
						{ "RazorfenDownsMordreshFireEye",        2 },
						{ "RazorfenDownsPlaguemawTheRotting",    3 },
						{ "RazorfenDownsGlutton",                4 },
						{ "RazorfenDownsAmnennarTheColdbringer", 5 },
						{ "RazorfenDownsRagglesnout",            6 },
						{ "RazorfenDownsTrash",                  7 },
					},
					["Info"] = {
						"[36] " .. BabbleZone["Razorfen Downs"],
						"SynastriaClassicWoW",
						mapname = "RazorfenDowns",
					},
				},

				["RazorfenKraul"] = {
					["Bosses"] = {
						{ "RazorfenKraulRoogug",             1 },
						{ "RazorfenKraulAggemThorncurse",    2 },
						{ "RazorfenKraulDeathSpeakerJargba", 3 },
						{ "RazorfenKraulOverlordRamtusk",    4 },
						{ "RazorfenKraulAgathelosTheRaging", 5 },
						{ "RazorfenKraulCharlgaRazorflank",  6 },
						{ "RazorfenKraulRazorfenSpearhide",  7 },
						{ "RazorfenKraulBlindHunter",        8 },
						{ "RazorfenKraulEarthcallerHalmgar", 9 },
						{ "RazorfenKraulTrash",              10 },
					},
					["Info"] = {
						"[26] " .. BabbleZone["Razorfen Kraul"],
						"SynastriaClassicWoW",
						mapname = "RazorfenKraul",
					},
				},

				["TheSunkenTemple"] = {
					["Bosses"] = {
						{ "SunkenTempleAtalalarion",        1 },
						{ "SunkenTempleTrolls",             2 },
						{ "SunkenTempleJammalanTheProphet", 3 },
						{ "SunkenTempleDragons",            4 },
						{ "SunkenTempleAvatarOfHakkar",     5 },
						{ "SunkenTempleShadeOfEranikus",    6 },
						{ "SunkenTempleSpawnOfHakkar",      7 },
						{ "SunkenTempleTrash",              8 },
					},
					["Info"] = {
						"[49] " .. BabbleZone["Sunken Temple"],
						"SynastriaClassicWoW",
						mapname = "TempleOfAtalHakkar",
					},
				},

				["RagefireChasm"] = {
					["Bosses"] = {
						{ "RagefireChasmTaragamanTheHungerer", 1 },
						{ "RagefireChasmJergoshTheInvoker",    2 },
						{ "RagefireChasmZelemarTheWrathful",   3 },
					},
					["Info"] = { "[15] " .. BabbleZone["Ragefire Chasm"], "SynastriaClassicWoW", mapname = "Ragefire" },
				},

				["MoltenCore"] = {
					["Bosses"] = {
						{ "MoltenCoreLucifron",               1 },
						{ "MoltenCoreMagmadar",               2 },
						{ "MoltenCoreGehennas",               3 },
						{ "MoltenCoreGarr",                   4 },
						{ "MoltenCoreBaronGeddon",            5 },
						{ "MoltenCoreShazzrah",               6 },
						{ "MoltenCoreSulfuronHarbinger",      7 },
						{ "MoltenCoreGolemaggTheIncinerator", 8 },
						{ "MoltenCoreMajordomoExecutus",      9 },
						{ "MoltenCoreRagnaros",               10 },
						{ "MoltenCoreRandomBossDrops",        11 },
						{ "MoltenCoreTrash",                  12 },
					},
					["Info"] = {
						"[60] " .. BabbleZone["Molten Core"],
						"SynastriaClassicWoW",
						mapname = "MoltenCore",
						raid = true,
					},
				},

				["TheTempleofAhnQiraj"] = {
					["Bosses"] = {
						{ "TempleOfAhnQirajTheProphetSkeram",      1 },
						{ "TempleOfAhnQirajBugFamily",             2 },
						{ "TempleOfAhnQirajBattleguardSartura",    3 },
						{ "TempleOfAhnQirajFankrissTheUnyielding", 4 },
						{ "TempleOfAhnQirajViscidus",              5 },
						{ "TempleOfAhnQirajPrincessHuhuran",       6 },
						{ "TempleOfAhnQirajTwinEmperors",          7 },
						{ "TempleOfAhnQirajOuro",                  8 },
						{ "TempleOfAhnQirajCThun",                 9 },
						{ "TempleOfAhnQirajTrash",                 10 },
						{ "AhnQirajEnchants",                      11 },
					},
					["Info"] = {
						"[60] " .. BabbleZone["Temple of Ahn'Qiraj"],
						"SynastriaClassicWoW",
						mapname = "TempleofAhnQiraj",
						raid = true,
					},
				},

				["ShadowfangKeep"] = {
					["Bosses"] = {
						{ "ShadowfangKeepRethilgore",          1 },
						{ "ShadowfangKeepRazorclawTheButcher", 2 },
						{ "ShadowfangKeepBaronSilverlaine",    3 },
						{ "ShadowfangKeepCommanderSpringvale", 4 },
						{ "ShadowfangKeepOdoTheBlindwatcher",  5 },
						{ "ShadowfangKeepFenrusTheDevourer",   6 },
						{ "ShadowfangKeepWolfMasterNandos",    7 },
						{ "ShadowfangKeepArchmageArugal",      8 },
						{ "ShadowfangKeepDeathswornCaptain",   9 },
						{ "ShadowfangKeepTrash",               10 },
					},
					["Info"] = {
						"[20] " .. BabbleZone["Shadowfang Keep"],
						{ "SynastriaClassicWoW" },
						mapname = "ShadowfangKeep",
					},
				},

				["Gnomeregan"] = {
					["Bosses"] = {
						{ "GnomereganGrubbis",              1 },
						{ "GnomereganViscousFallout",       2 },
						{ "GnomereganElectrocutioner6000",  3 },
						{ "GnomereganCrowdPummeler960",     4 },
						{ "GnomereganMekgineerThermaplugg", 5 },
						{ "GnomereganDarkIronAmbassador",   6 },
						{ "GnomereganTrash",                7 },
					},
					["Info"] = { "[27] " .. BabbleZone["Gnomeregan"], "SynastriaClassicWoW", mapname = "Gnomeregan" },
				},

				["SMArmory"] = {
					["Bosses"] = {
						{ "SMArmoryHerod", 1 },
						{ "SMTrash",       2 },
					},
					["Info"] = {
						"[39] " .. BabbleZone["Scarlet Monastery"] .. ": " .. BabbleZone["Armory"],
						"SynastriaClassicWoW",
						mapname = "ScarletMonastery",
					},
				},

				["SMCathedral"] = {
					["Bosses"] = {
						{ "SMCathedralHighInquisitorFairbanks",  1 },
						{ "SMCathedralScarletCommanderMograine", 2 },
						{ "SMCathedralHighInquisitorWhitemane",  3 },
					},
					["Info"] = {
						"[39] " .. BabbleZone["Scarlet Monastery"] .. ": " .. BabbleZone["Cathedral"],
						"SynastriaClassicWoW",
						mapname = "ScarletMonastery",
					},
				},

				["SMLibrary"] = {
					["Bosses"] = {
						{ "SMLibraryHoundmasterLoksey", 1 },
						{ "SMLibraryArcanistDoan",      2 },
					},
					["Info"] = {
						"[39] " .. BabbleZone["Scarlet Monastery"] .. ": " .. BabbleZone["Library"],
						"SynastriaClassicWoW",
						mapname = "ScarletMonastery",
					},
				},

				["SMGraveyard"] = {
					["Bosses"] = {
						{ "SMGraveyardInterrogatorVishas", 1 },
						{ "SMGraveyardBloodmageThalnos",   2 },
						{ "SMGraveyardAzshirTheSleepless", 3 },
						{ "SMGraveyardFallenChampion",     4 },
						{ "SMGraveyardIronspine",          5 },
					},
					["Info"] = {
						"[39] " .. BabbleZone["Scarlet Monastery"] .. ": " .. BabbleZone["Graveyard"],
						"SynastriaClassicWoW",
						mapname = "ScarletMonastery",
					},
				},

				["Scholomance"] = {
					["Bosses"] = {
						{ "ScholomanceBloodStewardOfKirtonos",   1 },
						{ "ScholomanceKirtonosTheHerald",        2 },
						{ "ScholomanceJandiceBarov",             3 },
						{ "ScholomanceRattlegore",               4 },
						{ "ScholomanceDeathKnightDarkreaver",    5 },
						{ "ScholomanceMardukBlackpoolAndVectus", 6 },
						{ "ScholomanceRasFrostwhisper",          7 },
						{ "ScholomanceKormok",                   8 },
						{ "ScholomanceLorekeeperPolkelt",        9 },
						{ "ScholomanceDoctorTheolenKrastinov",   10 },
						{ "ScholomanceInstructorMalicia",        11 },
						{ "ScholomanceLadyIlluciaBarov",         12 },
						{ "ScholomanceLordAlexeiBarov",          13 },
						{ "ScholomanceTheRavenian",              14 },
						{ "ScholomanceDarkmasterGandling",       15 },
						{ "ScholomanceTrash",                    16 },
					},
					["Info"] = { "[60] " .. BabbleZone["Scholomance"], "SynastriaClassicWoW", mapname = "Scholomance" },
				},

				["The Deadmines"] = {
					["Bosses"] = {
						{ "DeadminesTrash",            1, hide = true },
						{ "DeadminesRhahkZor",         2 },
						{ "DeadminesSneedsShredder",   3 },
						{ "DeadminesSneed",            4 },
						{ "DeadminesGilnid",           5 },
						{ "DeadminesMrSmite",          6 },
						{ "DeadminesCookie",           7 },
						{ "DeadminesCaptainGreenskin", 8 },
						{ "DeadminesVanCleef",         9 },
						{ "DeadminesMinerJohnson",     10 },
						{ "DeadminesTrash",            11 },
					},
					["Info"] = {
						"[19] " .. BabbleZone["The Deadmines"],
						"SynastriaClassicWoW",
						mapname = "The Deadmines",
					},
				},

				["WailingCaverns"] = {
					["Bosses"] = {
						{ "WailingCavernsTrash",               1, hide = true },
						{ "WailingCavernsKresh",               2 },
						{ "WailingCavernsLadyAnacondra",       3 },
						{ "WailingCavernsLordCobrahn",         4 },
						{ "WailingCavernsLordPythas",          5 },
						{ "WailingCavernsSkum",                6 },
						{ "WailingCavernsLordSerpentis",       7 },
						{ "WailingCavernsVerdanTheEverliving", 8 },
						{ "WailingCavernsMutanusTheDevourer",  9 },
						{ "WailingCavernsDeviateFaerieDragon", 10 },
						{ "WailingCavernsTrash",               11 },
					},
					["Info"] = {
						"[19] " .. BabbleZone["Wailing Caverns"],
						"SynastriaClassicWoW",
						mapname = "WailingCaverns",
					},
				},

				["TheStockade"] = {
					["Bosses"] = {
						{ "TheStockadeTargorrTheDread",    1 },
						{ "TheStockadeDextrenWard",        2 },
						{ "TheStockadeKamDeepfury",        3 },
						{ "TheStockadeBazilThredd",        4 },
						{ "TheStockadeBruegalIronknuckle", 5 },
						{ "TheStockadeTrash",              6 },
					},
					["Info"] = { "[24] " .. BabbleZone["The Stockade"], "SynastriaClassicWoW", mapname = "TheStockade" },
				},

				["TheRuinsofAhnQiraj"] = {
					["Bosses"] = {
						{ "RuinsOfAhnQirajKurinnaxx",            1 },
						{ "RuinsOfAhnQirajGeneralRajaxx",        2 },
						{ "RuinsOfAhnQirajBuruTheGorger",        3 },
						{ "RuinsOfAhnQirajAyamissTheHunter",     4 },
						{ "RuinsOfAhnQirajMoam",                 5 },
						{ "RuinsOfAhnQirajOssirianTheUnscarred", 6 },
						{ "RuinsOfAhnQirajBooks",                7 },
						{ "RuinsOfAhnQirajTrash",                8 },
						{ "AhnQirajEnchants",                    9 },
					},
					["Info"] = {
						"[60] " .. BabbleZone["Ruins of Ahn'Qiraj"],
						"SynastriaClassicWoW",
						mapname = "RuinsofAhnQiraj",
						raid = true,
					},
				},

				["ZulFarrak"] = {
					["Bosses"] = {
						{ "ZulFarrakAntusul",             1 },
						{ "ZulFarrakThekaTheMartyr",      2 },
						{ "ZulFarrakWitchDoctorZumrah",   3 },
						{ "ZulFarrakSandfuryExecutioner", 4 },
						{ "ZulFarrakShadowpriestSezzziz", 5 },
						{ "ZulFarrakSergeantBly",         6 },
						{ "ZulFarrakHydromancerVelratha", 7 },
						{ "ZulFarrakGahzrilla",           8 },
						{ "ZulFarrakChiefUkorzSandscalp", 9 },
						{ "ZulFarrakDustwraith",          10 },
						{ "ZulFarrakZerillis",            11 },
						{ "ZulFarrakTrash",               12 },
					},
					["Info"] = { "[44] " .. BabbleZone["Zul'Farrak"], "SynastriaClassicWoW", mapname = "ZulFarrak" },
				},

				["ZulGurub"] = {
					["Bosses"] = {
						{ "ZulGurubHighPriestessJeklik", 1 },
						{ "ZulGurubHighPriestVenoxis",   2 },
						{ "ZulGurubHighPriestessMarli",  3 },
						{ "ZulGurubBloodlordMandokir",   4 },
						{ "ZulGurubEdgeOfMadness",       5 },
						{ "ZulGurubGahzranka",           6 },
						{ "ZulGurubHighPriestThekal",    7 },
						{ "ZulGurubHighPriestessArlokk", 8 },
						{ "ZulGurubJindoTheHexxer",      9 },
						{ "ZulGurubHakkar",              10 },
						{ "ZulGurubShared",              11 },
						{ "ZulGurubTrash",               12 },
						{ "ZulGurubEnchants",            13 },
					},
					["Info"] = {
						"[60] " .. BabbleZone["Zul'Gurub"],
						"SynastriaClassicWoW",
						mapname = "ZulGurub",
						raid = true,
					},
				},

				["WorldBossesCLA"] = {
					["Bosses"] = {
						{ "WBAzuregos", 1 },
						{ "WBEmeriss",  2 },
						{ "WBLethon",   3 },
						{ "WBTaerar",   4 },
						{ "WBYsondre",  5 },
					},
					["Info"] = { BabbleZone["World Bosses Azeroth"], "SynastriaClassicWoW", raid = true },
				},

				---------------------------
				--- Mythic BC Instances ---
				---------------------------

				---- Dungeons

				["MythicAuchAuchenaiCrypts"] = {
					["Bosses"] = {
						{ "MythicAuchenaiCryptsShirrakTheDeadWatcher", 1 },
						{ "MythicAuchenaiCryptsExarchMaladaar",        2 },
						{ "MythicAuchenaiCryptsAvatarOfTheMartyred",   3 },
						{ "MythicDungeonBoEsTBC",                      4 },
					},
					["Info"] = { BabbleZone["Auchenai Crypts"] .. "+", "SynastriaMythicBC" },
					--["Info"] = { BabbleZone["Auchenai Crypts"] .. "+", "SynastriaMythicBC", mapname = "AuchenaiCrypts" }, -- if you uncomment these, Synastria will auto-select the mythic loot tables while in that dungeon, instead of the normal/heroic tables.
				},

				["MythicAuchManaTombs"] = {
					["Bosses"] = {
						{ "MythicManaTombsPandemonius",        1 },
						{ "MythicManaTombsTavarok",            2 },
						{ "MythicManaTombsNexusPrinceShaffar", 3 },
						{ "MythicManaTombsYor",                4 },
						{ "MythicDungeonBoEsTBC",              5 },
					},
					["Info"] = { BabbleZone["Mana-Tombs"] .. "+", "SynastriaMythicBC" },
					--["Info"] = { BabbleZone["Mana-Tombs"] .. "+", "SynastriaMythicBC", mapname = "ManaTombs" },
				},

				["MythicAuchSethekkHalls"] = {
					["Bosses"] = {
						{ "MythicSethekkHallsDarkweaverSyth", 1 },
						{ "MythicSethekkHallsAnzu",           2 },
						{ "MythicSethekkHallsTalonKingIkiss", 3 },
						{ "MythicDungeonBoEsTBC",             4 },
					},
					["Info"] = { BabbleZone["Sethekk Halls"] .. "+", "SynastriaMythicBC" },
					--["Info"] = { BabbleZone["Sethekk Halls"] .. "+", "SynastriaMythicBC", mapname = "SethekkHalls" },
				},

				["MythicAuchShadowLabyrinth"] = {
					["Bosses"] = {
						{ "MythicShadowLabyrinthAmbassadorHellmaw",    1 },
						{ "MythicShadowLabyrinthBlackheartTheInciter", 2 },
						{ "MythicShadowLabyrinthGrandmasterVorpil",    3 },
						{ "MythicShadowLabyrinthMurmur",               4 },
						{ "MythicDungeonBoEsTBC",                      5 },
					},
					["Info"] = { BabbleZone["Shadow Labyrinth"] .. "+", "SynastriaMythicBC" },
					--["Info"] = { BabbleZone["Shadow Labyrinth"] .. "+", "SynastriaMythicBC", mapname = "ShadowLabyrinth" },
				},

				["MythicCoTOldHillsbrad"] = {
					["Bosses"] = {
						{ "MythicOldHillsbradLieutenantDrake", 1 },
						{ "MythicOldHillsbradCaptainSkarloc",  2 },
						{ "MythicOldHillsbradEpochHunter",     3 },
						{ "MythicDungeonBoEsTBC",              4 },
					},
					["Info"] = { BabbleZone["Old Hillsbrad Foothills"] .. "+", "SynastriaMythicBC" },
					--["Info"] = { BabbleZone["Old Hillsbrad Foothills"] .. "+", "SynastriaMythicBC", mapname = "CoTHillsbradFoothills" },
				},

				["MythicCoTBlackMorass"] = {
					["Bosses"] = {
						{ "MythicBlackMorassChronoLordDeja", 1 },
						{ "MythicBlackMorassTemporus",       2 },
						{ "MythicBlackMorassAeonus",         3 },
						{ "MythicDungeonBoEsTBC",            4 },
					},
					["Info"] = { BabbleZone["The Black Morass"] .. "+", "SynastriaMythicBC" },
					--["Info"] = { BabbleZone["The Black Morass"] .. "+", "SynastriaMythicBC", mapname = "CoTTheBlackMorass" },
				},

				["MythicCFRTheSlavePens"] = {
					["Bosses"] = {
						{ "MythicSlavePensMennuTheBetrayer",  1 },
						{ "MythicSlavePensRokmarTheCrackler", 2 },
						{ "MythicSlavePensQuagmirran",        3 },
						{ "MythicDungeonBoEsTBC",             4 },
					},
					["Info"] = { BabbleZone["The Slave Pens"] .. "+", "SynastriaMythicBC" },
					--["Info"] = { BabbleZone["The Slave Pens"] .. "+", "SynastriaMythicBC", mapname = "TheSlavePens" },
				},

				["MythicCFRTheSteamvault"] = {
					["Bosses"] = {
						{ "MythicSteamvaultHydromancerThespia",   1 },
						{ "MythicSteamvaultMekgineerSteamrigger", 2 },
						{ "MythicSteamvaultWarlordKalithresh",    3 },
						{ "MythicDungeonBoEsTBC",                 4 },
					},
					["Info"] = { BabbleZone["The Steamvault"] .. "+", "SynastriaMythicBC" },
					--["Info"] = { BabbleZone["The Steamvault"] .. "+", "SynastriaMythicBC", mapname = "TheSteamvault" },
				},

				["MythicCFRTheUnderbog"] = {
					["Bosses"] = {
						{ "MythicUnderbogHungarfen",        1 },
						{ "MythicUnderbogGhazan",           2 },
						{ "MythicUnderbogSwamplordMuselek", 3 },
						{ "MythicUnderbogTheBlackStalker",  4 },
						{ "MythicDungeonBoEsTBC",           5 },
					},
					["Info"] = { BabbleZone["The Underbog"] .. "+", "SynastriaMythicBC" },
					--["Info"] = { BabbleZone["The Underbog"] .. "+", "SynastriaMythicBC", mapname = "TheUnderbog" },
				},

				["MythicHCHellfireRamparts"] = {
					["Bosses"] = {
						{ "MythicHellfireRampartsWatchkeeperGargolmar", 1 },
						{ "MythicHellfireRampartsOmorTheUnscarred",     2 },
						{ "MythicHellfireRampartsVazrudenNazan",        3 },
						{ "MythicDungeonBoEsTBC",                       4 },
					},
					["Info"] = { BabbleZone["Hellfire Ramparts"] .. "+", "SynastriaMythicBC" },
					--["Info"] = { BabbleZone["Hellfire Ramparts"] .. "+", "SynastriaMythicBC", mapname = "HellfireRamparts" },
				},

				["MythicHCBloodFurnace"] = {
					["Bosses"] = {
						{ "MythicTheBloodFurnaceTheMaker",          1 },
						{ "MythicTheBloodFurnaceBroggok",           2 },
						{ "MythicTheBloodFurnaceKelidanTheBreaker", 3 },
						{ "MythicDungeonBoEsTBC",                   4 },
					},
					["Info"] = { BabbleZone["The Blood Furnace"] .. "+", "SynastriaMythicBC" },
					--["Info"] = { BabbleZone["The Blood Furnace"] .. "+", "SynastriaMythicBC", mapname = "TheBloodFurnace" },
				},

				["MythicHCTheShatteredHalls"] = {
					["Bosses"] = {
						{ "MythicShatteredHallsGrandWarlockNethekurse",   1 },
						{ "MythicShatteredHallsBloodGuardPorung",         2 },
						{ "MythicShatteredHallsWarbringerOmrogg",         3 },
						{ "MythicShatteredHallsWarchiefKargathBladefist", 4 },
						{ "MythicDungeonBoEsTBC",                         5 },
					},
					["Info"] = { BabbleZone["The Shattered Halls"] .. "+", "SynastriaMythicBC" },
					--["Info"] = { BabbleZone["The Shattered Halls"] .. "+", "SynastriaMythicBC", mapname = "TheShatteredHalls" },
				},

				["MythicMagistersTerrace"] = {
					["Bosses"] = {
						{ "MythicMagistersTerraceSelinFireheart",     1 },
						{ "MythicMagistersTerraceVexallus",           2 },
						{ "MythicMagistersTerracePriestessDelrissa",  3 },
						{ "MythicMagistersTerraceKaelthasSunstrider", 4 },
						{ "MythicDungeonBoEsTBC",                     5 },
					},
					["Info"] = { BabbleZone["Magisters' Terrace"] .. "+", "SynastriaMythicBC" },
					--["Info"] = { BabbleZone["Magisters' Terrace"] .. "+", "SynastriaMythicBC", mapname = "MagistersTerrace" },
				},

				["MythicTempestKeepArcatraz"] = {
					["Bosses"] = {
						{ "MythicArcatrazZerekethTheUnbound",      1 },
						{ "MythicArcatrazDalliahTheDoomsayer",     2 },
						{ "MythicArcatrazWrathScryerSoccothrates", 3 },
						{ "MythicArcatrazHarbingerSkyriss",        4 },
						{ "MythicDungeonBoEsTBC",                  5 },
					},
					["Info"] = { BabbleZone["The Arcatraz"] .. "+", "SynastriaMythicBC" },
					--["Info"] = { BabbleZone["The Arcatraz"] .. "+", "SynastriaMythicBC", mapname = "TheArcatraz" },
				},

				["MythicTempestKeepBotanica"] = {
					["Bosses"] = {
						{ "MythicBotanicaCommanderSarannis",    1 },
						{ "MythicBotanicaHighBotanistFreywinn", 2 },
						{ "MythicBotanicaThorngrinTheTender",   3 },
						{ "MythicBotanicaLaj",                  4 },
						{ "MythicBotanicaWarpSplinter",         5 },
						{ "MythicDungeonBoEsTBC",               6 },
					},
					["Info"] = { BabbleZone["The Botanica"] .. "+", "SynastriaMythicBC" },
					--["Info"] = { BabbleZone["The Botanica"] .. "+", "SynastriaMythicBC", mapname = "TheBotanica" },
				},

				["MythicTempestKeepMechanar"] = {
					["Bosses"] = {
						{ "MythicMechanarGatewatcherIronHand",    1 },
						{ "MythicMechanarMechanoLordCapacitus",   2 },
						{ "MythicMechanarGatewatcherGyroKill",    3 },
						{ "MythicMechanarCacheOfTheLegion",       4 },
						{ "MythicMechanarNethermancerSepethrea",  5 },
						{ "MythicMechanarPathaleonTheCalculator", 6 },
						{ "MythicDungeonBoEsTBC",                 7 },
					},
					["Info"] = { BabbleZone["The Mechanar"] .. "+", "SynastriaMythicBC" },
					--["Info"] = { BabbleZone["The Mechanar"] .. "+", "SynastriaMythicBC", mapname = "TheMechanar" },
				},

				------------------------------
				--- Mythic WotLK Instances ---
				------------------------------

				---- Dungeons

				["MythicAhnKahet"] = {
					["Bosses"] = {
						{ "MythicAhnkahetElderNadox",         1 },
						{ "MythicAhnkahetPrinceTaldaram",     2 },
						{ "MythicAhnkahetAmanitar",           3 },
						{ "MythicAhnkahetJedogaShadowseeker", 4 },
						{ "MythicAhnkahetHeraldVolazj",       5 },
						{ "MythicAhnkahetTrash",              6 },
						{ "MythicDungeonBoEsWotLK",           7 },
					},
					["Info"] = { BabbleZone["Ahn'kahet: The Old Kingdom"] .. "+", "SynastriaMythicWotLK" },
					--["Info"] = { BabbleZone["Ahn'kahet: The Old Kingdom"] .. "+", "SynastriaMythicWotLK", mapname = "Ahnkahet" },
				},

				["MythicAzjolNerub"] = {
					["Bosses"] = {
						{ "MythicAzjolNerubKrikthirTheGatewatcher", 1 },
						{ "MythicAzjolNerubHadronox",               2 },
						{ "MythicAzjolNerubAnubarak",               3 },
						{ "MythicAzjolNerubTrash",                  4 },
						{ "MythicDungeonBoEsWotLK",                 5 },
					},
					["Info"] = { BabbleZone["Azjol-Nerub"] .. "+", "SynastriaMythicWotLK" },
					--["Info"] = { BabbleZone["Azjol-Nerub"] .. "+", "SynastriaMythicWotLK", mapname = "AzjolNerub" },
				},

				["MythicCoTCullingOfStratholme"] = {
					["Bosses"] = {
						{ "MythicTheCullingOfStratholmeMeathook",               1 },
						{ "MythicTheCullingOfStratholmeSalrammTheFleshcrafter", 2 },
						{ "MythicTheCullingOfStratholmeChronoLordEpoch",        3 },
						{ "MythicTheCullingOfStratholmeMalGanis",               4 },
						{ "MythicDungeonBoEsWotLK",                             5 },
					},
					["Info"] = { BabbleZone["The Culling of Stratholme"] .. "+", "SynastriaMythicWotLK" },
					--["Info"] = { BabbleZone["The Culling of Stratholme"] .. "+", "SynastriaMythicWotLK", mapname = "CoTStratholme" },
				},

				["MythicDrakTharonKeep"] = {
					["Bosses"] = {
						{ "MythicDrakTharonKeepTrollgore",          1 },
						{ "MythicDrakTharonKeepNovosTheSummoner",   2 },
						{ "MythicDrakTharonKeepKingDred",           3 },
						{ "MythicDrakTharonKeepTheProphetTharonja", 4 },
						{ "MythicDrakTharonKeepTrash",              5 },
						{ "MythicDungeonBoEsWotLK",                 6 },
					},
					["Info"] = { BabbleZone["Drak'Tharon Keep"] .. "+", "SynastriaMythicWotLK" },
					--["Info"] = { BabbleZone["Drak'Tharon Keep"] .. "+", "SynastriaMythicWotLK", mapname = "DrakTharonKeep" },
				},

				["MythicFHTheForgeOfSouls"] = {
					["Bosses"] = {
						{ "MythicForgeOfSoulsBronjahm",        1 },
						{ "MythicForgeOfSoulsDevourerOfSouls", 2 },
						{ "MythicFrozenHallsTrash",            3 },
						{ "MythicDungeonBoEsWotLK",            4 },
					},
					["Info"] = { BabbleZone["The Forge of Souls"] .. "+", "SynastriaMythicWotLK" },
					--["Info"] = { BabbleZone["The Forge of Souls"] .. "+", "SynastriaMythicWotLK", mapname = "TheForgeofSouls" },
				},

				["MythicFHHallsOfReflection"] = {
					["Bosses"] = {
						{ "MythicHallsOfReflectionFalric",      1 },
						{ "MythicHallsOfReflectionMarwyn",      2 },
						{ "MythicHallsOfReflectionTheLichKing", 3 },
						{ "MythicFrozenHallsTrash",             4 },
						{ "MythicDungeonBoEsWotLK",             5 },
					},
					["Info"] = { BabbleZone["Halls of Reflection"] .. "+", "SynastriaMythicWotLK" },
					--["Info"] = { BabbleZone["Halls of Reflection"] .. "+", "SynastriaMythicWotLK", mapname = "HallsofReflection" },
				},

				["MythicFHPitOfSaron"] = {
					["Bosses"] = {
						{ "MythicPitOfSaronForgemasterGarfrost", 1 },
						{ "MythicPitOfSaronKrickAndIck",         2 },
						{ "MythicPitOfSaronScourgelordTyrannus", 3 },
						{ "MythicFrozenHallsTrash",              4 },
						{ "MythicDungeonBoEsWotLK",              5 },
					},
					["Info"] = { BabbleZone["Pit of Saron"] .. "+", "SynastriaMythicWotLK" },
					--["Info"] = { BabbleZone["Pit of Saron"] .. "+", "SynastriaMythicWotLK", mapname = "PitofSaron" },
				},

				["MythicGundrak"] = {
					["Bosses"] = {
						{ "MythicGundrakMoorabi",          1 },
						{ "MythicGundrakEckTheFerocious",  2 },
						{ "MythicGundrakDrakkariColossus", 3 },
						{ "MythicGundrakSladran",          4 },
						{ "MythicGundrakGaldarah",         5 },
						{ "MythicGundrakTrash",            6 },
						{ "MythicDungeonBoEsWotLK",        7 },
					},
					["Info"] = { BabbleZone["Gundrak"] .. "+", "SynastriaMythicWotLK" },
					--["Info"] = { BabbleZone["Gundrak"] .. "+", "SynastriaMythicWotLK", mapname = "Gundrak" },
				},

				["MythicTheNexus"] = {
					["Bosses"] = {
						{ "MythicTheNexusCommander",            1 },
						{ "MythicTheNexusGrandMagusTelestra",   2 },
						{ "MythicTheNexusAnomalus",             3 },
						{ "MythicTheNexusOrmorokTheTreeShaper", 4 },
						{ "MythicTheNexusKeristrasza",          5 },
						{ "MythicTheNexusTrash",                6 },
						{ "MythicDungeonBoEsWotLK",             7 },
					},
					["Info"] = { BabbleZone["The Nexus"] .. "+", "SynastriaMythicWotLK" },
					--["Info"] = { BabbleZone["The Nexus"] .. "+", "SynastriaMythicWotLK", mapname = "TheNexus" },
				},

				["MythicTheOculus"] = {
					["Bosses"] = {
						{ "MythicTheOculusDrakosTheInterrogator", 1 },
						{ "MythicTheOculusVarosCloudstrider",     2 },
						{ "MythicTheOculusMageLordUrom",          3 },
						{ "MythicTheOculusLeyGuardianEregos",     4 },
						{ "MythicTheOculusTrash",                 5 },
						{ "MythicDungeonBoEsWotLK",               6 },
					},
					["Info"] = { BabbleZone["The Oculus"] .. "+", "SynastriaMythicWotLK" },
					--["Info"] = { BabbleZone["The Oculus"] .. "+", "SynastriaMythicWotLK", mapname = "Nexus80" },
				},

				["MythicTrialOfTheChampion"] = {
					["Bosses"] = {
						{ "MythicTrialOfTheChampionGrandChampions",           1 },
						{ "MythicTrialOfTheChampionArgentConfessorPaletress", 2 },
						{ "MythicTrialOfTheChampionEadricThePure",            3 },
						{ "MythicTrialOfTheChampionTheBlackKnight",           4 },
						{ "MythicDungeonBoEsWotLK",                           5 },
					},
					["Info"] = { BabbleZone["Trial of the Champion"] .. "+", "SynastriaMythicWotLK" },
					--["Info"] = { BabbleZone["Trial of the Champion"] .. "+", "SynastriaMythicWotLK", mapname = "TheArgentColiseum" },
				},

				["MythicUlduarHallsofStone"] = {
					["Bosses"] = {
						{ "MythicHallsOfStoneKrystallus",           1 },
						{ "MythicHallsOfStoneMaidenOfGrief",        2 },
						{ "MythicHallsOfStoneTribunalOfTheAges",    3 },
						{ "MythicHallsOfStoneSjonnirTheIronshaper", 4 },
						{ "MythicHallsOfStoneTrash",                5 },
						{ "MythicDungeonBoEsWotLK",                 6 },
					},
					["Info"] = { BabbleZone["Halls of Stone"] .. "+", "SynastriaMythicWotLK" },
					--["Info"] = { BabbleZone["Halls of Stone"] .. "+", "SynastriaMythicWotLK", mapname = "Ulduar77" },
				},

				["MythicUlduarHallsofLightning"] = {
					["Bosses"] = {
						{ "MythicHallsOfLightningGeneralBjarngrim", 1 },
						{ "MythicHallsOfLightningVolkhan",          2 },
						{ "MythicHallsOfLightningIonar",            3 },
						{ "MythicHallsOfLightningLoken",            4 },
						{ "MythicHallsOfLightningTrash",            5 },
						{ "MythicDungeonBoEsWotLK",                 6 },
					},
					["Info"] = { BabbleZone["Halls of Lightning"] .. "+", "SynastriaMythicWotLK" },
					--["Info"] = { BabbleZone["Halls of Lightning"] .. "+", "SynastriaMythicWotLK", mapname = "HallsofLightning" },
				},

				["MythicUtgardeKeep"] = {
					["Bosses"] = {
						{ "MythicUtgardeKeepPrinceKeleseth",     1 },
						{ "MythicUtgardeKeepSkarvaldAndDalronn", 2 },
						{ "MythicUtgardeKeepIngvarThePlunderer", 3 },
						{ "MythicUtgardeKeepTrash",              4 },
						{ "MythicDungeonBoEsWotLK",              5 },
					},
					["Info"] = { BabbleZone["Utgarde Keep"] .. "+", "SynastriaMythicWotLK" },
					--["Info"] = { BabbleZone["Utgarde Keep"] .. "+", "SynastriaMythicWotLK", mapname = "UtgardeKeep" },
				},

				["MythicUtgardePinnacle"] = {
					["Bosses"] = {
						{ "MythicUtgardePinnacleSvalaSorrowgrave", 1 },
						{ "MythicUtgardePinnacleGortokPalehoof",   2 },
						{ "MythicUtgardePinnacleSkadiTheRuthless", 3 },
						{ "MythicUtgardePinnacleKingYmiron",       4 },
						{ "MythicUtgardePinnacleTrash",            5 },
						{ "MythicDungeonBoEsWotLK",                6 },
					},
					["Info"] = { BabbleZone["Utgarde Pinnacle"] .. "+", "SynastriaMythicWotLK" },
					--["Info"] = { BabbleZone["Utgarde Pinnacle"] .. "+", "SynastriaMythicWotLK", mapname = "UtgardePinnacle" },
				},

				["MythicVioletHold"] = {
					["Bosses"] = {
						{ "MythicTheVioletHoldErekem",                1 },
						{ "MythicTheVioletHoldIchoron",               2 },
						{ "MythicTheVioletHoldLavanthor",             3 },
						{ "MythicTheVioletHoldMoragg",                4 },
						{ "MythicTheVioletHoldXevozz",                5 },
						{ "MythicTheVioletHoldZuramatTheObliterator", 6 },
						{ "MythicTheVioletHoldCyanigosa",             7 },
						{ "MythicDungeonBoEsWotLK",                   8 },
					},
					["Info"] = { BabbleZone["The Violet Hold"] .. "+", "SynastriaMythicWotLK" },
					--["Info"] = { BabbleZone["The Violet Hold"] .. "+", "SynastriaMythicWotLK", mapname = "VioletHold" },
				},

				---- Raids

				["MythicIcecrownCitadelA"] = "MythicIcecrownCitadel",
				["MythicIcecrownCitadelB"] = "MythicIcecrownCitadel",
				["MythicIcecrownCitadelC"] = "MythicIcecrownCitadel",
				["MythicIcecrownCitadel"] = {
					["MythicIcecrownCitadelA"] = {
						{ "MythicRaidsPlaceholderWotLK",               1 },
						{ "MythicIcecrownCitadelLordMarrowgar",        1 },
						{ "MythicIcecrownCitadelLadyDeathwhisper",     2 },
						{ "MythicIcecrownCitadelGunshipBattle",        3 },
						{ "MythicIcecrownCitadelDeathbringerSaurfang", 4 },
					},
					["MythicIcecrownCitadelB"] = {
						{ "MythicIcecrownCitadelFestergut",            1 },
						{ "MythicIcecrownCitadelRotface",              2 },
						{ "MythicIcecrownCitadelProfessorPutricide",   3 },
						{ "MythicIcecrownCitadelBloodPrinceCouncil",   4 },
						{ "MythicIcecrownCitadelBloodQueenLanathel",   5 },
						{ "MythicIcecrownCitadelValithriaDreamwalker", 6 },
						{ "MythicIcecrownCitadelSindragosa",           7 },
					},
					["MythicIcecrownCitadelC"] = {
						{ "MythicIcecrownCitadelTheLichKing", 1 },
						{ "MythicIcecrownCitadelTrash",       2 },
					},
					["Info"] = {
						BabbleZone["Icecrown Citadel"] .. "+",
						"SynastriaMythicWotLK",
						sortOrder = { "MythicIcecrownCitadelA", "MythicIcecrownCitadelB", "MythicIcecrownCitadelC" },
						raid = true,
					},
					--["Info"] = { BabbleZone["Icecrown Citadel"] .. "+", "SynastriaMythicWotLK", sortOrder = { "MythicIcecrownCitadelA", "MythicIcecrownCitadelB", "MythicIcecrownCitadelC" }, mapname = "IcecrownCitadel", raid = true },
				},

				["MythicNaxxramas"] = {
					["Bosses"] = {
						{ "MythicRaidsPlaceholderWotLK",         1 },
						{ "MythicNaxxramasPatchwerk",            1 },
						{ "MythicNaxxramasGrobbulus",            2 },
						{ "MythicNaxxramasGluth",                3 },
						{ "MythicNaxxramasThaddius",             4 },
						{ "MythicNaxxramasAnubRekhan",           5 },
						{ "MythicNaxxramasGrandWidowFaerlina",   6 },
						{ "MythicNaxxramasMaexxna",              7 },
						{ "MythicNaxxramasInstructorRazuvious",  8 },
						{ "MythicNaxxramasGothikTheHarvester",   9 },
						{ "MythicNaxxramasFourHorseman",         10 },
						{ "MythicNaxxramasNothThePlaguebringer", 11 },
						{ "MythicNaxxramasHeiganTheUnclean",     12 },
						{ "MythicNaxxramasLoatheb",              13 },
						{ "MythicNaxxramasSapphiron",            14 },
						{ "MythicNaxxramasKelThuzad",            15 },
						{ "MythicNaxxramasTrash",                16 },
					},
					["Info"] = { BabbleZone["Naxxramas"] .. "+", "SynastriaMythicWotLK", raid = true },
					--["Info"] = { BabbleZone["Naxxramas"] .. "+", "SynastriaMythicWotLK", mapname = "Naxxramas", raid = true },
				},

				["MythicObsidianSanctum"] = {
					["Bosses"] = {
						{ "MythicRaidsPlaceholderWotLK",     1 },
						{ "MythicObsidianSanctumSartharion", 1 },
					},
					["Info"] = { BabbleZone["The Obsidian Sanctum"] .. "+", "SynastriaMythicWotLK", raid = true },
					--["Info"] = { BabbleZone["The Obsidian Sanctum"] .. "+", "SynastriaMythicWotLK", mapname = "TheObsidianSanctum", raid = true },
				},

				["MythicOnyxiasLair"] = {
					["Bosses"] = {
						{ "MythicRaidsPlaceholderWotLK", 1 },
						{ "MythicOnyxiasLairOnyxia",     1 },
					},
					["Info"] = { BabbleZone["Onyxia's Lair"] .. "+", "SynastriaMythicWotLK", raid = true },
					--["Info"] = { BabbleZone["Onyxia's Lair"] .. "+", "SynastriaMythicWotLK", mapname = "OnyxiasLair", raid = true },
				},

				["MythicRubySanctum"] = {
					["Bosses"] = {
						{ "MythicRaidsPlaceholderWotLK", 1 },
						{ "MythicRubySanctumHalion",     1 },
					},
					["Info"] = { BabbleZone["The Ruby Sanctum"] .. "+", "SynastriaMythicWotLK", raid = true },
					--["Info"] = { BabbleZone["The Ruby Sanctum"] .. "+", "SynastriaMythicWotLK", mapname = "TheRubySanctum", raid = true },
				},

				["MythicTheEyeOfEternity"] = {
					["Bosses"] = {
						{ "MythicRaidsPlaceholderWotLK",   1 },
						{ "MythicTheEyeOfEternityMalygos", 1 },
					},
					["Info"] = { BabbleZone["The Eye of Eternity"] .. "+", "SynastriaMythicWotLK", raid = true },
					--["Info"] = { BabbleZone["The Eye of Eternity"] .. "+", "SynastriaMythicWotLK", mapname = "TheEyeofEternity", raid = true },
				},

				["MythicTrialOfTheCrusader"] = {
					["Bosses"] = {
						{ "MythicRaidsPlaceholderWotLK",              1 },
						{ "MythicTrialOftheCrusaderNorthrendBeasts",  1 },
						{ "MythicTrialOftheCrusaderLordJaraxxus",     2 },
						{ "MythicTrialOftheCrusaderFactionChampions", 3 },
						{ "MythicTrialOftheCrusaderTwinValkyr",       4 },
						{ "MythicTrialOftheCrusaderAnubarak",         5 },
						{ "MythicTrialOftheCrusaderTribute",          6 },
						{ "MythicTrialOftheCrusaderPatterns",         7 },
					},
					["Info"] = { BabbleZone["Trial of the Crusader"] .. "+", "SynastriaMythicWotLK", raid = true },
					--["Info"] = { BabbleZone["Trial of the Crusader"] .. "+", "SynastriaMythicWotLK", mapname = "TheArgentColiseum", raid = true },
				},

				["MythicUlduarA"] = "MythicUlduar",
				["MythicUlduarB"] = "MythicUlduar",
				["MythicUlduarC"] = "MythicUlduar",
				["MythicUlduarD"] = "MythicUlduar",
				["MythicUlduarE"] = "MythicUlduar",
				["MythicUlduar"] = {
					["MythicUlduarA"] = {
						{ "MythicRaidsPlaceholderWotLK",       1 },
						{ "MythicUlduarFlameLeviathan",        1 },
						{ "MythicUlduarIgnisTheFurnaceMaster", 2 },
						{ "MythicUlduarRazorscale",            3 },
						{ "MythicUlduarXT002Deconstructor",    4 },
					},
					["MythicUlduarB"] = {
						{ "MythicUlduarIronCouncil",        1 },
						{ "MythicUlduarAlgalonTheObserver", 2 },
						{ "MythicUlduarKologarn",           3 },
					},
					["MythicUlduarC"] = {
						{ "MythicUlduarAuriaya", 1 },
						{ "MythicUlduarHodir",   2 },
						{ "MythicUlduarThorim",  3 },
						{ "MythicUlduarFreya",   4 },
					},
					["MythicUlduarD"] = {
						{ "MythicUlduarMimiron", 1 },
					},
					["MythicUlduarE"] = {
						{ "MythicUlduarGeneralVezax", 1 },
						{ "MythicUlduarYoggSaron",    2 },
						{ "MythicUlduarTrash",        3 },
						{ "MythicUlduarPatterns",     4 },
					},
					["Info"] = {
						BabbleZone["Ulduar"] .. "+",
						"SynastriaMythicWotLK",
						sortOrder = {
							"MythicUlduarA",
							"MythicUlduarB",
							"MythicUlduarC",
							"MythicUlduarD",
							"MythicUlduarE",
						},
						raid = true,
					},
					--["Info"] = { BabbleZone["Ulduar"] .. "+", "SynastriaMythicWotLK", sortOrder = { "MythicUlduarA", "MythicUlduarB", "MythicUlduarC", "MythicUlduarD", "MythicUlduarE" }, mapname = "Ulduar", raid = true },
				},

				["MythicVaultOfArchavon"] = {
					["Bosses"] = {
						{ "MythicRaidsPlaceholderWotLK", 1 },
						{ "MythicARCHAVON",              1 },
						{ "MythicEMALON",                2 },
						{ "MythicKORALON",               3 },
						{ "MythicTORAVON",               4 },
					},
					["Info"] = {
						BabbleZone["Vault of Archavon"] .. "+",
						"SynastriaMythicWotLK",
						raid = true,
						disableCompare = true,
					},
					--["Info"] = { BabbleZone["Vault of Archavon"] .. "+", "SynastriaMythicWotLK", mapname = "VaultofArchavon", raid = true, disableCompare = true },
				},
			},

			---------------------
			--- Battlegrounds ---
			---------------------

			["Battlegrounds"] = {

				["AlteracValleyNorth"] = {
					["Bosses"] = {
						{ "MiscFactions", 1 },
						{ "AVMisc",       48 },
						{ "AVBlue",       49 },
					},
					["Info"] = { BabbleZone["Alterac Valley"], "SynastriaClassicWoW" },
				},

				["AlteracValleySouth"] = {
					["Bosses"] = {
						{ "MiscFactions", 1 },
						{ "AVMisc",       31 },
						{ "AVBlue",       32 },
					},
					["Info"] = { BabbleZone["Alterac Valley"], "SynastriaClassicWoW" },
				},

				["ArathiBasin"] = {
					["Bosses"] = {
						{ "MiscFactions", { 1, 2 } },
						{ "AB2039",       11 },
						{ "AB4049",       12 },
						{ "ABSets",       13 },
						{ "ABMisc",       14 },
					},
					["Info"] = { BabbleZone["Arathi Basin"], "SynastriaClassicWoW" },
				},

				["HalaaPvP"] = {
					["Bosses"] = {
						{ "Nagrand", 1 },
					},
					["Info"] = { BabbleZone["Nagrand"] .. ": " .. AL["Halaa"], "SynastriaBurningCrusade" },
				},

				["HellfirePeninsulaPvP"] = {
					["Bosses"] = {
						{ "Hellfire", 1 },
					},
					["Info"] = {
						BabbleZone["Hellfire Peninsula"] .. ": " .. AL["Hellfire Fortifications"],
						"SynastriaBurningCrusade",
					},
				},

				["TerokkarForestPvP"] = {
					["Bosses"] = {
						{ "Terokkar", 1 },
					},
					["Info"] = {
						BabbleZone["Terokkar Forest"] .. ": " .. AL["Spirit Towers"],
						"SynastriaBurningCrusade",
					},
				},

				["ZangarmarshPvP"] = {
					["Bosses"] = {
						{ "Zangarmarsh", 1 },
					},
					["Info"] = {
						BabbleZone["Zangarmarsh"] .. ": " .. AL["Twin Spire Ruins"],
						"SynastriaBurningCrusade",
					},
				},

				["WintergraspPvP"] = {
					["Bosses"] = {
						{ "LakeWintergrasp", 1 },
					},
					["Info"] = { BabbleZone["Wintergrasp"], "SynastriaWotLK" },
				},
			},

			["WorldEvents"] = {

				["MidsummerFestival"] = {
					["Bosses"] = {
						{ "MidsummerFestival" },
						{ "LordAhune" },
					},
					["Info"] = { AL["Midsummer Fire Festival"], "SynastriaWorldEvents" },
				},
			},

			["Misc"] = {
				["Pets"] = {
					["Bosses"] = {
						{ "PetsMerchant" },
						{ "PetsQuest" },
						{ "PetsCrafted" },
						{ "PetsAchievementFaction" },
						{ "PetsRare" },
						{ "PetsEvent" },
						{ "PetsPromotional" },
						{ "PetsCardGame" },
						{ "PetsPetStore" },
						{ "PetsRemoved" },
						{ "PetsAccessories" },
					},
					["Info"] = { BabbleInventory["Companions"], "SynastriaWotLK" },
				},

				["Mounts"] = {
					["Bosses"] = {
						{ "MountsFaction" },
						{ "MountsPvP" },
						{ "MountsRareDungeon" },
						{ "MountsRareRaid" },
						{ "MountsAchievement" },
						{ "MountsCraftQuest" },
						{ "MountsCardGamePromotional" },
						{ "MountsEvent" },
						{ "MountsRemoved" },
					},
					["Info"] = { BabbleInventory["Mounts"], "SynastriaWotLK" },
				},

				["Tabards"] = {
					["Bosses"] = {
						{ "TabardsAlliance" },
						{ "TabardsHorde" },
						{ "TabardsAchievementQuestRareMisc" },
						{ "TabardsRemoved" },
					},
					["Info"] = { BabbleInventory["Tabards"], "SynastriaWotLK" },
				},

				["TransformationItems"] = {
					["Bosses"] = {
						{ "TransformationNonconsumedItems" },
						{ "TransformationConsumableItems" },
						{ "TransformationAdditionalEffects" },
					},
					["Info"] = { AL["Transformation Items"], "SynastriaWotLK" },
				},

				["WorldEpics"] = {
					["Bosses"] = {
						{ "WorldEpics80" },
						{ "WorldEpics70" },
						{ "WorldEpics5060" },
						{ "WorldEpics4049" },
						{ "WorldEpics3039" },
					},
					["Info"] = { AL["BoE World Epics"], "SynastriaWotLK" },
				},
			},

			["PVP"] = {
				["AlteracValley"] = {
					["Bosses"] = {
						{ "AVMisc" },
						{ "AVBlue" },
					},
					["Info"] = { BabbleZone["Alterac Valley"] .. " " .. AL["Rewards"], "SynastriaClassicWoW" },
				},

				["WarsongGulch"] = {
					["Bosses"] = {
						{ "WSGMisc",        6 },
						{ "WSGAccessories", 7 },
						{ "WSGWeapons",     8 },
						{ "WSGArmor",       10 },
					},
					["Info"] = { BabbleZone["Warsong Gulch"] .. " " .. AL["Rewards"], "SynastriaClassicWoW" },
				},
			},

			["Sets"] = {
				["EmblemofTriumph"] = {
					["Bosses"] = {
						{ "EmblemofTriumph" },
						{ "EmblemofTriumph2" },
					},
					["Info"] = { AL["ilvl 245"] .. " - " .. AL["Rewards"], "SynastriaWotLK" },
				},
			},
		}

		Synastria_Data["EmptyPage"] = {
			["Normal"] = { {} },
			info = {
				name = "EmptyPage",
				instance = "EmptyPage",
			},
		}
	end
end)
