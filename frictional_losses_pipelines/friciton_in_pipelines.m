%this is a code to calculate frictional head loss using darcy weisbach and
%colebrooke equation for the given conditions

fileID=fopen("analysis of fricitonal losses in pipelines","w")
fprintf(fileID,"#Given the mass flow rate\nlength of pipe\nroughness factor\ndensity of fluid\ndiameter of pipe\nviscosity of fluid\naccelertaion due to gravity \n#this programme calculates the frcitional losses with frciton factor from the colebrook equation which is \n# 1/f^0.5 + 2*log10((eb/3.7)+(5.51/(re*(f^0.5)))) for turbulent flow \n# 64/re for laminar flow\n")
m=1.5;                    %mass flow rate 
l=375;                    %length of the pipe
e_by_d=0.05;               %this is the roughness factor 
p=1830;                    %density of the fluid used
d=0.137;                   %diameter of the pipe used 
mu=26.7e-3;                %viscosity of the fluid so used
g=9.8;                     %this is the acceleration due to gravity
A=pi*(d^2)/4;              %area of the flow 
v=m/(p*A);                 %velocity so calculated
re=p*v*d/mu;               %reynolds number so calculated
fprintf(fileID,"The reynolds number is %8.4f \n",re)
if 0<re<2000
    fl=laminar(re);
    fprintf(fileID,"It is in laminar region since %8.4f is below 2000 \n",re)
elseif re>2200
    fl=fsolve(@(f) turbulent(re,e_by_d),0.150);
    fprintf(fileID,"It is in laminar region since %8.4f it is above 2200 \n",re)
end

fprintf(fileID,"the friction factor obtained is %8.4f \n",fl)
h_loss=f*(l/d)*((v^2)/(2*g));
fprintf(fileID,"The head losses are calculated %8.4f ",h_loss)





