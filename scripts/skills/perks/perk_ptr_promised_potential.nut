this.perk_ptr_promised_potential <- this.inherit("scripts/skills/skill", {
	m = {
		StatBoost = 15,
		ChanceToSucceed = 100,
		IsSet = false,
		IsSpent = false,
		WillSucceed = true,
		IsVisualsUpdated = false
	},
	function create()
	{
		this.m.ID = "perk.ptr_promised_potential";
		this.m.Name = this.Const.Strings.PerkName.PTRPromisedPotential;
		this.m.Description = this.Const.Strings.PerkDescription.PTRPromisedPotential;
		this.m.Icon = "ui/perks/ptr_promised_potential.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function updatePerkVisuals()
	{
		foreach (perk in this.getContainer().getActor().getBackground().m.PerkTree[0])
		{
			if (perk.ID == "perk.ptr_promised_potential")
			{
				if (this.m.WillSucceed)
				{
					perk.Name = "Realized Potential";
					perk.Icon = "ui/perks/ptr_realized_potential.png";
					perk.Tooltip = this.Const.Strings.PerkDescription.PTRRealizedPotential;
					break;
				}
				else
				{
					perk.Name = "Failed Potential";
					perk.Icon = "ui/perks/ptr_failed_potential.png";
					perk.Tooltip = this.Const.Strings.PerkDescription.PTRFailedPotential;
				}
			}
		}

		this.m.IsVisualsUpdated = true;
	}

	function onUpdate(_properties)
	{
		if (this.m.IsSpent && !this.m.IsVisualsUpdated)
		{
			this.updatePerkVisuals();
		}
	}

	function onUpdateLevel()
	{
		local actor = this.getContainer().getActor();
		if (actor.m.Level == 11 || actor.m.Level == 7 && this.World.Assets.getOrigin().getID() == "scenario.manhunters" && this.getBackground().getID() == "background.slave")
		{
			if (!this.m.IsSpent)
			{
				this.m.IsSpent = true;

				if (this.m.WillSucceed)
				{
					++actor.m.PerkPoints;

					local currentBackground = actor.getBackground();					
					local oldDesc = currentBackground.m.Description;

					local bg = this.new("scripts/skills/backgrounds/sellsword_background");
					bg.m.IsNew = false;
					bg.m.PerkTree = clone currentBackground.m.PerkTree;
					bg.m.PerkTreeMap = clone currentBackground.m.PerkTreeMap;
					bg.m.CustomPerkTree = clone currentBackground.m.CustomPerkTree;

					this.getContainer().removeByID(currentBackground.getID());

					local b = actor.getBaseProperties();

					b.MeleeSkill += this.m.StatBoost;
					b.MeleeDefense += this.m.StatBoost;
					b.RangedSkill += this.m.StatBoost;
					b.RangedDefense += this.m.StatBoost;
					b.Hitpoints += this.m.StatBoost;
					b.Stamina += this.m.StatBoost;
					b.Initiative += this.m.StatBoost;
					b.Bravery += this.m.StatBoost;

					this.getContainer().add(bg);
					bg.m.RawDescription = oldDesc + "Once a dreg of society, with your help, %name% has grown into a full-fledged mercenary.";
					bg.buildDescription(true);

					local getExclude = function( _treeList )
					{
						local exclude = [];
						foreach (tree in _treeList)
						{
							foreach (row in tree.Tree)
							{
								foreach (perk in row)
								{
									if (bg.hasPerk(perk))
									{
										exclude.push(tree.ID);
										break;
									}
								}
							}
						}

						return exclude;
					}

					bg.addPerkGroup(this.Const.Perks.WeaponTrees.getRandom(getExclude(this.Const.Perks.WeaponTrees.Tree)).Tree);
					local traitsExclude = getExclude(this.Const.Perks.TraitsTrees.Tree);
					traitsExclude.push(this.Const.Perks.TalentedTree.ID);
					bg.addPerkGroup(this.Const.Perks.TraitsTrees.getRandom(traitsExclude).Tree);
					bg.addPerkGroup(this.Const.Perks.ClassTrees.getRandom(getExclude(this.Const.Perks.ClassTrees.Tree)).Tree);
					bg.addPerkGroup(this.Const.Perks.DefenseTrees.getRandom(getExclude(this.Const.Perks.DefenseTrees.Tree)).Tree);

					local perksToRemove = [];

					foreach (row in bg.m.CustomPerkTree)
					{
						for (local i = row.len() - 1; i > 12; i--)
						{
							perksToRemove.push(row[i]);
						}
					}

					foreach (perk in perksToRemove)
					{
						bg.removePerk(perk);
					}

					actor.resetPerks();

					actor.improveMood(1.0, "Realized potential");
				}
				else
				{
					this.updatePerkVisuals();
				}
			}
		}
	}

	function onAdded()
	{
		if (this.m.IsSet)
		{
			return;
		}

		local actor = this.getContainer().getActor();

		if (this.Math.rand(1, 100) > this.m.ChanceToSucceed - (this.getContainer().getActor().getPerkPointsSpent() * 10))
		{
			this.m.WillSucceed = false;
		}

		this.m.IsSet = true;
	}

	function onSerialize(_out)
	{
		this.skill.onSerialize(_out);
		_out.writeBool(this.m.IsSpent);
		_out.writeBool(this.m.WillSucceed);
	}

	function onDeserialize(_in)
	{
		this.skill.onDeserialize(_in);

		this.m.IsSet = true;
		this.m.IsSpent = _in.readBool();
		this.m.WillSucceed = _in.readBool();
	}
});
