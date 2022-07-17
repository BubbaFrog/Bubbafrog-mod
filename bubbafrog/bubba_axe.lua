minetest.register_tool("bubbafrog:bubba_axe", {
	description = ("BubbaFrog Axe"),
	inventory_image = "bubba_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=1,
		groupcaps={
			choppy = {times={[1]=0.01, [2]=0.01, [3]=0.01}, uses=100000, maxlevel=3},
		},
		damage_groups = {fleshy=200},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 100}
})
