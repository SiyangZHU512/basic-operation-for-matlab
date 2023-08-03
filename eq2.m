function dydt=eq2(t,y)
dydt=zeros(3,1)
dydt(1)=5*(1-y(1))+(y(2)*y(3))-y(3)*2+tan(y(2))
dydt(2)=5*(1-y(2))-y(2)/(y(1)*y(3))-y(1)*2+tan(y(1))
dydt(3)=5*(1-y(3))*y(3)/(y(1)*y(2))-y(2)*2+tan(y(3))
end