clear all
clc
%% data upload
W=xlsread('D:\桌面\hhh.xlsx',1,'A1:I84')
N=size(W,1)
X=W(:,2:9)
%% parameter setting
fontSize=15;
lineWidthBox=1.5;
lineWidth=2.5;
symbol=['o','*','+','|','v','d','s','>'];
markerSize=7;
picturesize=[200,200,950,650];
fileName='figure2.tif'
pictureResolution='r800'
Xlabel='time'
Ylabel='value for different variables'
fontname='Time New Roman'
%% figure presentation
figure
hold on
box on
set(gca,'LineWidth',lineWidthBox)
for i=1:8
    plot(1:N,X(:,i),'Marker',symbol(1,i),'MarkerSize',markerSize)
end
legend('x2','x3','x4','x5','x6','x7','x8','x9','location','eastoutside')
xlabel(Xlabel,'FontName',fontname,'FontSize',fontSize)
ylabel(Ylabel,'FontName',fontname,'FontSize',fontSize)