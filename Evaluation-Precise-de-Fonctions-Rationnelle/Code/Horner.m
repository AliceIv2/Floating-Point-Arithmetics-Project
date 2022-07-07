function x = Horner(a,z_0)

n = length(a);
result = a(1);
for j = 2:n
    result = result*z_0 + a(j);
end
x = result;
end