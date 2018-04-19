nodes = 6;
T0 = 200;
Told(1:nodes,1) = T0;
Tnew = zeros(nodes,1);
count =0;
Alloy_name = input('enter a allow name: ','s');
while (norm(Told - Tnew)>1e-8&&count<100)
    
    count =count + 1;
end

