function [x, y] = TwoDiv(a, b) 
    x = a * b.^-1 
    [a1, a2] = Split(a)
    [b1, b2] = Split(b.^-1)
    y=a2 * b2 - (((x - a1 * b1) - a2 * b1) - a1 * b2)
end 