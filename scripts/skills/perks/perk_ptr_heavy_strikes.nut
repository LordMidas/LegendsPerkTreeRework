this.perk_ptr_heavy_strikes <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_heavy_strikes";
		this.m.Name = this.Const.Strings.PerkName.PTRHeavyStrikes;
		this.m.Description = this.Const.Strings.PerkDescription.PTRHeavyStrikes;
		this.m.Icon = "ui/perks/ptr_heavy_strikes.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
	
	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		local actor = this.getContainer().getActor();		

		if (!_targetEntity.isAlive() || _targetEntity.isDying() || _targetEntity.isAlliedWith(actor))
		{
			return;
		}
		
		local weapon = actor.getMainhandItem();		
		
		if (weapon == null || weapon.getCategories().find("Mace") == null || !_skill.isAttack() || _skill.m.InjuriesOnBody != this.Const.Injury.BluntBody)
		{
			return;
		}
		
		_targetEntity.getSkills().add(this.new("scripts/skills/effects/legend_baffled_effect"));
	}
});

