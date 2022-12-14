::mods_hookExactClass("skills/perks/perk_double_strike", function(o) {
	local onTargetHit = o.onTargetHit;
	o.onTargetHit = function( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (_skill == null || !_skill.isAttack() || _skill.isRanged())
		{
			return;
		}

		onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor );
	}
});
