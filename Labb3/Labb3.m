%% Uppgift 1 a
A=[1 4 7 10; 2 5 8 11; 3 6 9 12];
B=[4 5 6; 3 2 1; 1 1 1];
c=[1; 3; 5];
d=[0 2 4];

%?ndrar rader och kolonner
A=[1 4 c(1,:) 10; 2 5 c(2,:) 11; 3 6 c(3,:) 12]
B=[B(1,:); d(1,:); B(3,:)]

%% Uppgift 1 b
A=[1 4 7 10; 2 5 8 11; 3 6 9 12];
A([3 2 1],[1 4 3 2])

%% Uppgift 2
%Skapar B fr?n tidigare med kolonnvektorerna
clear B
b1=[4; 3; 1]
b2=[5; 2; 1]
b3=[6; 1; 1]
B=[b1 b2 b3]

%% Uppgift 3
%Delar in A i kvadrater och skapar A igen med kvadraterna
A=[10 7 8 7; 7 5 6 5; 8 6 10 9; 7 5 9 10];
A11=A([1 2], [1 2])
A12=A([1 2], [3 4])
A21=A([3 4], [1 2])
A22=A([3 4], [3 4])

Afull=[A11 A12; A21 A22]

%% Uppgift 4
A=[11 4 3 7; 2 6 8 5; 9 12 1 10];
b=[3;1;5];
c=[4 2 8 0 6];

%Ger antal rader och kolonner
[mb, nb] = size(b);
[mc, nc] = size(c);
%svar: F?r man man f?r v?rdet 1 p? antigen m eller n

%Ger ett min och max v?rde i A samt dess position
[v, im] = min(A);
[v, in] = min(v,[],2);
minA = [v im(:,in) in]

[v, im] = max(A);
[v, in] = max(v,[],2);
maxA = [v im(:,in) in]

%% Uppgift 5
s=0;
for t=1:5
    s=s+t^2;
end
disp(s)

%% Uppgift 6
A=[1 5 9; 2 6 10; 3 7 11; 4 8 12];
B=[4 5 6; 3 2 1; 1 1 1];
x=[1; 1; 1];
a=[-1 0 1];

%Multiplikation

Ax = A*x
Bx = B*x
AB = A*B
ax = a*x
xa = x*a
aB = a*B

%Multiplikation kodad, bara med en kolonn
[m, n] = size(A);

y=zeros(m,1);
for i=1:m
       s=0;
       for j=1:n
           s=s+A(i,j)*x(j);
       end
    y(i)=s;
end
y

%% Uppgift 7
A=[1 0 0; 0 1 0; 1 0 1];
B=[1 0 0; -2 1 0; 0 0 1];
C=[2 1 1; 4 1 0; -2 2 1];

%Testar de ssociativa och distributiva lagarna
n1 = A*(B*C) == (A*B)*C
n2 = A*(B+C) == A*B + A*C
n3 = (B+C)*A == B*A + C*A

k = A*B == B*A
