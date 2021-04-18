this.perk_ptr_dent_armor <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_dent_armor";
		this.m.Name = this.Const.Strings.PerkName.PTRDentArmor;
		this.m.Description = this.Const.Strings.PerkDescription.PTRDentArmor;
		this.m.Icon = "ui/perks/ptr_dent_armor.png";
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
		
		if (!_skill.isAttack() || _skill.hasBluntDamage())
		{
			return;
		}
		
		local targetArmorItem = _bodyPart == this.Const.BodyPart.Head ? _targetEntity.getHeadItem() : _targetEntity.getBodyItem();		
		if (targetArmorItem == null)
		{
			return;
		}
		
		local weapon = actor.getMainhandItem();		
		if (weapon == null || weapon.getCategories().find("Hammer") == null)
		{
			return;
		}
		
		local roll = this.Math.rand(1, 100);
		if (roll <= 25 || (roll <= 50 && weapon.isItemType(this.Const.Items.ItemType.TwoHanded)))
		{
			_targetEntity.getSkills().add(this.new("scripts/skills/effects/ptr_dented_armor_effect"));
		}	
	}
});

