close all, clear all 
x = [1 zeros(1,40)];% Generate the input 
n = 0:40; 
% Coefficients of 4th-order system 
num = [1 -0.8]; den = [1 1.5 0.9]; 
N = 200; 
h= impz(num,den,N+1); 
% Plot the impulse response 
n = 0:N; stem(n,h), xlabel('Time index n'); ylabel('Amplitude'); 


