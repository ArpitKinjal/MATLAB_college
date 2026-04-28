clc
close all
clear all

n = 20;

fp = 200;
fq = 300;
fs = 1000;
wn = 2*(fp/fs);
b = fir1(n, wn, 'low', blackman(n+1));
[h, f] = freqz(b, 1, 1024, fs);

figure;
subplot(2,1,1)
plot(f, abs(h));
title('Magnitude Response of FIR LPF');
xlabel('H(f)');
grid on;

subplot(2,1,2)
plot(f,phase(h));
title('Angle Response of FIR LPF');
xlabel('f');
grid on;