function [vector_b]=Populateb(T0,Tinf,m,h,deltax,k,L,theta)
% This function calculates the elements of vector b 
% Input Arguments
%   T0 is the temperature at the base of the node
%   Tinf is the temperature of teh air/medium around the node
%   m is the number of nodes
%   h is the heat transfer coefficient of the fin
%   deltax is the change in length of each node
%   k is the thermal conductivity of the fin material
%   L is the total length of the fin
%   theta (in radians)
% Output Arguments
%   vector_b
vector_b(1,1)=T0
    for n=2:(m-1)
        vector_b(n,1)=((-h*(deltax^2))/(k*L*sin(theta)))*Tinf  
    end
vector_b(m,1)=((-h*deltax)/(k*sin(theta)))*Tinf
end

