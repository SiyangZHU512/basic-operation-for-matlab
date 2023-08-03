function [g,h]=fun4(x)
g=[x(1)-x(2)^2-x(3)
    x(1)^2-x(2)+3*x(3)-23]
h=x(2)+x(1)-20