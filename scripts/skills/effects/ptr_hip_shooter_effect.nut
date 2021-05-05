this.ptr_hip_shooter_effect <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "effects.ptr_hip_shooter";
		this.m.Name = "Hip Shooter";
		this.m.Description = "This character is highly skilled in shooting arrows as fast as possible.";
		this.m.Icon = "ui/perks/ptr_hip_shooter.png";
		//this.m.IconMini = "ptr_hip_shooter_effect_mini";
		this.m.Overlay = "ptr_hip_shooter_effect";
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
		this.m.IsRemovedAfterBattle = true;
	}

	function getTooltip()
	{
		return [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/action_points.png",
				text = "The Action Point cost of Quick Shot is reduced for the remainder of this turn"
			}
		];
	}

	function isHidden()
	{
		local skill = this.getContainer().getSkillByID("actives.quick_shot");
		if (skill == null || skill.m.UsedCount == 0)
		{
			return true;
		}

		return false;
	}
});
