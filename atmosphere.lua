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
    rectfill(0, 50, 128, 0, 10)
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
    while(dot_count <= x + width) do
        pset(x, y, color)
        x += spread
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