this.ptr_direct_damage_limiter_effect <- this.inherit("scripts/skills/skill", {
	m = {
		Max = 0.95,
		FullArmorIgnoreChance = 0
	},
	function create()
	{
		this.m.ID = "effects.ptr_direct_damage_limiter";
		this.m.Name = "";
		this.m.Description = "";
		this.m.Icon = "";		
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.VeryLast + 100;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = true;		
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		this.m.FullArmorIgnoreChance = 0;
		if (_skill.getDirectDamage() < 1.0)
		{
			local damageDirect = _properties.DamageDirectMult * (_skill.getDirectDamage() + _properties.DamageDirectAdd);
			if (damageDirect >= this.m.Max)
			{
				this.m.FullArmorIgnoreChance = this.Math.floor(this.Math.minf(this.m.Max, damageDirect - this.m.Max) * 100);

				// If target entity is null, then change the damage direct mult so that
				// the tooltip is calculated properly.
				if (_targetEntity == null)
				{
					_properties.DamageDirectMult = this.m.Max / (_skill.getDirectDamage() + _properties.DamageDirectAdd);
				}
			}
		}
	}

	function onBeforeTargetHit( _skill, _targetEntity, _hitInfo )
	{
		if (_skill.getDirectDamage() < 1.0)
		{
			if (this.Math.rand(1, 100) < this.m.FullArmorIgnoreChance)
			{
				_hitInfo.DamageDirect = 1.0;
			}
			else
			{
				_hitInfo.DamageDirect = this.Math.minf(this.m.Max, _hitInfo.DamageDirect);
			}
		}		
	}

	function onQueryTooltip( _skill, _tooltip )
	{
		if (this.m.FullArmorIgnoreChance > 0)
		{
			foreach (entry in _tooltip)
			{
				if (entry.text.find("of which") != null && entry.text.find("can ignore armor") != null)
				{
					entry.text += ", with a [color=" + this.Const.UI.Color.PositiveValue + "]" + this.m.FullArmorIgnoreChance + "%[/color] chance of completely ignoring armor";
					return;
				}
			}
		}
	}
});
