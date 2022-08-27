%%%%%%%%%%%%%%%%%%%%%%%%%% Auto Correlation %%%%%%%%%%%%%%%%%%%%
t=0:0.01:100;
x=sin(2*pi*0.01*t);
subplot(2,2,[1,2]);plot(t,x);
xlabel('t')
ylabel('signal(t)')
grid on
title('sin(2*pi*0.01*t');
[y,x1]=xcorr(x);
subplot(2,2,[3,4]);plot(x1,y);
title('correlation')
xlabel('lag')
ylabel('Signal(t)')
grid on
