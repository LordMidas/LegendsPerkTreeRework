this.perk_ptr_man_of_steel <- this.inherit("scripts/skills/skill", {
	m = {
		MaxReduction = 30,
		ScalingFactor = 1.7
	},
	function create()
	{
		this.m.ID = "perk.ptr_man_of_steel";
		this.m.Name = this.Const.Strings.PerkName.PTRManOfSteel;
		this.m.Description = "%name% has become one with %their% armor, and ranged attacks now seem nothing more than a tickle.";
		this.m.Icon = "ui/perks/ptr_man_of_steel.png";
		this.m.IconMini = "ptr_man_of_steel_mini";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function getReductionPercentage()
	{
		local armor = this.getContainer().getActor().getArmorMax(this.Const.BodyPart.Head) + this.getContainer().getActor().getArmorMax(this.Const.BodyPart.Body);
		return this.Math.min(this.m.MaxReduction, this.Math.floor(this.Math.pow(armor/100.0, this.m.ScalingFactor)));
	}

	function isHidden()
	{
		return this.getReductionPercentage() <= 0;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		local reduction = this.getReductionPercentage();
		tooltip.push({
			id = 6,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Only receive [color=" + this.Const.UI.Color.PositiveValue + "]" + (100-reduction) + "%[/color] of armor ignore damage from ranged attacks"
		});

		return tooltip;
	}

	function onUpdate( _properties )
	{
		_properties.ArmorMult[this.Const.BodyPart.Head] *= 1.1;
		_properties.ArmorMult[this.Const.BodyPart.Body] *= 1.1;
	}

	function onBeforeDamageReceived( _attacker, _skill, _hitInfo, _properties )
	{
		if (_skill == null || !_skill.isRanged() || !_skill.isAttack())
		{
			return;
		}

		if (_attacker != null && _attacker.getID() == this.getContainer().getActor().getID())
		{
			return;
		}

		local reduction = this.getReductionPercentage();

		_properties.DamageReceivedDirectMult *= 1.0 - reduction * 0.01;
	}
});
