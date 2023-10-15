%This part of programme solves the transcendental single variable equation
%with using fzero 

fileID=fopen("bisection method using fzero","w")
fprintf(fileID,"these are the results using the fzero \n")
solx=fzero(@(x) funbisec(x),[1;4]);
fprintf(fileID,"this the required solution based on the initial guess \n")
fprintf(fileID,"  %8.8f",solx)
fclose(fileID)