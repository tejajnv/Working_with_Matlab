

e_by_d=0.05

re1=500:100:1500;
re2=2000:100:25000;
for i=1:length(re1)
    f1(i)=laminar(re1(i));
end

figure;
plot(re1,f1,"*","MarkerSize",8,"Color","k")
xlabel("re")
ylabel("friciton factor")

for i=1:length(re2)
   f2(i)=fsolve(@(f) turbulent(re2(i),e_by_d),f1(i));
end

figure;
plot(re2,f2,"*","MarkerSize",10,"k")
xlabel('re2')
ylabel('friction factor')
