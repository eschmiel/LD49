game_animation_orchestrator = {}

game_animation_orchestrator.expand_timer = 1
game_animation_orchestrator.collapse_timer = 1
game_animation_orchestrator.cloud_layer_1_timer = 1



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


function increment_cloud_layer_1_timer()
    game_animation_orchestrator.cloud_layer_1_timer += 1
end

function reset_cloud_layer_1_timer()
    game_animation_orchestrator.cloud_layer_1_timer = 1
end