

local frog_soldiernods = {
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



mobs:register_mob("bubbafrog:frog_soldier", {
	-- nametag = "hunters" ,
	type = "monster",
	passive = false,
	attack_type = "shoot",
        arrow = "bubbafrog:hunters_arrow",
	shoot_interval = 2.0,
	shoot_offset = 1.5,
	pathfinding = true,
	reach = 5,
	damage = math.random(3,5),
	hp_min = 20,
	hp_max = 200,
	armor = 100,
	collisionbox = {-0.4, -1.0, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "hunter_gun.b3d",
	rotate = 180,
	textures = {
		{"frog_soldier.png"},
	},
	--glow = 4,
	--blood_texture = "",
	makes_footstep_sound = true,
	sounds = {
		shoot_attack = "shot",

		--death = "",
	},
	walk_velocity = 2,
	run_velocity = 5,
	jump_height = 2,
	stepheight = 1.1,
	floats = 0,
	view_range = 35,
	drops = {
		{name = "bubbafrog:raw_frog_leg", chance = 1, min = 1, max = 7,}, -- if "bubbafrog" mod is installed
	    {name = "rangedweapons:m16", chance = 4, min = 1, max = 1,},   {name = "rangedweapons:m1911", chance = 1, min = 1, max = 1,},
  {name = "rangedweapons:ak47", chance = 24, min = 1, max = 1,},    {name = "rangedweapons:draco", chance = 24, min = 1, max = 1,},
{name = "rangedweapons:minigun", chance = 24, min = 1, max = 1,},                          {name = "rangedweapons:milkor", chance = 24, min = 1, max = 1,},
{name = "rangedweapons:m60", chance = 24, min = 1, max = 1,},  {name = "rangedweapons:m79", chance = 24, min = 1, max = 1,},
{name = "rangedweapons:flamethrower", chance = 24, min = 1, max = 1,}, {name = "rangedweapons:mp7", chance = 24, min = 1, max = 1,},
{name = "rangedweapons:m3a1", chance = 24, min = 1, max = 1,}, {name = "rangedweapons:bazooka", chance = 24, min = 1, max = 1,},
{name = "rangedweapons:aug", chance = 24, min = 1, max = 1,}, {name = "rangedweapons:famas", chance = 24, min = 1, max = 1,},                                                {name = "rangedweapons:ak74u", chance = 24, min = 1, max = 1,},                                                       {name = "rangedweapons:kar98", chance = 24, min = 1, max = 1,},                                            
{name = "rangedweapons:usas12", chance = 24, min = 1, max = 1,}, {name = "rangedweapons:m1grand", chance = 24, min = 1, max = 1,},
{name = "rangedweapons:ak12", chance = 24, min = 1, max = 1,},   {name = "rangedweapons:negev", chance = 24, min = 1, max = 1,},
{name = "rangedweapons:smaw", chance = 24, min = 1, max = 1,},   {name = "rangedweapons:spacecanon", chance = 24, min = 1, max = 1,},

                      {name = "rangedweapons:p90", chance = 24, min = 1, max = 1,},   {name = "rangedweapons:skullmask", chance = 24, min = 1, max = 1,},
	},
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 0,
		walk_start = 20,
		walk_end = 60,
		run_start = 80,
		run_end = 100,
		shoot_start = 120,
		shoot_end = 140,
	},
})



mobs:register_arrow("bubbafrog:hunters_arrow", {
	visual = "sprite",
	visual_size = {x = 0.2, y = 0.2},
	textures = {"bullet.png"},
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
	minetest.sound_play("impact", {pos=self.object:get_pos(), gain=1.0, max_hear_distance = 10})
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
	name = "bubbafrog:frog_soldier",
	nodes = hunternods,
	min_light = 0,
	max_light = 14,
	chance = 7500,
	--min_height = 0,
	--max_height = 200,
	max_height = 200,
	active_object_count = 5,
})


mobs:register_egg("bubbafrog:frog_soldier", "Frog Soldier", "frog_soldier_inv.png", 0)
