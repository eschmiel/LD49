function playControls() 

    if (btnp(⬆️)) selected -= 2
    elseif (btnp(⬅️)) selected -= 1
    elseif (btnp(⬇️)) selected += 2
    elseif )btnp(➡️))  selected += 1
    
    if (selected > 4) selected = 4
    elseif (selected < 1) selected = 1
    
    foreach(dialogue_options, set_selected)
    
    function set_selected(option)
        if (option.position == selected) option.selected = true
        else option.selected = false
    end

    if (btnp(4)) submit_dialogue()

    function submit_dialogue()
        foreach(dialogue_options, function(option)
            if (option.selected) foreach(option.topics, function(topic)
                commune_with_force(cosmic_force, topic)
            )
        )
    end

    function useOption(option)
        if (option.selected) foreach(option, commune_with_force)
    end
end
