%% Uppgift 1
r=4;
A=pi*r^2

%% Uppgift 2
x=0:0.1:pi*4;
f=sin(x)+0.3*sin(5*x);
plot(x,f)

%% Uppgift 3

s=0;
for i=1:5
    s=s+i^2;
end
disp(s)

%% Uppgift 4
x1=fzero(@min_fun,-1)
x2=fzero(@min_fun,1)

%% Uppgift 5
% linspace(x1,x2,n) d?r n ?r antalet punkter
% Standard ?r 100 punkter