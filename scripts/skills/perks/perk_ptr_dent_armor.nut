this.perk_ptr_dent_armor <- this.inherit("scripts/skills/skill", {
	m = {
		IsForceEnabled = false
	},
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

	function isEnabled(_skill, _weapon)
	{
		if (this.m.IsForceEnabled)
		{
			return true;
		}

		if (!_skill.hasBluntDamage())
		{
			return false;
		}

		if(_weapon == null || _weapon.getCategories().find("Hammer") == null)
		{
			return false;
		}

		return true;
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		local actor = this.getContainer().getActor();
		if (!_skill.isAttack() || !_targetEntity.isAlive() || _targetEntity.isDying() || _targetEntity.isAlliedWith(actor))
		{
			return;
		}

		local targetArmorItem = _bodyPart == this.Const.BodyPart.Head ? _targetEntity.getHeadItem() : _targetEntity.getBodyItem();
		if (targetArmorItem == null)
		{
			return;
		}

		if (targetArmorItem.getArmorMax() <= 200)
		{
			return;
		}

		local weapon = actor.getMainhandItem();
		if (!this.isEnabled(_skill, weapon))
		{
			return;
		}

		local roll = this.Math.rand(1, 100);
		if (roll <= 25 || (roll <= 50 && weapon != null && weapon.isItemType(this.Const.Items.ItemType.TwoHanded)))
		{
			_targetEntity.getSkills().add(this.new("scripts/skills/effects/ptr_dented_armor_effect"));
		}
	}
});
