function [k]=ThCond(Temp,Alloy)
%This function determines the thermal conductivity (k) of a fin material
%(Alloy), given the temperature (Temp) in kelvin.
% Input Arguments
%   Temp is the temperature of the fin matieral (in kelvin)
%   Alloy is the alloy type of the fin material for which the thermal
%   conductivyty differs.
% Output Arguments
%   k is the thermal conductivity of the fin material as a function of
%   termperature.
A=size(Temp);
k=zeros(size(Temp));
for i=1:(A(1))
    for j=1:(A(2))
        T=Temp(i,j);
       switch Alloy
           case 'Al1'
               if T<298||T>840
                   error('Invalid Temperature.')
               else
                   ks=149.7+0.0809*T-(1*10^-4)*T^2;
               end
           case 'Al2'
               if T<298||T>773
                   error('Invalid Temperature')
               else 
                   ks=76.64+0.2633*T-(2*10^-4)*T^2;
               end
           case 'Al3'
               if T<298||T>890
                   error('Invalid Temperature')
               else
                   ks=124.7+0.56*T+(1*10^-5)*T^2;
               end
           case 'Cu1'
               if T<100||T>1200
                   error('Invalid Temperature')
               else
                   ks=453.9-0.1054*T;
               end
           case 'Cu2'
               if T<460||T>1188
                   error('Invalid Temperature')
               else
                   ks=140.62+(112.14*10^-4)*T;
               end
           case 'Cu3'
               if T>1443
                   error('Invalid Temperature')
               else
                   ks=16.041+(438.9*10^-4)*T;
               end
           case'St1'
               if T<400||T>1000
                   error('Invalid Temperature')
               else
                   ks=76.63-0.0459*T;
               end
           case 'St2'
               if T<298||T>1573
                  error('Invalid Temperature')
               else
                   ks=6.31+(27.2*10^-3)*T-(7.0*10^-6)*T^2;
               end
           case 'St3'
               if T>1727
                   error('Invalid Temperature')
               else
                   ks=20+(61.5*10^-4)*T;
               end
           otherwise
               error('Invalid Alloy Name')
       end
       k(i,j)=ks;
    end
end              
end