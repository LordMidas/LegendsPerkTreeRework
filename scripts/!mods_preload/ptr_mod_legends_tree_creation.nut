local gt = this.getroottable();

gt.Const.PTR.hookLegendsPerkTreeCreationSystem <- function()
{
	gt.Const.Perks.RandomTree <- {ID = "RandomTree"};
	gt.Const.Perks.OldSystem <- function( _mins, _map )
	{
		local tree = [
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
		local attributes = this.Const.Perks.TraitsTrees.getBaseAttributes();
		local _localMap = {
			Weapon = [],
			Defense = [],
			Traits = [],
			Enemy = [],
			Class = [],
			Magic = []
		};

		if ("Weapon" in _map)
		{
			foreach( p in _map.Weapon )
			{
				_localMap.Weapon.push(p);
			}
		}

		if ("Defense" in _map)
		{
			foreach( p in _map.Defense )
			{
				_localMap.Defense.push(p);
			}
		}

		if ("Traits" in _map)
		{
			foreach( p in _map.Traits )
			{
				_localMap.Traits.push(p);
			}
		}

		if ("Enemy" in _map)
		{
			foreach( p in _map.Enemy )
			{
				_localMap.Enemy.push(p);
			}
		}

		if ("Class" in _map)
		{
			foreach( p in _map.Class )
			{
				_localMap.Class.push(p);
			}
		}

		if ("Magic" in _map)
		{
			foreach( p in _map.Magic )
			{
				_localMap.Magic.push(p);
			}
		}

		local count = _mins.Weapon - _localMap.Weapon.len();

		for( local i = 0; i < count; i++ )
		{
			local _exclude = [];

			foreach( tt in _localMap.Weapon )
			{
				_exclude.push(tt.ID);
			}

			local t = this.Const.Perks.WeaponTrees.getRandom(_exclude);
			_localMap.Weapon.push(t);
		}

		local count = _mins.Defense - _localMap.Defense.len();

		for( local i = 0; i < count; i++ )
		{
			local _exclude = [];

			foreach( tt in _localMap.Defense )
			{
				_exclude.push(tt.ID);
			}

			local t = this.Const.Perks.DefenseTrees.getRandom(_exclude);
			_localMap.Defense.push(t);
		}

		local count = _mins.Traits - _localMap.Traits.len();

		for( local i = 0; i < count; i++ )
		{
			local _exclude = [];

			foreach( tt in _localMap.Traits )
			{
				_exclude.push(tt.ID);
			}

			local t = this.Const.Perks.TraitsTrees.getRandom(_exclude);
			_localMap.Traits.push(t);
		}

		local count = _mins.Enemy - _localMap.Enemy.len();

		for( local i = 0; i <= count; i++ )
		{
			local r = this.Math.rand(0, 100);

			if (r > _mins.EnemyChance * 100.0)
			{
			}
			else
			{
				local _exclude = [];

				foreach( tt in _localMap.Enemy )
				{
					_exclude.push(tt.ID);
				}

				local t = this.Const.Perks.EnemyTrees.getRandom(_exclude);
				_localMap.Enemy.push(t);
			}
		}

		local count = _mins.Class - _localMap.Class.len();

		for( local i = 0; i <= count; i++ )
		{
			local r = this.Math.rand(0, 100);

			if (r > _mins.ClassChance * 100.0)
			{
			}
			else
			{
				local _exclude = [];

				foreach( tt in _localMap.Class )
				{
					_exclude.push(tt.ID);
				}

				local t = this.Const.Perks.ClassTrees.getRandom(_exclude);
				_localMap.Class.push(t);
			}
		}

		local count = _mins.Magic - _localMap.Magic.len();

		for( local i = 0; i <= count; i++ )
		{
			local r = this.Math.rand(0, 100);

			if (r > _mins.MagicChance * 100.0)
			{
			}
			else
			{
				local _exclude = [];

				foreach( tt in _localMap.Magic )
				{
					_exclude.push(tt.ID);
				}

				local t = this.Const.Perks.MagicTrees.getRandom(_exclude);

				if (this.LegendsMod.Configs().LegendMagicEnabled())
				{
					_localMap.Magic.push(t);
				}
			}
		}

		// local _totals = {};
		// local _overflows = {};

		foreach( v in _localMap )
		{
			foreach( mT in v )
			{
				foreach( i, row in mT.Tree )
				{
					// if (!(i in _totals))
					// {
						// _totals[i] <- 0;
						// _overflows[i] <- [];
					// }

					foreach( p in row )
					{
						// for( ; _totals[i] >= 13;  )
						// {
							// _overflows[i].push(p);
						// }

						// _totals[i]++;
						tree[i].push(p);
					}
				}
			}
		}

		local _direction = 1;

		// foreach( index, L in _overflows )
		// {
			// local nextIndex = index;

			// for( local i = 0; i < L.len(); i = i )
			// {
				// while (_totals[nextIndex] >= 13)
				// {
					// nextIndex++;

					// if (nextIndex > 6)
					// {
						// _totals[nextIndex] <- 0;
					// }
				// }

				// tree[nextIndex].push(L[i]);
				// _totals[nextIndex]++;
				// i = ++i;
			// }
		// }

		foreach( t in _localMap.Traits )
		{
			if (t.Attributes)
			{
				local c = t.Attributes;
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
			Tree = tree,
			Attributes = attributes
		};
	};

	gt.Const.Perks.IntermediateSystem <- function( _mins, _map )
	{
		local tree = [
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
		local attributes = this.Const.Perks.TraitsTrees.getBaseAttributes();
		local _localMap = {};

		foreach (categoryName, treeListInCategory in _map)
		{
			if (!(categoryName in _localMap))
			{
				_localMap[categoryName] <- [];
			}

			foreach (tree in treeListInCategory)
			{
				_localMap[categoryName].push(tree);
			}
		}

		foreach (categoryName, v in _mins)
		{
			if (categoryName == "EnemyChance" || categoryName == "ClassChance" || categoryName == "MagicChance")
			{
				continue;
			}

			if (!(categoryName in _localMap))
			{
				_localMap[categoryName] <- [];
			}

			local count = _mins[categoryName] - _localMap[categoryName].len();

			for (local i = 0; i < count; i++)
			{
				local r = this.Math.rand(0, 100);
				if (categoryName == "Enemy" && r > _mins.EnemyChance * 100.0)
				{
					continue;
				}
				if (categoryName == "Class" && r > _mins.ClassChance * 100.0)
				{
					continue;
				}
				if (categoryName == "Magic" && r > _mins.MagicChance * 100.0)
				{
					continue;
				}

				local exclude = [];
				foreach (tree in _localMap[categoryName])
				{
					exclude.push(tree.ID);
				}

				local t = this.Const.Perks[categoryName + "Trees"].getRandom(exclude);
				_localMap[categoryName].push(t);
			}
		}

		// local _totals = {};
		// local _overflows = {};

		foreach( v in _localMap )
		{
			foreach( mT in v )
			{
				foreach( i, row in mT.Tree )
				{
					// if (!(i in _totals))
					// {
						// _totals[i] <- 0;
						// _overflows[i] <- [];
					// }

					foreach( p in row )
					{
						// for( ; _totals[i] >= 13;  )
						// {
							// _overflows[i].push(p);
						// }

						// _totals[i]++;
						tree[i].push(p);
					}
				}
			}
		}

		local _direction = 1;

		// foreach( index, L in _overflows )
		// {
			// local nextIndex = index;

			// for( local i = 0; i < L.len(); i = i )
			// {
				// while (_totals[nextIndex] >= 13)
				// {
					// nextIndex++;

					// if (nextIndex > 6)
					// {
						// _totals[nextIndex] <- 0;
					// }
				// }

				// tree[nextIndex].push(L[i]);
				// _totals[nextIndex]++;
				// i = ++i;
			// }
		// }

		foreach( t in _localMap.Traits )
		{
			if (t.Attributes)
			{
				local c = t.Attributes;
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
			Tree = tree,
			Attributes = attributes
		};
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

		local PTRMap = {}

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
					PTRCategory.push([{ Weight = 10, Expertise = this.Const.Perks.Expertise.Medium, Tree = t }]);
				}
			}

			PTRMap[categoryName] <- PTRCategory;
		}

		return PTRMap;
	};

	gt.Const.Perks.OrderOfAssignment <- ["Profession", "Traits", "Class", "Defense", "Weapon"];
	gt.Const.Perks.SkippedCategories <- ["WeightMultipliers", "ExpertiseMultipliers"];
	gt.Const.Perks.MultiplierTypes <- ["Weight", "Expertise"];
	gt.Const.Perks.Expertise <- {
		None = 100,
		Low = 2,
		Medium = 1,
		High = 0.5,
		Full = 0
	};

	gt.Const.Perks.GetDynamicPerkTree = function ( _mins, _map )
	{
		if (!("WeightMultipliers" in _map))
		{
			//return this.OldSystem( _mins, _map )
			//return this.IntermediateSystem( _mins, _map )
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
					if (!("Expertise" in tree))
					{
						tree.Expertise <- this.Const.Perks.Expertise.Medium;
					}
				}
			}
		}

		local attributes = this.Const.Perks.TraitsTrees.getBaseAttributes();
		local _localMap = {};
		local treesInMap = 0;
		local assignedCategories = [];

		local addTreesFromMapCategory = function(_categoryName, _treeLists)
		{
			local treesInCategory = [];

			foreach (treeList in _treeLists)
			{
				treeList = this.applyMultipliersBasedOnBackground(_map, treeList);

				if (assignedCategories.len() > 0)
				{
					treeList = this.applyMultipliersBasedOnAssignedCategories(_localMap, treeList, assignedCategories);
				}

				local tree = this.getWeightedRandomTreeFromTreeList(treeList);
				if (tree.Tree == this.Const.Perks.RandomTree)
				{
					tree = this.getWeightedRandomTreeFromCategory(_categoryName, _map, _localMap, treesInCategory);
				}
				if (tree.Tree != null)
				{
					_localMap[_categoryName].push(tree);
					treesInMap++;
				}
			}

			if (assignedCategories.find(_categoryName) == null)
			{
				assignedCategories.push(_categoryName);
			}
		}

		foreach (categoryName in this.Const.Perks.OrderOfAssignment)
		{
			if (!(categoryName in _localMap))
			{
				_localMap[categoryName] <- [];
			}

			if (!(categoryName in _map))
			{
				continue;
			}

			local treeListsInCategory = _map[categoryName];

			addTreesFromMapCategory(categoryName,treeListsInCategory);
		}

		foreach (categoryName, treeListsInCategory in _map)
		{
			if (this.Const.Perks.SkippedCategories.find(categoryName) != null || this.Const.Perks.OrderOfAssignment.find(categoryName) != null)
			{
				continue;
			}

			if (!(categoryName in _localMap))
			{
				_localMap[categoryName] <- [];
			}

			addTreesFromMapCategory(categoryName, treeListsInCategory);
		}

		foreach (categoryName, v in _mins)
		{
			if (categoryName == "EnemyChance" || categoryName == "ClassChance" || categoryName == "MagicChance")
			{
				continue;
			}

			if (!(categoryName in _localMap))
			{
				_localMap[categoryName] <- [];
			}
		}

		local assignMins = function(_categoryName)
		{
			local count = _mins[_categoryName] - _localMap[_categoryName].len();
			for (local i = 0; i < count; i++)
			{
				local r = this.Math.rand(0, 100);
				if (_categoryName == "Enemy" && r > _mins.EnemyChance * 100.0)
				{
					continue;
				}
				// if (_categoryName == "Class" && r > _mins.ClassChance * 100.0)
				// {
					// continue;
				// }
				if (_categoryName == "Magic" && r > _mins.MagicChance * 100.0)
				{
					continue;
				}

				local exclude = [];
				foreach (tree in _localMap[_categoryName])
				{
					exclude.push(tree.Tree.ID);
				}

				local t = this.getWeightedRandomTreeFromCategory(_categoryName, _map, _localMap, assignedCategories, exclude);
				_localMap[_categoryName].push(t);
				treesInMap++;
			}

			if (assignedCategories.find(_categoryName) == null)
			{
				assignedCategories.push(_categoryName);
			}
		}

		foreach (categoryName in this.Const.Perks.OrderOfAssignment)
		{
			if ((this.Const.Perks.SkippedCategories.find(categoryName) != null) || !(categoryName in _mins))
			{
				continue;
			}

			assignMins(categoryName);
		}

		foreach (categoryName, treeListsInCategory in _localMap)
		{
			if ((this.Const.Perks.SkippedCategories.find(categoryName) != null) || !(categoryName in _mins) || this.Const.Perks.OrderOfAssignment.find(categoryName) != null)
			{
				continue;
			}

			assignMins(categoryName);
		}

		if (!("Styles" in _localMap))
		{
			_localMap.Styles <- [];
		}

		foreach (treeEntry in _localMap.Weapon)
		{
			if (this.Const.Perks.RangedWeaponTrees.Tree.find(treeEntry.Tree) != null)
			{
				_localMap.Styles.push({ Expertise = this.Const.Perks.Expertise.Full, Tree = this.Const.Perks.RangedTree });
				break;
			}
		}

		foreach (treeEntry in _localMap.Weapon)
		{
			if (this.Const.Perks.MeleeWeaponTrees.Tree.find(treeEntry.Tree) != null)
			{
				local roll = this.Math.rand(1, 100);
				if (roll <= 33)
				{
					_localMap.Styles.push({ Expertise = this.Const.Perks.Expertise.Full, Tree = this.Const.Perks.OneHandedTree });
					_localMap.Styles.push({ Expertise = this.Const.Perks.Expertise.Full, Tree = this.Const.Perks.TwoHandedTree });
				}
				else if (roll <= 66)
				{
					_localMap.Styles.push({ Expertise = this.Const.Perks.Expertise.Full, Tree = this.Const.Perks.OneHandedTree });
				}
				else
				{
					_localMap.Styles.push({ Expertise = this.Const.Perks.Expertise.Full, Tree = this.Const.Perks.TwoHandedTree });
				}

				break;
			}
		}

		foreach( categoryName, category in _localMap )
		{
			foreach( treeEntry in category )
			{
				// local roll = this.Math.rand(1, 100) * treeEntry.Expertise;
				// this.logInfo("roll is : " + roll + " and perk tree is: " + treeEntry.Tree.ID + " and expertise is : " + treeEntry.Expertise);
				foreach( rowNumber, perksInRow in treeEntry.Tree.Tree )
				{
					// if (roll > 100 - rowNumber * 10)
					// {
						// break;
					// }
					foreach( perk in perksInRow )
					{
						dynamicTree[rowNumber].push(perk);
					}
				}
			}
		}

		foreach( t in _localMap.Traits )
		{
			if ("Attributes" in t.Tree)
			{
				local c = t.Tree.Attributes;
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
			Attributes = attributes
		};
	};

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

			local expertise = this.Const.Perks.Expertise.Medium;
			if ("SelfExpertiseMultiplier" in tree)
			{
				expertise = tree.SelfExpertiseMultiplier;
			}
			potentialTrees.push( {Weight = weight, Expertise = expertise, Tree = tree} );
		}

		potentialTrees = this.applyMultipliersBasedOnBackground(_backgroundMap, potentialTrees);

		potentialTrees = this.applyMultipliersBasedOnAssignedCategories(_currentMap, potentialTrees, _assignedCategories);

		return this.getWeightedRandomTreeFromTreeList(potentialTrees);
	}

	gt.Const.Perks.applyMultipliers <- function( _multipliersList, _treeList, _multiplierType )
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
					tree[_multiplierType] *= multiplier.Multiplier;
				}
			}
		}

		return _treeList;
	}

	gt.Const.Perks.applyMultipliersBasedOnBackground <- function( _map, _treeList )
	{
		foreach (multiplierType in this.Const.Perks.MultiplierTypes)
		{
			local multiplierTitle = multiplierType + "Multipliers";
			if (multiplierTitle in _map)
			{
				_treeList = this.applyMultipliers(_map[multiplierTitle], _treeList, multiplierType);
			}
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
						_treeList = this.applyMultipliers(tree.Tree.WeightMultipliers, _treeList, "Weight");
					}
					if ("ExpertiseMultipliers" in tree.Tree)
					{
						_treeList = this.applyMultipliers(tree.Tree.ExpertiseMultipliers, _treeList, "Expertise");
					}
				}
			}
		}

		return _treeList;
	}

	gt.Const.Perks.getWeightedRandomTreeFromTreeList <- function( _treeList )
	{
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
				return { Tree = tree.Tree, Expertise = tree.Expertise };
			}

			roll -= tree.Weight;
		}

		return { Tree = null, Expertise = null };
	}

	gt.Const.Perks.checkExpertise <- function( _expertise, _zeroBasedRow )
	{
		local roll = this.Math.rand(1, 100);
		return roll > 100 - _zeroBasedRow * 10 ? false : true;
	}
}
