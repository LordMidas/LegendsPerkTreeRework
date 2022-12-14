::mods_hookExactClass("skills/perks/perk_nimble", function(o) {
	o.isHidden = function()
	{
		return (::Math.floor(this.getReductionChance(0.4) * 100) >= 100) && (::Math.floor(this.getReductionChance(0.6) * 100) >= 100);
	}

	o.getTooltip = function()
	{
		local tooltip = this.skill.getTooltip();
		local chanceMin = ::Math.round(this.getReductionChance(0.4) * 100);
		local chanceMax = ::Math.round(this.getReductionChance(0.6) * 100);

		if (chanceMin >= 100 && chanceMax >= 100)
		{
			tooltip.push({
				id = 6,
				type = "text",
				icon = "ui/tooltips/warning.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]This character\'s body and head armor are too heavy to gain any benefit from being nimble[/color]"
			});
		}
		else
		{
			tooltip.push({
				id = 6,
				type = "text",
				icon = "ui/icons/special.png",
				text = "Damage to hitpoints from attacks is reduced by [color=" + this.Const.UI.Color.PositiveValue + "]" + (100-chanceMin) + "%[/color] to [color=" + this.Const.UI.Color.PositiveValue + "]" + (100-chanceMax) + "%[/color]"
			});
			tooltip.push({
				id = 6,
				type = "text",
				icon = "ui/icons/special.png",
				text = "Damage to armor from attacks is reduced by [color=" + this.Const.UI.Color.PositiveValue + "]" + ((100-chanceMin)/2) + "%[/color] to [color=" + this.Const.UI.Color.PositiveValue + "]" + ((100-chanceMax)/2) + "%[/color]"
			});
		}

		local HPMultMin = chanceMin / 100.0;
		local HPMultMax = chanceMax / 100.0;

		local actor = this.getContainer().getActor();

		local maxHPString = ::Math.floor(actor.getHitpointsMax() / HPMultMin) + " - " + ::Math.floor(actor.getHitpointsMax() / HPMultMax);
		local currHPString = ::Math.floor(actor.getHitpoints() / HPMultMin) + " - " + ::Math.floor(actor.getHitpoints() / HPMultMax);

		tooltip.push({
			id = 6,
			type = "text",
			icon = "ui/icons/special.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]Effective Hitpoints:[/color]\n[" + currHPString + "] / [" + maxHPString + "]"
		});

		return tooltip;
	}

	o.getReductionChance <- function( _reduction )
	{
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

		fat = this.Math.min(0, fat + 15);
		return this.Math.minf(1.0, 1.0 - _reduction + this.Math.pow(this.Math.abs(fat), 1.23) * 0.01);
	}

	function onBeforeDamageReceived( _attacker, _skill, _hitInfo, _properties )
	{
		if (_attacker != null && _attacker.getID() == this.getContainer().getActor().getID() || _skill == null || !_skill.isAttack() || !_skill.isUsingHitchance())
		{
			return;
		}

		local reduction = ::MSU.Math.randf(0.4, 0.6);
		_properties.DamageReceivedRegularMult *= this.getReductionChance(reduction);
		_properties.DamageReceivedArmorMult *= this.getReductionChance(reduction/2);
	}
});
