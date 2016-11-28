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


%% 1b) B1
A=[1 3; 2 6]; b1=[5 12];

l1=@(x1)(b1(1)-A(1,1)*x1)/A(1,2);
l2=@(x1)(b1(2)-A(2,1)*x1)/A(2,2);

x1=linspace(0,5,5);
plot(x1,l1(x1),'r','linewidth',2), hold on
plot(x1,l2(x1),'g','linewidth',2)
xlabel('x_1'), ylabel('x_2')
axis equal, axis([-10 10 -10 10])
grid

%% A och B2
A=[1 3; 2 6]; b=[5 10]; 

l1=@(x1)(b(1)-A(1,1)*x1)/A(1,2);
l2=@(x1)(b(2)-A(2,1)*x1)/A(2,2);

x1=linspace(0,5,5);
plot(x1,l1(x1),'b','linewidth',2), hold on
plot(x1,l2(x1),'g','linewidth',2)
xlabel('x_1'), ylabel('x_2')
axis equal, axis([-10 10 -10 10])
grid

%% Uppgift 2
%% 2a)
A=[-3 1 2;3 -2 1; -1 5 -1]; b=[2;1;1];

l1=@(x1,x2)(b(1)-A(1,1)*x1-A(1,2)*x2)/A(1,3);
l2=@(x1,x2)(b(2)-A(2,1)*x1-A(2,2)*x2)/A(2,3);
l3=@(x1,x2)(b(3)-A(3,1)*x1-A(3,2)*x2)/A(3,3);
x1=linspace(-1,1,30); x2=linspace(-1,1,30);
[X1,X2]=meshgrid(x1,x2);
surf(X1,X2,l1(X1,X2),'facecolor','b'), hold on
xlabel('x_1'), ylabel('x_2'), zlabel('x_3')
axis([-1 1 -1 1 -4 7]), axis vis3d, grid on, box on
surf(X1,X2,l2(X1,X2),'facecolor','g')

%% 2b) A och b1
A=[-3 1 2; 3 -2 1; 3 -4 7]; b=[2; 1; 1];

l1=@(x1,x2)(b(1)-A(1,1)*x1-A(1,2)*x2)/A(1,3);
l2=@(x1,x2)(b(2)-A(2,1)*x1-A(2,2)*x2)/A(2,3);
l3=@(x1,x2)(b(3)-A(3,1)*x1-A(3,2)*x2)/A(3,3);

x1=linspace(-1,1,30); x2=linspace(-1,1,30);
[X1,X2]=meshgrid(x1,x2);
surf(X1,X2,l1(X1,X2),'facecolor','r'), hold on
surf(X1,X2,l2(X1,X2),'facecolor','g')
xlabel('x_1'), ylabel('x_2'), zlabel('x_3')
axis([-1 1 -1 1 -4 7]), axis vis3d, grid on, box on


%% A och b2
A=[-3 1 2; 3 -2 1; 3 -4 7]; b=[2; 1; 7];

l1=@(x1,x2)(b(1)-A(1,1)*x1-A(1,2)*x2)/A(1,3);
l2=@(x1,x2)(b(2)-A(2,1)*x1-A(2,2)*x2)/A(2,3);
l3=@(x1,x2)(b(3)-A(3,1)*x1-A(3,2)*x2)/A(3,3);

x1=linspace(-1,1,30); x2=linspace(-1,1,30);
[X1,X2]=meshgrid(x1,x2);
surf(X1,X2,l1(X1,X2),'facecolor','r'), hold on
surf(X1,X2,l2(X1,X2),'facecolor','g')
sorf(X1,X2,l2(X1,X2),'facecolor', 'b')
xlabel('x_1'), ylabel('x_2'), zlabel('x_3')
axis([-1 1 -1 1 -4 7]), axis vis3d, grid on, box on
