clear all;
close all ;
n = 0:40; 
a = 2; b = -3; 
x1 = cos(2*pi*0.1*n); 
x2 = cos(2*pi*0.2*n); 
x = a*x1 + b*x2; 
num = [3 0 0]; 
den = [1 -1/4 -1/8]; 
ic = [0 0]; % Set zero initial conditions 
y1 = filter(num,den,x1,ic); % Compute the output y1[n] 
y2 = filter(num,den,x2,ic); % Compute the output y2[n] 
y = filter(num,den,x,ic);  % Compute the output y[n] 
yt = a*y1 + b*y2; 
subplot (2,1,1)
stem(n ,y); 
ylabel('Amplitude'); 
title('Output Due to Weighted Input'); 
subplot(2,1,2) 
stem(n,yt); 
ylabel('Amplitude'); 
title('Weighted Output'); 

