function x = HornerCplx(p,z)

    poly = poly2sym(sym(p)) 
    long = length(p);
    rn = p(1);
    rn_real =real(rn); 
    rn_imag =imag(rn); 
    for j =2:1:long
    
        rn_real = (rn_real * z) + real(p(j)); 
        rn_imag = (rn_imag * z) + imag(p(j));

    end    
    
x = vpa(rn_real ,54) + (i * rn_imag);
end