local gt = this.getroottable();

gt.Const.PTR.modCharacterBackground <- function()
{
	gt.Const.PTR.PerkTreeDynamicMins <- {
		//Profession = 1,
		Weapon = 4,
		Defense = 2,
		Traits = 3,
		Enemy = 1,
		EnemyChance = 0.5,
		Class = 1,
		ClassChance = 0.01,
		Magic = 1,
		MagicChance = 0,
		Styles = 2
	};
	gt.Const.PTR.PerkTreeDynamicMinsMagic <- {
		//Profession = 1,
		Weapon = 4,
		Defense = 2,
		Traits = 3,
		Enemy = 1,
		EnemyChance = 0.5,
		Class = 1,
		ClassChance = 0.01,
		Magic = 1,
		MagicChance = 0.001,
		Styles = 2
	};
	gt.Const.PTR.PerkTreeDynamicMinsBeast <- {
		//Profession = 1,
		Weapon = 4,
		Defense = 2,
		Traits = 3,
		Enemy = 1,
		EnemyChance = 0.7,
		Class = 1,
		ClassChance = 0.02,
		Magic = 1,
		MagicChance = 0.001,
		Styles = 2
	};

	this.Const.Perks.TraitsTrees.getBaseAttributes = function()
	{
		return {
			Hitpoints = [
				-1,
				-1
			],
			Bravery = [
				-1,
				-1
			],
			Stamina = [
				-1,
				-1
			],
			MeleeSkill = [
				-1,
				-1
			],
			RangedSkill = [
				-1,
				-1
			],
			MeleeDefense = [
				-1,
				-1
			],
			RangedDefense = [
				-1,
				-1
			],
			Initiative = [
				-1,
				-1
			]
		};
	};

	::mods_hookExactClass("skills/backgrounds/character_background", function(o) {
		o.m.CustomPerkTreeMap <- null;
		o.m.PerkTreeDynamicMins = {
			//Profession = 1,
			Weapon = 4,
			Defense = 2,
			Traits = 3,
			Enemy = 1,
			EnemyChance = 0.5,
			Class = 1,
			ClassChance = 0.01,
			Magic = 1,
			MagicChance = 0,
			Styles = 2
		};
		o.m.PerkTreeDynamicMinsMagic = {
			//Profession = 1,
			Weapon = 4,
			Defense = 2,
			Traits = 3,
			Enemy = 1,
			EnemyChance = 0.5,
			Class = 1,
			ClassChance = 0.01,
			Magic = 1,
			MagicChance = 0.001,
			Styles = 2
		};
		o.m.PerkTreeDynamicMinsBeast = {
			//Profession = 1,
			Weapon = 4,
			Defense = 2,
			Traits = 3,
			Enemy = 1,
			EnemyChance = 0.7,
			Class = 1,
			ClassChance = 0.02,
			Magic = 1,
			MagicChance = 0.001,
			Styles = 2
		};

		o.buildPerkTree = function()
		{
			local a = {
				Hitpoints = [
					0,
					0
				],
				Bravery = [
					0,
					0
				],
				Stamina = [
					0,
					0
				],
				MeleeSkill = [
					0,
					0
				],
				RangedSkill = [
					0,
					0
				],
				MeleeDefense = [
					0,
					0
				],
				RangedDefense = [
					0,
					0
				],
				Initiative = [
					0,
					0
				]
			};

			if (this.m.PerkTree != null)
			{
				return a;
			}

			if (this.m.CustomPerkTree == null)
			{
				if (this.World.Assets.isLegendPerkTrees())
				{
					local mins = this.m.PerkTreeDynamicMins;

					if (this.World.Assets.getOrigin().getID() == "scenario.beast_hunters")
					{
						mins = this.m.PerkTreeDynamicMinsBeast;
					}
					else if (this.LegendsMod.Configs().LegendMagicEnabled())
					{
						mins = this.m.PerkTreeDynamicMinsMagic;
					}

					local result = this.Const.Perks.GetDynamicPerkTree(mins, this.m.PerkTreeDynamic);
					this.m.CustomPerkTree = result.Tree;
					a = result.Attributes;
					this.m.CustomPerkTreeMap = result.TreeMap;
				}
				else
				{
					this.m.CustomPerkTree = this.Const.Perks.DefaultCustomPerkTree;
				}

				local origin = this.World.Assets.getOrigin();

				if (origin != null)
				{
					this.World.Assets.getOrigin().onBuildPerkTree(this.m.CustomPerkTree);
				}
			}

			local pT = this.Const.Perks.BuildCustomPerkTree(this.m.CustomPerkTree);
			this.m.PerkTree = pT.Tree;
			this.m.PerkTreeMap = pT.Map;
			return a;
		}

		local getPerkBackgroundDescription = o.getPerkBackgroundDescription;
		o.getPerkBackgroundDescription = function(_tree)
		{
			if (this.m.CustomPerkTreeMap == null)
			{
				return getPerkBackgroundDescription(_tree);
			}

			local text = "";
			local treesList = [];

			local order = ["Profession", "Traits", "Class", "Weapon", "Styles", "Defense", "Enemy"];

			foreach (categoryName in order)
			{
				if (!(categoryName in this.m.CustomPerkTreeMap))
				{
					continue;
				}

				if (this.m.CustomPerkTreeMap[categoryName].len() == 1 && this.m.CustomPerkTreeMap[categoryName][0].Tree.ID == this.Const.Perks.NoTree.ID)
				{
					continue;
				}

				if (!this.getContainer().getActor().isTryoutDone() && categoryName == "Class")
				{
					break;
				}				

				local prefix = "";
				switch (categoryName)
				{
					case "Weapon":
						prefix = "Has an aptitude for";
						break;
					case "Defense":
						prefix = "Likes using";
						break;
					case "Enemy":
						prefix = "Prefers fighting";
						break;
					case "Class":
						prefix = "Is skilled in";
						break;
					case "Profession":
						prefix = this.getContainer().getActor().getName() + " ";
						break;
					case "Styles":
						prefix = "Prefers using"
						break;
					case "Traits":
						prefix = (this.isBackgroundType(this.Const.BackgroundType.Female) ? "She" : "He") + " ";
						break;
				}

				foreach (perkTree in this.m.CustomPerkTreeMap[categoryName])
				{
					if (perkTree.Tree.ID == this.Const.Perks.NoTree.ID)
					{
						continue;
					}

					treesList.push(perkTree.Tree);
				}				

				text = text + this.getPerkTreeGroupDescription(treesList, prefix);
				treesList.clear();
			}

			if (!this.getContainer().getActor().isTryoutDone())
			{
				text += "\n[color=" + this.Const.UI.Color.NegativeValue + "]Try out[/color] this character to reveal [color=" + this.Const.UI.Color.PositiveValue + "]more[/color] information!";
			}

			return text;
		}

		o.getPerkTreeDynamicMins <- function()
		{
			local mins = this.Const.PTR.PerkTreeDynamicMins;

			if (this.World.Assets.getOrigin().getID() == "scenario.beast_hunters")
			{
				mins = this.Const.PTR.PerkTreeDynamicMinsBeast;
			}
			else if (this.LegendsMod.Configs().LegendMagicEnabled())
			{
				mins = this.Const.PTR.PerkTreeDynamicMinsMagic;
			}

			return mins;
		}

		o.rebuildPerkTree = function (_tree)
		{
			this.m.CustomPerkTree = _tree;

			if (this.World.Assets.isLegendPerkTrees())
			{
				this.m.CustomPerkTree = this.Const.Perks.MergeDynamicPerkTree(_tree, this.Const.Perks.GetDynamicPerkTree(this.getPerkTreeDynamicMins(), this.m.PerkTreeDynamic).TreeMap);
			}

			local pT = this.Const.Perks.BuildCustomPerkTree(this.m.CustomPerkTree);
			this.m.PerkTree = pT.Tree;
			this.m.PerkTreeMap = pT.Map;
		}

		local onSerialize = o.onSerialize;
		o.onSerialize = function(_out)
		{
			onSerialize(_out);

			if(this.m.CustomPerkTreeMap == null)
			{
				_out.writeU8(0);
			}
			else
			{
				_out.writeU8(this.m.CustomPerkTreeMap.len());

				foreach(categoryName, category in this.m.CustomPerkTreeMap)
				{
					_out.writeString(categoryName);
					_out.writeU8(category.len());
					foreach (perkTreeEntry in category)
					{
						_out.writeU8(perkTreeEntry.Expertise);
						_out.writeString(perkTreeEntry.Tree.ID);
					}
				}
			}
		}

		local onDeserialize = o.onDeserialize;
		o.onDeserialize = function(_in)
		{
			onDeserialize(_in);

			if (this.Const.PTR.Version >= 1)
			{
				local mapSize = _in.readU8();
				if (mapSize == 0)
				{
					this.m.CustomPerkTreeMap = null;
				}
				else
				{
					this.m.CustomPerkTreeMap = {};
					for (local i = 0; i < mapSize; i++)
					{
						local categoryName = _in.readString();
						local category = [];

						local categorySize = _in.readU8();
						for (local j = 0; j < categorySize; j++)
						{
							local expertise = _in.readU8();
							local treeID = _in.readString();
							foreach (t in this.Const.Perks[categoryName + "Trees"].Tree)
							{
								if (t.ID == treeID)
								{
									category.push({Expertise = expertise, Tree = t});
								}
							}
						}

						this.m.CustomPerkTreeMap[categoryName] <- category;
					}
				}
			}
		}
	});
}
