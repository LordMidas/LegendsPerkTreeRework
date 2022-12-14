::mods_hookNewObjectOnce("crafting/crafting_manager", function(o) {
	o.PTR_removeRunes <- function()
	{
		local id;
		for (local i = this.m.Blueprints.len() - 1; i >= 0; i--)
		{			
			id = this.m.Blueprints[i].getID();

			if (id == "blueprint.legend_rune_bleeding" ||
				id == "blueprint.legend_rune_feeding" ||
				id == "blueprint.legend_rune_poison" ||
				id == "blueprint.legend_rune_resilience")
			{
				this.m.Blueprints.remove(i);
			}
		}
	}	

	local create = o.create;
	o.create = function()
	{
		create();
		this.PTR_removeRunes();
	}
});
