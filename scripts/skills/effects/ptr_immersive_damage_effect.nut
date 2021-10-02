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

		this.m.IsUpdating = true;

		this.m.DamageMult = this.Const.PTR.ImmersiveDamage.MaxDamageMult;		

		// local chance  =  this.getChanceFullDamage(_skill, _targetEntity);
		// if (this.m.Roll > 100 - this.Const.PTR.ImmersiveDamage.ChanceCriticalFailure)
		// {
		// 	this.m.DamageMult = this.Const.PTR.ImmersiveDamage.MinDamageMult;
		// }
		// else if (this.m.Roll > chance)
		// {
		// 	//this.m.DamageMult = this.Math.maxf(this.m.MinDamageMult, this.m.MaxDamageMult - 0.01 * exp(this.m.DecaySteepness * (this.m.Roll - chance)));
		// 	this.m.DamageMult = this.Const.PTR.ImmersiveDamage.MaxDamageMult - this.Const.PTR.ImmersiveDamage.MinDamageMult) * (this.m.Roll - chance) / (chance - 100) + this.Const.PTR.ImmersiveDamage.MaxDamageMult;
		// }

		this.m.Roll = this.Math.rand(1, 100);
		if (this.m.Roll > 100 - this.Const.PTR.ImmersiveDamage.ChanceCriticalFailure)
		{
			this.m.DamageMult = this.Const.PTR.ImmersiveDamage.MinDamageMult;
		}
		if (this.m.Roll < 40 || this.m.Roll > 60)
		{
			this.m.DamageMult = this.Math.maxf(this.Const.PTR.ImmersiveDamage.MinDamageMult, this.normalDistDensity(this.m.Roll, 50, this.getChanceFullDamage(_skill, _targetEntity)));
		}

		this.m.IsUpdating = false;

		_properties.DamageTotalMult *= this.m.DamageMult;
	}

	function getChanceFullDamage(_skill, _targetEntity)
	{
		//return this.Math.min(this.Const.PTR.ImmersiveDamage.MaxChance, this.Math.max(this.Const.PTR.ImmersiveDamage.MinChance, _skill.getHitchance(_targetEntity)));
		return this.Math.min(70, this.Math.max(35, _skill.getHitchance(_targetEntity)));
	}

	function onTargetHit( _skill, _targetEntity, _bodyPart, _damageInflictedHitpoints, _damageInflictedArmor )
	{
		if (!_targetEntity.isAlive() || _targetEntity.isDying())
		{
			return;
		}

		local goodness = (this.m.DamageMult - this.Const.PTR.ImmersiveDamage.MinDamageMult) / (this.Const.PTR.ImmersiveDamage.MaxDamageMult - this.Const.PTR.ImmersiveDamage.MinDamageMult);

		local key = "";
		foreach (g in this.Const.PTR.ImmersiveDamage.GoodnessThresholds)
		{
			if (goodness >= this.Const.PTR.ImmersiveDamage.GoodnessThreshold[g].Threshold)
			{
				key = g;
				break;
			}
		}

		local fluff = _skill.isRanged() ? this.Const.PTR.ImmersiveDamage.GoodnessThreshold[key].FluffRanged : this.Const.PTR.ImmersiveDamage.GoodnessThreshold[key].FluffMelee;

		local fluffString = fluff.len() > 0 ? fluff[this.Math.rand(0, fluff.len() - 1)] : "";

		fluffString += this.m.DamageMult < 1.0 ? " dealing [color=" + this.Const.UI.Color.NegativeValue + "]" + this.Math.floor((1.0 - this.m.DamageMult) * 100) + "%[/color] reduced damage!" : " dealing [color=" + this.Const.UI.Color.PositiveValue + "]no[/color] reduced damage!"

		fluffString = this.MSU.String.replace(fluffString, "target", _targetEntity.getName());
		
		this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(this.getContainer().getActor()) + fluffString);

		this.logInfo("Roll: " + this.m.Roll + ", Goodness: " + goodness + ", Key: " + key);
	}

	function normalDistDensity(_x, _mean, _stdev)
	{
		local divider = _stdev * sqrt(2 * 3.14);

		local val = exp(-0.5 * pow((_x - _mean)/(_stdev * 1.0), 2)) / divider;

		local valAtMean = 1 / divider;

		return val / valAtMean;
	}
});
