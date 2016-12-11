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
H=[0 1 0 1 0 1 0 1; 0 0 1 1 0 0 1 1; 0 0 0 0 1 1 1 1];
S=[1 2 4 3; 1 2 6 5; 1 3 7 5; 3 4 8 7; 2 4 8 6; 5 6 8 7];

figure(1), clf, hold on

for i=1:size(S,1)
    Si=S(i,:); 
    fill3(H(1,Si),H(2,Si),H(3,Si),'g','facealpha',0.7)
end
axis equal, axis tight, axis off, hold off, view(20,10)

%% Uppgift 4
%t?mmer alla variabler innan vi k?r
clear all
close all
clc

%rita planet
xmin=-2; xmax=2; ymin=-2; ymax=2;
a=1; b=-1; c=4; d=1;
X=[xmin xmax xmax xmin]; Y=[ymin ymin ymax ymax];
Z=(d-a*X-b*Y)/c;
fill3(X,Y,Z,'g','facealpha',0.7)
hold on
xlabel('x'), ylabel('y')
axis equal, grid on
figure(gcf)

%Rita ut normalen
pkt=[0 0 1/4];
normalen=[a b c];
quiver3(pkt(1),pkt(2),pkt(3),normalen(1),normalen(2),normalen(3),1/2)
myquiv=@(x,y,s,str)quiver3(x(1),x(2),x(3),y(1),y(2),y(3),s,str);
figure(gcf)

%En godtycklig punkt 
r=[1.5 -1.5 .6];
plot3(r(1),r(2),r(3),'ro')
figure(gcf)

%definerar pkt2r
pkt2r=r-pkt;
figure(gcf)

%Vektorrojektionen av denna p? normalvektorn:
proj=dot(pkt2r,normalen)/norm(normalen)^2*normalen;
myquiv(pkt,proj,1,'black')
figure(gcf)

%Rita punkten p? planet
npkt=r-proj;
plot3(npkt(1),npkt(2),npkt(3),'ro')
figure(gcf)

%projektion mellan den godtyckliga punkten och punkten p? planet
myquiv(npkt,proj,1,'black')
figure(gcf)

%Spegling
spegling=r-2*proj;
plot3(spegling(1),spegling(2),spegling(3),'ro')
myquiv(npkt,-proj,1,'m')
figure(gcf)

%% Uppgift 5
clear all
close all
clc

%rita planet
xmin=-4; xmax=4; ymin=-4; ymax=4;
a=1; b=-1; c=4; d=1;
X=[xmin xmax xmax xmin]; Y=[ymin ymin ymax ymax];
Z=(d-a*X-b*Y)/c;
fill3(X,Y,Z,'g','facealpha',0.7), hold on
xlabel('x'), ylabel('y') 

%Rita ut normalen
pkt=[0 0 1/4];
normalen=[a b c];
quiver3(pkt(1),pkt(2),pkt(3),normalen(1),normalen(2),normalen(3),1/2)
myquiv=@(x,y,s,str)quiver3(x(1),x(2),x(3),y(1),y(2),y(3),s,str);
figure(gcf)

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

% Rita ut kuben
figure(1)
for i=1:size(S,1)
    Si=S(i,:); fill3(H(1,Si),H(2,Si),H(3,Si),'r','facealpha',0.7)
end

% plota ut linjen som g?r mellan kuben till normalen
n = [a b c];
alph = []
for i=1:8
    alph = (d-dot(n,H(:,i)))/dot(n,n);
    xo = H(:,i).'+alph*n;
    plot3(xo(1),xo(2),xo(3),'ro');
    v=[xo;H(:,i).'];
    plot3(v(:,1),v(:,2),v(:,3),'r');
end

%plota ut linjejn fr?n normalen till den inverterade kuben
xra = [];
for i=1:8
    alph = (d-dot(n,H(:,i)))/dot(n,n);
    xr = H(:,i).' + 2*alph*n;
    xra = [xra (H(:,i).'+2*alph*n).'];
    plot3(xr(1),xr(2),xr(3),'ro');
    u=[xr;H(:,i).'];
    plot3(u(:,1),u(:,2),u(:,3),'r');
end

%plota ut den nya kuben
for i=1:size(S,1)
    Si=S(i,:); fill3(xra(1,Si),xra(2,Si),xra(3,Si),'b','facealpha',0.7)
end

hold off, axis equal, axis tight, grid on