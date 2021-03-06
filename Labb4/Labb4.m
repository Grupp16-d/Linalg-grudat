%% Uppgift 1
%% 1a)
A=[1 3; 5 -2]; b=[6; 13];

l1=@(x1)(b(1)-A(1,1)*x1)/A(1,2);
l2=@(x1)(b(2)-A(2,1)*x1)/A(2,2);

x1=linspace(0,5,5);
plot(x1,l1(x1),'b','linewidth',2), hold on
plot(x1,l2(x1),'g','linewidth',2)
xlabel('x_1'), ylabel('x_2')
axis equal, axis([1 5 0 3])
grid

R=rref([A b]);

x=[R(1, 3); R(2, 3)];
plot(x(1),x(2),'ro','markersize',3,'linewidth',4), hold off


%% 1b)
A=[1 3; 2 6]; b1=[5; 12]; b2=[5; 10];

l1=@(x1)(b1(1)-A(1,1)*x1)/A(1,2);
l2=@(x1)(b1(2)-A(2,1)*x1)/A(2,2);
l3=@(x1)(b2(2)-A(2,1)*x1)/A(2,2);

x1=linspace(0,5,5);

plot(x1,l1(x1),'r','linewidth',12), hold on
plot(x1,l2(x1),'g','linewidth',2)
plot(x1,l3(x1),'b','linewidth',7)

xlabel('x_1'), ylabel('x_2')
axis equal, axis([0 3 0 3])

R1=rref([A b1]);
R2=rref([A b2]);

xt=@(t)[t;(R2(1, 3)-t)/R2(1, 2)];
P=[xt(0) xt(3)];
plot(P(1,:),P(2,:),'c','linewidth',2), hold off

%% Uppgift 2
%% 2a)
A=[-3 1 2;3 -2 1; -1 5 -1]; b=[2;1;1];

l1=@(x1,x2)(b(1)-A(1,1)*x1-A(1,2)*x2)/A(1,3);
l2=@(x1,x2)(b(2)-A(2,1)*x1-A(2,2)*x2)/A(2,3);
l3=@(x1,x2)(b(3)-A(3,1)*x1-A(3,2)*x2)/A(3,3);

x1=linspace(-1,1,30); x2=linspace(-1,1,30);
[X1,X2]=meshgrid(x1,x2);

surf(X1,X2,l1(X1,X2),'facecolor','b'), hold on
surf(X1,X2,l2(X1,X2),'facecolor','g')
surf(X1,X2,l3(X1,X2),'facecolor','c')

xlabel('x_1'), ylabel('x_2'), zlabel('x_3')
axis([-1 1 -1 1 -4 7]), axis vis3d, grid on, box on

R=rref([A b]);
x=[R(1, 4) R(2, 4) R(3, 4)];
plot3(x(1),x(2),x(3),'ro','markersize',10,'linewidth',4)

%% 2b)
A=[-3 1 2; 3 -2 1; 3 -4 7]; b1=[2; 1; 1]; b2=[2; 1; 7];

%b1
l1=@(x1,x2)(b1(1)-A(1,1)*x1-A(1,2)*x2)/A(1,3);
l2=@(x1,x2)(b1(2)-A(2,1)*x1-A(2,2)*x2)/A(2,3);
l3=@(x1,x2)(b1(3)-A(3,1)*x1-A(3,2)*x2)/A(3,3);
l4=@(x1,x2)(b2(3)-A(3,1)*x1-A(3,2)*x2)/A(3,3);


x1=linspace(-1,1,30); x2=linspace(-1,1,30);
[X1,X2]=meshgrid(x1,x2);

surf(X1,X2,l1(X1,X2),'facecolor','b'), hold on
surf(X1,X2,l2(X1,X2),'facecolor','g')
surf(X1,X2,l3(X1,X2),'facecolor','c')
surf(X1,X2,l4(X1,X2),'facecolor','black')

xlabel('x_1'), ylabel('x_2'), zlabel('x_3')
axis([-1 1 -1 1 -4 7]), axis vis3d, grid on, box on

R=rref([A(1:2,:) b1(1:2)])
xt=@(t)[R(1,4)-R(1,3)*t;R(2,3)-R(2,4)*t;t];
P=[xt(0) xt(2)];
plot3(P(1,:),P(2,:),P(3,:),'r','linewidth',5), hold off