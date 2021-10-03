function play_controls() 

    if (btnp(⬆️)) selected -= 2
    if (btnp(⬅️)) selected -= 1
    if (btnp(⬇️)) selected += 2
    if (btnp(➡️))  selected += 1
    
    if (selected > 4) selected = 4
    if (selected < 1) selected = 1
    
    for option in all(dialogue_options) do
        if (option.position == selected) option.selected = true else option.selected = false
    end

    if (btnp(4)) then
        for topic_index=1, #dialogue_options[selected].topics do
            chosen_topic = dialogue_options[selected].topics[topic_index]
            commune_with_force(cosmic_force, chosen_topic)
        end

        current_turn += 1
    end
end
