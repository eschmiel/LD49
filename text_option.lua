function create_text_option(text,
    topics, position)

        column1x = 5
        column2x = 66

        row1y = 57
        row2y = 92

        middlex = 36
        middley = 74

        textoption = {}
        if position == 1 then
            textoption.x = column1x
            textoption.y = row1y
        elseif position == 2 then
            textoption.x = column2x
            textoption.y = row1y
        elseif position == 3 then
            textoption.x = column1x
            textoption.y = row2y
        elseif position == 4 then
            textoption.x = column2x
            textoption.y = row2y
        elseif position == 5 then
            textoption.x = middlex
            textoption.y = middley
        end
        
        textoption.position = position
        textoption.text = text
        textoption.topics = convert_to_topic_numbers(topics)
        textoption.selected = false
        
        return textoption
    end
    
    function draw_text_option(textoption)
        if textoption.selected then
            boxcolor = 14
        else
            boxcolor = 6
        end
        
        width = 56
        height = 30
        
        endx = width + textoption.x
        endy = height + textoption.y
        
        textx = textoption.x + 4
        texty = textoption.y + 4
        
        rect(textoption.x, textoption.y,
                            endx, endy, boxcolor)
        print(textoption.text, textx, texty)
        
    end

    function convert_to_topic_numbers(target_topics)
        topic_numbers = {}
        for topic in all(target_topics) do
            for topic_index=1, #master_topic_list do
                if (master_topic_list[topic_index] == topic) add(topic_numbers, topic_index)
            end
        end

        return topic_numbers
    end

