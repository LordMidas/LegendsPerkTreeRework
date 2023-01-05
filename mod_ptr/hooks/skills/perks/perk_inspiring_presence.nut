::mods_hookExactClass("skills/perks/perk_inspiring_presence", function(o) {
	o.m.IsForceEnabled <- false;

	local create = o.create;
	o.create = function()
	{
		create();
		this.m.Type = ::Const.SkillType.Perk | ::Const.SkillType.StatusEffect;
		this.m.IconMini = "perk_28_mini";
	}

	function isHidden()
	{
		return !this.isEnabled();
	}

	o.isEnabled <- function()
	{
		if (this.m.IsForceEnabled)
		{
			return true;
		}

		local weapon = this.getContainer().getActor().getMainhandItem();
		if (weapon != null && weapon.getID().find("banner") != null)
		{
			return true;
		}

		return false;
	}

	// Overwrite the Legends functions to be empty.
	o.onCombatStarted = function()
	{
	}

	o.onUpdate = function( _properties )
	{			
	}
});
