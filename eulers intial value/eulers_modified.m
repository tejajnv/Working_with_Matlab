%this code is about improved eulers method 
%this is the solution for ordinary differenctial equation with initial
%value 
%the expression is y'+2xy+x=e^(x^2)
y=1;
x=0;
h=0.1;
ytol=0.5;
xt=1;
fileID=fopen('eulers_modified_solution','w');
fprintf(fileID,' these are the results obtained from eulers modified exp \n');



while(x<xt)
 y0=y;
 sol=[x;y];
 fprintf(fileID,'%8.4f %8.4f\n',sol);
 dy=derivative(x,y);
 y1=new(y,dy,h);
 x=x+h;
 y=y1;
  while(abs(ytol)>0.01)
      dy1=derivative(x,y);
      ynew=y_tol(dy,dy1,h,y0);
      ytol=y-ynew;
      y=ynew;
  end
  ytol=0.5;
  y=ynew;
end
fclose(fileID);

function a=derivative(x,y)
 a=exp(-x^2)-2*x*y-x;
end

function b=new(y,dy,h)
 b=y+h*dy;
end

function c=y_tol(dy0,dy1,h,y)
 c=y+0.5*h*(dy0+dy1);
end


