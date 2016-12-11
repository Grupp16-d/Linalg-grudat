%% Upgift 1
td=[5 6 7 8 9 10]';
yd=[19.5888 23.4043 25.5754 29.1231 31.9575 35.8116]'; 
A=[ones(size(td)) td];
x=A\yd; a=x(1); b=x(2);
n=length(td);
e=norm(A*x-yd)/sqrt(n);

y=a+b*td;
plot(td,y, 'linewidth', 3), hold on
for i=1:size(td)
     plot(td(i),yd(i), 'ro', 'markersize', 4, 'linewidth', 20)
end
%% Uppgift 2

td=[1 2 3 4 5 6 7 8 9 10 11 12]';
yd=[-0.9 -0.9 2.0 6.0 11.6 15.5 16.6 16.2 12.8 9.1 4.4 1.0]';

a=pi/6;

A=[ones(size(td)) sin(a*td)cos(a*td)];
x=A\yd;
n=length(td);
e=norm(A*x-yd)/sqrt(n);

y=