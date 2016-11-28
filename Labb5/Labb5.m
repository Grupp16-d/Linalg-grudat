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