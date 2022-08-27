function [ESD]=findESD(input_signal,fs)
N = length(input_signal);
fft_s = abs(fftshift(fft(input_signal,N)/fs));
ESD=fft_s.^2;
