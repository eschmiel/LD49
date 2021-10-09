function update_game(game_state)
    if (game_state == 'observe') update_observe()
    if (game_state == 'commune') update_commune()
    if (game_state == 'test_prompt_format') test_prompt_format_controls()
end