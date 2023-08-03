clc
clear all
%%
W=xlsread('D:\桌面\hhh.xlsx',2,'A1:C51')
N=size(W,1)
X=W(:,1)
Y=W(:,2)
time=W(:,3)
for i=1:50
if time(i)>=5
    Y(i)=Y(i)+4.34
else 
    Y(i)=Y(i)
end
end
for i=1:10
Xmean(i)=mean(X(5*i-4:5*i))
end
for i=1:10
Xmax(i)=max(X(5*i-4:5*i))
end
for i=1:10
Xmin(i)=min(X(5*i-4:5*i))
end
errorXup=1.96*(Xmax-Xmean)
errorXlow=1.96*(Xmin-Xmean)
for i=1:10
Ymean(i)=mean(Y(5*i-4:5*i))
end
for i=1:10
Ymax(i)=max(Y(5*i-4:5*i))
end
for i=1:10
Ymin(i)=min(Y(5*i-4:5*i))
end
errorYup=1.96*(Ymax-Ymean)
errorYlow=1.96*(Ymin-Ymean)
%%
fontSize=15;
lineWidthBox=1.5;
lineWidth=2.5;
picturesize=[200,200,950,650];
fontname='Time New Roman'
%%
figure(1)
hold on
box on
set(gca,"LineWidth",lineWidthBox)
errorbar(1:10,Xmean,errorXup,errorXlow,'-o','Color','g')
errorbar(1:10,Ymean,errorYup,errorYlow,'-*','Color','r')
plot(5*ones(26),15:40)
title('treated VS untreated')
legend('untreated','treated')

