function [p,e, f,g]=TwoProductCplx(x,y)

    a =real(x);
    c =real(y);
    b =imag(x);
    d =imag(y);

    [z1,h1] = TwoProduct(a,c) 
    [z2,h2] = TwoProduct(b,d) 
    [z3,h3] = TwoProduct(a,d); 
    [z4,h4] = TwoProduct(b,c) 
    [z5,h5] = TwoSum(z1,-z2); 
    [z6,h6] = TwoSum(z3,z4)
    p = z5 + i*z6;
    e = h1 + i*h3; 
    f =-h2 + i*h4; 
    g = h5 + i*h6
end     