%% linear programming
%% max 40*x1+30*x2
f=[-40;-30]
A=[1,1;-1,0;0,-1;240,120]
b=[6;-1;-1;1200]
[x,value]=linprog(f,A,b,[],[],0,[])
value=-value
%% example 2
f=[-5;-4;-6]
A=[1,-1,1;3,2,4;3,2,0;-1,0,0;0,-1,0;0,0,-1]
b=[20;42;30;0;0;0]
[x,value]=linprog(f,A,b)

%% non-linear programming
[x,y,exitflag,output]=fmincon('fun',[10;0;0],[],[],[],[],[0;0;0],[],'fun2')
[x,y,exitflag,output]=fmincon('fun3',[10;0;0],[],[],[],[],[0;0;0],[],'fun4')
% exitflag =1  optimal can be found
% exitflag=0  number of iteration exceeded options
% exitflag=-1 stopped by output function or plot function
% exitflag=-2 no feasible point 

%%  0-1  programming
f=[3;-2;5]
intcon=3
A=[1,2,-1;1,4,1;1,1,0;0,4,1]
b=[2;4;3;6]
lb=[0,0,0]
ub=[1,1,1]
x=intlinprog(f,intcon,A,b,[],[],lb,ub)
%% inter programming
f=[3;-1;5;2]
intcon=4
A=[1,2,-1,3;1,4,1,1;1,1,0,0;0,4,1,0]
b=[3;6;3;2]
lb=[0,0,0,0]
ub=[4,3,5,5]
x=intlinprog(-f,intcon,-A,-b,[],[],lb,ub)

%% multple objective programming 
% max x(1)^2-x(2)*x(3)  min x(1)+x(2)+x(3)
% min x(1)+x(2)+x(3)-x(1)^2-x(2)*x(3)
