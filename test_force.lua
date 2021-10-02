testforce = {}

testforce.disposition = {1, -2, -4, 2, -1, 5}
testforce.engagement = 0

minimum_engagement = -10
maximum_engagement = 10

function generate_cosmic_force()
    cosmic_force = {}
    cosmic_force.engagement = 0
    cosmic_force.disposition = {}

    for x=1, #topics do
        cosmic_force.disposition[x] = flr(rnd(11)) - 5
    end

    return cosmic_force
end

function commune_with_force(topic) 
    topic_number = topics[topic]

    force.engagement += force.disposition[topic_number]

    if (force.engagement < minimum_engagement) force.engagement = minimum_engagement
    if (force.engagement > maximum_engagement) force.engagement = maximum_engagement
    
end

function convey_topic_to_force(topic)

end

function display_force_status(force)
    status_color = 11
    if (force.engagement == minimum_engagement or force.engagement == maximum_engagement) status_color = 8
    print("force engagement: "..force.engagement, 20, 20, status_color)
    print(''..topics[1]..': '..force.disposition[1], 10, 30)
    print(''..topics[2]..': '..force.disposition[2], 10, 36)
    print(topics[3]..': '..force.disposition[3], 10, 46)
    print(topics[4]..': '..force.disposition[4], 67, 30)
    print(topics[5]..': '..force.disposition[5], 67, 36)
    print(topics[6]..': '..force.disposition[6], 67, 46)
    
end
