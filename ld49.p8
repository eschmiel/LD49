pico-8 cartridge // http://www.pico-8.com
version 33
__lua__
function _init()
	option1 = createtextoption(
	"an oyster's\npearl is the\n finest of\n  dreams",
	{"thesea", "dreams"}, 1)
	
	option2 = createtextoption(
	"when i close\nmy eyes, all \n i see is\n 'bazinga'",
	{"nightmares"}, 2)
	
	option3 = createtextoption("i hope this\nis the right\nthing to say", {'hope'}, 3)
	option4 = createtextoption("land ho!\ni can't wait\n to buy a\n   house", {'theland'}, 4)

	selected = 1

	cosmic_force = generate_cosmic_force()
end

function _update()
	if btnp(⬆️) then
	 selected -= 2
 elseif btnp(⬅️) then
	 selected -= 1
	elseif btnp(⬇️) then
	 selected += 2
	elseif btnp(➡️) then
		selected +=1
	end
	
	if selected > 4 then 
		selected = 4
	elseif selected < 1 then
		selected = 1
	end
	
	if option1.position == selected
	then option1.selected = true
	else option1.selected = false
	end
	
	if option2.position == selected
	then option2.selected = true
	else option2.selected = false
	end
	
	if option3.position == selected
	then option3.selected = true
	else option3.selected = false
	end

	if option4.position == selected
	then option4.selected = true
	else option4.selected = false
	end

	if btnp(4) then
		if (selected == 1) commune_with_force(cosmic_force, option1.topics[1])
		if (selected == 2) commune_with_force(cosmic_force, option2.topics[1])
		if (selected == 3) commune_with_force(cosmic_force, option3.topics[1])
		if (selected == 4) commune_with_force(cosmic_force, option4.topics[1])
	end
end

function _draw()
 cls(1)
 drawtextoption(option1)
 drawtextoption(option2)
 drawtextoption(option3)
 drawtextoption(option4)
 display_force_status(cosmic_force)
end
-->8
--textoption
#include text_option.lua 
#include test_force.lua
#include topics.lua

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
