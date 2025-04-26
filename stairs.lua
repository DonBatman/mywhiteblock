local block_table = {
	{"black",      "Black",      "mywhiteblock_white.png^[colorize:#000000"},
	{"blue",       "Blue",       "mywhiteblock_white.png^[colorize:#2000c9"},
	{"brown",      "Brown",      "mywhiteblock_white.png^[colorize:#954c05"},
	{"cyan",       "Cyan",       "mywhiteblock_white.png^[colorize:#01ffd8"},
	{"darkgreen", "Dark Green",  "mywhiteblock_white.png^[colorize:#005b07"},
	{"darkgrey",  "Dark Grey",   "mywhiteblock_white.png^[colorize:#303030"},
	{"green",      "Green",      "mywhiteblock_white.png^[colorize:#61ff01"},
	{"grey",       "Grey",       "mywhiteblock_white.png^[colorize:#5b5b5b"},
	{"magenta",    "Magenta",    "mywhiteblock_white.png^[colorize:#ff05bb"},
	{"orange",     "Orange",     "mywhiteblock_white.png^[colorize:#ff8401"},
	{"pink",       "Pink",       "mywhiteblock_white.png^[colorize:#ff65b5"},
	{"red",        "Red",        "mywhiteblock_white.png^[colorize:#ff0000"},
	{"violet",     "Violet",     "mywhiteblock_white.png^[colorize:#ab23b0"},
	{"white",      "White",      "mywhiteblock_white.png^[colorize:#ffffff"},
	{"yellow",     "Yellow",     "mywhiteblock_white.png^[colorize:#e3ff00"},
}



for i in ipairs(block_table) do
	local mat = block_table[i][1]
	local des = block_table[i][2]
	local img = block_table[i][3]



stairs.register_stair_and_slab("mywhiteblock:block_"..mat,
			"mywhiteblock:block_"..mat, 
			{cracky=2}, 
			{img},
			des.." Stairs", 
			des.." Slab", 
			default.node_sound_wood_defaults(), 
			img,
			des.." Inner Stairs", 
			des.." Outer Stairs")
end

stairs.register_stair_and_slab("mywhiteblock:block", "mywhiteblock:block", {cracky=2}, {"mywhiteblock_white.png"},
		"White Stairs", "White Slab", default.node_sound_wood_defaults(), "mywhiteblock_white.png",
		"White Inner Stairs", "White Outer Stairs")
