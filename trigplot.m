function trigplot(n1,n2,a,pd)
n=[n1:n2];
x=sin(a*n+pd);
stem(n,x);
xlabel('Index')
ylabel('Amplitude')
axis([min(n)-1 max(n)+1 min(x)-1 max(x)+1])
grid on