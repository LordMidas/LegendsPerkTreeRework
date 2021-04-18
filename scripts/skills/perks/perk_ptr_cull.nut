this.perk_ptr_cull <- this.inherit("scripts/skills/skill", {
	m = {
		SkillCount = 0
	},
	function create()
	{
		this.m.ID = "perk.ptr_cull";
		this.m.Name = this.Const.Strings.PerkName.PTRCull;
		this.m.Description = this.Const.Strings.PerkDescription.PTRCull;
		this.m.Icon = "ui/perks/ptr_cull.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}
	
	function getThreshold(_weapon)
	{
		if (_weapon.isItemType(this.Const.Items.ItemType.OneHanded))
		{
			return 0.2;
		}
		else
		{
			return 0.4;
		}
		
		return 0;
	}
	
	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (_bodyPart != this.Const.BodyPart.Head)
		{
			return;
		}
		
		local actor = this.getContainer().getActor();
		
		if (!_skill.isAttack() || !_skill.m.IsWeaponSkill || !_skill.hasCuttingDamage() || !_targetEntity.isAlive() || _targetEntity.isAlliedWith(actor))
		{
			return;
		}

		if (this.m.SkillCount == this.Const.SkillCounter)
		{
			return;
		}				
		this.m.SkillCount = this.Const.SkillCounter;		
	
		local weapon = actor.getItems().getItemAtSlot(this.Const.ItemSlot.Mainhand);
		
		if (weapon != null && weapon.m.Categories.find("Axe") != null)
		{
			local threshold = this.getThreshold(weapon);
			
			if (_targetEntity.getHitpoints() / (_targetEntity.getHitpointsMax() * 1.0) < threshold)
			{
				_targetEntity.kill(actor, _skill)
			}
		}		
	}
});

