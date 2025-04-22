minetest.register_node("mywhiteblock:block", {
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

local paintables = {
	"mywhiteblock:block"
}

for _, entry in ipairs(mywhiteblock.colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:"..entry[3]

minetest.register_node("mywhiteblock:block_" .. color, {
	description = desc .. " Block",
	tiles = {"mywhiteblock_white.png".. paint},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2,cracky = 2, not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
})


end
if minetest.get_modpath("mypaint") then
local colors = {}
for _, entry in ipairs(mywhiteblock.colors) do
	table.insert(colors, entry[1])
end
	mypaint.register(paintables, colors)
end

minetest.register_craft({
	type = "shapeless",
	output = "mywhiteblock:block 1",
	recipe = {"default:dirt","dye:white"},
})
