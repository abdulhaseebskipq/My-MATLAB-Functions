syms n omega;
tic
input_signal=rectangularPulse(-5,5,n);
n1=-30:30;
ud= subs(input_signal,n,n1);
subplot(2,1,1);stem(n1,ud);
xlabel('n');ylabel('x[n]');title('input signal')

dtft=findDTFT(input_signal,n,omega,-inf,inf);
subplot(2,1,2);fplot(dtft,[-10*pi 10*pi]);
xlabel('n');ylabel('x[n]');title('DTFT')
toc