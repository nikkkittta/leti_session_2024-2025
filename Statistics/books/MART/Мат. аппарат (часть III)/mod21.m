a=.001:.001:1;
b=zeros(1,1000);
x=unifrnd(0,1,1,10);
y=sort(x);
z=0;
t=0;
for (i=1:1:1000)
   if (t<10)
   if (a(i)>y(t+1))
      t=t+1;
      z=z+.1;
   end;
   end;
   b(i)=z;
end;

a=.001:.001:1;
b0=zeros(1,1000);
x=unifrnd(0,1,1,25);
y=sort(x);
z=0;
t=0;
for (i=1:1:1000)
   if (t<25)
   if (a(i)>y(t+1))
      t=t+1;
      z=z+.04;
   end;
   end;
   b0(i)=z;
end;

a=.001:.001:1;
b1=zeros(1,1000);
x=unifrnd(0,1,1,100);
y=sort(x);
z=0;
t=0;
for (i=1:1:1000)
   if (t<100)
   if (a(i)>y(t+1))
      t=t+1;
      z=z+.01;
   end;
   end;
   b1(i)=z;
end;
plot(a,b,'k--',a,b0,'k:',a,b1,'k-');
