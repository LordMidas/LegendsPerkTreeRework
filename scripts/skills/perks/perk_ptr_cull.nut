this.perk_ptr_cull <- this.inherit("scripts/skills/skill", {
	m = {
		IsForceEnabled = false,
		SkillCount = 0,
		LastTargetID = 0
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

	function isEnabled(_skill)
	{
		if (this.m.IsForceEnabled)
		{
			return true;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if(weapon == null || weapon.getApplicableMasteries()[0] != this.Const.WMS.Mastery.Axe)
		{
			return false;
		}

		if (!_skill.hasCuttingDamage() || !_skill.m.IsWeaponSkill)
		{
			return false;
		}

		return true;
	}

	function getThreshold()
	{
		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || weapon.isItemType(this.Const.Items.ItemType.OneHanded))
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
		if (!_skill.isAttack() || !_targetEntity.isAlive() || _targetEntity.isDying() || _targetEntity.isAlliedWith(actor) || !this.isEnabled(_skill))
		{
			return;
		}

		if (this.m.SkillCount == this.Const.SkillCounter && this.m.LastTargetID == _targetEntity.getID())
		{
			return;
		}

		this.m.SkillCount = this.Const.SkillCounter;
		this.m.LastTargetID = _targetEntity.getID();

		local threshold = this.getThreshold();
		if (_targetEntity.getHitpoints() / (_targetEntity.getHitpointsMax() * 1.0) < threshold)
		{
			if (!actor.isHiddenToPlayer() && _targetEntity.getTile().IsVisibleForPlayer)
			{
				this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(actor) + " is going to cull " + this.Const.UI.getColorizedEntityName(_targetEntity));
			}
			_targetEntity.kill(actor, _skill);
		}
	}
});
