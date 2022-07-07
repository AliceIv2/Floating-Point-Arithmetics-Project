function x = HornerCplxFMA(p,z)

    poly = poly2sym(sym(p)) 
    long = length(p);
    rn = p(1);
    rn_real =real(rn); 
    rn_imag =imag(rn); 
    for j =2:1:long
    %sans FMA, pour le test en un point z complexe
        rn_real = fma (rn_real ,z,real(p(j ))); 
        rn_imag = fma (rn_imag,z,imag(p(j)));
    end    
    
x = vpa(rn_real ,54) + (i * rn_imag);
end