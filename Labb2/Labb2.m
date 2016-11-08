%% uppgift 1 
a=7;
b=8;

if a<b
    a=c;
else 
    b=c;
end

%% Uppgift 2
format long
d=1;
x=0;
tol=1e-6;
i=0;
while d>tol
    xny=x+(-1)^i/(2*i+1);
    i=i+1;
    d=abs(xny-x);
    x=xny
end
x

%% Uppgift 3
f=polylen

%% Uppgift 4

