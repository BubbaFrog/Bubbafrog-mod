--[[
rangedweapons_loot = 
{
"rangedweapons_inv_helmet_biker", "rangedweapons_inv_helmet_construction", "rangedweapons_inv_helmet_military", "rangedweapons_inv_helmet_swat", 
"rangedweapons_inv_vest_civilian", "rangedweapons_inv_vest_military", "rangedweapons_inv_vest_police", "rangedweapons_inv_vest_swat"
}
--]]
local enable_craft = false

armor:register_armor("bubbafrog:bubba_chestplate", {
	description = ("BubbaFrog ChestPlate"),
	inventory_image = "bubba_chestplate_inv.png",
	groups = {armor_torso=1, armor_heal=100, armor_use=0,
		physics_speed=-0.04, physics_gravity=0.04},
	armor_groups = {fleshy=100},
	damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},

})

armor:register_armor("bubbafrog:bubba_helmet", {
	description = ("BubbaFrog Helmet"),
	inventory_image = "bubba_helmet_inv.png",
	groups = {armor_head=1, armor_heal=100, armor_use=0},
	armor_groups = {fleshy=100},
	damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("bubbafrog:bubba_boots", {
	description = ("BubbaFrog Boots"),
	inventory_image = "bubba_boots_inv.png",
	groups = {armor_feet=1, armor_heal=100, armor_use=0, physics_speed=1 },
	armor_groups = {fleshy=100},
	damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("bubbafrog:bubba_pants", {
	description = ("BubbaFrog Leggings"),
	inventory_image = "bubba_pants_inv.png",
	groups = {armor_legs=1, armor_heal=100, armor_use=0},
	armor_groups = {fleshy=100},
	
	damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})
