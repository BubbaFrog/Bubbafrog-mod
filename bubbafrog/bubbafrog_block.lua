minetest.register_node("bubbafrog:bubbafrog", {
	description = "BubbaFrog Block",
	tiles = {"frog_top.png^[transformR180", "frog_bottom.png",  "frog_side.png",
	"frog_side.png^[transformFX", "frog_back.png", "frog_front.png",},
	paramtype = "light",
	light_source = 14,
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky = 2},
	--is_ground_content = "true",
})

--makes frog croak when you punch it
minetest.register_on_punchnode(function(pos, node, puncher, pointed_thing)
	if node.name == "bubbafrog:bubbafrog" then
	minetest.sound_play("im_bubbafrog", {
		pos = pos,
		gain = 1.0,
		max_hear_distance = 18, })
	end
end)
