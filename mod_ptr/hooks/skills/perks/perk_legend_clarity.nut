::mods_hookExactClass("skills/perks/perk_legend_clarity", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.Type = ::Const.SkillType.Perk;
	}

	o.onUpdate = function(_properties)
	{
		_properties.FatigueEffectMult *= 0.8;
	}
});
