%% Uppgift 1

td=[5 6 7 8 9 10];
yd=[19.5888 23.4043 25.5754 29.1231 31.9575 35.8116;]; 
A=[ones(size(td)) td];
x=A\yd; a=x(1); b=x(2);
n=length(td);
e=norm(A*x-yd)/sqrt(n);

x1=linspace(0,5,5);
fx=@(x1)(a+b*x1);
plot((x1),fx(x1),'ro','markersize',3,'linewidth',4), hold off
plotmatrix(td, )


%% 1b)

%% Uppgift 2
