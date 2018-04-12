function lastm = LastM(h,k, deltaX , theta)
%   LastM calculates the last row of the A matrix
%   INPUT:
%     h: heat transfer coefficent
%     deltaX: change in x
%     theta: angle in radians
%     k: thermal conductivity
tLast = -1*(1+(h*deltaX)/(k*sin(theta)));
lastm(1) = 1;
lastm(2) = tLast;
end

