::mods_hookExactClass("ai/tactical/behaviors/ai_boost_stamina", function (o) {
	local idx1 = o.m.PossibleSkills.find("actives.legend_push_forward");
	if (idx1 != null)
	{
		o.m.PossibleSkills.remove(idx1);
	}

	local idx2 = o.m.PossibleSkills.find("actives.legend_hold_the_line");
	if (idx2 != null)
	{
		o.m.PossibleSkills.remove(idx2);
	}
});
