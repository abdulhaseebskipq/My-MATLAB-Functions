function [y,n]=convolve(x,n1,h,n2)
y=zeros(1,(length(x)+length(h)-1)); %declaring y array of size= zize of x+y-1
yl=length(y)  ;                     %yl as length of y, it is a loop vaiable
[x,h]=concatenate(x,h);             %length of y=length of x=length of h
for i=1:yl
    d=1;
    for j=i:-1:1
        y(i)=y(i)+x(j)*h(d);        
        d=d+1;
    end
end
n=min(n1)+min(n2):max(n1)+max(n2);   %range of our final signal
