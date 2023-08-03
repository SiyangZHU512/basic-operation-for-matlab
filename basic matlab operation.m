%% basic matrix operation (for me only)
A=[1,2,3;2,3,4;4,5,6;3,4,5]
X=ones(size(A))
B=A(:,1)
C=size(B)
D=A(1,:)
d=size(D) % VS d=size(D)
diff(B) % take a different to each element in the vector with the closest element with.
rang(B) % range of such vector
Ai=A(:)
Anew=A(1:2,2:3)
Alarge=[A,B]
rank(A)
[V,D]=eig(Alarge) % V is eigenvector matrix D is eigenvalue matrix
%% basic function operation
syms x a t h y
L1=limit((sin(x)-cos(x))/tan(x),x,1)
L2=limit((sin(x-t)-cos(x-t))/tan(x-t),t,2)
L3=limit((sin(x/h)-cos(x+h))/tan(x*h),h,5)
D1=diff(a*x-sin(x)^a,'x')
D2=diff(sin(x)*cos(x)-exp(x^sin(x)),'x')
D3=diff(sin(x)*cos(x)-exp(x^sin(x)),'x',3)
R1=int(sin(x)*cos(x)-exp(x)*sin(x),'x')
R2=int(sin(x)*cos(x)-exp(x)*sin(x),'x',0,2)
R3=int(x*y-sin(x*y)+exp(x)*sin(x*y)-y^2,'y',3.2,2.34)
T1=taylor(sin(x))
T2=series(x*cos(x)+cot(x)-tan(x)*sin(x))
%% solve equations 
syms z y x Ri Pr Rf C r B P F1 A H2 H3 H1 C1 D 
% 个人
V11=z*y*(Ri+Pr)+z*(1-y)*(0)+(1-z)*y*(Ri+Pr)+(1-z)*(1-y)*(0);
V12=z*y*(Ri-C1+H2)+z*(1-y)*(Ri+H3-C1)+(1-z)*y*(Ri+H1-C1)+(1-z)*(1-y)*(Ri-C1)
V1=simplify(x*V11+(1-x)*V12)
fx=simplify((V11-V1)*x)
% %政府
V21=x*y*(B-P)+(1-x)*y*(A-P)+x*(1-y)*(A-P)+(1-x)*(1-y)*(A-P);
V22=x*y*(B-F1)+(1-x)*y*(A)+x*(1-y)*(A)+(1-x)*(1-y)*(A);
V2=simplify(z*V21+(1-z)*(V22))
fz=simplify((V21-V2)*z)
% insider
V41=x*z*(Rf-C+r)+(1-x)*z*(Rf-C-D)+x*(1-z)*(Rf+r-C)+(1-x)*(1-z)*(Rf-C)
V42=x*z*(Rf)+(1-x)*z*(Rf-D)+x*(1-z)*(Rf)+(1-x)*(1-z)*(Rf)
V4=simplify(y*V41+(1-y)*(V42))
fy=simplify((V41-V4)*y)
equ=[fx==0,fy==0,fz==0];
answ=solve(equ,[x,y,z])
disp(['均衡点：']);A1=[answ.x,answ.y,answ.z]
%%
       syms y(t) a
       Dy = diff(y);
       D2y = diff(y,2);
       dsolve(D2y == -a^2*y, y(0) == 1, Dy(pi/a) == 0)
       syms w(t)
       Dw = diff(w); 
       D2w = diff(w,2);
       w = dsolve(diff(D2w) == -w, w(0)==1, Dw(0)==0, D2w(0)==0)
       syms x(t)
       Dx=diff(x);
       D2x=diff(x,2);
       dsolve(D2x==x,x(3)==1,Dx(0)==1)
%% linear system
A=[1,2,3,4;3,4,5,4;2,3,4,5]
b=[2,3,1]'
B=[A b]
n=4
R_A=rank(A)
R_B=rank(B)
format rat
if R_A==R_A&R_B==n
    X=A\b
elseif R_A==R_B&R_A<n
    X=A\b
    C=null(A,'r')
else X='no solution'
end
syms k1 
solution= k1*C+X