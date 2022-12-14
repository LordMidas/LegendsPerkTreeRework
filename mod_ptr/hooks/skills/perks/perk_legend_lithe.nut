::mods_hookExactClass("skills/perks/perk_legend_lithe", function(o) {
	o.isHidden <- function()
	{
		return this.getContainer().hasSkill("perk.nimble") || (::Math.floor(this.getHitpointsDamageReduction() * 100) >= 100 && ::Math.floor(this.getArmorDamageReduction() * 100) >= 100);
	}

	o.getTooltip = function()
	{
		local tooltip = this.skill.getTooltip();
		local hpBonus = ::Math.round(this.getHitpointsDamageReduction() * 100);
		if (hpBonus < 100)
		{
			tooltip.push({
				id = 6,
				type = "text",
				icon = "ui/icons/special.png",
				text = "Damage to hitpoints from attacks is reduced by [color=" + this.Const.UI.Color.PositiveValue + "]" + (100-hpBonus) + "%[/color]"
			});
		}
		local armorBonus = ::Math.round(this.getArmorDamageReduction() * 100);
		if (armorBonus < 100)
		{
			tooltip.push({
				id = 6,
				type = "text",
				icon = "ui/icons/special.png",
				text = "Damage to armor from attacks is reduced by [color=" + this.Const.UI.Color.PositiveValue + "]" + (100-armorBonus) + "%[/color]"
			});
		}

		if (hpBonus >= 100 && armorBonus >= 100)
		{
			tooltip.push({
				id = 6,
				type = "text",
				icon = "ui/tooltips/warning.png",
				text = "[color=" + this.Const.UI.Color.NegativeValue + "]This character\'s body and head armor are too heavy to gain any benefit from being lithe[/color]"
			});
		}

		local actor = this.getContainer().getActor();
		local maxHPString = ::Math.floor(actor.getHitpointsMax() / (hpBonus * 0.01));
		local currHPString = ::Math.floor(actor.getHitpoints() / (hpBonus * 0.01));

		tooltip.push({
			id = 6,
			type = "text",
			icon = "ui/icons/special.png",
			text = "[color=" + this.Const.UI.Color.PositiveValue + "]Effective Hitpoints:[/color] " + currHPString + " / " + maxHPString
		});

		return tooltip;
	}

	o.getHitpointsDamageReduction <- function()
	{
		local fat = this.getContainer().getActor().getItems().getStaminaModifier([::Const.ItemSlot.Body, ::Const.ItemSlot.Head]);
		fat = ::Math.min(0, fat + 35);
		return ::Math.minf(1.0, 1.0 - 0.3 + this.Math.pow(this.Math.abs(fat), 1.23) * 0.01);
	}

	o.getArmorDamageReduction <- function()
	{
		local fat = this.getContainer().getActor().getItems().getStaminaModifier([::Const.ItemSlot.Body, ::Const.ItemSlot.Head]);
		fat = ::Math.min(0, fat + 35);
		return ::Math.minf(1.0, 1.0 - 0.15 + this.Math.pow(this.Math.abs(fat), 1.23) * 0.01);
	}

	function onBeforeDamageReceived( _attacker, _skill, _hitInfo, _properties )
	{
		if (_attacker != null && _attacker.getID() == this.getContainer().getActor().getID() || _skill == null || !_skill.isAttack() || !_skill.isUsingHitchance())
		{
			return;
		}

		if (this.getContainer().hasSkill("perk.nimble")) return;

		_properties.DamageReceivedRegularMult *= this.getHitpointsDamageReduction();
		_properties.DamageReceivedArmorMult *= this.getArmorDamageReduction();
	}
});
