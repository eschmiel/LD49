minimum_engagement = -10
maximum_engagement = 10

function generate_cosmic_force()
    cosmic_force = {}
    cosmic_force.engagement = 0
    cosmic_force.disposition = {}

    for x=1, #master_topic_list do
        cosmic_force.disposition[x] = flr(rnd(11)) - 5
    end

    cosmic_force.new_prompt = function() 
        cosmic_force.prompt = flr(rnd(12))
    end

    return cosmic_force
end

function commune_with_force(force, topic) 
    force.engagement += force.disposition[topic]
--[[
    if (force.engagement < minimum_engagement) force.engagement = minimum_engagement
    if (force.engagement > maximum_engagement) force.engagement = maximum_engagement
]]
end

function force_muses()
    --print("there is such vigor\n in the world. \nroaring, biting, stinging, \nfeasting, fornicating. \na bear's belly of wobbling\n swollen succulence. \ni am such a glutton for life.", 5, 10)
    --print("have you ever labored in\n futility? to work so \nhard towards an impossible \n goal? was it worth it?", 10, 20)
    print(content_prompts[cosmic_force.prompt], 10, 5)
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
