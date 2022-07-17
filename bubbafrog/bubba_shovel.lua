minetest.register_tool("bubbafrog:bubba_shovel", {
	description = ("BubbaFrog Shovel"),
	inventory_image = "bubba_shovel.png",
	wield_image = "bubba_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=0.01, [2]=0.01, [3]=0.01}, uses=100000, maxlevel=3},
		},
		damage_groups = {fleshy=200},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})
