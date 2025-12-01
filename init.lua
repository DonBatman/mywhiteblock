mywhiteblock = {}

local stairs = core.settings:get_bool("mywhiteblock.stairs", true)
local fences = core.settings:get_bool("mywhiteblock.fences", true)
local walls = core.settings:get_bool("mywhiteblock.walls", true)
if fences then
dofile(minetest.get_modpath("mywhiteblock").."/fence.lua")
end
if stairs then
dofile(minetest.get_modpath("mywhiteblock").."/stairs.lua")
end
if walls then
dofile(minetest.get_modpath("mywhiteblock").."/walls.lua")
end


core.register_node("mywhiteblock:block", {
	description = "White Block",
	tiles = {"mywhiteblock_white.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2,cracky = 2},
	sounds = default.node_sound_wood_defaults(),
})
mywhiteblock = {}

mywhiteblock.colors = {
	{"black",      "Black",      "#000000"},
	{"blue",       "Blue",       "#2000c9"},
	{"brown",      "Brown",      "#954c05"},
	{"cyan",       "Cyan",       "#01ffd8"},
	{"darkgreen", "Dark Green",  "#005b07"},
	{"darkgrey",  "Dark Grey",   "#303030"},
	{"green",      "Green",      "#61ff01"},
	{"grey",       "Grey",       "#5b5b5b"},
	{"magenta",    "Magenta",    "#ff05bb"},
	{"orange",     "Orange",     "#ff8401"},
	{"pink",       "Pink",       "#ff65b5"},
	{"red",        "Red",        "#ff0000"},
	{"violet",     "Violet",     "#ab23b0"},
	{"white",      "White",      "#ffffff"},
	{"yellow",     "Yellow",     "#e3ff00"},
}

if core.get_modpath("mydye") then
	mywhiteblock.colors = {
	{"black",      	"Black",      		"#000000"},
	{"blue",       	"Blue",       		"#2000c9"},
	{"brown",     	"Brown",      		"#954c05"},
	{"cyan",      	"Cyan",       		"#01ffd8"},
	{"darkgreen", 	"Dark Green",  		"#005b07"},
	{"darkgrey",  	"Dark Grey",   		"#303030"},
	{"green",     	"Green",      		"#61ff01"},
	{"grey",       	"Grey",       		"#5b5b5b"},
	{"magenta",    	"Magenta",    		"#ff05bb"},
	{"orange",     	"Orange",     		"#ff8401"},
	{"pink",      	"Pink",       		"#ff65b5"},
	{"red",        	"Red",        		"#ff0000"},
	{"violet",     	"Violet",     		"#ab23b0"},
	{"white",      	"White",      		"#ffffff"},
	{"yellow",     	"Yellow",     		"#e3ff00"},
	{"peachpuff",	"Peachpuff", 		"#FFDAB9"},
	{"navy",		"Navy", 			"#000080"},
	{"coral",		"Coral", 			"#FF7F50"},
	{"khaki",		"Khaki", 			"#F0E68C"},
	{"lime",		"Lime", 			"#00FF00"},
	{"light_pink",	"Light Pink", 		"#FFB6C1"},
	{"light_grey",	"Light Grey", 		"#D3D3D3"},
	{"purple",		"Purple", 			"#800080"},
	{"maroon",		"Maroon", 			"#800000"},
	{"aquamarine",	"Aqua Marine", 		"#7FFFD4"},
	{"chocolate",	"Chocolate", 		"#D2691E"},
	{"crimson",		"Crimson", 			"#DC143C"},
	{"olive",		"Olive", 			"#808000"},
	{"white_smoke",	"White Smoke", 		"#F5F5F5"},
	{"mistyrose",	"Misty Rose", 		"#FFE4E1"},
	{"orchid",		"Orchid", 			"#DA70D6"},
	}
end

local paintables = {
	"mywhiteblock:block"
}

for _, entry in ipairs(mywhiteblock.colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:"..entry[3]
core.register_node("mywhiteblock:block_" .. color, {
	description = desc .. " Block",
	tiles = {"mywhiteblock_white.png".. paint},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2,cracky = 2, not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
})


end
if core.get_modpath("mypaint") then
local colors = {}
for _, entry in ipairs(mywhiteblock.colors) do
	table.insert(colors, entry[1])
end
	mypaint.register(paintables, colors)
end

core.register_craft({
	type = "shapeless",
	output = "mywhiteblock:block 1",
	recipe = {"default:dirt","dye:white"},
})
