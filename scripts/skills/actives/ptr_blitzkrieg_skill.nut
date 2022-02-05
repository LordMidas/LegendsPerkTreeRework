this.ptr_blitzkrieg_skill <- this.inherit("scripts/skills/skill", {
	m = {
		IsSpent = false	
	},
	function create()
	{
		this.m.ID = "actives.ptr_blitzkrieg";
		this.m.Name = "Blitzkrieg";
		this.m.Description = "Order your mercenaries to attack as fast as possible!"
		this.m.Icon = "skills/ptr_blitzkrieg_skill.png";
		this.m.IconDisabled = "skills/ptr_blitzkrieg_skill_bw.png";
		this.m.Overlay = "ptr_blitzkrieg_skill";
		this.m.SoundOnUse = [
			"sounds/combat/ptr_blitzkrieg_skill.wav"
		];
		this.m.Type = this.Const.SkillType.Active;
		this.m.Order = this.Const.SkillOrder.Any;
		this.m.IsSerialized = false;
		this.m.IsActive = true;
		this.m.IsTargeted = false;
		this.m.IsStacking = false;
		this.m.IsAttack = false;
		this.m.IsIgnoredAsAOO = true;
		this.m.ActionPointCost = 9;
		this.m.FatigueCost = 30;
		this.m.MinRange = 0;
		this.m.MaxRange = 0;
	}

	function getTooltip()
	{
		local tooltip = this.skill.getDefaultUtilityTooltip();

		tooltip.push({
			id = 7,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Every ally within [color=" + this.Const.UI.Color.PositiveValue + "]4[/color] tiles who has at least [color=" + this.Const.UI.Color.NegativeValue + "]10[/color] Fatigue remaining will get the Adrenaline effect and build [color=" + this.Const.UI.Color.NegativeValue + "]10[/color] Fatigue"
		});

		return tooltip;
	}

	function isHidden()
	{
		return this.m.IsSpent;
	}

	function isUsable()
	{
		return !this.m.IsSpent && this.skill.isUsable();
	}

	function onUse( _user, _targetTile )
	{
		this.m.IsSpent = true;		
		local bros = _user.getActorsWithinDistanceAsArray(4, this.Const.FactionRelation.SameFaction);
		bros.push(_user);

		local sortByInitiative = function( _bro1, _bro2 )
		{
			local ini1 = _bro1.getInitiative();
			local ini2 = _bro2.getInitiative();

			if (ini1 > ini2) return -1;
			if (ini1 < ini2) return 1;
			return 0;
		}

		bros.sort(sortByInitiative);

		foreach (bro in bros)
		{
			if (bro == _user)
			{
				this.getContainer().add(this.new("scripts/skills/effects/adrenaline_effect"));
			}
			else if (bro.getFatigueMax() - bro.getFatigue() >= 10)
			{
				bro.setFatigue(bro.getFatigue() + 10);
				local effect = this.new("scripts/skills/effects/adrenaline_effect");				
				if (!bro.isTurnStarted())
				{
					effect.m.TurnsLeft++;
				}
				bro.getSkills().add(effect);
			}
		}
	}

	function onCombatFinished()
	{
		this.skill.onCombatFinished();
		this.m.IsSpent = false;
	}
});
