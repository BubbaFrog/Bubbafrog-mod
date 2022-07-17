-- raw frog leg
minetest.register_craftitem(":bubbafrog:raw_frog_leg", {
	description = ("Raw Frog Leg"),
	inventory_image = "raw_frog_leg.png",
	on_use = minetest.item_eat(3),
	groups = {food_meat_raw = 1, food_rabbit_raw = 1, flammable = 2},
})

-- cooked frog leg
minetest.register_craftitem(":bubbafrog:cooked_frog_leg", {
	description = ("Cooked Frog Leg"),
	inventory_image = "cooked_frog_leg.png",
	on_use = minetest.item_eat(5),
	groups = {food_meat = 1, food_rabbit = 1, flammable = 2},
})

minetest.register_craft({
	type = "cooking",
	output = "bubbafrog:cooked_frog_leg",
	recipe = "bubbafrog:raw_frog_leg",
	cooktime = 5,
})

