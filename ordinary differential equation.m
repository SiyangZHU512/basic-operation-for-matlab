%% ordinary differential equation
syms y x
Dy=diff(y)
y=dsolve('x*Dy+y-exp(x)=0','y(1)=2*exp(1)','x')
x=[-6:0.01:6]
y=(exp(1) + exp(x))./x
figure(1)
plot(x,y)
%% system of ODE
clear all
figure(1)
[t,y]=ode45(@(t,y) eq2(t,y),[0 2],[0.4 0.4 0.4]);
grid on
plot(t,y(:,1),'o')
hold on
plot(t,y(:,2),'-*')
hold on
plot(t,y(:,3),'g^')
%% system of SDE
clear all
figure(2)
[t,y]=ode45(@(t,y) sq2(t,y),[0 10],[0.4,0.4,0.4]);
grid on
plot(t,y(:,1),'o')
hold on
plot(t,y(:,2),'-*')
hold on
plot(t,y(:,3),'g^')
%% 3D
for i=0.1:0.1:1
    for k=0.1:0.1:1
        for j=0.1:0.1:1
              [t,y]=ode45(@(t,y) eq2(t,y),[0 50],[i j k]); 
         plot3(y(:,1),y(:,2),y(:,3),'linewidth',1);
         set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
         hold on
         axis([0 1 0 1 0 1])
         view([45 10])
         end
     end
end
 grid on
 hold on
 xlabel('x','Rotation',0);
 ylabel('y','Rotation',0);
 zlabel('z','Rotation',360,'position',[0 0 1.05]);
 %% 3D
 for i=0.1:0.1:1
    for k=0.1:0.1:1
        for j=0.1:0.1:1
              [t,y]=ode45(@(t,y) sq2(t,y),[0 50],[i j k]); 
         plot3(y(:,1),y(:,2),y(:,3),'linewidth',1);
         set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
         hold on
         axis([0 1 0 1 0 1])
         view([45 10])
         end
     end
end
 grid on
 hold on
 xlabel('x','Rotation',0);
 ylabel('y','Rotation',0);
 zlabel('z','Rotation',360,'position',[0 0 1.05]);

