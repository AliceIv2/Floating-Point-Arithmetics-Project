function [s,e]=TwoSumCplx(x,y)
%x = a + ib 
%y = c + id

    a =real(x);
    c =real(y);
    b =imag(x);
    d =imag(y);
    
    [s1,e1] = TwoSum(a,c); 
    [s2,e2] = TwoSum(b,d)
    s = s1 + i*s2; 
    e = e1 + i*e2
end     