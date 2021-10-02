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
	
	selected = 1
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
	
end

function _draw()
 cls(1)
 drawtextoption(option1)
 drawtextoption(option2)
end
-->8
--textoption

function createtextoption(text,
topics, position)

	textoption = {}
	if position == 1 then
		textoption.x = 5
		textoption.y = 50
	elseif position == 2 then
		textoption.x = 66
		textoption.y = 50
	elseif position == 3 then
		textoption.x = 5
		textoption.y = 80
	else
		textoption.x = 66
		textoption.y = 80
	end
	
	textoption.position = position
	textoption.text = text
	textoption.topics = topics
	textoption.selected = false
	
	return textoption
end

function drawtextoption(textoption)
	if textoption.selected then
		boxcolor = 7
	else
		boxcolor = 6
	end
	
	width = 56
	height = 30
	
	endx = width + textoption.x
	endy = height + textoption.y
	
	textx = textoption.x + 5
	texty = textoption.y + 5
	
	rect(textoption.x, textoption.y,
						endx, endy, boxcolor)
	print(textoption.text, textx, texty)
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
