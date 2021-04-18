this.perk_ptr_heavy_projectiles <- this.inherit("scripts/skills/skill", {
	m = {		
		ChanceOnBodyHit = 25
	},
	function create()
	{
		this.m.ID = "perk.ptr_heavy_projectiles";
		this.m.Name = this.Const.Strings.PerkName.PTRHeavyProjectiles;
		this.m.Description = this.Const.Strings.PerkDescription.PTRHeavyProjectiles;
		this.m.Icon = "ui/perks/ptr_heavy_projectiles.png";
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
		
		if (_bodyPart == this.Const.BodyPart.Head || roll <= this.m.ChanceOnBodyHit)
		{
			_targetEntity.getSkills().add(this.new("scripts/skills/effects/dazed_effect"));
			
			local actor = this.getContainer().getActor();
			if (!actor.isHiddenToPlayer() && _targetEntity.getTile().IsVisibleForPlayer)
			{
				this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(actor) + "\'s use of heavy projectiles leaves " + this.Const.UI.getColorizedEntityName(_targetEntity) + " dazed");
			}
		}
	}
});

