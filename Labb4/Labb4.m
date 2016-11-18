%% Uppgift 1
%% 1a)
A=[1 3; 5 -2]; b=[6 13];

l1=@(x1)(b(1)-A(1,1)*x1)/A(1,2);
l2=@(x1)(b(2)-A(2,1)*x1)/A(2,2);

x1=linspace(0,5,5);
plot(x1,l1(x1),'b','linewidth',2), hold on
plot(x1,l2(x1),'g','linewidth',2)
xlabel('x_1'), ylabel('x_2')
axis equal, axis([1 5 0 3])
grid

%% 1b)
%EJ f?rdig
A=[1 3; 2 6]; b1=[5 12]; b2=[5 10];

l1=@(x1)(b1(1)-A(1,1)*x1)/A(1,2);
l2=@(x1)(b1(2)-A(2,1)*x1)/A(2,2);
l4=@(x1)(b2(2)-A(2,1)*x1)/A(2,2);

x1=linspace(0,5,5);
plot(x1,l1(x1),'r','linewidth',2), hold on
plot(x1,l2(x1),'g','linewidth',2)
plot(x1,l4(x1),'b','linewidth',2)
xlabel('x_1'), ylabel('x_2')
axis equal, axis([-5 10 -5 10])
grid

%% Uppgift 2
%% 2a)
%Vet ej om detta ?r r?tt
A=[-3 1 2; 3 -2 1; -1 5 1]; B=[2; 1; 1];

l1=@(x1,x2)(b(1)-A(1,1)*x1-A(1,2)*x2)/A(1,3);
l2=@(x1,x2)(b(2)-A(2,1)*x1-A(2,2)*x2)/A(2,3);
l3=@(x1,x2)(b(3)-A(3,1)*x1-A(3,2)*x2)/A(3,3);

x1=linspace(-1,1,30); x2=linspace(-1,1,30);
[X1,X2]=meshgrid(x1,x2);
surf(X1,X2,l1(X1,X2),'facecolor','b'), hold on
xlabel('x_1'), ylabel('x_2'), zlabel('x_3')
axis([-1 1 -1 1 -4 7]), axis vis3d, grid on, box on
surf(X1,X2,l2(X1,X2),'facecolor','g')
R=rref([A(1:2,:) b(1:2)])
xt=@(t)[-0.5+0.5*t;-1+t;t]
P=[xt(0) xt(2)];
plot3(P(1,:),P(2,:),P(3,:),'r','linewidth',3), hold off
figure(2)
surf(X1,X2,l1(X1,X2),'facecolor','b'), hold on
surf(X1,X2,l2(X1,X2),'facecolor','g')
surf(X1,X2,l3(X1,X2),'facecolor','c')
R=rref([A b])
x=[0;0;1];
plot3(x(1),x(2),x(3),'ro','markersize',5,'linewidth',4)
xlabel('x_1'), ylabel('x_2'), zlabel('x_3')
axis([-1 1 -1 1 -4 7]), axis vis3d, grid on, box on, hold off

%% 2b)
A=[-3 1 2; 3 -2 1; 3 -4 7]; B1=[2; 1; 1]; B2=[2; 1; 7];