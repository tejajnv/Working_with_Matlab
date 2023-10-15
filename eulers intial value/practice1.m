%this is the solution for a differential equation using eulers equation
%the eqaution is y'+2xy+x=e^(-x^2)
x=0;
y=1;
ytol=0.5;
xt=1;
h=0.1;
fileID=fopen('eulers_modified_solution 1',"w");
fprintf(fileID,"#this is the solution using eulers modified equation \n");
while(x<xt)
sol=[x;y];
fprintf(fileID,"%8.4f %8.4f\n",sol)
dy=derivative(x,y);
y1=newval(h,dy,y);
x=x+h;
 while(abs(ytol)>0.01)
     dy1=derivative(x,y1);
     ytoln=ytolnew(dy,dy1,h,y);
     ytol=ytoln-y1;
     y1=ytoln;
 end
 ytol=0.5;
 y=ytoln;
end
fclose(fileID)







function a=derivative(x,y)
 a=exp(-x^2)-x-2*x*y;
end
function b=newval(h,dy,y)
 b=y+h*dy;
end
function c=ytolnew(dy,dy1,h,y)
 c=y+h*(dy+dy1)*0.5;
end

