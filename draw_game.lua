function draw_game(game_state)
    if(game_state == 'observe') draw_observe()
    if(game_state == 'commune') draw_commune()
    if(game_state == 'test_prompt_format') test_prompt_format_draw()
end