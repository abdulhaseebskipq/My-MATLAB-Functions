%%%%%%%%%%%%%%%%%%%%%%%%%% Cross Correlation %%%%%%%%%%%%%%%%%%%%
t=0:0.01:100;
x=sin(2*pi*0.01*t);


x2=cos(2*pi*0.01*t);


[y,x1]=xcorr(x,x2);
subplot(2,2,[1,2]);plot(x1,y);
title('sin() * cos()')
xlabel('lag')
ylabel('Signal(t)')
grid on

[yn,xn]=xcorr(x2,x);
subplot(2,2,[3,4]);plot(xn,yn);
title('cos() * sin()')
xlabel('lag')
ylabel('Signal(t)')
grid on
