%This programme solves the transcendental equations using bisection method 
%The equation is f(x)=2-x-log(x)
fileID=fopen("bisection method to solve equations","w");
fprintf(fileID,"These are results of the iterations \n")
fprintf(fileID,"x values   f(X)values\n")
fprintf(fileID,"\n")
x1=-1;
x2=4;
f1=cal(x1);
f2=cal(x2);
i=1;
err=abs(x1-x2);
if(f1*f2>0)
    fprintf(fileID,"error in the initial values")
else
    while(err>0.000002)
        xnew=(x1+x2)/2;
        fnew=cal(xnew);
        sol=[xnew;fnew];
        fprintf(fileID,"iteration")
        fprintf(fileID,"  %1.0f \n",i)
        fprintf(fileID,"%8.8f    %8.8f \n",sol)
        fprintf(fileID,"\n")

        i=i+1;
        if(fnew*f1>0)
            x1=xnew;
            f1=fnew;
            err=abs(x2-xnew)
        else
            x2=xnew;
            f2=fnew;
            err=abs(x1-xnew)
        end
        fprintf(fileID,"error values ")
        fprintf(fileID,"%8.8f \n",err)
        fprintf(fileID,"\n")
    end
end
fclose(fileID)



function f=cal(x)
 f=2-2*x^2+log10(x)
end