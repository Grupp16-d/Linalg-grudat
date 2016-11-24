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


%% 2b)
A=[-3 1 2; 3 -2 1; 3 -4 7]; B1=[2; 1; 1]; B2=[2; 1; 7];
