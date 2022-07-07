function res = AccSum(p)
% For given vector p, result res is the exact sum of p_i faithfully rounded
% provided no overflow occurs. Acceleration for zero sums is included. %
    n = length(p);
    mu = max(abs(p));
    if ( n==0 ) | ( mu==0 )
    res = 0;
    return 
    end 
    Ms = NextPowerTwo(n+2); 
    sigma = Ms*NextPowerTwo(mu); 
    phi = 2^(-53)*Ms;
    factor = 2^(-53)*Ms*Ms;
% initialization
% abs(p_i) <= mu
% no or only zero summands
%n+2<=2^M=Ms
% first extraction unit
% factor to decrease sigma % factor for sigma check
% [tau,p] = ExtractVector(sigma,p); % sum of leading terms
% remaining terms
% new approximation
%
    t = 0;
    while 1 
        q = ( sigma + p ) - sigma; 
        tau = sum(q);
        p = p - q;
        tau1 = t + tau; 


        if ( abs(tau1)>=factor*sigma ) | ( sigma<=realmin )
            tau2 = tau - ( tau1 - t );
            res = tau1 + ( tau2 + sum(p) ); 
            return
        end 
        
        t = tau1;
        if t==0
            res = AccSum(p);
            return 
        end
        sigma = phi*sigma;
    end 
end
% [tau1,tau2] = FastTwoSum(t,tau) % faithfully rounded final result
% sum t+tau exact
% accelerate case sum(p)=0 % sum of remainder part
% new extraction unit