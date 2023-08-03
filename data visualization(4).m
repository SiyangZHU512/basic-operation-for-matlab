clear all
clc
%% data upload
W=xlsread('D:\桌面\hhh.xlsx',1,'A1:I84')
N=size(W,1)
X=W(:,2:8)
%%
fontname='Time New Roman';
fontSize=15;
figure
hold on
box on
set(gca,'LineWidth',1.3)
boxplot(X,'labels',{'x1','x2','x3','x4','x5','x6','x7'})
xlabel('variable name','FontName',fontname,'FontSize',fontSize)
ylabel('value','FontName',fontname,'FontSize',fontSize)
title('boxplot for our data','FontName',fontname,'FontSize',fontSize)


