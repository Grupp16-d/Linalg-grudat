%% uppgift 1 
% L?t c vara s? liten som m?jligt
a=7;
b=8;

if a<b
    a=c;
else 
    b=c;
end

%% Uppgift 2
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

%% Uppgift 3
n=length(x);
L=0;
for i=1:n-1
    L=L+sqrt((x(i+1)-x(i))^2+(y(i+1)-y(i))^2);
end
L


%% Uppgift 4
%Mata in punkter med ginput s?a att du f?ar ett polygont?ag som du sedan sluter.
%Du skall inte best?amma antal punkter i f?orv?ag, men det skall vara fler punkter ?an i en triangel.
%F?argl?agg sedan omr?adet som innesluts med n?agon f?arg. G?a till Help och l?as i hj?alptexten f?or
%ginput s?a du kan ta reda p?a hur man kan l?asa in koordinater f?or flera punkter, utan att i f?orv?ag
%beh?ova best?amma hur m?anga

