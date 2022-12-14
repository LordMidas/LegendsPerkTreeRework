::mods_hookExactClass("skills/perks/perk_legend_onslaught", function(o) {
	o.onTargetHit = function( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (!_targetEntity.isAlive() || _targetEntity.isDying())
		{
			return false;
		}

		if (_targetEntity.getCurrentProperties().IsImmuneToStun)
		{
			return false;
		}

		if (_targetEntity.isNonCombatant())
		{
			return false;
		}

		local user = this.getContainer().getActor();
		local ourInit = user.getInitiative();
		local targetInit = _targetEntity.getInitiative();

		if (ourInit <= targetInit)
		{
			return false;
		}

		local weapon = user.getMainhandItem();
		local chance = 50;
		if (weapon != null && weapon.isWeaponType(this.Const.Items.WeaponType.Staff))
		{
			chance = 100;
		}

		if (this.Math.rand(1, 100) > chance)
		{
			return false;
		}

		if (!_targetEntity.getSkills().hasSkill("effects.stunned"))
		{
			_targetEntity.getSkills().add(this.new("scripts/skills/effects/legend_baffled_effect"));

			if (!user.isHiddenToPlayer() && _targetEntity.getTile().IsVisibleForPlayer)
			{
				this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(user) + " battered " + this.Const.UI.getColorizedEntityName(_targetEntity) + " leaving them baffled");
			}
		}

		return true;
	}
});
