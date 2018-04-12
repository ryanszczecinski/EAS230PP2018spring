function row = Tm(h,k,deltaX,L,theta,m)
%Th this function calculates the coeffients in the A matrix
%   input: h, deltaX,L, m
%   h: heat tranfer coeffiecnt
%   k: thermal conductivity
%   deltaX: change in length between nodes
%   L: length of fin
%   theta: theta in radians
%   m: the current iteration it is in
%   output: a 1X3 matrix with m-1, m, m+1 coeffiecnts for given row
row(1) = (1-(m-.5)*(deltaX/L));
row(2) = -1*(2-2*m*(deltaX/L)+ (h*deltaX^2)/(k*L*sin(theta)));
row(3) = (1-(m+.5)*(deltaX/L));


end

