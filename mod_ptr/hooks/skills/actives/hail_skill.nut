::mods_hookExactClass("skills/actives/hail_skill", function(o) {
	o.m.RerollDamageMult <- 1.0;
	o.m.IsAttacking <- false;	

	o.onUse = function( _user, _targetTile )
	{
		this.m.RerollDamageMult = 1.0;			
		this.m.IsUsingHitchance = true;

		this.spawnAttackEffect(_targetTile, this.Const.Tactical.AttackEffectChop);
		local target = _targetTile.getEntity();

		local hitChance = this.getHitchance(target);						
		for (local i = 0; i < 2; i++)
		{				
			local roll = this.Math.rand(1, 100);
			if (roll <= hitChance)
			{
				this.m.IsUsingHitchance = false;
				break;
			}

			this.Tactical.EventLog.logEx(this.Const.UI.getColorizedEntityName(_user) + " uses " + this.getName() + " and misses " + this.Const.UI.getColorizedEntityName(target) + " (Chance: " + hitChance + ", Rolled: " + roll + ")");

			this.m.RerollDamageMult -= 0.33;
		}

		this.m.IsAttacking = true;
		local ret = this.attackEntity(_user, target);
		this.m.IsAttacking = false;
		this.m.IsUsingHitchance = true;
		return ret;
	}

	// Set IsUsingHitChance to true before target hit so that the Nimble perk works properly
	o.onBeforeTargetHit <- function( _skill, _targetEntity, _hitInfo )
	{
		this.m.IsUsingHitchance = true;
	}

	o.onAnySkillUsed = function( _skill, _targetEntity, _properties )
	{
		if (_skill == this)
		{
			_properties.HitChance[this.Const.BodyPart.Head] += 100.0;

			if (this.m.IsAttacking)
			{
				_properties.DamageTotalMult *= this.m.RerollDamageMult;		
			}
		}
	}
});
