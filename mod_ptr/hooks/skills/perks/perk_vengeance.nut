::mods_hookExactClass("skills/perks/perk_vengeance", function(o) {
	o.m.Stacks <- 0;

	local create = o.create;
	o.create = function()
	{
		create();
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Description = "This character hits harder after having received hits.";
	}

	o.isHidden <- function()
	{
		return this.m.Stacks == 0;
	}

	o.getTooltip <- function()
	{
		local tooltip = this.skill.getTooltip();
		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/damage_dealt.png",
			text = "Damage increased by [color=" + this.Const.UI.Color.NegativeValue + "]" + (this.m.Stacks * 25) + "%[/color]"
		});

		return tooltip;
	}

	o.onBeforeDamageReceived = function( _attacker, _skill, _hitInfo, _properties )
	{
		this.m.Stacks++;
	}

	o.onAnySkillExecuted <- function( _skill, _targetTile, _targetEntity, _forFree )
	{
		if (_skill.isAttack())
		{
			this.m.Stacks = 0;
		}
	}

	o.onUpdate <- function( _properties )
	{
		_properties.DamageTotalMult *= 1.0 + 25 * this.m.Stacks * 0.01;
	}

	o.onTurnEnd <- function()
	{
		this.m.Stacks = 0;
	}

	o.onCombatStarted <- function()
	{
		this.m.Stacks = 0;
	}

	o.onCombatFinished <- function()
	{
		this.skill.onCombatFinished();
		this.m.Stacks = 0;
	}
});
