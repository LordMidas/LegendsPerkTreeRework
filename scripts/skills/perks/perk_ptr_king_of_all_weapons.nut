this.perk_ptr_king_of_all_weapons <- this.inherit("scripts/skills/skill", {
	m = {
		ThurstSkill = null,
		DamageReductionPercentage = 50
	},
	function create()
	{
		this.m.ID = "perk.ptr_king_of_all_weapons";
		this.m.Name = this.Const.Strings.PerkName.PTRKingOfAllWeapons;
		this.m.Description = this.Const.Strings.PerkDescription.PTRKingOfAllWeapons;
		this.m.Icon = "ui/perks/ptr_king_of_all_weapons.png";
		this.m.Type = this.Const.SkillType.Perk | this.Const.SkillType.StatusEffect;
		this.m.Order = this.Const.SkillOrder.Perk | this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onUpdate(_properties)
	{
		this.m.ThrustSkill = this.getContainer().getSkillByID("actives.thrust");
	}

	function isHidden()
	{
			return this.m.ThrustSkill == null || this.m.ThrustSkill.m.ThrustCount > 0;
	}

	function getDescription()
	{
		return "This character is highly skilled in spears and can perform a free thrust during their turn.";
	}

	function getTooltip()
	{
		local tooltip = this.skill.getTooltip();

		tooltip.push({
			id = 10,
			type = "text",
			icon = "ui/icons/special.png",
			text = "The next Thrust attack costs [color=" + this.Const.UI.Color.PositiveValue + "]0[/color] Action Points, builds [color=" + this.Const.UI.Color.NegativeValue + "]0[/color] Fatigue but does [color=" + this.Const.UI.Color.NegativeValue + "]-" + this.m.DamageReductionPercentage + "%[/color] Damage"
		});

		return tooltip;
	}
});
