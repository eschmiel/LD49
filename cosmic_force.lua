minimum_engagement = -10
maximum_engagement = 10

function generate_cosmic_force()
    cosmic_force = {}
    cosmic_force.engagement = 0
    cosmic_force.disposition = {}
    cosmic_force.used_aggressive_prompts = {}
    cosmic_force.used_content_prompts = {3}
    cosmic_force.stars = {}
    cosmic_force.prompt = 3

    for x=1, #master_topic_list do
        cosmic_force.disposition[x] = ceil(rnd(11)) - 5
    end

    cosmic_force.verify_prompt = function(prompt_number)
        checked_prompt_list = cosmic_force.used_content_prompts
        if (cosmic_force.engagement < 0) checked_prompt_list = cosmic_force.used_aggressive_prompts

        for prompt in all(checked_prompt_list) do 
            if (prompt == prompt_number) return false
        end
        return true
    end


    cosmic_force.new_prompt = function() 
        potential_prompt = ceil(rnd(12))
        while(not cosmic_force.verify_prompt(potential_prompt)) do
            potential_prompt = ceil(rnd(12))
        end
        
        cosmic_force.prompt = potential_prompt

        if(cosmic_force.engagement < 0) then 
            add(cosmic_force.used_aggressive_prompts, potential_prompt)
        else 
            add(cosmic_force.used_content_prompts, potential_prompt)
        end
    end

    cosmic_force.create_stars = function()

        --number_of_stars = 5 * (cosmic_force.engagement - 10) 
        new_stars = add_stars(20)
        
        for star in all(new_stars) do
            add(cosmic_force.stars, star)
        end

    end

    cosmic_force.get_danger_level = function()
        danger_level = ceil((cosmic_force.engagement + 11) / 2)
        
        if (danger_level > 11) danger_level = 11
    	if (danger_level < 1 ) danger_level = 1

        return danger_level
    end


    return cosmic_force
end

function commune_with_force(force, topic) 
    force.engagement += force.disposition[topic]
    force.create_stars()
end


function force_muses()
    if (expand_cosmic_voice_box()) then
        if cosmic_force.engagement < 0 then print_text_block(aggressive_prompts[cosmic_force.prompt], 10, 8)
        else print_text_block(content_prompts[cosmic_force.prompt], 10, 8)
        end
    end
end

function end_muse()
    collapse_cosmic_voice_box(5, 50)
end

function display_force_status(force)
    status_color = 11
    if (game_lose) status_color = 8
    print("force engagement: "..force.engagement, 20, 20, status_color)
    print(master_topic_list[1]..': '..force.disposition[1], 10, 30)
    print(master_topic_list[2]..': '..force.disposition[2], 10, 36)
    print(master_topic_list[3]..': '..force.disposition[3], 10, 46)
    print(master_topic_list[4]..': '..force.disposition[4], 67, 30)
    print(master_topic_list[5]..': '..force.disposition[5], 67, 36)
    print(master_topic_list[6]..': '..force.disposition[6], 67, 46)
    
end
