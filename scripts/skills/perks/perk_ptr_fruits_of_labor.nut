this.perk_ptr_fruits_of_labor <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.ptr_fruits_of_labor";
		this.m.Name = this.Const.Strings.PerkName.PTRFruitsOfLabor;
		this.m.Description = this.Const.Strings.PerkDescription.PTRFruitsOfLabor;
		this.m.Icon = "ui/perks/ptr_fruits_of_labor.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onUpdate(_properties)
	{
		local baseProperties = this.getContainer().getActor().getBaseProperties();

		_properties.Hitpoints += ::Math.floor(0.1 * baseProperties.Hitpoints);

		local staminaBonus = ::Math.floor(0.1 * baseProperties.Stamina);
		_properties.Stamina += staminaBonus;
		_properties.Initiative += ::Math.floor(0.1 * baseProperties.Initiative) - staminaBonus; // Subtract the stamina bonus because of how it increases initiative in actor.nut getInitiative()
	}
});
