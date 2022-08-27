function [y]=findFS(x,T,n1)
syms t;
an=zeros(1,n1);bn=an;E=0;O=0;
a0=1/T*double(int(x,t,-T/2,T/2))
for n=1:n1
    an(n)=double(2/T*int(x*cos(2*pi*n*t/T),t,-T/2,T/2));
     E=E+double(2/T*int(x*cos(2*pi*n*t/T),t,-T/2,T/2))*cos(2*pi*n*t/T);  %formula
end
for n=1:n1
    bn(n)=double(2/T*int(x*sin(2*pi*n*t/T),t,-T/2,T/2));
    O=O+double(2/T*int(x*sin(2*pi*n*t/T),t,-T/2,T/2))*sin(2*pi*n*t/T);
end

y=a0+E+O;
an
bn
