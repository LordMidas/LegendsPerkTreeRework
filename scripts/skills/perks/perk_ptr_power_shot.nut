this.perk_ptr_power_shot <- this.inherit("scripts/skills/skill", {
	m = {
		Chance = 50
	},
	function create()
	{
		this.m.ID = "perk.ptr_power_shot";
		this.m.Name = this.Const.Strings.PerkName.PTRPowerShot;
		this.m.Description = this.Const.Strings.PerkDescription.PTRPowerShot;
		this.m.Icon = "ui/perks/ptr_power_shot.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (!_skill.isAttack() || !_skill.isRanged() || !_targetEntity.isAlive())
		{
			return;
		}

		local roll = this.Math.rand(1, 100);

		if (roll <= this.m.Chance)
		{
			local effect = this.new("scripts/skills/effects/staggered_effect");
			_targetEntity.getSkills().add(effect);
			effect.m.TurnsLeft = 1;
			
			if (!this.getContainer().getActor().isHiddenToPlayer() && _targetEntity.getTile().IsVisibleForPlayer)
			{
				this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(this.getContainer().getActor()) + " has staggered " + this.Const.UI.getColorizedEntityName(_targetEntity) + " for " + effect.m.TurnsLeft + " turn(s)");
			}
		}
	}
});
