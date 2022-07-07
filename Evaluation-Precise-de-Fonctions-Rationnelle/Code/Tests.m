%p = rand(1000, 1)
max = 10.^17
min = 10.^-17
p = zeros(1000, 1)
n =1000
for w = 2 : n
    %j = i/2
    if rem(w,2) == 0
        p(w) = p(w) + max
    else 
        p(w) = p(w) - min 
        
    end
end  
q = rand(1000,1)



x = 2346547 * 10^-12

%Horner(p,x) % Horner(p,x) = 1.0000e+17

%CompHorner(p,x) = 1.0000e+17 y = 4.0735e-11 => res + y =  1.0000e+17

%polyval(p,x) = 1.0000e+17


%Horner(q,x) = 0.5972 

%CompHorner(q,x) = 0.5972 y = -1.3402e-23

%polyval(q,x) = 0.5972

%syms de p(x)/q(X) = 1.6745e+17

%Horner(p,x)/Horner(q,x) = 1.6745e+17

%CompHorner(p,x)/CompHorner(q,x) = 1.6745e+17

%TwoDiv(Horner) = 1.6745e+17 y = -4.1520e-09

%TwoDiv(CompHorner) = 1.6745e+17 y = -4.1520e-094

a= 2563657.579765784564
b = 4565768798045375867957.67687978756453453

%TwoSum(a,b) = 4.5658e+21  y = 2.3465e-06
%FastTwoSum = 4.5658e+21
%a + b = 4.5658e+21

%TwoProd(a,b) = 1.1705e+28  y = -8.0523e+11
%TwoProductFMA(a,b) = 1.1705e+28  y = -8.0523e+11
%a*b = 1.1705e+28

c = 254556765.7689870970808
d = 780970979867867.457477476

z1 = 2.5637e+06 + 4.5658e+21 * i
z2 = 2.5456e+08 + 7.8097e+14 * i

%z1 + z2 = 2.5712e+08 + 4.5658e+21i
%TwoSumCplx(z1, z2) = 2.5712e+08 + 4.5658e+21i  e = -1.2107e-08 - 1.4826e+05i

%Z1 * z2 = -3.5657e+36 + 1.1622e+30i

%TwoProdCplx(z1, z2) = -3.5657e+36 + 1.1622e+30i
%TwoProCpxSingleSplitting(z1, z2) = -3.5657e+36 + 1.1622e+30i

P = [ 0.6961 + 0.4745i ,  0.6275 + 0.7943i  , 0.7132 + 0.1577i ,  0.9087 + 0.5806i]

cpx = 2.5466e+14 + 4.7699e+33i
    
%HornerCplx(P, cpx) = 5.1498640171137191155529960072185e+100 - 7.5543975378492542587102943479546e+100i    

%Polyval(P, cpx) = 5.1499e+100 -7.5544e+100i



