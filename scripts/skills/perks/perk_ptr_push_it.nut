this.perk_ptr_push_it <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_push_it";
		this.m.Name = this.Const.Strings.PerkName.PTRPushIt;
		this.m.Description = this.Const.Strings.PerkDescription.PTRPushIt;
		this.m.Icon = "ui/perks/ptr_push_it.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
	
	function onBeforeTargetHit( _skill, _targetEntity, _hitInfo )
	{
		_targetEntity.getCurrentProperties().FatigueEffectMult *= 2;
	}
});

