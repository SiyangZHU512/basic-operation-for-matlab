% example 1
clc
clear
p=10000
r=1
x0=1
y0=1
n=0
hold on
for i=1:p
    px=rand*2
    py=rand*2
    if (px-x0)^2+(py-y0)^2<1
        plot(px,py,'.','Color','b')
        n=n+1
    else
        plot(px,py,'.','Color','r')
    end
end
axis  equal
s=(n/p)*4
pi0=s
%% example 2
clc
clear
p=10000
X=1:0.001:5
Y=sin(X).*cos(X)-log(X)
plot(X,Y)
n=0
hold on
for i=1:p
    px=rand*5
    py=rand*2.5-2
    if py<sin(px)*cos(px)-log(px)
        plot(px,py,'.','Color','b')
        n=n+1
    else
          plot(px,py,'.','Color','r')
    end
end
axis equal
s=(n/p)*2.5*5
