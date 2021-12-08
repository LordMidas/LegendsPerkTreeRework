this.perk_ptr_internal_hemorrhage <- this.inherit("scripts/skills/skill", {
	m = {
		IsForceEnabled = false,
		HitpointsBeforeHit = 0,
		PercentageOfDamage = 20
	},
	function create()
	{
		this.m.ID = "perk.ptr_internal_hemorrhage";
		this.m.Name = this.Const.Strings.PerkName.PTRInternalHemorrhage;
		this.m.Description = this.Const.Strings.PerkDescription.PTRInternalHemorrhage;
		this.m.Icon = "ui/perks/ptr_internal_hemorrhage.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onBeforeTargetHit( _skill, _targetEntity, _hitInfo )
	{
		this.m.HitpointsBeforeHit = _targetEntity.getHitpoints();
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		local actor = this.getContainer().getActor();
		if (!_targetEntity.isAlive() || _targetEntity.isDying() || !_skill.isAttack() || (!_skill.hasDamageType(this.Const.Damage.DamageType.Blunt) && !this.m.IsForceEnabled))
		{
			return;
		}

		if (_targetEntity.getArmor(_bodyPart) == 0)
		{
			if (!_targetEntity.getCurrentProperties().IsImmuneToBleeding && this.m.HitpointsBeforeHit - _targetEntity.getHitpoints() >= this.Const.Combat.MinDamageToApplyBleeding )
			{
				local effect = this.new("scripts/skills/effects/ptr_internal_hemorrhage_effect");
				if (actor.getFaction() == this.Const.Faction.Player)
				{
					effect.setActor(actor);
				}
				effect.setDamage(this.Math.floor(_damageInflictedHitpoints * this.m.PercentageOfDamage * 0.01));
				_targetEntity.getSkills().add(effect);
			}
		}
	}

	function onQueryTooltip( _skill, _tooltip )
	{
		if (_skill.isAttack() && (_skill.hasDamageType(this.Const.Damage.DamageType.Blunt) || this.m.IsForceEnabled))
		{
			_tooltip.push({
				id = 10,
				type = "text",
				icon = "ui/icons/special.png",
				text = "Inflicts internal hemorrhage for [color=" + this.Const.UI.Color.DamageValue + "]" + this.m.PercentageOfDamage + "%[/color] of the damage dealt to Hitpoints when the body part hit has 0 armor remaining"
			});
		}
	}
});
