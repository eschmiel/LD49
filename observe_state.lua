function update_observe()
    if(btnp(4)) game.set_commune_state() musing = true 
    
end

function draw_observe()
    danger_level = cosmic_force.get_danger_level()
    stars = cosmic_force.stars
    commune_option = create_text_option('commune\n  with\n force', {}, 5)

    draw_atmosphere[danger_level](stars)
    draw_text_option(commune_option)
end