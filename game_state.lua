game = {}

game.state = 'observe'

game.set_observe_state = function() 
    game.state = 'observe'
end

game.set_commune_state = function() 
    reset_expand_timer()
    reset_collapse_timer()
    game.state = 'commune'
end
