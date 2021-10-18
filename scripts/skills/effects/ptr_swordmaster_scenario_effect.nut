this.ptr_swordmaster_scenario_effect <- this.inherit("scripts/skills/skill", {
	m = {
		WrongWeaponName = null,
		FreePerkLevels = [],
		IsPlayer = false
	},
	function create()
	{
		this.m.ID = "effects.ptr_swordmaster_scenario";
		this.m.Name = "Swordmaster Training";
		this.m.Description = "This character is being trained by a highly accomplished swordmaster, and gains increased combat effectiveness when wielding a sword. This effect becomes stronger with each level.";
		this.m.Icon = "skills/ptr_swordmaster_scenario.png";				
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
			if (this.m.IsPlayer)
			{
				level *= 2;
			}

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

			if (!this.m.IsPlayer && level < 8)
			{
				tooltip.push({
					id = 10,
					type = "text",
					icon = "ui/icons/special.png",
					text = "Upon gaining a level, has a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] chance to gain a free perk from the Sword perk group"
				});
			}
		}

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Will get very angry if anyone in the company uses a melee weapon other than a Sword in combat"
		});

		return tooltip;
	}

	function isEnabled()
	{
		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon != null && weapon.isWeaponType(this.Const.Items.WeaponType.Sword, true))
		{
			return true;
		}

		return false;
	}

	function onAdded()
	{
		if (this.getContainer().getActor().getFlags().get("IsPlayerCharacter") == true)
		{
			this.m.IsPlayer = true;
			this.m.Name = "Swordmaster\'s Finesse";
			this.m.Description = "This character is a renowned swordmaster - literally the stuff of legends. This effect becomes stronger with each level.";
			this.m.Icon = "skills/ptr_swordmaster_scenario_player.png"
			return;
		}

		for (local i = 2; i <= 8; i++)
		{
			if (this.Math.rand(1, 100) <= 50)
			{
				this.m.FreePerkLevels.push(i);
			}
		}
	}

	function onUpdate( _properties )
	{
		local actor = this.getContainer().getActor();
		if (this.isEnabled())
		{
			local level = actor.getLevel();
			_properties.MeleeSkill += level;
			_properties.MeleeDefense += level;
			_properties.Initiative += level;
			_properties.DamageDirectAdd += level;
		}

		local weapon = actor.getMainhandItem();
		if (actor.isPlacedOnMap() && weapon != null && weapon.isItemType(this.Const.Items.ItemType.MeleeWeapon) && !weapon.isWeaponType(this.Const.Items.WeaponType.Sword, true))
		{
			this.m.WrongWeaponName = weapon.getName();
		}
	}

	function onUpdateLevel()
	{
		local actor = this.getContainer().getActor();
		if (actor.m.Level < 8 && this.m.FreePerkLevels.find(actor.m.Level) != null)
		{
			switch (actor.m.Level)
			{
				case 2:
					this.getContainer().add(this.new("scripts/skills/perks/perk_ptr_exploit_opening"));
					actor.getBackground().addPerk(this.Const.Perks.PerkDefObjects[this.Const.Perks.PerkDefs.PTRExploitOpening], 1);
					break;
				case 3:
					this.getContainer().add(this.new("scripts/skills/perks/perk_ptr_fluid_weapon"));
					actor.getBackground().addPerk(this.Const.Perks.PerkDefObjects[this.Const.Perks.PerkDefs.PTRFluidWeapon], 2);
					break;
				case 4:
					this.getContainer().add(this.new("scripts/skills/perks/perk_mastery_sword"));
					actor.getBackground().addPerk(this.Const.Perks.PerkDefObjects[this.Const.Perks.PerkDefs.SpecSword], 3);
					break;
				case 5:
					this.getContainer().add(this.new("scripts/skills/perks/perk_ptr_tempo"));
					actor.getBackground().addPerk(this.Const.Perks.PerkDefObjects[this.Const.Perks.PerkDefs.PTRTempo], 4);
					break;
				case 6:
					this.getContainer().add(this.new("scripts/skills/perks/perk_ptr_kata"));
					actor.getBackground().addPerk(this.Const.Perks.PerkDefObjects[this.Const.Perks.PerkDefs.PTRKata], 5);
					break;
				case 7:
					this.getContainer().add(this.new("scripts/skills/perks/perk_ptr_en_garde"));
					actor.getBackground().addPerk(this.Const.Perks.PerkDefObjects[this.Const.Perks.PerkDefs.PTREnGarde], 6);
					break;
			}
		}
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		if (this.m.WrongWeaponName != null)
		{
			local roster = this.World.getPlayerRoster().getAll();
			foreach (bro in roster)
			{
				bro.worsenMood(99.0, "Made someone use " + this.m.WrongWeaponName + " instead of Sword!");
			}
			this.m.WrongWeaponName = null;
		}
	}
});
