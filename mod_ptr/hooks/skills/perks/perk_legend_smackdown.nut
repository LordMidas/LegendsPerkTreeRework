::mods_hookExactClass("skills/perks/perk_legend_smackdown", function(o) {
	local onTargetHit = o.onTargetHit;
	o.onTargetHit = function( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		local success = onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor );

		if (success && _targetEntity.isAlive() && !_targetEntity.isDying())
		{
			_targetEntity.getSkills().add(this.new("scripts/skills/effects/ptr_smackdown_debuff_effect"));
		}

		return success;
	}
});
