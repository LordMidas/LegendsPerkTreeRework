this.ptr_swift_stabs_effect <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "effects.ptr_swift_stabs";
		this.m.Name = "Swift Stabs";
		this.m.Icon = "ui/perks/ptr_swift_stabs.png";
		//this.m.IconMini = "ptr_swift_stabs_effect_mini";		
		this.m.Type = this.Const.SkillType.StatusEffect;
		this.m.IsActive = false;
		this.m.IsRemovedAfterBattle = true;
	}

	function getDescription()
	{
		return "This character has successfully found an opening in the target's armor and can quickly deliver several deadly stabs.";
	}
	
	function onTurnEnd()
	{
		this.removeSelf();
	}
});

