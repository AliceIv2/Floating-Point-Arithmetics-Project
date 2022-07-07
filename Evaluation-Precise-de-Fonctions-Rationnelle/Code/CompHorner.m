function res = CompHorner(a,z_0)
    
    n = length(a);
    result = a(1);
    for j = 2 : n
        [result,y1] = TwoProduct(result,z_0);
        [result,y2] = TwoSum(result, a(j))
    end
    res = result;
    y = y1 + y2
    
        

end