local gt = this.getroottable();

gt.Const.PTR.modCharacterBackground <- function()
{
	this.Const.Perks.TraitsTrees.getBaseAttributes = function()
	{
		return {
			Hitpoints = [
				-4,
				-4
			],
			Bravery = [
				-4,
				-4
			],
			Stamina = [
				-4,
				-4
			],
			MeleeSkill = [
				-4,
				-4
			],
			RangedSkill = [
				-4,
				-4
			],
			MeleeDefense = [
				-4,
				-4
			],
			RangedDefense = [
				-4,
				-4
			],
			Initiative = [
				-4,
				-4
			]
		};
	};

	::mods_hookExactClass("skills/backgrounds/character_background", function(o) {
		o.m.CustomPerkTreeMap <- null;
		o.m.PerkTreeDynamicMins = {
			//Profession = 1,
			Weapon = 6,
			Defense = 2,
			Traits = 5,
			Enemy = 1,
			EnemyChance = 0.01,
			Class = 1,
			ClassChance = 0.01,
			Magic = 1,
			MagicChance = 0,
			Styles = 2
		};
		o.m.PerkTreeDynamicMinsMagic = {
			//Profession = 1,
			Weapon = 6,
			Defense = 2,
			Traits = 5,
			Enemy = 1,
			EnemyChance = 0.01,
			Class = 1,
			ClassChance = 0.01,
			Magic = 1,
			MagicChance = 0.001,
			Styles = 2
		};
		o.m.PerkTreeDynamicMinsBeast = {
			//Profession = 1,
			Weapon = 6,
			Defense = 2,
			Traits = 5,
			Enemy = 1,
			EnemyChance = 0.05,
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

				if (this.m.CustomPerkTreeMap[categoryName].len() == 1 && this.m.CustomPerkTreeMap[categoryName][0].Tree == this.Const.Perks.NoTree)
				{
					continue;
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
						prefix = (this.m.IsFemaleBackground ? "She" : "He") + " ";
						break;
				}

				foreach (perkTree in this.m.CustomPerkTreeMap[categoryName])
				{
					treesList.push(perkTree.Tree);
				}
				foreach (i in treesList)
				{
					this.logInfo(i);
				}

				text = text + this.getPerkTreeGroupDescription(treesList, prefix);
				treesList.clear();
			}

			return text;
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
	});
}
