function print_text_block(text_block, x, y)
    for current=1, #text_block do

        line_adjustment = (current - 1) * 6
        
        print(text_block[current], x, y + line_adjustment, 7)
    end
end