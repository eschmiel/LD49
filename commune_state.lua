function update_commune()
    commune_controls()
end

function commune_controls() 

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
        cosmic_force.new_prompt()
        current_turn += 1

        musing = false
    end
end

function draw_commune()
    draw_text_option(option1)
    draw_text_option(option2)
    draw_text_option(option3)
    draw_text_option(option4)

    draw_atmosphere[danger_level](cosmic_force.stars)
    if (musing) force_muses() else end_muse()
end