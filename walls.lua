local blocks = {
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
for i in ipairs (blocks) do
local wo = blocks[i][1]
local des = blocks[i][2]
local col = blocks[i][3]

walls.register(":walls:mywhiteblock_wall_"..wo, des.." Wall", "mywhiteblock_white.png^[colorize:"..col,
		"block_"..wo, default.node_sound_stone_defaults())
core.register_craft ({
	output = "walls:mywhiteblock_wall_"..wo,
	recipe = {
				{"","",""},
				{"mywhiteblock:block_"..wo,"mywhiteblock:block_"..wo,"mywhiteblock:block_"..wo},
				{"mywhiteblock:block_"..wo,"mywhiteblock:block_"..wo,"mywhiteblock:block_"..wo}
				}
})
end
