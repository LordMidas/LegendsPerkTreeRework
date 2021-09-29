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

	gt.Const.Perks.GetDynamicPerkTree = function ( _mins, _map )
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
		local _localMap = {};
		local assignedCategories = [];

		local addTreesFromMapCategory = function(_categoryName, _treeLists)
		{
			local treesInCategory = [];

			foreach (treeList in _treeLists)
			{
				if (treeList.len() == 1)
				{
					_localMap[_categoryName].push(treeList[0].Tree);
				}
				else
				{
					treeList = this.applyMultipliersBasedOnBackground(_map, treeList);

					if (assignedCategories.len() > 0)
					{
						treeList = this.applyMultipliersBasedOnAssignedCategories(_localMap, treeList, assignedCategories);
					}

					local tree = this.getWeightedRandomTreeFromTreeList(treeList);
					if (tree == this.Const.Perks.RandomTree)
					{
						tree = this.getWeightedRandomTreeFromCategory(_categoryName, _map, _localMap, treesInCategory);
					}

					_localMap[_categoryName].push(tree);
				}
			}

			if (assignedCategories.find(_categoryName) == null)
			{
				assignedCategories.push(_categoryName);
			}
		}

		local assignMins = function(_categoryName)
		{
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

				local exclude = [];
				foreach (tree in _localMap[_categoryName])
				{
					exclude.push(tree.ID);
				}

				local t = this.getWeightedRandomTreeFromCategory(_categoryName, _map, _localMap, assignedCategories, exclude);
				_localMap[_categoryName].push(t);
			}

			if (assignedCategories.find(_categoryName) == null)
			{
				assignedCategories.push(_categoryName);
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
				local treeListsInCategory = _map[categoryName];

				addTreesFromMapCategory(categoryName,treeListsInCategory);
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

	gt.Const.Perks.getWeightedRandomTreeFromCategory <- function(_categoryName, _backgroundMap, _currentMap, _assignedCategories, _exclude = null)
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
			potentialTrees = this.applyMultipliersBasedOnBackground(_backgroundMap, potentialTrees);
			potentialTrees = this.applyMultipliersBasedOnAssignedCategories(_currentMap, potentialTrees, _assignedCategories);			
		}

		return this.getWeightedRandomTreeFromTreeList(potentialTrees);
	}

	gt.Const.Perks.applyMultipliers <- function( _multipliersList, _treeList )
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

	gt.Const.Perks.applyMultipliersBasedOnBackground <- function( _map, _treeList )
	{
		if ("WeightMultipliers" in _map)
		{
			_treeList = this.applyMultipliers(_map.WeightMultipliers, _treeList);
		}

		return _treeList;
	}

	gt.Const.Perks.applyMultipliersBasedOnAssignedCategories <- function( _map, _treeList, _assignedCategories)
	{
		foreach (categoryName, treeListsInCategory in _map)
		{
			if (_assignedCategories.find(categoryName) != null)
			{
				foreach (tree in _map[categoryName])
				{
					if ("WeightMultipliers" in tree.Tree)
					{
						_treeList = this.applyMultipliers(tree.Tree.WeightMultipliers, _treeList);
					}
				}
			}
		}

		return _treeList;
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
