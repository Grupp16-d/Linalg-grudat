%% Upgift 1
clear all
close all
clc

%v?rderna fr?n tabellen
td=[5 6 7 8 9 10]';
yd=[19.5888 23.4043 25.5754 29.1231 31.9575 35.8116]'; 

A=[ones(size(td)) td];
x=A\yd; a=x(1); b=x(2);
n=length(td);
e=norm(A*x-yd)/sqrt(n);

%Ekvationen Som andv?nds f?r att plotta ut den r?talinjen
y=a+b*td;
%plota ut den r?ta linjen
plot(td,y, 'linewidth', 3), hold on
%plota ut alla punkterna som den r?talinjen ska ber?knas efter
for i=1:size(td)
     plot(td(i),yd(i), 'ro', 'markersize', 4, 'linewidth', 20)
end
%% Uppgift 2
clear all
close all
clc

%v?rden fr?n tabellen
td=[1 2 3 4 5 6 7 8 9 10 11 12]';
yd=[-0.9 -0.9 2.0 6.0 11.6 15.5 16.6 16.2 12.8 9.1 4.4 1.0]';

%omega = a
a=pi/6;

A=[ones(size(td)) sin(a*td) cos(a*td)];
x=A\yd;
n=length(td);
e=norm(A*x-yd)/sqrt(n);

%matematiken bakom ekvaktionen (st?r i labben)
y=x(1)+x(2)*sin(a*td)+x(3)*cos(a*td);
%plota ut ekvationen
plot(td,y, 'linewidth', 3), hold on
%plota ut alla v?rderna i yd 
for i=1:size(td)
     plot(td(i),yd(i), 'ro', 'markersize', 4, 'linewidth', 20)
end
hold off