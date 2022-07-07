function [x, y] = Split(a) 
    s = 27
    factor = 2.^s + 1
    c = factor * a
    x = c - (c - a)
    y = a - x
end    