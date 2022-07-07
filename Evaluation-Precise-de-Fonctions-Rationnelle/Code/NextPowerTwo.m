function L = NextPowerTwo(p)
    
    eps = 2.^-53
    q = eps.^-1*p
    L = abs((q + p)-q)
    if L == 0
        L = abs(p)
    end     
end 