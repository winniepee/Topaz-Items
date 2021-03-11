minetest.register_node("topaz_items:topaz_ore", {
	description = ("Topaz Ore"),
	tiles = {"default_stone.png^topaz_items_mineral_topaz.png"},
	light_source = 5,
	groups = {cracky = 1, level = 3},
	drop = "topaz_items:topaz_lump",
})

minetest.register_node("topaz_items:topazblock", {
	description = ("Topaz Block"),
	tiles = {"topaz_items_topaz_block.png"},
	light_source = 5,
	is_ground_content = false,
	groups = {cracky = 1, level = 3.9},
})

minetest.register_craftitem("topaz_items:topaz_lump", {
	description = ("Topaz Lump"),
	inventory_image = "topaz_items_topaz_lump.png",
})

minetest.register_craftitem("topaz_items:topaz_ingot", {
	description = ("Topaz Ingot"),
	inventory_image = "topaz_items_topaz_ingot.png",
})

minetest.register_craft({
	type = "cooking",
	output = "topaz_items:topaz_ingot",
	recipe = "topaz_items:topaz_lump",
	cooktime = 25,
})

--
-- Tools
--

minetest.register_tool("topaz_items:pick_topaz", {
	description = ("Topaz Pickaxe"),
	inventory_image = "topaz_items_tool_topazpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("topaz_items:shovel_topaz", {
	description = ("Topaz Shovel"),
	inventory_image = "topaz_items_tool_topazshovel.png",
	wield_image = "topaz_items_tool_topazshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("topaz_items:axe_topaz", {
	description = ("Topaz Axe"),
	inventory_image = "topaz_items_tool_topazaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.10, [2]=0.90, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("topaz_items:sword_topaz", {
	description = ("Topaz Sword"),
	inventory_image = "topaz_items_tool_topazsword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

-------------
-- Crafts --
-------------

minetest.register_craft({
	output = "topaz_items:topazblock",
	recipe = {
		{"topaz_items:topaz_ingot", "topaz_items:topaz_ingot", "topaz_items:topaz_ingot"},
		{"topaz_items:topaz_ingot", "topaz_items:topaz_ingot", "topaz_items:topaz_ingot"},
		{"topaz_items:topaz_ingot", "topaz_items:topaz_ingot", "topaz_items:topaz_ingot"},
	}
})

minetest.register_craft({
	output = "topaz_items:topaz_ingot 9",
	recipe = {
		{"topaz_items:topazblock"},
	}
})

minetest.register_craft({
	output = "topaz_items:axe_topaz",
	recipe = {
		{"topaz_items:topaz_ingot", "topaz_items:topaz_ingot"},
		{"topaz_items:topaz_ingot", "group:stick"},
		{"", "group:stick"}
	}
})

minetest.register_craft({
	output = "topaz_items:pick_topaz",
	recipe = {
		{"topaz_items:topaz_ingot", "topaz_items:topaz_ingot", "topaz_items:topaz_ingot"},
		{"", "group:stick", ""},
		{"", "group:stick", ""}
	}
})

minetest.register_craft({
	output = "topaz_items:shovel_topaz",
	recipe = {
		{"topaz_items:topaz_ingot"},
		{"group:stick"},
		{"group:stick"}
	}
})

minetest.register_craft({
	output = "topaz_items:sword_topaz",
	recipe = {
		{"topaz_items:topaz_ingot"},
		{"topaz_items:topaz_ingot"},
		{"group:stick"}
	}
})