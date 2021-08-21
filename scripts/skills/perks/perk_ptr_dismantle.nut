this.perk_ptr_dismantle <- this.inherit("scripts/skills/skill", {
	m = {
		IsForceEnabled = false
	},
	function create()
	{
		this.m.ID = "perk.ptr_dismantle";
		this.m.Name = this.Const.Strings.PerkName.PTRDismantle;
		this.m.Description = this.Const.Strings.PerkDescription.PTRDismantle;
		this.m.Icon = "ui/perks/ptr_dismantle.png";
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

		if(_weapon == null || !_weapon.isWeaponType(this.Const.WMS.WeaponType.Hammer))
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

		local weapon = actor.getMainhandItem();
		if (!this.isEnabled(_skill, weapon))
		{
			return;
		}

		local effect = _targetEntity.getSkills().getSkillByID("effect.ptr_dismantled");
		if (effect == null)
		{
			effect = this.new("scripts/skills/effects/ptr_dismantled_effect");
			_targetEntity.getSkills().add(effect);
		}

		local countsToAdd = 1;
		if (weapon != null && weapon.isItemType(this.Const.Items.ItemType.TwoHanded))
		{
			countsToAdd += 1;
		}

		if (_bodyPart == this.Const.BodyPart.Body)
		{
			effect.m.BodyHitCount += countsToAdd;
		}
		else
		{
			effect.m.HeadHitCount += countsToAdd;
		}
	}
});
