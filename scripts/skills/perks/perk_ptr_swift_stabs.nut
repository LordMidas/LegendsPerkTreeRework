this.perk_ptr_swift_stabs <- this.inherit("scripts/skills/skill", {
	m = {
		Skill = null
	},
	function create()
	{
		this.m.ID = "perk.ptr_swift_stabs";
		this.m.Name = this.Const.Strings.PerkName.PTRSwiftStabs;
		this.m.Description = this.Const.Strings.PerkDescription.PTRSwiftStabs;
		this.m.Icon = "ui/perks/ptr_swift_stabs.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}	
	
	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (_skill.getID() != "actives.puncture")
		{
			return;
		}
		
		local actor = this.getContainer().getActor();
		local weapon = actor.getMainhandItem();		
		if (weapon == null || weapon.getCategories().find("Dagger") == null)
		{
			return;
		}
		
		if (!this.getContainer().hasSkill("effects.ptr_swift_stabs"))
		{
			this.getContainer().add(this.new("scripts/skills/effects/ptr_swift_stabs_effect"));
		}
	}
});
