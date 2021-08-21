this.perk_ptr_flail_spinner <- this.inherit("scripts/skills/skill", {
	m = {
		Chance = 50,
		DamageMult = 0.5,
		IsSpinningFlail = false
	},
	function create()
	{
		this.m.ID = "perk.ptr_flail_spinner";
		this.m.Name = this.Const.Strings.PerkName.PTRFlailSpinner;
		this.m.Description = this.Const.Strings.PerkDescription.PTRFlailSpinner;
		this.m.Icon = "ui/perks/ptr_flail_spinner.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function spinFlail (_onUse, _user, _targetTile, _targetEntity, _skill)
	{
		local ret = false;

		if (this.Math.rand(1,100) > this.m.Chance)
		{
			return ret;
		}

		if (this.Tactical.TurnSequenceBar.getActiveEntity().getID() != null && this.Tactical.TurnSequenceBar.getActiveEntity().getID() == _user.getID())
		{
			if (!_user.isHiddenToPlayer() || _targetTile.IsVisibleForPlayer)
			{
				this.getContainer().setBusy(true);
				this.Time.scheduleEvent(this.TimeUnit.Virtual, 300, function ( perk )
				{
					if (_targetEntity.isAlive())
					{
						this.logDebug("[" + _user.getName() + "] is Spinning The Flail on target [" + _targetEntity.getName() + "] with skill [" + _skill.getName() + "]");
						if (!_user.isHiddenToPlayer() && _targetTile.IsVisibleForPlayer)
						{
							this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(_user) + " is Spinning the Flail");
						}

						perk.m.IsSpinningFlail = true;

						ret = _onUse(_user, _targetTile) || ret;

						perk.m.IsSpinningFlail = false;
					}

					this.getContainer().setBusy(false);

				}.bindenv(this), this);
			}
			else
			{
				if (_targetEntity.isAlive())
				{
					this.logDebug("[" + _user.getName() + "] is Spinning The Flail on target [" + _targetEntity.getName() + "] with skill [" + _skill.getName() + "]");
					this.m.IsSpinningFlail = true;
					ret = _onUse(_user, _targetTile) || ret;
					this.m.IsSpinningFlail = false;
				}
			}
		}

		return ret;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (this.m.IsSpinningFlail)
		{
			_properties.DamageTotalMult *= 0.5;
		}
	}
});
