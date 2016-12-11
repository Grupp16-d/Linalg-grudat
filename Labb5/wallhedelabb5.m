%rita planet
xmin=-4; xmax=4; ymin=-4; ymax=4;
a=1; b=-1; c=4; d=1;
X=[xmin xmax xmax xmin]; Y=[ymin ymin ymax ymax];
Z=(d-a*X-b*Y)/c;
fill3(X,Y,Z,'g','facealpha',0.7), hold on
xlabel('x'), ylabel('y') 

n = [a b c];
alph = []
for i=1:8
    alph = (d-dot(n,H(:,i)))/dot(n,n);
    xo = H(:,i).'+alph*n;
    plot3(xo(1),xo(2),xo(3),'ro');
    v=[xo;H(:,i).'];
    plot3(v(:,1),v(:,2),v(:,3),'r');
    text(xo(1)+0.1,xo(2),xo(3),'x_o');
end

xra = [];
for i=1:8
    alph = (d-dot(n,H(:,i)))/dot(n,n);
    xr = H(:,i).' + 2*alph*n;
    xra = [xra (H(:,i).'+2*alph*n).'];
    plot3(xr(1),xr(2),xr(3),'ro');
    u=[xr;H(:,i).'];
    plot3(u(:,1),u(:,2),u(:,3),'r');
    text(xr(1)+0.1,xr(2),xr(3),'x_r');
end

for i=1:size(S,1)
    Si=S(i,:); fill3(xra(1,Si),xra(2,Si),xra(3,Si),'b','facealpha',0.7)
end