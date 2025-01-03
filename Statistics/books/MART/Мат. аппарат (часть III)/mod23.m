clear;

n=100;
x=-3:.01:3;
w=normpdf(x,0,1);
w1=zeros(1,601);
w2=zeros(1,601);
e=(1.96*1.96)/n;
e1=(1.96*1.96)/(2*n);
e2=(1.96*1.96)/(4*n*n);
for (i=1:1:601)
   w1(i)=((w(i)+e1)/(1+e))+((1.96/(1+e1))*sqrt((w(i)*(1-w(i))/n)+e2));
   w2(i)=((w(i)+e1)/(1+e))-((1.96/(1+e1))*sqrt((w(i)*(1-w(i))/n)+e2));
end;

a=normrnd(0,1,1,n);
iclass = 0;
cint =-3:.75:3;
[cint,ifreq,xmin,xmax,ifail] = g01aef(a,iclass,cint);
ifreq=ifreq/(n*(cint(2)-cint(1)));
s=length(ifreq);
w01=zeros(1,s);
w02=zeros(1,s);
for (i=1:1:s)
   w01(i)=((ifreq(i)+e1)/(1+e))+((1.96/(1+e1))*sqrt((ifreq(i)*(1-ifreq(i))/n)+e2));
   w02(i)=((ifreq(i)+e1)/(1+e))-((1.96/(1+e1))*sqrt((ifreq(i)*(1-ifreq(i))/n)+e2));
end;

bar (cint,ifreq,1,'w');
hold on;
plot (x,w,'k-',x,w1,'k--',x,w2,'k--');
hold off;
axis ([-3 3 0 0.6]);
figure;
plot (cint,ifreq,'k-',cint,w01,'k--',cint,w02,'k--');
axis ([-3 3 0 0.6]);
