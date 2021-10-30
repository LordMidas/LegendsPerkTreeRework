this.ptr_swordmaster_scenario_recruit_effect <- this.inherit("scripts/skills/effects/ptr_swordmaster_scenario_effect", {
	m = {		
		FreePerkLevels = [],
		FreePerks = [],
		IsSet = false,
		SwordPerkDefs = [
			this.Const.Perks.PerkDefs.PTRExploitOpening,
			this.Const.Perks.PerkDefs.PTRFluidWeapon,
			this.Const.Perks.PerkDefs.SpecSword,
			this.Const.Perks.PerkDefs.PTRTempo,
			this.Const.Perks.PerkDefs.PTRKata,
			this.Const.Perks.PerkDefs.PTREnGarde
		],
		PerkNames = [
			"Exploit Opening",
			"Fluid Weapon",
			"Sword Mastery",
			"Tempo",
			"Kata",
			"En garde"
		]
	},
	function create()
	{
		this.m.ID = "effects.ptr_swordmaster_scenario_recruit";
		this.m.Name = "Swordmaster\'s Training";
		this.m.Description = "This character is being trained by a highly accomplished swordmaster, and gains increased combat effectiveness when wielding a sword. This effect becomes stronger with each level.";
		this.m.Icon = "skills/ptr_swordmaster_scenario_recruit.png";				
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		if (!this.isEnabled())
		{
			tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/warning.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]Requires a Sword to be equipped. Hybrid weapons do not count.[/color]"
			});
		}
		else
		{
			local level = this.getContainer().getActor().getLevel();			

			tooltip.extend([
				{
					id = 10,
					type = "text",
					icon = "ui/icons/melee_skill.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + level + "[/color] Melee Skill"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/melee_defense.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + level + "[/color] Melee Defense"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/initiative.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + level + "[/color] Initiative"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/direct_damage.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + level + "%[/color] damage ignores armor"
				}
			]);

			local ids = [];
			foreach (perk in this.m.SwordPerkDefs)
			{
				ids.push(this.Const.Perks.PerkDefObjects[perk].ID);
			}

			if (this.m.FreePerkLevels.len() != 0 && this.getContainer().getSkillsByFunction(this, @(_skill) ids.find(_skill) != null).len() != this.m.SwordPerkDefs.len())
			{
				local potentialPerks = "";

				for (local i = this.m.SwordPerkDefs.len() - this.m.FreePerkLevels.len(); i < 6; i++)
				{
					potentialPerks += this.m.PerkNames[i] + ", ";
				}

				potentialPerks = potentialPerks.slice(0, -2);

				tooltip.push({
					id = 10,
					type = "text",
					icon = "ui/icons/special.png",
					text = "Upon gaining a level, has a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] chance to gain a free perk from the Sword perk group. [color=" + this.Const.UI.Color.PositiveValue + "]Potential Perks:[/color] " + potentialPerks
				});
			}
		}

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/warning.png",
			text = "Will get very angry if anyone in the company uses a melee weapon other than a Sword in combat"
		});

		return tooltip;
	}

	function onAdded()
	{
		if (!this.m.IsSet)
		{
			local currLevel = this.getContainer().getActor().getLevel();

			foreach (i, perk in this.m.SwordPerkDefs)
			{
				if (this.Math.rand(1, 100) <= 50)
				{
					this.m.FreePerkLevels.push( { Success = true, Index = i } );
				}	
				else
				{
					this.m.FreePerkLevels.push( { Success = false, Index = i } );
				}
			}
		}
	}

	function onUpdate( _properties )
	{
		this.ptr_swordmaster_scenario_effect.onUpdate(_properties);

		local actor = this.getContainer().getActor();
		if (this.isEnabled())
		{
			local level = actor.getLevel();			
			_properties.MeleeSkill += level;
			_properties.MeleeDefense += level;
			_properties.Initiative += level;
			_properties.DamageDirectAdd += this.Math.max(25, level) * 0.01;
		}
	}

	function onUpdateLevel()
	{
		if (this.m.FreePerkLevels.len() > 0)
		{
			if (this.m.FreePerkLevels[0].Success)
			{
				local perkDef = this.m.SwordPerkDefs[this.m.FreePerkLevels[0].Index];
				this.m.FreePerks.push(perkDef);
				this.getContainer().add(this.new(this.Const.Perks.PerkDefObjects[perkDef].Script));
				this.getContainer().getActor().getBackground().addPerk(perkDef, this.m.FreePerkLevels[0].Index + 1);
			}

			this.m.FreePerkLevels.remove(0);
		}
	}

	function evolve()
	{
		local actor = this.getContainer().getActor();
		local currentBackground = actor.getBackground();
		local perkTree = currentBackground.m.PerkTree;
		local perkTreeMap = currentBackground.m.PerkTreeMap;
		local customPerkTree = currentBackground.m.CustomPerkTree;
		local oldDesc = currentBackground.m.Description;
		
		foreach (skill in actor.getSkills().m.Skills)
		{
			if (skill.getID().find("background") != null)
			{
				actor.getSkills().removeByID(skill.getID());
				break;
			}
		}

		local bg = this.new("scripts/skills/backgrounds/ptr_young_swordmaster_background");
		bg.m.IsNew = false;

		bg.m.PerkTree = perkTree;
		bg.m.PerkTreeMap = perkTreeMap;
		bg.m.CustomPerkTree = customPerkTree;
		
		local attributes = {
			MeleeSkill = this.Math.rand(10, 15),
			MeleeDefense = this.Math.rand(10, 15),
			Stamina = this.Math.rand(5, 10),		
			Bravery = this.Math.rand(10, 20),
			Initiative = this.Math.rand(10, 20)
		};

		actor.getBaseProperties().MeleeSkill += attributes.MeleeSkill;
		actor.getBaseProperties().MeleeDefense += attributes.MeleeDefense;	
		actor.getBaseProperties().Stamina += attributes.Stamina;		
		actor.getBaseProperties().Bravery += attributes.Bravery;
		actor.getBaseProperties().Initiative += attributes.Initiative;

		actor.getSkills().add(bg);

		bg.m.RawDescription = oldDesc + " Under your tutelage, %name% has grown into a true master of the sword, having proven his mettle by defeating a famous swordmaster in single combat!";
		bg.buildDescription(true);

		foreach (row in this.Const.Perks.SwordTree.Tree)
		{
			foreach (perk in row)
			{
				if (!actor.getSkills().hasSkill(this.Const.Perks.PerkDefObjects[perk].ID))
				{
					actor.getSkills().add(this.new(this.Const.Perks.PerkDefObjects[perk].Script));
					bg.addPerk(perk);
				}
				else if (this.m.FreePerks.find(perk) == null)
				{
					actor.m.PerkPoints++;
					actor.m.PerkPointsSpent--;
				}
			}
		}

		this.m.FreePerks.clear();

		return attributes;
	}

	function onSerialize(_out)
	{
		this.skill.onSerialize(_out);
		_out.writeU8(this.m.FreePerkLevels.len());
		foreach (level in this.m.FreePerkLevels)
		{
			_out.writeBool(level.Success);
			_out.writeU8(level.Index);
		}

		_out.writeU8(this.m.FreePerks.len());
		foreach (perkDef in this.m.FreePerks)
		{
			_out.writeU16(perkDef);
		}
	}

	function onDeserialize(_in)
	{
		this.skill.onDeserialize(_in);

		this.m.IsSet = true;

		this.m.FreePerkLevels = [];
		local size = _in.readU8();
		for (local i = 0; i < size; i++)
		{
			this.m.FreePerkLevels.push(
				{
					Success = _in.readBool(),
					Index = _in.readU8()
				}
			);
		}

		this.m.FreePerks = [];
		size = _in.readU8();
		for (local i = 0; i < size; i++)
		{
			this.m.FreePerks.push(_in.readU16());
		}
	}
});
