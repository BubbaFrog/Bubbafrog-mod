


local frognods = {
"default:dirt",
"default:dirt_with_rainforest",
"default:dirt_with_grass",
"default:dirt_with_dry_grass",
"default:dry_dirt_with_dry_grass",
"default:dirt_with_coniferous_litter",
"default:stone",
"default:ice",
"default:snowblock",
"default:dirt_with_snow",
"default:sand",
"default:desert_sand",
"default:desert_stone",
"default:stone",
"default:desert_stone",
--"default:cobble",
"default:mossycobble",
"default:chest",
"default:ice",

}



mobs:register_mob("bubbafrog:frog", {
	-- nametag = "frog" ,
	type = "monster",
	passive = false,
	attack_type = "shoot",
        arrow = "bubbafrog:frog_arrow",
	shoot_interval = 2.0,
	shoot_offset = 1.5,
	pathfinding = true,
	reach = 5,
	damage = math.random(3,5),
	hp_min = 20,
	hp_max = 1000,
	armor = 100,
	collisionbox = {-0.268, -0.01, -0.268,  0.268, 0.25, 0.268},
	visual = "mesh",
	mesh = "Frog.b3d",
	drawtype = "front",
	textures = {
		{"bubbafrog_model.png"},
	},
	--glow = 4,
	--blood_texture = "",
	makes_footstep_sound = true,
	sounds = {
		shoot_attack = "im_bubbafrog",

		--death = "",
	},
	walk_velocity = 2,
	run_velocity = 3,
	jump_height = 6,
	stepheight = 3,
	floats = 0,
	view_range = 35,
	drops = {
		{name = "bubbafrog:bubba_helmet", chance = 1, min = 1, max = 1,}, -- if "bubbafrog" mod is installed
		{name = "bubbafrog:bubba_chestplate", chance = 1, min = 1, max = 1,}, -- if "bubbafrog" mod is installed	
          {name = "bubbafrog:bubba_pants", chance = 1, min = 1, max = 1,},     {name = "bubbafrog:bubba_boots", chance = 1, min = 1, max = 1,}, 
     {name = "rangedweapons:goldminigun", chance = 1, min = 1, max = 1,}, {name = "bubbafrog:raw_frog_leg", chance = 1, min = 1, max = 12,},                           {name = "bubbafrog:bubbafrog", chance = 1, min = 1, max = 1,},
{name = "bubbafrog:hoe_bubba", chance = 1, min = 1, max = 1,},  {name = "bubbafrog:bubba_axe", chance = 1, min = 1, max = 1,},
 {name = "bubbafrog:bubba_shovel", chance = 1, min = 1, max = 1,},      
                   {name = "bubbafrog:bubba_sword", chance = 1, min = 1, max = 1,},   {name = "bubbafrog:bubba_pick", chance = 1, min = 1, max = 1,},
	},
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	animation = {
		speed_normal = 100,
		speed_run = 15,
		stand_start = 1,
		stand_end = 100,
		walk_start = 100,
		walk_end = 200,
		run_start = 80,
		run_end = 100,
		shoot_start = 120,
		shoot_end = 140,
	},
})



mobs:register_arrow("bubbafrog:frog_arrow", {
	visual = "sprite",
	visual_size = {x = 0.2, y = 0.2},
	textures = {"bubba_laser.png"},
	velocity = 44,

	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 2},
		}, nil)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 2},
		}, nil)
	end,

	hit_node = function(self, pos, node)
	minetest.sound_play("bubbafrog_angry", {pos=self.object:get_pos(), gain=1.0, max_hear_distance = 10})
	for i=1,10 do

	  minetest.add_particle({
		pos = pos,
		acceleration = 0,
          	velocity = {x =math.random(-3,3),y=math.random(-3,3),z=math.random(-3,3)},
		size = 1,
		expirationtime = 2.0,
		collisiondetection = false,
		vertical = false,
		texture = "tnt_smoke.png",
		glow = 1,
	        })

	        end
	end
})


mobs:spawn({
	name = "bubbafrog:frog",
	nodes = hunternods,
	min_light = 0,
	max_light = 14,
	chance = 7500,
	--min_height = 0,
	--max_height = 200,
	max_height = 2,
	active_object_count = 5,
})


mobs:register_egg("bubbafrog:frog", "BubbaFrog", "bubbafrog.png", 0)
