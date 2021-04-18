this.perk_ptr_flail_spinner <- this.inherit("scripts/skills/skill", {
	m = {
		Chance = 50,
		IsSpinning = false
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
	
	function spinFlail(_skill, _user, _target)
	{
		if (this.m.IsSpinning)
		{
			return;
		}		
					
		local roll = this.Math.rand(1, 100);				
		if (roll > this.m.Chance)
		{
			return;
		}
		
		local targetTile = _target.getTile();
		
		if (targetTile != null && (!_user.isHiddenToPlayer() || _targetTile.IsVisibleForPlayer))
		{					
			this.m.IsSpinning = true;
			//this.m.IsDoingAttackMove = false;
			this.getContainer().setBusy(true);
			
			local info = { SkillToUse = _skill, Perk = this };
			this.Time.scheduleEvent(this.TimeUnit.Virtual, 300, function ( _info )
			{
				if (_target.isAlive())
				{
					//_info.SkillToUse.attackEntity(_user, _target);
					_info.SkillToUse.useForFree(targetTile);
				}

				//_info.SkillToUse.m.IsDoingAttackMove = true;						
				_info.SkillToUse.getContainer().setBusy(false);
				_info.Perk.m.IsSpinning = false;
			}.bindenv( info ), info);					
		}
		else
		{			
			if (_target.isAlive())
			{
				this.m.IsSpinning = true;
				//_skillToUse.attackEntity(_user, _target);
				_skill.useForFree(targetTile);
				this.m.IsSpinning = false;
			}
		}		
	}
	
	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (this.m.IsSpinning || !_targetEntity.isAlive() || _targetEntity.isDying() || !_skill.isAttack() || _skill.isRanged() || _skill.isAOE())
		{			
			return;			
		}
		
		local actor = this.getContainer().getActor();
		if (this.Tactical.TurnSequenceBar.getActiveEntity().getID() != actor.getID())
		{
			return;
		}
		
		local weapon = actor.getMainhandItem();		
		if (weapon == null || weapon.getCategories().find("Flail") == null)
		{
			return;
		}
		
		this.spinFlail(_skill, this.getContainer().getActor(), _targetEntity);							
	} 
	
	function onTargetMissed( _skill, _targetEntity )
	{
		if (this.m.IsSpinning || !_targetEntity.isAlive() || _targetEntity.isDying() || !_skill.isAttack() || _skill.isRanged() || _skill.isAOE())
		{			
			return;			
		}
		
		local actor = this.getContainer().getActor();
		if (this.Tactical.TurnSequenceBar.getActiveEntity().getID() != actor.getID())
		{
			return;
		}
		
		local weapon = actor.getMainhandItem();			
		if (weapon == null || weapon.getCategories().find("Flail") == null)
		{
			return;
		}
		
		this.spinFlail(_skill, this.getContainer().getActor(), _targetEntity);			
	}
});

