%% Uppgift 1a
X=[1 3 3];
Y=[1 3 1];
fill(X,Y, 'g', 'edgecolor', 'k', 'linewidth' ,1), hold on
axis equal, axis([-10 10 -1 10]), pause(1)
v=pi/6; 
A=[cos(v) -sin(v); sin(v) cos(v)];
P=[X;Y];

for i=1:3
    P=A*P;
    fill(P(1,:),P(2,:),'g','edgecolor','r','linewidth',1), pause(1)
end
hold off

%% 1b
X=[1 3 3];
Y=[1 3 1];
fill(X,Y, 'g', 'edgecolor', 'k', 'linewidth' ,1), hold on
axis equal, axis([-10 10 -1 10]), pause(1)
t=[-2;0.8];
P=[X;Y];

for i=1:3
    P=P+t*ones(size(X)); 
    fill(P(1,:),P(2,:),'g','edgecolor','r','linewidth',1), pause(1)
end
hold off


%% Uppgift 2
%Skapar en kub
H=[0 1 0 1 0 1 0 1; 0 0 1 1 0 0 1 1; 0 0 0 0 1 1 1 1];
S=[1 2 4 3; 1 2 6 5; 1 3 7 5; 3 4 8 7; 2 4 8 6; 5 6 8 7];

figure(1), clf, axis equal, axis ([-1.5 5 -1.5 5 -1 5]), grid on, box on, hold on, view(45,30)

for i=1:size(S,1)
    Si=S(i,:); 
    fill3(H(1,Si),H(2,Si),H(3,Si),'g','facealpha',0.7)
end

%Roterar kuben
v=pi/1.5;
A=[cos(v) -sin(v) 0; sin(v) cos(v) 0; 0 0 1];

H=A*H;

pause(1)
for i=1:size(S,1)
        Si=S(i,:); 
    fill3(H(1,Si),H(2,Si),H(3,Si),'g','facealpha',0.7)
end

pause(1)

%flyttar kuben
T=[3; 3; 2;];
F=[];

for i=1:8
    f=H(:,i)+T;
    F=[F f];
end

for i=1:size(S,1)
        Si=S(i,:); 
    fill3(F(1,Si),F(2,Si),F(3,Si),'r','facealpha',0.7)
end

pause(1)

%Roterar igen
v=pi/10;
A=[1 0 0; 0 cos(v) -sin(v); 0 sin(v) cos(v)];

F=A*F;

for i=1:size(S,1)
        Si=S(i,:); 
    fill3(F(1,Si),F(2,Si),F(3,Si),'r','facealpha',0.7)
end


hold off
%% Uppgift 4
clear all
close all
clc

%Rita ut planet
xmin=-2; xmax=2; ymin=-2; ymax=2;
a=1; b=-1; c=4; d=1;
X=[xmin xmax xmax xmin]; Y=[ymin ymin ymax ymax];
Z=(d-a*X-b*Y)/c;
fill3(X,Y,Z,'g','facealpha',0.7),hold on
xlabel('x'), ylabel('y')
axis equal, grid on 

%Rita ut normalen
U = quiver3(Z(1),Z(1),Z(1),a,b,c,0.2)
text(0.5,0,1,'n')

%skapar en godtyckling punkt x
n = [a b c];
x=[1 1 1] ;
plot3(x(1),x(2),x(3),'ro');
text(x(1)+0.1,x(2),x(3),'x');

%skapar en punkt p? planet med en vektor fr?n den godtyckliga punkten
alph = (d-dot(n,x))/dot(n,n);
xo = x+alph*n;
plot3(xo(1),xo(2),xo(3),'ro');
v=[xo;x];
plot3(v(:,1),v(:,2),v(:,3),'r');
text(xo(1)+0.1,xo(2),xo(3),'x_o');

%speglar vektorn mellan pukten p? planet och den godtyckliga punkten
xr = x + 2*alph*n;
plot3(xr(1),xr(2),xr(3),'ro');
u=[xr;x];
plot3(u(:,1),u(:,2),u(:,3),'r');
text(xr(1)+0.1,xr(2),xr(3),'x_r');
hold off

%% Uppgift 5
clear all
close all
clc

% Rita ut planet
xmin=-4; xmax=4; ymin=-4; ymax=4;
a=1; b=-1; c=4; d=1;
X=[xmin xmax xmax xmin]; Y=[ymin ymin ymax ymax];
Z=(d-a*X-b*Y)/c;
fill3(X,Y,Z,'g','facealpha',0.7), hold on
xlabel('x'), ylabel('y') 

%Rita ut normalen
U = quiver3(Z(1),Z(1),Z(1),a,b,c,0.2)
text(0.5,0,1,'n')

% Kubens kordinater och form
H=[0 1 0 1 0 1 0 1;
  0 0 1 1 0 0 1 1; 
  1 1 1 1 2 2 2 2];
S=[1 2 4 3; 
  1 2 6 5; 
  1 3 7 5;
  3 4 8 7;
  2 4 8 6;
  5 6 8 7];

% Rita ut kuben med v?rderna fr?n s och h
figure(1)
for i=1:size(S,1)
    Si=S(i,:); fill3(H(1,Si),H(2,Si),H(3,Si),'r','facealpha',0.7)
end

% plota ut linjen som g?r mellan kuben till normalen skapar en punkt p?
% planet f?r att andv?nda till inverteringen
n = [a b c];
alph = []
for i=1:8
    alph = (d-dot(n,H(:,i)))/dot(n,n);
    xo = H(:,i).'+alph*n;
    plot3(xo(1),xo(2),xo(3),'ro');
    v=[xo;H(:,i).'];
    plot3(v(:,1),v(:,2),v(:,3),'r');
end

%Plota ut de inverterade linjerna. och skapar en punkt i slutet av dem
xra = [];
for i=1:8
    alph = (d-dot(n,H(:,i)))/dot(n,n);
    xr = H(:,i).' + 2*alph*n;
    xra = [xra (H(:,i).'+2*alph*n).'];
    plot3(xr(1),xr(2),xr(3),'ro');
    u=[xr;H(:,i).'];
    plot3(u(:,1),u(:,2),u(:,3),'r');
end

%plota ut den nya kuben. Andv?nder xra punkterna for att plota ut nya kuben
for i=1:size(S,1)
    Si=S(i,:); fill3(xra(1,Si),xra(2,Si),xra(3,Si),'b','facealpha',0.7)
end

hold off, axis equal, axis tight, grid on