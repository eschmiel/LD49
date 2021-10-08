game_animation_orchestrator = {}

game_animation_orchestrator.expand_timer = 1
game_animation_orchestrator.collapse_timer = 1


function draw_textbox()
    rect(5, 5, 123, 45, 6)
    rectfill(7, 7, 121, 43, 5)
end

function expand_cosmic_voice_box()
    blink_que = 15
    expand_que = 45
    expand_time = expand_que - blink_que

    starting_top = 25
    ending_top = 5
    starting_bottom = 25
    ending_bottom = 50

    if(game_animation_orchestrator.expand_timer == expand_que) then
        rectfill(6, ending_top + 1, 122, ending_bottom - 1, 5)
        rect(5, ending_top, 123, ending_bottom, 6)
        return true
    end

    if game_animation_orchestrator.expand_timer <= blink_que then
        if (game_animation_orchestrator.expand_timer%5 != 0) rectfill(5, 25, 123, 25, 6)
    elseif game_animation_orchestrator.expand_timer <= expand_que then
        box_top = starting_top - (((abs(starting_top - ending_top))/expand_time) * (game_animation_orchestrator.expand_timer - blink_que)) 
        box_bottom = starting_bottom + (((abs(starting_bottom - ending_bottom))/expand_time) * (game_animation_orchestrator.expand_timer - blink_que))
        rectfill(6, box_top + 1, 122, box_bottom - 1, 5)
        rect(5, box_top, 123, box_bottom, 6)
    end

    increment_expand_timer()
    return false
end

function collapse_cosmic_voice_box(starting_top, starting_bottom)
    collapse_que = 30
    blink_que = 45

    ending_top = 25
    ending_bottom = 25

    if(game_animation_orchestrator.collapse_timer <= blink_que) then

        if game_animation_orchestrator.collapse_timer > collapse_que then
            if (game_animation_orchestrator.collapse_timer%5 != 0) rectfill(5, ending_top, 123, ending_bottom, 6)
        elseif game_animation_orchestrator.collapse_timer <= collapse_que then
            box_top = starting_top + (((abs(starting_top - ending_top))/collapse_que) * game_animation_orchestrator.collapse_timer) 
            box_bottom = starting_bottom - ((abs(starting_bottom - ending_bottom)/collapse_que) * game_animation_orchestrator.collapse_timer)
            rectfill(6, box_top + 1, 122, box_bottom - 1, 5)
            rect(5, box_top, 123, box_bottom, 6)
        end

        increment_collapse_timer()
        return false
    end
    game.set_observe_state()
    return true
end

function increment_expand_timer()
    game_animation_orchestrator.expand_timer += 1
end

function increment_collapse_timer()
    game_animation_orchestrator.collapse_timer += 1
end

function reset_expand_timer()
    game_animation_orchestrator.expand_timer = 1
end

function reset_collapse_timer()
    game_animation_orchestrator.collapse_timer = 1
end
