clear all
clc
%%
x=[1,2,3,4,5,6,7,8,9]
y=[15,9,20,32,41,31,21,13,1]
data=[x;y]'
%% parameter setting
fontSize=15;
lineWidthBox=1.5;
lineWidth=2.5;
picturesize=[200,200,950,650];
fileName='fit.tif'
pictureResolution='r800'
Xlabel='independent variable'
Ylabel='dependent variable'
fontname='Time New Roman'
xLim=[0,10];
yLim=[0,45];
%% fit 
[fitData,gof,fit]=createFit(data)
rS=gof.rsquare
%% figure presentation
figure
hold on
box on
set(gca,'LineWidth',lineWidthBox)
scatter(x,y,'o','filled')
h=plot(fitData)
legend('Raw data','fitted curve','location','south')
set(gca,'XLim',xlim)
set(gca,'YLim',ylim)
string = {'Guass fit';
          ['R-squre= ' num2str(rS) '%']};
title(string)
xlabel(Xlabel,'FontName',fontname,'FontSize',fontSize)
ylabel(Ylabel,'FontName',fontname,'FontSize',fontSize)
