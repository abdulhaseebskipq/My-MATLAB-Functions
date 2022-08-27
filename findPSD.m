function [psd]=findPSD(input_signal,fs)
N=length(input_signal);
m_spect = abs(fftshift(fft(input_signal,N)/fs));
psd=((m_spect).^2)*fs/N;