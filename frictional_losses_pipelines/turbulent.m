%this programme calculates the friction factor using the colebrook equation
%if the reynolds number lies in turbulent region 

function f=turbulent(re,e_by_d)
 f= 1/f^0.5 + 2*log10((eb/3.7)+(5.51/(re*(f^0.5))));
end