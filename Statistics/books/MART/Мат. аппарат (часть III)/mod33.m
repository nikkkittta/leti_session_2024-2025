x=-10:.1:10;
y=normpdf (x,0,2);
a=normrnd(0,1,1,100);
b=zeros(1,201);
q=1;
for (t=-10:.1:10)
   c=a-t;
   b(q)=(1/sqrt((2*pi)^100)*exp(-.5*(sum(c.^2))));
   q=q+1;
end;
b=b.*(1/sum(b));
plot(x,y,'k--',x,b,'k-');
