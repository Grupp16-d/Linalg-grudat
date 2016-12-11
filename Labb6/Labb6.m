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