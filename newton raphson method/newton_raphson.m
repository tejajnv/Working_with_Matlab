%this is a programme written to solve the equations using newton raphson
%method and the formula used is x1=x0+(f(x0)/f(x0));

fileID=fopen("newton raphson method","w")
fprintf(fileID,"#solution using newton raphson method \n")

xold=8;       %this is the initial guess for the problem
fprintf(fileID,"the initial guess is %8.4f \n",xold)
i=1;
err=0.5;
while(abs(err)>0.0001)
    fprintf(fileID,"iteration%1.0f\n",i)
    y=func(xold);
    fprintf(fileID,"value of function at x%1.0f is %8.5f ",i-1,y)
    x=xold-(y/d(xold));
    i=i+1;
    fprintf(fileID,"and value of x%1.0f is %8.4f\n",i-1,x)
    err=x-xold;
    xold=x;
end



