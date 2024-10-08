this.ptr_swordmasters_finesse_effect <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "effects.ptr_swordmasters_finesse";
		this.m.Name = "Swordmaster\'s Finesse";
		this.m.Description = "This character is a renowned swordmaster - literally the stuff of legends. This effect becomes stronger with each level. However, as time passes by, old age may cause some attributes to suffer."
		this.m.Icon = "skills/ptr_swordmaster_scenario_avatar.png";				
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
			local skillBonus = this.getSkillBonus();

			tooltip.extend([
				{
					id = 10,
					type = "text",
					icon = "ui/icons/melee_skill.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + skillBonus + "[/color] Melee Skill"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/melee_defense.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + skillBonus + "[/color] Melee Defense"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/bravery.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + skillBonus + "[/color] Resolve"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/direct_damage.png",
					text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + skillBonus + "%[/color] damage ignores armor"
				}
			]);
		}

		local skillMalus = this.getSkillMalus();

		if (skillMalus > 0)
		{
			tooltip.extend([
				{
					id = 10,
					type = "text",
					icon = "ui/icons/health.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + skillMalus + "[/color] Hitpoints"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/fatigue.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + skillMalus + "[/color] Fatigue"
				},
				{
					id = 10,
					type = "text",
					icon = "ui/icons/initiative.png",
					text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + ::Math.floor(skillMalus * 1.5) + "[/color] Initiative"
				}
			]);
		}

		return tooltip;
	}

	function isEnabled()
	{
		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || (!weapon.isWeaponType(::Const.Items.WeaponType.BFFencing) && !weapon.isWeaponType(::Const.Items.WeaponType.Sword, true, true)))
		{
			return false;
		}

		return true;
	}

	function onCombatStarted()
	{
		if (this.getContainer().getActor().getFlags().has("SwordmasterAgeDays")) return;

		this.getContainer().getActor().getFlags().set("SwordmasterAgeDays", 1);
	}

	function onNewDay()
	{
		if (!this.getContainer().getActor().getFlags().has("SwordmasterAgeDays")) return;

		this.getContainer().getActor().getFlags().increment("SwordmasterAgeDays", 1);
	}

	function getSkillBonus()
	{
		return this.getContainer().getActor().getLevel() * (this.getContainer().hasSkill("perk.ptr_swordmaster_precise") ? 2 : 1);
	}

	function getSkillMalus()
	{
		if (!this.getContainer().hasSkill("trait.old") && !this.getContainer().getActor().getFlags().has("IsRejuvinated") && this.getContainer().getActor().getFlags().has("SwordmasterAgeDays"))
		{
			return this.Math.min(10, this.getContainer().getActor().getFlags().get("SwordmasterAgeDays") / 10);
		}

		return 0;
	}

	function onUpdate( _properties )
	{
		local actor = this.getContainer().getActor();
		if (this.isEnabled())
		{
			local skillBonus = this.getSkillBonus();
			_properties.MeleeSkill += skillBonus;
			_properties.MeleeDefense += skillBonus;
			_properties.Bravery += skillBonus;
			_properties.DamageDirectAdd += skillBonus * 0.01;			
		}

		local skillMalus = this.getSkillMalus();
		_properties.Stamina -= skillMalus;
		_properties.Initiative -= skillMalus;
		_properties.Hitpoints -= skillMalus;
	}

});
