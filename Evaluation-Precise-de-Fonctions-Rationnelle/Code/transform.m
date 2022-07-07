function [r1, r2, p, sigma] = transform(p)

    mu = max(p[i])
    if mu=0, r1 =r2 = sigma =0, return, endif 
    M = NextPowerTwo(length(p) + 2)
    sigma' = 2M NextPowerTwo(mu)
    t' = 0
    while 
        t = t'; s = s'
        [r, p] = ExtractVector(s, p)
        t' = fl(t+r)
        if t' = 0, [r1, r2, p, s] = Transform(p); return; end if ?? = fl(2M eps?)
until |t?| ? fl(22M eps?) or ? ? 21 eps?1eta [?1,?2] = FastTwoSum(t,?)
end