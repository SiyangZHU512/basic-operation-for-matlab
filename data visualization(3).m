clear all
clc
%% 2D case
%% data upload
W=xlsread('D:\桌面\hhh.xlsx',1,'A1:I84')
X=W(:,1)
%% parameter setting
fontSize=15;
lineWidthBox=1.5;
lineWidth=2.5;
picturesize=[200,200,950,650];
Xlabel='value'
Ylabel='frequency'
fontname='Time New Roman'
%% figure presentation
histogram(X,10,'LineWidth',lineWidth)
set(gca,'LineWidth',lineWidth)
xlabel(Xlabel,'FontName',fontname,'FontSize',fontSize)
ylabel(Ylabel,'FontName',fontname,'FontSize',fontSize)
title('distribution of x1','FontName',fontname,'FontSize',fontSize)
%% 3D case
clear all
clc
%%
W=xlsread('D:\桌面\hhh.xlsx',1,'A1:I84')
Y=W(:,1:2);
%%
%% parameter setting
fontSize=15;
lineWidthBox=1.5;
lineWidth=2.5;
picturesize=[200,200,950,650];
Xlabel='x1'
Ylabel='x2'
Zlabel='frequnecy'
fontname='Time New Roman'

%%
hist3(Y,'FaceColor','interp','CDataMode','auto')
set(gca,'LineWidth',lineWidth)
xlabel(Xlabel,'FontName',fontname,'FontSize',fontSize)
ylabel(Ylabel,'FontName',fontname,'FontSize',fontSize)
zlabel(Zlabel,'FontName',fontname,'FontSize',fontSize)
title('distribution of x1 and x2','FontName',fontname,'FontSize',fontSize)
