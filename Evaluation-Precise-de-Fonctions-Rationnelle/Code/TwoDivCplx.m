function[calc , erreur_num, erreur_deno, errR, errI, error] = TwoDivCplx(x, y)

    a =real(x); 
    c =real(y);
    b =imag(x); 
    d =imag(y);
    
    [c1, e1] = TwoProduct(c, c);
    [d2, e2] = TwoProduct(d, (-d));
    [c3, e3] = TwoProduct(c, (-d));
    
    [d4, e4] = TwoProduct(d, c);
    [c5, e5] = TwoSum(c1, (-d2));
    
    [d6, e6] = TwoSum(c3, d4);
    
    %c5 = vpa(c5,54)
    deno = c5 + i*d6;
    
    erreur_deno1 = e1 + i*e3;
    erreur_deno2 = -e2 + i*e4;
    
    erreur_deno3 = e5 + i*e6;
    erreur_deno = erreur_deno1 + erreur_deno2 + erreur_deno3;
    
    [a1, h1] = TwoProduct(a, c);
    [b2, h2] = TwoProduct ( b , (-d ) ); 
    [a3, h3] = TwoProduct ( a , (-d ) ) 
    [b4, h4] = TwoProduct(b, c);
    
    [a5, h5] = TwoSum(a1, (-b2));
    [b6, h6] = TwoSum ( a3 , b4 ) ;
    
    %a5 = vpa(a5,54) ;
    num=a5+i*h6;
    
    erreur_num1 = h1 + i*h3;
    erreur_num2 = -h2 + i*h4;
    erreur_num3 = h5 + i*h6;
    erreur_num = erreur_num1 + erreur_num2 + erreur_num3;
    
    [div1 ,errR] = TwoDiv(a5,c5);
    [div2,errI] = TwoDiv(b6,c5);
    calc = (div1) + i*div2; 
    error = errR + i* errI
    
    
    
end