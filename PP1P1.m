L=.05;
% L is the total length of the fin (in meters)
m=101;
% m is the number of nodes in the fin
h=15;
% h is the heat transfer coefficient of the fin
k=180;
% k is the thermal conductivity of the fin material
deltax=L/(m-1);
% deltax is the 
b=.01;
% b is the base thickness of the fin (in meters)
w=1;
% w is the width of the fin (in meters)
theta=atan((b*L)/2);
% theta is the angle between 
T0=200;
% T0 is the temperature at the base of the fin (in Celsius)
Tinf=25;
% Tinf is the temperature of the air/medium around the fin (in Celsius)
A=PopulateA(h,k,deltax,L,theta,m);
vector_b=Populateb(T0,Tinf,m,h,deltax,k,L,theta);
T=A\vector_b;
