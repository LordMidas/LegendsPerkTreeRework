::mods_hookExactClass("skills/perks/perk_legend_freedom_of_movement", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.Description = "Owing to %their% light-weight armor, this character is gaining increased mobility and can strike more accurately."
	}

	o.getTooltip = function()
	{
		local tooltip = this.skill.getTooltip();
		local bonus = this.getBonus();
		tooltip.push({
			id = 6,
			type = "text",
			icon = "ui/icons/melee_skill.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + bonus + "[/color] Melee Skill"
		});

		tooltip.push({
			id = 6,
			type = "text",
			icon = "ui/icons/melee_defense.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]+" + bonus + "[/color] Melee Defense"
		});

		return tooltip;
	}

	o.onBeforeDamageReceived = function( _attacker, _skill, _hitInfo, _properties )
	{
	}

	o.getBonus <- function()
	{
		local actor = this.getContainer().getActor();

		local fat = 0;
		local body = this.getContainer().getActor().getItems().getItemAtSlot(this.Const.ItemSlot.Body);
		local head = this.getContainer().getActor().getItems().getItemAtSlot(this.Const.ItemSlot.Head);

		if (body != null)
		{
			fat = fat + body.getStaminaModifier();
		}

		if (head != null)
		{
			fat = fat + head.getStaminaModifier();
		}

		// Because staminaModifiers are negative!
		fat = this.Math.min(0, fat + 15);
		local maxFatMult = this.Math.maxf(0, 0.1 - this.Math.pow(this.Math.abs(fat), 1.23) * 0.01);

		return this.Math.floor(actor.getFatigueMax() * maxFatMult);
	}

	o.onUpdate <- function(_properties)
	{
		local bonus = this.getBonus();
		_properties.MeleeSkill += bonus;
		_properties.MeleeDefense += bonus;
	}
});
