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
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function getName()
	{
		return this.m.Name + "[color=" + this.Const.UI.Color.NegativeValue + "] (" + (this.getThreshold() * 100) + "%)[/color]";
	}

	function isHidden()
	{
		return this.getContainer().getActor().isPlayerControlled() || !this.isEnabled();		
	}

	function isEnabled()
	{
		if (this.m.IsForceEnabled)
		{
			return true;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon == null || !weapon.isWeaponType(this.Const.Items.WeaponType.Axe))
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
		if (_bodyPart != this.Const.BodyPart.Head || !_skill.isAttack() || !this.isEnabled() || !_targetEntity.isAlive() || _targetEntity.isDying() || _targetEntity.getSkills().hasSkill("effects.indomitable"))
		{
			return;
		}

		local actor = this.getContainer().getActor();
		if (_targetEntity.isAlliedWith(actor) || this.m.SkillCount == this.Const.SkillCounter && this.m.LastTargetID == _targetEntity.getID())
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
				this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(actor) + " is going to Cull " + this.Const.UI.getColorizedEntityName(_targetEntity));
			}
			this.logDebug("[" + actor.getName() + "] is going to Cull target [" + _targetEntity.getName() + "] with skill [" + _skill.getName() + "]");
			_targetEntity.kill(actor, _skill);
		}
	}
});
