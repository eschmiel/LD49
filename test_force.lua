testforce = {}

testforce.disposition = {1, -2, -4, 2, -1, 5}
testforce.engagement = 0

minimum_engagement = -10
maximum_engagement = 10

function commune_with_force(topic) 
    topic_number = topics[topic]

    testforce.engagement += testforce.disposition[topic_number]

    if (testforce.engagement < minimum_engagement) testforce.engagement = minimum_engagement
    if (testforce.engagement > maximum_engagement) testforce.engagement = maximum_engagement
    
end

function display_force_status()
    status_color = 11
    if (testforce.engagement == minimum_engagement or testforce.engagement == maximum_engagement) status_color = 8
    print("force engagement: "..testforce.engagement, 20, 20, status_color)
end

topics = {}
topics.dreams = 1
topics.nightmares = 2
topics.hope = 3
topics.despair = 4
topics.theland = 5
topics.thesea = 6