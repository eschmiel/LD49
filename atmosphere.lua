draw_atmosphere = {}

draw_atmosphere[6] = function(stars)
    rectfill(0, 50, 128, 35, 12) --light blue
    rectfill(0, 34, 128, 19, 1) --deep blue
    rectfill(0, 45, 128, 42, 7)--white lines
    rectfill(0, 38, 128, 37, 7)
    line(0, 30, 128, 30, 7)
    line(0, 23, 128, 23, 0) -- black line
end

function generate_atmosphere(engagement)
    color_warning={10, 8, 9, 2, 4, 12, 7, 1,0}
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