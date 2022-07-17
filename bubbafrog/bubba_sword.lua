minetest.register_tool("bubbafrog:bubba_sword", {
    description = "BubbaFrog Sword",
	inventory_image = "bubba_sword.png",
    stack_max = 1,
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=0,
		groupcaps={
			snappy = {times={[1]=0.01, [2]=0.01, [3]=0.01}, uses=100000, maxlevel=3},
		},
		damage_groups = {fleshy=200},
	}
})
