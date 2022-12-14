::mods_hookExactClass("skills/perks/perk_legend_back_to_basics", function(o) {
	o.m.AttackSkillThreshold <- 70;
	o.m.DefenseSkillThreshold <- 40;
	o.m.ResolveThreshold <- 50;

	local create = o.create;
	o.create = function()
	{
		create();
		this.m.Description = "This character is using %their% training to gain at least a passable understanding of the fundamentals of combat, especially in areas %they% lacks.";
		this.m.Order = this.Const.SkillType.Perk;
	}

	if ("onDamageReceived" in o)
	{
		o.onDamageReceived = function( _attacker, _damageHitpoints, _damageArmor )
		{
			# overwrite legends function
		}
	}

	o.getTooltip <- function()
	{
		local tooltip = this.skill.getTooltip();

		local b = this.getContainer().getActor().getBaseProperties();
		local meleeSkillBonus = this.getMeleeSkillBonus(b);
		local rangedSkillBonus = this.getRangedSkillBonus(b);
		local meleeDefenseBonus = this.getMeleeDefenseBonus(b);
		local rangedDefenseBonus = this.getRangedDefenseBonus(b);
		local braveryBonus = this.getBraveryBonus(b);

		if (meleeSkillBonus > 0)
		{
			tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/melee_skill.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + meleeSkillBonus + "[/color] Melee Skill"
			});
		}

		if (meleeDefenseBonus > 0)
		{
			tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/melee_defense.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + meleeDefenseBonus + "[/color] Melee Defense"
			});
		}

		if (rangedSkillBonus > 0)
		{
			tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/ranged_skill.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + rangedSkillBonus + "[/color] Ranged Skill"
			});
		}

		if (rangedDefenseBonus > 0)
		{
			tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/ranged_defense.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + rangedDefenseBonus + "[/color] Ranged Defense"
			});
		}

		if (braveryBonus > 0)
		{
			tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/bravery.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + braveryBonus + "[/color] Resolve"
			});
		}

		return tooltip;
	}

	function getMeleeSkillBonus(_baseProperties)
	{
		local baseValue = _baseProperties.getMeleeSkill();
		local bonus = this.Math.round((this.m.AttackSkillThreshold - baseValue) * 0.01 * baseValue);
		return this.Math.max(0, bonus);
	}

	function getRangedSkillBonus(_baseProperties)
	{
		local baseValue = _baseProperties.getRangedSkill();
		local bonus = this.Math.round((this.m.AttackSkillThreshold - baseValue) * 0.01 * baseValue);
		return this.Math.max(0, bonus);
	}

	function getMeleeDefenseBonus(_baseProperties)
	{
		local baseValue = _baseProperties.getMeleeDefense();
		local bonus = this.Math.round((this.m.DefenseSkillThreshold - baseValue) * 0.01 * baseValue);
		return this.Math.max(0, bonus);
	}

	function getRangedDefenseBonus(_baseProperties)
	{
		local baseValue = _baseProperties.getRangedDefense();
		local bonus = this.Math.round((this.m.DefenseSkillThreshold - baseValue) * 0.01 * baseValue);
		return this.Math.max(0, bonus);
	}

	function getBraveryBonus(_baseProperties)
	{
		local baseValue = _baseProperties.getBravery();
		local bonus = this.Math.round((this.m.ResolveThreshold - baseValue) * 0.01 * baseValue);
		return this.Math.max(0, bonus);
	}

	o.onUpdate = function(_properties)
	{
		local b = this.getContainer().getActor().getBaseProperties();

		_properties.MeleeSkill += this.getMeleeSkillBonus(b);
		_properties.MeleeDefense += this.getMeleeDefenseBonus(b);
		_properties.RangedSkill += this.getRangedSkillBonus(b);
		_properties.RangedDefense += this.getRangedDefenseBonus(b);
		_properties.Bravery += this.getBraveryBonus(b);
	}
});
