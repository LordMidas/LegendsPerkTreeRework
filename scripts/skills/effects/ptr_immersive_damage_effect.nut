this.ptr_immersive_damage_effect <- this.inherit("scripts/skills/skill", {
	m = {
		DamageMult = 1.0,
		Roll = 0,		
		IsUpdating = false,		
	},
	function create()
	{
		this.m.ID = "effects.ptr_immersive_damage";
		this.m.Name = "";
		this.m.Description = "";
		this.m.Icon = "";		
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = true;		
	}

	function getMult()
	{
		return this.m.DamageMult;
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_targetEntity == null || !_skill.isAttack() || this.m.IsUpdating)
		{
			return;
		}

		this.m.DamageMult = 1.0 - ::PTR.Mod.ModSettings.getSetting("IDS_MinReduction").getValue() * 0.01;		

		this.m.Roll = this.Math.rand(1, 100);

		local minDamageMult = 1.0 - ::PTR.Mod.ModSettings.getSetting("IDS_MaxReduction").getValue() * 0.01;

		if (this.m.Roll > 100 - ::PTR.Mod.ModSettings.getSetting("IDS_ChanceCriticalFailure").getValue())
		{
			this.m.DamageMult = minDamageMult;
		}
		else
		{	
			local half = ::PTR.Mod.ModSettings.getSetting("IDS_ChanceFullDamage").getValue() / 2.0;
			if (this.m.Roll < 50 - half || this.m.Roll > 50 + half)
			{
				this.m.IsUpdating = true;
				local stdev = this.Math.min(::PTR.Mod.ModSettings.getSetting("IDS_MaxHitChance").getValue(), this.Math.max(::PTR.Mod.ModSettings.getSetting("IDS_MinHitChance").getValue(), _skill.getHitchance(_targetEntity)));
				this.m.IsUpdating = false;

				this.m.DamageMult = this.Math.maxf(minDamageMult, this.MSU.Math.normalDistNorm(this.m.Roll, 50, stdev));
			}
		}

		_properties.DamageTotalMult *= this.m.DamageMult;
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (!_targetEntity.isAlive() || _targetEntity.isDying() || this.getContainer().getActor().isHiddenToPlayer() || !_targetEntity.getTile().IsVisibleForPlayer)
		{
			return;
		}

		local minDamageMult = 1.0 - ::PTR.Mod.ModSettings.getSetting("IDS_MaxReduction").getValue() * 0.01;
		local maxDamageMult = 1.0 - ::PTR.Mod.ModSettings.getSetting("IDS_MinReduction").getValue() * 0.01;

		local goodness = (this.m.DamageMult - minDamageMult) / (maxDamageMult - minDamageMult);

		local key = "";
		foreach (g in this.PTR.ImmersiveDamage.GoodnessThresholds)
		{
			if (goodness >= this.PTR.ImmersiveDamage.GoodnessThreshold[g].Threshold)
			{
				key = g;
				break;
			}
		}

		local fluff = _skill.isRanged() ? this.PTR.ImmersiveDamage.GoodnessThreshold[key].FluffRanged : this.PTR.ImmersiveDamage.GoodnessThreshold[key].FluffMelee;

		local fluffString = fluff.len() > 0 ? fluff[this.Math.rand(0, fluff.len() - 1)] : "";

		fluffString += this.m.DamageMult < 1.0 ? " dealing [color=" + this.Const.UI.Color.NegativeValue + "]" + this.Math.floor((1.0 - this.m.DamageMult) * 100) + "%[/color] reduced damage!" : " dealing [color=" + this.Const.UI.Color.PositiveValue + "]no[/color] reduced damage!"

		fluffString = this.MSU.String.replace(fluffString, "target", _targetEntity.getName());
		
		this.Tactical.EventLog.logEx(this.Const.UI.getColorizedEntityName(this.getContainer().getActor()) + fluffString);
	}
});
