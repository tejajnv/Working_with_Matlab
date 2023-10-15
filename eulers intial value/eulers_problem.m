%This is a programme for solving ordinary differential equtions using
%eulers method
%the equation is y'+2xy+x=e^(-x^2)
x=0;
y0=1;
xt=1;
h=0.1;
while(x<xt)
    dy=-2*x*y0-x+exp(-x^2);
    y1=y0+dy*h
    x=x+h
    y0=y1;
end
