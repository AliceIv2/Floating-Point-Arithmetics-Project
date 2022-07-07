function [x, y] = TwoProductFMA(a, b) 
    x = a * b
    y = fma(a, b, -x)
end     