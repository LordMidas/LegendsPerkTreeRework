this.ptr_dismantled_effect <- this.inherit("scripts/skills/skill", {
	m = {
		DamageIncrease = 10,
		BodyHitCount = 0,
		HeadHitCount = 0
	},
	function create()
	{
		this.m.ID = "effects.ptr_dismantled";
		this.m.Name = "Dismantled Armor";
		this.m.Description = "This character\'s armor is falling apart, taking increased damage for the remainder of the combat.";
		this.m.Icon = "skills/ptr_dismantled_effect.png";
		//this.m.IconMini = "ptr_dismantled_effect_mini";
		this.m.Overlay = "ptr_dismantled_effect";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsRemovedAfterBattle = true;
	}

	function getName()
	{
		if ((this.m.BodyHitCount + this.m.HeadHitCount) <= 1)
		{
			return this.m.Name;
		}
		else
		{
			return this.m.Name + " (x" + (this.m.BodyHitCount + this.m.HeadHitCount) + ")";
		}
	}

	function getTooltip()
	{
		local tooltip = [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			}
		];
		
		if (this.m.BodyHitCount > 0)
		{
			tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/armor_damage.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + (this.m.BodyHitCount * this.m.DamageIncrease) + "%[/color] Body Armor Damage received"
			});
		}
		
		if (this.m.BodyHitCount > 0)
		{
			tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/armor_damage.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]-" + (this.m.HeadHitCount * this.m.DamageIncrease) + "%[/color] Head Armor Damage received"
			});
		}
		
		return tooltip;
	}

	function onRefresh()
	{
		this.spawnIcon("ptr_dismantled", this.getContainer().getActor().getTile());
	}

	function onBeforeDamageReceived( _attacker, _skill, _hitInfo, _properties )
	{
		if (_skill == null || !_skill.isAttack() || _attacker != null || _attacker.getID() == this.getContainer().getActor().getID())
		{
			return;
		}
		
		local count = 0;
		
		if (__hitInfo.BodyPart == this.Const.BodyPart.Body)
		{
			count = this.m.BodyHitCount;
		}
		else
		{
			count = this.m.HeadHitCount;
		}
		
		_properties.DamageReceivedArmorMult *= 1.0 + (count * this.m.DamageIncrease * 0.01);
	}
});

