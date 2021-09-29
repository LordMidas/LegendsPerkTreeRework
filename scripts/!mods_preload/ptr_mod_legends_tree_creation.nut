local gt = this.getroottable();

gt.Const.PTR.modLegendsPerkTreeCreationSystem <- function()
{
	gt.Const.Perks.RandomTree <- {ID = "RandomTree"};
	gt.Const.Perks.NoTree <- {
		ID = "NoTree",
		Descriptions = [
			""
		],
		Tree = [
			[],
			[],
			[],
			[],
			[],
			[],
			[]
		]
	};

	gt.Const.Perks.FirstAssignedCategories <- ["Profession", "Enemy", "Traits", "Class", "Defense", "Weapon"];
	gt.Const.Perks.LastAssignedCategories <- ["Styles"];
	gt.Const.Perks.SkippedCategories <- ["WeightMultipliers"];		

	gt.Const.Perks.PerkTreeMinsChances <- {
		Enemy1 = 95,
		Enemy2 = 4,
		Enemy3 = 1
	};

	gt.Const.Perks.TraitMultipliers <- {};
	gt.Const.Perks.TraitMultipliers["trait.asthmatic"] <- [
		{ Tree = this.Const.Perks.UnstoppableTree, Multiplier = 0 },
		{ Tree = this.Const.Perks.FastTree, Multiplier = 0 },
		{ Tree = this.Const.Perks.AgileTree, Multiplier = 0.5 }
	];
	gt.Const.Perks.TraitMultipliers["trait.athletic"] <- [
		{ Tree = this.Const.Perks.AgileTree, Multiplier = 1000 },
		{ Tree = this.Const.Perks.FastTree, Multiplier = 2 }		
	];
	gt.Const.Perks.TraitMultipliers["trait.bleeder"] <- [
		{ Tree = this.Const.Perks.SturdyTree, Multiplier = 0 }		
	];
	gt.Const.Perks.TraitMultipliers["trait.bloodthirsty"] <- [
		{ Tree = this.Const.Perks.CleaverTree, Multiplier = 4 },
		{ Tree = this.Const.Perks.SwordTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.AxeTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.SpearTree, Multiplier = 0.5 }	
	];
	gt.Const.Perks.TraitMultipliers["trait.brave"] <- [
		{ Tree = this.Const.Perks.ViciousTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 2 }		
	];
	gt.Const.Perks.TraitMultipliers["trait.bright"] <- [
		{ Tree = this.Const.Perks.TalentedTree, Multiplier = 4 }		
	];
	gt.Const.Perks.TraitMultipliers["trait.brute"] <- [
		{ Tree = this.Const.Perks.FlailTree, Multiplier = 4 }
	];
	gt.Const.Perks.TraitMultipliers["trait.clubfooted"] <- [
		{ Tree = this.Const.Perks.AgileTree, Multiplier = 0 },
		{ Tree = this.Const.Perks.FastTree, Multiplier = 0.5 }
	];
	gt.Const.Perks.TraitMultipliers["trait.cocky"] <- [
		{ Tree = this.Const.Perks.UnstoppableTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.EntertainerClassTree, Multiplier = 1.5 },
	];
	gt.Const.Perks.TraitMultipliers["trait.dastard"] <- [
		{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 0 },
		{ Tree = this.Const.Perks.CalmTree, Multiplier = 0 }		
	];
	gt.Const.Perks.TraitMultipliers["trait.deathwish"] <- [
		{ Tree = this.Const.Perks.ResilientTree, Multiplier = 1000 },
		{ Tree = this.Const.Perks.SturdyTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.determined"] <- [
		{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.ViciousTree, Multiplier = 2 }		
	];
	gt.Const.Perks.TraitMultipliers["trait.dexterous"] <- [
		{ Tree = this.Const.Perks.TrainedTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.TalentedTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.disloyal"] <- [
		{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 0.5 }
	];
	gt.Const.Perks.TraitMultipliers["trait.double_tongued"] <- [
		{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 0.5 },
		{ Tree = this.Const.Perks.ClerkClassTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.EntertainerClassTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.dumb"] <- [
		{ Tree = this.Const.Perks.TalentedTree, Multiplier = 0 }
	];
	gt.Const.Perks.TraitMultipliers["trait.eagle_eyes"] <- [
		{ Tree = this.Const.Perks.BowTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.ScoutClassTree, Multiplier = 4 }
	];
	gt.Const.Perks.TraitMultipliers["trait.fainthearted"] <- [
		{ Tree = this.Const.Perks.CalmTree, Multiplier = 0 }
	];
	gt.Const.Perks.TraitMultipliers["trait.fat"] <- [		
		{ Tree = this.Const.Perks.AgileTree, Multiplier = 0 },
		{ Tree = this.Const.Perks.FastTree, Multiplier = 0.5 }		
	];
	gt.Const.Perks.TraitMultipliers["trait.fearless"] <- [
		{ Tree = this.Const.Perks.CalmTree, Multiplier = 1000 },
		{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 4 }
	];
	gt.Const.Perks.TraitMultipliers["trait.firm"] <- [
		{ Tree = this.Const.Perks.LargeTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.ViciousTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.fragile"] <- [
		{ Tree = this.Const.Perks.SturdyTree, Multiplier = 0 },
		{ Tree = this.Const.Perks.ResilientTree, Multiplier = 0 }
	];
	gt.Const.Perks.TraitMultipliers["trait.frail"] <- [
		{ Tree = this.Const.Perks.SturdyTree, Multiplier = 0.25 },
		{ Tree = this.Const.Perks.LargeTree, Multiplier = 0 },
		{ Tree = this.Const.Perks.ResilientTree, Multiplier = 0.25 },
	];
	gt.Const.Perks.TraitMultipliers["trait.gift_of_people"] <- [
		{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.EntertainerClassTree, Multiplier = 4 }
	];
	// gt.Const.Perks.TraitMultipliers["trait.glorious"] <- [
	// 	{ Tree = this.Const.Perks.UnstoppableTree, Multiplier = 2 },
	// 	{ Tree = this.Const.Perks.ViciousTree, Multiplier = 2 },
	// 	{ Tree = this.Const.Perks.AgileTree, Multiplier = 2 },
	// 	{ Tree = this.Const.Perks.FastTree, Multiplier = 2 },
	// 	{ Tree = this.Const.Perks.CalmTree, Multiplier = 2 },
	// 	{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 2 }
	// ];
	gt.Const.Perks.TraitMultipliers["trait.gluttonous"] <- [
		{ Tree = this.Const.Perks.OrganisedTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.greedy"] <- [
		{ Tree = this.Const.Perks.ClerkClassTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.heavy"] <- [
		{ Tree = this.Const.Perks.FastTree, Multiplier = 0 },
		{ Tree = this.Const.Perks.AgileTree, Multiplier = 0.25 },
		{ Tree = this.Const.Perks.LargeTree, Multiplier = 1000 },
		{ Tree = this.Const.Perks.SturdyTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.hesitant"] <- [
		{ Tree = this.Const.Perks.FastTree, Multiplier = 0 }
	];
	gt.Const.Perks.TraitMultipliers["trait.huge"] <- [
		{ Tree = this.Const.Perks.LargeTree, Multiplier = 1000 },
		{ Tree = this.Const.Perks.HeavyArmorTree, Multiplier = 4 }
	];
	gt.Const.Perks.TraitMultipliers["trait.impatient"] <- [
		{ Tree = this.Const.Perks.FastTree, Multiplier = 1000 }
	];
	gt.Const.Perks.TraitMultipliers["trait.insecure"] <- [
		{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 0 },
		{ Tree = this.Const.Perks.ViciousTree, Multiplier = 0.25 },
		{ Tree = this.Const.Perks.CalmTree, Multiplier = 0.5 }
	];
	gt.Const.Perks.TraitMultipliers["trait.iron_jaw"] <- [
		{ Tree = this.Const.Perks.SturdyTree, Multiplier = 2 },		
		{ Tree = this.Const.Perks.ResilientTree, Multiplier = 1000 }
	];
	gt.Const.Perks.TraitMultipliers["trait.iron_lungs"] <- [
		{ Tree = this.Const.Perks.UnstoppableTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.ViciousTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.irrational"] <- [
		{ Tree = this.Const.Perks.CalmTree, Multiplier = 0 },
		{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 0.5 },
		{ Tree = this.Const.Perks.EntertainerClassTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.legend_cannibalistic"] <- [
		{ Tree = this.Const.Perks.CleaverTree, Multiplier = 1000 }
	];
	gt.Const.Perks.TraitMultipliers["trait.legend_diurnal"] <- [
		{ Tree = this.Const.Perks.ScoutClassTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.legend_peaceful"] <- [
		{ Tree = this.Const.Perks.ViciousTree, Multiplier = 0 },
		{ Tree = this.Const.Perks.UnstoppableTree, Multiplier = 0 },
		{ Tree = this.Const.Perks.CalmTree, Multiplier = 1000 },
		{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 4 },
		{ Tree = this.Const.Perks.OrganisedTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.light"] <- [
		{ Tree = this.Const.Perks.RangedTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.FastTree, Multiplier = 4 },
		{ Tree = this.Const.Perks.AgileTree, Multiplier = 4 }
	];
	gt.Const.Perks.TraitMultipliers["trait.loyal"] <- [
		{ Tree = this.Const.Perks.ResilientTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.lucky"] <- [
		{ Tree = this.Const.Perks.ResilientTree, Multiplier = 1000 }
	];
	gt.Const.Perks.TraitMultipliers["trait.natural"] <- [
		{ Tree = this.Const.Perks.TalentedTree, Multiplier = 1000 }
	];
	gt.Const.Perks.TraitMultipliers["trait.night_blind"] <- [
		{ Tree = this.Const.Perks.ScoutClassTree, Multiplier = 0 }
	];
	gt.Const.Perks.TraitMultipliers["trait.night_owl"] <- [
		{ Tree = this.Const.Perks.ScoutClassTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.optimist"] <- [
		{ Tree = this.Const.Perks.ViciousTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.paranoid"] <- [
		{ Tree = this.Const.Perks.ResilientTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.CalmTree, Multiplier = 0 },
		{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 0.5 }
	];
	gt.Const.Perks.TraitMultipliers["trait.pessimist"] <- [
		{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 0 },
		{ Tree = this.Const.Perks.CalmTree, Multiplier = 0.5 }
	];
	gt.Const.Perks.TraitMultipliers["trait.pragmatic"] <- [
		{ Tree = this.Const.Perks.FlailTree, Multiplier = 0.25 }
	];
	gt.Const.Perks.TraitMultipliers["trait.predictable"] <- [
		{ Tree = this.Const.Perks.FastTree, Multiplier = 0.75 },
		{ Tree = this.Const.Perks.FlailTree, Multiplier = 0.5 }
	];
	gt.Const.Perks.TraitMultipliers["trait.quick"] <- [
		{ Tree = this.Const.Perks.SwordTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.FastTree, Multiplier = 1000 }
	];
	gt.Const.Perks.TraitMultipliers["trait.short_sighted"] <- [
		{ Tree = this.Const.Perks.ScoutClassTree, Multiplier = 0 }
	];
	gt.Const.Perks.TraitMultipliers["trait.spartan"] <- [
		{ Tree = this.Const.Perks.ResilientTree, Multiplier = 0.75 },
		{ Tree = this.Const.Perks.SturdyTree, Multiplier = 0.5 }
	];
	gt.Const.Perks.TraitMultipliers["trait.steady_hands"] <- [
		{ Tree = this.Const.Perks.RangedTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.BowTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.CrossbowTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.strong"] <- [
		{ Tree = this.Const.Perks.UnstoppableTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.LargeTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.superstitious"] <- [
		{ Tree = this.Const.Perks.CalmTree, Multiplier = 0 },
		{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 0.5 }
	];
	gt.Const.Perks.TraitMultipliers["trait.sure_footing"] <- [
		{ Tree = this.Const.Perks.TrainedTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.SturdyTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.ResilientTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.sureshot"] <- [
		{ Tree = this.Const.Perks.BowTree, Multiplier = 1000 },
		{ Tree = this.Const.Perks.CrossbowTree, Multiplier = 1000 },
		{ Tree = this.Const.Perks.RangedTree, Multiplier = 1000 }
	];
	gt.Const.Perks.TraitMultipliers["trait.survivor"] <- [
		{ Tree = this.Const.Perks.ResilientTree, Multiplier = 1000 },
		{ Tree = this.Const.Perks.SturdyTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.swift"] <- [
		{ Tree = this.Const.Perks.AgileTree, Multiplier = 4 },
		{ Tree = this.Const.Perks.UnstoppableTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.teamplayer"] <- [
		{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.EntertainerClassTree, Multiplier = 4 }
	];
	gt.Const.Perks.TraitMultipliers["trait.tiny"] <- [
		{ Tree = this.Const.Perks.LargeTree, Multiplier = 0 }
	];
	gt.Const.Perks.TraitMultipliers["trait.tough"] <- [
		{ Tree = this.Const.Perks.LargeTree, Multiplier = 4 },
		{ Tree = this.Const.Perks.SturdyTree, Multiplier = 1000 },
		{ Tree = this.Const.Perks.ResilientTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.unpredictable"] <- [
		{ Tree = this.Const.Perks.FlailTree, Multiplier = 4 }
	];
	gt.Const.Perks.TraitMultipliers["trait.frail"] <- [
		{ Tree = this.Const.Perks.SturdyTree, Multiplier = 0.25 },
		{ Tree = this.Const.Perks.LargeTree, Multiplier = 0 },
		{ Tree = this.Const.Perks.ResilientTree, Multiplier = 0.25 }
	];
	gt.Const.Perks.TraitMultipliers["trait.weasel"] <- [
		{ Tree = this.Const.Perks.FastTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.AgileTree, Multiplier = 2 }
	];
	gt.Const.Perks.TraitMultipliers["trait.aggressive"] <- [
		{ Tree = this.Const.Perks.ViciousTree, Multiplier = 1000 },
		{ Tree = this.Const.Perks.UnstoppableTree, Multiplier = 1000 }
	];
	gt.Const.Perks.TraitMultipliers["trait.ailing"] <- [		
		{ Tree = this.Const.Perks.ResilientTree, Multiplier = 0.5 }
	];
	gt.Const.Perks.TraitMultipliers["trait.ambitious"] <- [
		{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.OrganisedTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.TrainedTree, Multiplier = 2 }
	];

	gt.Const.Perks.TalentMultipliers <- [];
	gt.Const.Perks.TalentMultipliers.resize(this.Const.Attributes.COUNT, 0);

	gt.Const.Perks.TalentMultipliers[this.Const.Attributes.Hitpoints] = [
		{ Tree = this.Const.Perks.LargeTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.SturdyTree, Multiplier = 2 }
	];
	gt.Const.Perks.TalentMultipliers[this.Const.Attributes.Bravery] = [
		{ Tree = this.Const.Perks.CalmTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.SergeantClassTree, Multiplier = 2 },
	];
	gt.Const.Perks.TalentMultipliers[this.Const.Attributes.Fatigue] = [
		{ Tree = this.Const.Perks.HeavyArmorTree, Multiplier = 2 }
	];
	gt.Const.Perks.TalentMultipliers[this.Const.Attributes.Initiative] = [
		{ Tree = this.Const.Perks.LightArmorTree, Multiplier = 2 }
	];
	gt.Const.Perks.TalentMultipliers[this.Const.Attributes.MeleeSkill] = [
		{ Tree = this.Const.Perks.BowTree, Multiplier = 0.5 },
		{ Tree = this.Const.Perks.CrossbowTree, Multiplier = 0.5 },
		{ Tree = this.Const.Perks.SlingsTree, Multiplier = 0.5 },
		{ Tree = this.Const.Perks.RangedTree, Multiplier = 0.5 }
	];
	gt.Const.Perks.TalentMultipliers[this.Const.Attributes.RangedSkill] = [
		{ Tree = this.Const.Perks.BowTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.CrossbowTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.SlingsTree, Multiplier = 2 },
		{ Tree = this.Const.Perks.RangedTree, Multiplier = 2 }
	];
	gt.Const.Perks.TalentMultipliers[this.Const.Attributes.MeleeDefense] = [
		{ Tree = this.Const.Perks.TrainedTree, Multiplier = 2 }
	];
	gt.Const.Perks.TalentMultipliers[this.Const.Attributes.RangedDefense] = [
		{ Tree = this.Const.Perks.FastTree, Multiplier = 2 }
	];

	gt.Const.Perks.ConvertLegendsMapToPTR <- function ( _map )
	{
		local getEquivalentPTRTrees = function(_legendsTree)
		{
			switch (_legendsTree.ID)
			{
				case "InspirationalTree":
					return [this.Const.Perks.SergeantClassTree];
					break;

				case "MartyrTree":
					return [this.Const.Perks.ResilientTree];
					break;

				default:
					return [_legendsTree];
			}
		}

		local PTRMap = {};
		PTRMap.WeightMultipliers <- [];		

		foreach (categoryName, treeList in _map)
		{
			if (this.Const.Perks.SkippedCategories.find(categoryName) != null)
			{
				continue;
			}

			local PTRCategory = [];

			foreach (tree in treeList)
			{
				local EquivalentPTRTrees = getEquivalentPTRTrees(tree);
				foreach (t in EquivalentPTRTrees)
				{
					PTRCategory.push([{ Weight = 10, Tree = t }]);
				}
			}

			PTRMap[categoryName] <- PTRCategory;
		}

		return PTRMap;
	};

	gt.Const.Perks.GetDynamicPerkTree = function ( _mins, _map, _player = null )
	{
		if (!("WeightMultipliers" in _map))
		{
			_map = this.ConvertLegendsMapToPTR(_map);
		}

		local dynamicTree = [
			[],
			[],
			[],
			[],
			[],
			[],
			[],
			[],
			[],
			[],
			[]
		];

		foreach (categoryName, treeListsinCategory in _map)
		{
			if (this.Const.Perks.SkippedCategories.find(categoryName) != null)
			{
				continue;
			}

			foreach (treeList in treeListsinCategory)
			{
				foreach (tree in treeList)
				{
					if (!("Weight" in tree))
					{
						tree.Weight <- 100 / treeList.len();
					}
				}
			}
		}

		local attributes = this.Const.Perks.TraitsTrees.getBaseAttributes();
		local characterTraits = _player == null ? null : _player.getSkills().getAllSkillsOfType(this.Const.SkillType.Trait);
		local _localMap = {};

		local applyMultipliers = function( _multipliersList, _treeList )
		{
			foreach (tree in _treeList)
			{
				if (tree.Tree == null)
				{
					continue;
				}

				foreach (multiplier in _multipliersList)
				{
					if (tree.Tree.ID == multiplier.Tree.ID)
					{
						tree.Weight *= multiplier.Multiplier;
					}
				}
			}

			return _treeList;
		}		

		local applyMultipliersBasedOnAssignedCategories = function( _treeList )
		{
			foreach (categoryName, treesInCategory in _localMap)
			{
				foreach (tree in treesInCategory)
				{
					if ("WeightMultipliers" in tree.Tree)
					{
						_treeList = applyMultipliers(tree.Tree.WeightMultipliers, _treeList);
					}
				}
			}

			return _treeList;
		}

		local applyMultipliersBasedOnEquipment = function ( _treeList )
		{
			if (_player == null)
			{
				return _treeList;
			}

			local weapon = _player.getMainhandItem();
			if (weapon == null)
			{
				return _treeList;
			}

			local trees = [];

			if (weapon.isWeaponType(this.Const.Items.WeaponType.Axe))
			{
				trees.push(this.Const.Perks.AxeTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Bow))
			{
				trees.push(this.Const.Perks.BowTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Cleaver))
			{
				trees.push(this.Const.Perks.CleaverTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Crossbow))
			{
				trees.push(this.Const.Perks.CrossbowTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Dagger))
			{
				trees.push(this.Const.Perks.DaggerTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Flail))
			{
				trees.push(this.Const.Perks.FlailTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Hammer))
			{
				trees.push(this.Const.Perks.HammerTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Mace))
			{
				trees.push(this.Const.Perks.MaceTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Polearm))
			{
				trees.push(this.Const.Perks.PolearmTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Sling))
			{
				trees.push(this.Const.Perks.SlingsTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Spear))
			{
				trees.push(this.Const.Perks.SpearTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Sword))
			{
				trees.push(this.Const.Perks.SwordTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Staff))
			{
				trees.push(this.Const.Perks.StavesTree);
			}
			if (weapon.isWeaponType(this.Const.Items.WeaponType.Throwing))
			{
				trees.push(this.Const.Perks.ThrowingTree);
			}

			if (trees.len() == 0)
			{
				return _treeList;
			}

			local multipliers = [
				{ Tree = trees[this.Math.rand(0, trees.len() - 1)], Multiplier = 1000 }
			];

			_treeList = applyMultipliers(multipliers, _treeList);

			return _treeList;
		}

		local applyMultipliersBasedOnTalents = function( _treeList )
		{
			if (_player == null)
			{
				return _treeList;
			}

			local talents = _player.getTalents();

			local multipliers = [];

			for (local attribute = 0; attribute < this.Const.Attributes.COUNT; attribute++)
			{
				if (talents[attribute] == 0)
				{
					continue;
				}

				foreach (mult in this.Const.Perks.TalentMultipliers[attribute])
				{
					multipliers.push(
						{
							Tree = mult.Tree,
							Multiplier = mult.Multiplier < 1 ? mult.Multiplier / talents[attribute] : mult.Multiplier * talents[attribute]
						}
					);
				}
			}
			
			_treeList = applyMultipliers(multipliers, _treeList);		

			return _treeList;
		}

		local applyMultipliersBasedOnTraits = function( _treeList )
		{	
			if (characterTraits == null)
			{
				return _treeList;
			}

			local multipliers = [];

			foreach (trait in characterTraits)
			{
				if (trait in this.Const.Perks.TraitMultipliers)
				{
					multipliers.extend(this.Const.Perks.TraitMultipliers[trait]);
				}
			}

			_treeList = applyMultipliers(multipliers, _treeList);

			return _treeList;
		}

		local getWeightedRandomTreeFromCategory = function(_categoryName, _exclude = null)
		{
			local potentialTrees = [];

			foreach( tree in gt.Const.Perks[_categoryName + "Trees"].Tree )
			{
				if (_exclude != null && _exclude.find(tree.ID) != null)
				{
					continue;
				}

				local weight = 10;
				if ("SelfWeightMultiplier" in tree)
				{
					weight *= tree.SelfWeightMultiplier;
				}

				potentialTrees.push( {Weight = weight, Tree = tree} );
			}

			if (potentialTrees.len() != 0)
			{
				potentialTrees = applyMultipliers(_map.WeightMultipliers, potentialTrees);
				potentialTrees = applyMultipliersBasedOnAssignedCategories(potentialTrees);
				if (_player != null)
				{
					potentialTrees = applyMultipliersBasedOnTraits(potentialTrees);
					potentialTrees = applyMultipliersBasedOnTalents(potentialTrees);
					potentialTrees = applyMultipliersBasedOnEquipment(potentialTrees);
				}		
			}

			return this.getWeightedRandomTreeFromTreeList(potentialTrees);
		}

		local addTreesFromMapCategory = function( _categoryName )
		{
			local treeListsInCategory = _map[_categoryName];

			local exclude = [];
			foreach (tree in _localMap[_categoryName])
			{
				exclude.push(tree.ID);
			}

			foreach (treeList in treeListsInCategory)
			{
				if (treeList.len() == 1)
				{
					_localMap[_categoryName].push(treeList[0].Tree);
				}
				else
				{
					treeList = applyMultipliers(_map.WeightMultipliers, treeList);

					treeList = applyMultipliersBasedOnAssignedCategories(treeList);

					if (_player != null)
					{
						treeList = applyMultipliersBasedOnTraits(treeList);
						treeList = applyMultipliersBasedOnTalents(treeList);
						treeList = applyMultipliersBasedOnEquipment(treeList);
					}

					local tree = this.getWeightedRandomTreeFromTreeList(treeList);

					if (tree == this.Const.Perks.RandomTree)
					{
						tree = getWeightedRandomTreeFromCategory(_categoryName, exclude);
					}

					_localMap[_categoryName].push(tree);
					exclude.push(tree.ID);
				}
			}
		}

		local assignMins = function(_categoryName)
		{
			local exclude = [];
			foreach (tree in _localMap[_categoryName])
			{
				exclude.push(tree.ID);
			}

			local r = this.Math.rand(0, 100);
			for (local i = _localMap[_categoryName].len(); i < _mins[_categoryName]; i++)
			{
				if (_categoryName == "Enemy")
				{
					if ((i == 0 && r > this.Const.Perks.PerkTreeMinsChances.Enemy1) || (i == 1 && r > this.Const.Perks.PerkTreeMinsChances.Enemy2) || (i == 2 && r > this.Const.Perks.PerkTreeMinsChances.Enemy3))
					{
						continue;
					}
				}

				if (_categoryName == "Magic" && r > _mins.MagicChance * 100.0)
				{
					continue;
				}

				local t = getWeightedRandomTreeFromCategory(_categoryName, exclude);
				_localMap[_categoryName].push(t);
				exclude.push(t.ID);
			}
		}

		local orderOfAssignment = clone this.Const.Perks.FirstAssignedCategories;

		foreach (categoryName, treeListsInCategory in _map)
		{
			if (this.Const.Perks.SkippedCategories.find(categoryName) != null || this.Const.Perks.FirstAssignedCategories.find(categoryName) != null || this.Const.Perks.LastAssignedCategories.find(categoryName) != null)
			{
				continue;
			}

			orderOfAssignment.push(categoryName);
		}

		foreach (categoryName, v in _mins)
		{
			if (orderOfAssignment.find(categoryName) != null || this.Const.Perks.FirstAssignedCategories.find(categoryName) != null || this.Const.Perks.LastAssignedCategories.find(categoryName) != null)
			{
				continue;
			}

			if (categoryName == "EnemyChance" || categoryName == "ClassChance" || categoryName == "MagicChance")
			{
				continue;
			}

			orderOfAssignment.push(categoryName);
		}

		orderOfAssignment.extend(this.Const.Perks.LastAssignedCategories);

		foreach (categoryName in orderOfAssignment)
		{
			if (!(categoryName in _localMap))
			{
				_localMap[categoryName] <- [];
			}

			if (categoryName in _map)
			{
				addTreesFromMapCategory(categoryName);
			}

			if (categoryName in _mins)
			{
				if (categoryName == "Styles")
				{
					local hasRangedWeaponTree = false;
					local hasMeleeWeaponTree = false;
					foreach (tree in _localMap.Weapon)
					{
						if (!hasRangedWeaponTree && this.Const.Perks.RangedWeaponTrees.Tree.find(tree) != null)
						{
							hasRangedWeaponTree = true;
						}
						if (!hasMeleeWeaponTree && this.Const.Perks.MeleeWeaponTrees.Tree.find(tree) != null)
						{
							hasMeleeWeaponTree = true;
						}
					}

					if (!hasRangedWeaponTree)
					{
						_map.WeightMultipliers.push({Multiplier = 0, Tree = this.Const.Perks.RangedTree});
					}
					if (!hasMeleeWeaponTree)
					{
						_map.WeightMultipliers.push({Multiplier = 0, Tree = this.Const.Perks.OneHandedTree});
						_map.WeightMultipliers.push({Multiplier = 0, Tree = this.Const.Perks.TwoHandedTree});
					}
				}

				assignMins(categoryName);
			}
		}

		local roll = 0;

		foreach( categoryName, category in _localMap )
		{
			foreach( tree in category )
			{
				foreach( rowNumber, perksInRow in tree.Tree )
				{
					foreach( perk in perksInRow )
					{
						dynamicTree[rowNumber].push(perk);
					}
				}
			}
		}

		local chanceFencer = 25;
		if (_player.getBackground().getID() == "background.swordmaster")
		{
			chanceFencer = 100;
		}
		else
		{
			local talents = _player.getTalents();
			chanceFencer *= talents[this.Const.Perks.Attributes.Initiative] * talents[this.Const.Perks.Attributes.MeleeSkill];			

			if (chanceFencer > 0)
			{
				foreach (categoryName, category in _localMap)
				{
					foreach (tree in category)
					{
						switch (tree.ID)
						{
							case this.Const.Perks.SwordTree.ID:
								chanceFencer = 0;
								break;

							case this.Const.Perks.LightArmorTree.ID:
								chanceFencer *= 2;
								break;

							case this.Const.Perks.HeavyArmorTree.ID:
								chanceFencer /= 2;
								break;
						}

						if (chanceFencer == 0)
						{
							break;
						}
					}

					if (chanceFencer == 0)
					{
						break;
					}
				}
			}
		}

		if (this.Math.rand(1, 100) <= chanceFencer)
		{
			dynamicTree[6].push(this.Const.Perks.PerkDefs.BFFencer);
		}

		foreach( tree in _localMap.Traits )
		{
			if ("Attributes" in tree)
			{
				local c = tree.Attributes;
				attributes.Hitpoints[0] += c.Hitpoints[0];
				attributes.Hitpoints[1] += c.Hitpoints[1];
				attributes.Bravery[0] += c.Bravery[0];
				attributes.Bravery[1] += c.Bravery[1];
				attributes.Stamina[0] += c.Stamina[0];
				attributes.Stamina[1] += c.Stamina[1];
				attributes.MeleeSkill[0] += c.MeleeSkill[0];
				attributes.MeleeSkill[1] += c.MeleeSkill[1];
				attributes.MeleeDefense[0] += c.MeleeDefense[0];
				attributes.MeleeDefense[1] += c.MeleeDefense[1];
				attributes.RangedSkill[0] += c.RangedSkill[0];
				attributes.RangedSkill[1] += c.RangedSkill[1];
				attributes.RangedDefense[0] += c.RangedDefense[0];
				attributes.RangedDefense[1] += c.RangedDefense[1];
				attributes.Initiative[0] += c.Initiative[0];
				attributes.Initiative[1] += c.Initiative[1];
			}
		}

		return {
			Tree = dynamicTree,
			Attributes = attributes,
			TreeMap = _localMap
		};
	};

	gt.Const.Perks.MergeDynamicPerkTree <- function(_tree, _map)
	{
		foreach( categoryName, category in _map )
		{
			foreach( treeEntry in category )
			{
				foreach( rowNumber, perksInRow in treeEntry.Tree )
				{
					foreach( perk in perksInRow )
					{
						if (this.Const.Perks.isInTree(_tree, perk))
						{
							continue;
						}

						_tree[rowNumber].push(perk);
					}
				}
			}
		}

		return _tree;
	}	

	gt.Const.Perks.getWeightedRandomTreeFromTreeList <- function( _treeList )
	{
		if (_treeList.len() == 0)
		{
			return this.Const.Perks.NoTree;
		}

		local totalWeight = 0;
		foreach (tree in _treeList)
		{
			totalWeight += tree.Weight;
		}

		local roll = this.Math.rand(1, totalWeight);

		foreach (tree in _treeList)
		{
			if (roll <= tree.Weight)
			{
				//this.logInfo("Returning random tree: " + tree.Tree.ID + " with weight " + tree.Weight);
				return tree.Tree;
			}

			roll -= tree.Weight;
		}

		return this.Const.Perks.NoTree;
	}
}
