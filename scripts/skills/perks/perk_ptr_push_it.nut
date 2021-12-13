this.perk_ptr_push_it <- this.inherit("scripts/skills/skill", {
	m = {
		IsForceEnabled = false,
		IsValidHit = false,
		WasStunned = false
	},
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

	function isEnabled()
	{
		if (this.m.IsForceEnabled)
		{
			return true;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon != null && weapon.isWeaponType(this.Const.Items.WeaponType.Mace))
		{
			return true;
		}

		return false;
	}

	function onAnySkillExecuted( _skill, _targetTile, _targetEntity )
	{
		if (this.m.IsValidHit && _targetEntity != null && _targetEntity.isAlive() && !_targetEntity.isDying())
		{
			if (this.m.WasStunned || _targetEntity.getSkills().hasSkill("effects.stunned"))
			{
				_targetEntity.getSkills().add(this.new("scripts/skills/effects/staggered_effect"));
				local user = this.getContainer().getActor();
				if (!user.isHiddenToPlayer() && _targetTile.IsVisibleForPlayer)
				{
					this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(user) + " has staggered " + this.Const.UI.getColorizedEntityName(_targetEntity) + " for one turn");
				}
			}
		}
	}

	function onBeforeTargetHit( _skill, _targetEntity, _hitInfo )
	{
		this.m.IsValidHit = false;
		if (_skill.isAttack() && this.isEnabled())
		{
			local item = _skill.getItem();
			if (this.m.IsForceEnabled || (item != null && item.isItemType(this.Const.Items.ItemType.Weapon) && item.isWeaponType(this.Const.Items.WeaponType.Mace)))
			{
				this.m.IsValidHit = true;
				this.m.WasStunned = _targetEntity.getSkills().hasSkill("effects.stunned");
			}
		}
	}
});

