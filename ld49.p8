pico-8 cartridge // http://www.pico-8.com
version 33
__lua__
function _init()
	
	option1 = create_text_option(
	"an oyster's\npearl is the\n finest of\n  dreams",
	{"thesea", "dreams"}, 1)
	
	option2 = create_text_option(
	"when i close\nmy eyes, all \n i see is\n 'bazinga'",
	{"nightmares"}, 2)
	
	option3 = create_text_option("i hope this\nis the right\nthing to say", {'hope'}, 3)
	option4 = create_text_option("land ho!\ni can't wait\n to buy a\n   house", {'theland'}, 4)

	selected = 1

	dialogue_options = {option1, option2, option3, option4}
	
	cosmic_force = generate_cosmic_force()
	
	game_win = false
	game_lose = false
	current_turn = 1
end

function _update()
	if not game_win and not game_lose  then
		play_controls()
		check_game_lose(cosmic_force.engagement)
		check_game_win(current_turn)
	end
end

function _draw()
 cls(1)
 draw_text_option(option1)
 draw_text_option(option2)
 draw_text_option(option3)
 draw_text_option(option4)
 --display_force_status(cosmic_force)
force_muses()
print('turn: '..current_turn..' win at: 10', 1, 1)
 if(game_lose) print('You lose', 50, 50)
 if(game_win) print('YOU WIN?!?', 50, 50)
end

function check_game_win(turn)
	victory_turn = 10
	if(turn == victory_turn) game_win = true
end

function check_game_lose(engagement)
	lose_condition = 10
	if(abs(engagement) >= lose_condition) game_lose = true
end

-->8
--textoption
#include text_option.lua 
#include cosmic_force.lua
#include topics.lua
#include controls.lua

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
