test_data = {}
test_data.test_engagement = -3
test_data.test_prompt = 1

function test_prompt_format_controls()
    if (btnp(2)) test_data.test_engagement += 1
    if (btnp(3)) test_data.test_engagement -= 1

    if (btnp(4)) cosmic_force.create_stars()--test_data.test_prompt += 1
    if (btnp(5)) test_data.test_prompt -= 1

    if (test_data.test_prompt < 1) test_data.test_prompt = 1
    if (test_data.test_prompt > 12) test_data.test_prompt = 12

    if (test_data.test_engagement < -9) test_data.test_engagement = -9
    if (test_data.test_engagement > 9) test_data.test_engagement = 9

    cosmic_force.engagement = test_data.test_engagement
    cosmic_force.prompt = test_data.test_prompt
end


function test_prompt_format_draw()
    danger_level = cosmic_force.get_danger_level()

    draw_atmosphere[danger_level](cosmic_force.stars)
    --force_muses()
    print('test engagement: '..test_data.test_engagement, 5, 100, 7)
    print('test prompt: '..test_data.test_prompt, 5, 120, 7)
end