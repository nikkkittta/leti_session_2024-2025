r=-1:.01:1
a=zeros(1,201);
b=zeros(1,201);
for (i=1:1:201);
   a(i)=tanh(.5*log((1+r(i))/(1-r(i)))-1.96/sqrt(97));
   b(i)=tanh(.5*log((1+r(i))/(1-r(i)))+1.96/sqrt(97));
end;
plot (r,a,'k-',r,b,'k-');
axis ([-1 1 -1 1]);
