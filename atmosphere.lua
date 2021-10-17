draw_atmosphere = {}

draw_atmosphere[1] = function(stars)
    rectfill(0, 50, 128, 0, 8)
end

draw_atmosphere[2] = function(stars)
    rectfill(0, 50, 128, 0, 2)
end

draw_atmosphere[3] = function(stars)
    rectfill(0, 50, 128, 0, 9)
end

draw_atmosphere[4] = function(stars)
    rectfill(0, 50, 128, 0, 13)
    --dither_line(-2, 0, 128, 2, 12)
    dither_line(2, 1, 128, 2, 12)
    line(0, 0, 128, 0, 12)
    spr(5, 20, 20, 3, 2)
    --[[for x=0, 128 do 
        if x%7 == 0 then
            spr(8, x, 8, 1, 1)
        end

        if x%15 == 0 then
            spr(9, x, 0, 2, 1)
        end

    ]]
    draw_cloud_layer(9, .5)
    
    
end

draw_atmosphere[5] = function(stars)
    rectfill(0, 50, 128, 0, 12)
    circ(64, 328, 291, 13)
    circ(64, 333, 291, 13)
    circ(64, 333, 290, 13)
    circ(64, 333, 289, 2)

    dither_area(0, 0, 128, 4, 2, 1, 7)
    dither_line(1, 2, 128, 2, 6)
    dither_area(1, 5, 128, 4, 4, 1, 6)
    dither_area(0, 5, 128, 4, 4, 1, 7)
    --dither_area(0, 6, 128, 4, 4, 1, 7)
    dither_area(3, 11, 128, 8, 6, 2, 7)
    dither_area(0, 11, 128, 4, 6, 2, 6)
  
end

draw_atmosphere[6] = function(stars)
    rectfill(0, 50, 128, 35, 12) --light blue
    rectfill(0, 34, 128, 19, 1) --deep blue
    rectfill(0, 44, 128, 46, 7)--white lines
    rectfill(0, 38, 128, 37, 7)
    line(0, 30, 128, 30, 7)
    line(0, 23, 128, 23, 0) -- black line

    

    draw_stars(stars)
end

draw_atmosphere[7] = function(stars)
    rectfill(0, 50, 128, 45, 12)
    rectfill(0, 44, 128, 34, 1)
    line(0, 48, 128, 48, 7)
    line(0, 40, 128, 40, 0)
    rectfill(0, 37, 128, 35, 0)

    draw_stars(stars)
end

draw_atmosphere[8] = function(stars)
    rectfill(0, 50, 128, 48, 1)
    rectfill(0, 45, 128, 44, 1)
    line(0, 40, 128, 40, 1)

    draw_stars(stars)
end

draw_atmosphere[9] = function(stars)
    line(0, 50, 128, 50, 1)

    draw_stars(stars)
end

draw_atmosphere[10]= function(stars)
    draw_stars(stars)
end

draw_atmosphere[11] = function(stars)
    rectfill(0, 50, 128, 0, 7)
    draw_stars(stars)
end

function add_stars(number_of_stars)
    stars = {}
    for x=1, number_of_stars do 
        new_star = {ceil(rnd(127)), ceil(rnd(49))}
        add(stars, new_star)
    end
    return stars
end

function draw_stars(stars)
    for x=1, #stars do
        pset(stars[x][1], stars[x][2], 7)

    end
    
end


function generate_atmosphere(engagement)
    color_warning={10, 8, 9, 2, 4, 12, 7, 1,0}
end

function dither_area(x, y, width, height, spread_x, spread_y, color)
    dot_count = x 
    line_count = y
    completed_lines = 0

    while (line_count <= y + height) do
        while(dot_count <= x + width) do
            pset(dot_count, line_count, color)
            dot_count += spread_x
        end
        completed_lines +=1
        line_count += spread_y
        
        if((completed_lines%2) == 0) dot_count = x else dot_count = x + spread_x / 2
    end
end

function dither_line(x, y, width, spread, color)
    dot_count = x
    while(dot_count <= x + width) do
        pset(dot_count, y, color)
        dot_count += spread
    end
end

function draw_cloud(x, y, width, height)
    draw_cloud_curve(x, y, width, height, 5, 3)
    draw_cloud_curve(x + 6, y + 2 , width - 5, height -5, 3, 0)
end


function draw_cloud_curve(x, y, width, height, cover_x_offset, cover_y_offset)
    oval(x, y, x + width, y + height, 2)
    rectfill(x + cover_x_offset, y, x + width + cover_x_offset, y + height / 2 + cover_y_offset, 13)
end

function draw_cloud_layer(sprite, speed)
    cloud_offset = 0
    cloud_offset += game_animation_orchestrator.cloud_layer_1_timer * speed
    if sprite == 9 then
        for x=-15, 128 do 
            if x%15 == 0 then
                spr(9, x + cloud_offset, 0, 2, 1)
            end
        end

        increment_cloud_layer_1_timer()

        
        if (cloud_offset > 15) cloud_offset = 0 reset_cloud_layer_1_timer()
    end
end
--[[
10 - 0
9 -1
8 - 7
7 - 12 
6- 4
5- 2
4- 9
3 - 8
2-10]]