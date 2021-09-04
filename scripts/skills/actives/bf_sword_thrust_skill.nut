this.bf_sword_thrust_skill <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "actives.bf_sword_thrust";
		this.m.Name = "Sword Thrust";
		this.m.Description = "A well placed thrust attack targeted at the gaps in the target\'s armor. Hard to hit, but can bypass the target\'s armor advantage.";
		this.m.KilledString = "Impaled";
		this.m.Icon = "skills/active_30.png";
		this.m.IconDisabled = "skills/active_30_sw.png";
		this.m.Overlay = "active_30";
		this.m.SoundOnUse = [
			"sounds/combat/thrust_01.wav",
			"sounds/combat/thrust_02.wav",
			"sounds/combat/thrust_03.wav"
		];
		this.m.SoundOnHit = [
			"sounds/combat/thrust_hit_01.wav",
			"sounds/combat/thrust_hit_02.wav",
			"sounds/combat/thrust_hit_03.wav"
		];
		this.m.Type = this.Const.SkillType.Active;
		this.m.Order = this.Const.SkillOrder.OffensiveTargeted;
		this.m.IsSerialized = false;
		this.m.IsActive = true;
		this.m.IsTargeted = true;
		this.m.IsStacking = false;
		this.m.IsAttack = true;
		this.m.IsWeaponSkill = true;
		this.m.InjuriesOnBody = this.Const.Injury.PiercingBody;
		this.m.InjuriesOnHead = this.Const.Injury.PiercingHead;
		this.m.HitChanceBonus = -15;
		this.m.DirectDamageMult = 0.25;
		this.m.ActionPointCost = 4;
		this.m.FatigueCost = 10;
		this.m.MinRange = 1;
		this.m.MaxRange = 1;
	}

	function getTooltip()
	{
		local ret = this.getDefaultTooltip();
		local hitChanceBonus = 0;

		ret.push(
			{
				id = 6,
				type = "text",
				icon = "ui/icons/hitchance.png",
				text = "Has [color=" + this.Const.UI.Color.NegativeValue + "]-15%[/color] chance to hit and an additional [color=" + this.Const.UI.Color.NegativeValue + "]-1%[/color] for every 10 points of Body Armor durability the target has above 125, up to a maximum of [color=" + this.Const.UI.Color.NegativeValue + "]-35%[/color]"
			}
		);

		if (this.getContainer().hasSkill("perk.bf_fencer"))
		{
			ret.push(
				{
					id = 6,
					type = "text",
					icon = "ui/icons/hitchance.png",
					text = "Has [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit as this character is a Fencer"
				}
			);
		}

		return ret;
	}

	function onAfterUpdate( _properties )
	{
		this.m.FatigueCostMult = _properties.IsSpecializedInSwords ? this.Const.Combat.WeaponSpecFatigueMult : 1.0;		
	}

	function onUse( _user, _targetTile )
	{
		this.spawnAttackEffect(_targetTile, this.Const.Tactical.AttackEffectThrust);
		return this.attackEntity(_user, _targetTile.getEntity());
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (!this.getContainer().getActor().isPlayerControlled())
		{
			return;
		}

		this.m.HitChanceBonus = -15;

		if (_skill != this || _targetEntity == null)
		{
			return;
		}

		local hitChanceBonus = this.m.HitChanceBonus;
		local targetArmor = _targetEntity.getArmor(this.Const.BodyPart.Body);
		hitChanceBonus = this.Math.max(-35, hitChanceBonus - (targetArmor - 125) / 10);

		hitChanceBonus = this.Math.min(-5, hitChanceBonus);

		this.m.HitChanceBonus = hitChanceBonus;

		_properties.MeleeSkill += hitChanceBonus;
	}
});
