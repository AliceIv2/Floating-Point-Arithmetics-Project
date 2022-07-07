
function [p,e, f,g] = TwoProductCplxSingleSplitting(x,y)
%x = a + ib
%y = c + id
    a =real(x);
    c =real(y);
    b =imag(x);
    d =imag(y);
    
    [a1,a2] = Split(a),
    [b1,b2] = Split(b), 
    [c1,c2] = Split(c), 
    [d1,d2] = Split(d) 
    z1 = a * c 
    z2 = b * d 
    z3 = a * d 
    z4 = b * c
    h1 = a2 * c2 - (((z1 - a1 * c1) - a2 * c1) - a1 * c2)
    h2 = b2 * d2 - (((z2 - b1 * d1) - b2 * d1) - b1 * d2)
    h3 = a2 * d2 - (((z3 - a1 * d1) - a2 * d1) - a1 * d2)
    h4 = b2 * c2 - (((z4 - b1 * c1) - b2 * c1) - b1 * c2)
    [z5,h5] = TwoSum(z1, -z2)
    [z6,h6] = TwoSum(z3,z4)
    p = z5 + i*z6 
    e = h1 + i*h3
    f = -h2 + i*h4
    g = h5 + i*h6
end 