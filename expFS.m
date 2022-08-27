function y=expFS(x,T,nn,pn)
j=sqrt(-1);C=0;syms t;i=1;
Cn=zeros(1,length(nn:pn));
for k=nn:1:pn
    Cn(i)=double(1/T)*int(x*exp(-j*2*pi*k*t/T),t,-T/2,T/2);
    C=C+(double(1/T)*int(x*exp(-j*2*pi*k*t/T),t,-T/2,T/2))*exp(j*2*pi*k*t/T);
    i=i+1;
end
y=C;
Cn

