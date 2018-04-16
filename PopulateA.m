function A = PopulateA(h,k,deltaX,L,theta,n)
%PopulateA populate the A matrix
%   input: h, deltaX,L, m
%   h: heat tranfer coeffiecnt
%   k: thermal conductivity, constant or coefficent
%   deltaX: change in length between nodes
%   L: length of fin
%   theta: theta in radians
%   n: number of nodes
%  Output:
%   A: a populated matrix of A
A = zeros(n);
A(1,1) = 1;
if(length(k)==1)
    for i = 2:n-1
        row = Tm(h,k,deltaX,L,theta,i);
        A(i,i-1)= row(1);
        A(i,i)= row(2);
        A(i,i+1)= row(3);
    end
    LastR = LastM(h,k,deltaX,theta);
    A(n,n-1) =LastR(1);
    A(n,n) = LastR(2);
%hacky way to not have to rewrite the helper functions
%when have a varible k value

else
    for i = 2:n-1
        row = Tm(h,k(i-1),deltaX,L,theta,i);
        A(i,i-1)= row(1);
        row = Tm(h,k(i),deltaX,L,theta,i);
        A(i,i)= row(2);
        row = Tm(h,k(i+1),deltaX,L,theta,i);
        A(i,i+1)= row(3);
    end
    LastR = LastM(h,k(n-1),deltaX,theta);
    A(n,n-1) =LastR(1);
    LastR = LastM(h,k(n),deltaX,theta);
    A(n,n) = LastR(2);
end

