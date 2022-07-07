function [horn , pk, pl] = EFTHornerCplx(p, x)

    g = poly2sym(sym(p));
    long = length(p);
    rn = p(1);
    rn_real =real(rn);
    rn_imag =imag(rn);
    vk = ones(0,long-1);
    vl = ones (0 , long -1);
    
    for j = 2: 1 : long
        
        [pr, kr] = TwoProduct(rn_real, x);
        [sr, lr] = TwoSum(pr,real(p(j)));
        rn_real = sr ;
        [pi, ki] = TwoProduct(rn_imag, x);
        [si, li]= TwoSum(pi,imag(p(j)));
        rn_imag = si ;
        
        vk(j-1)= (kr +i*ki);
        vl(j-1)=(lr+i*li);
        
        if j == long
            s0 = sr + i*si;
        end    
    end    
    
    horn = HornerCplx(p,x);
    pk = vk;
    pl = vl;
    
    

end 
