%% uppgift 1 
% L?t c vara s? liten som m?jligt
a=7;
b=8;

if a<b
    a=c;
else 
    b=c;
end

%% Uppgift 2 a
% Ber?kna pi/4 med 5 decimaler
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

%% Uppgift 2 b
format long
x=0
i=0
for i=0:1000
    x=x+(-1)^i/(2*i+1);
    i=i+1;
end
x

%% Uppgift 3
n=length(x);
L=0;
for i=1:n-1
    L=L+sqrt((x(i+1)-x(i))^2+(y(i+1)-y(i))^2);
end
L


%% Uppgift 4
%Mata in punkter med ginput s? att du f?r ett polynom som du sedan sluter.
%Du skall inte best?mma antal punkter i f?rv?g, men det skall vara fler punkter ?n i en triangel.
%F?rgl?gg sedan omr?det som innesluts med n?gon f?rg. G? till Help och l?s i hj?lptexten f?r
%ginput s? du kan ta reda p? hur man kan l?sa in koordinater f?r flera punkter, utan att i f?rv?g
%beh?va best?mma hur m?nga

