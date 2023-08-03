clc
clear all
%%
fontSize=15;
fontname='Time New Roman'
Z=[2.23,4.45,6.12,6.23,3.234;4.56,5.54,7.45,5.43,3.45;3.3,4.56,3.54,7.345,2.43;4.45,4.232,9.23,3.234,3.56;3.56,5.54,2.45,5.43,3.42]
[x,y]=meshgrid(1:1:5,1:1:5)
figure(1)
surf(x,y,Z)
xlabel('x')
ylabel('y')
zlabel('z')
set(gca,'FontName',fontname,'FontSize',fontSize)
step=0.05;
[xi,yi]=meshgrid(1:step:5,1:step:5);
zi=interp2(x,y,Z,xi,yi,'cubic') %% interpolation method to fit the data
figure(2)
surf(xi,yi,zi)
shading interp
colorbar()
xlabel('x')
ylabel('y')
zlabel('z')
set(gca,'FontName',fontname,'FontSize',fontSize)