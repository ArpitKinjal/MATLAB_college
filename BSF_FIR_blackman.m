clc
close all
clear all

n = 20;

fp = 200;
fq = 300;
fs = 1000;
wn = [fp fq]/(fs/2);
b = fir1(n, wn, 'low', blackman(n+1));
[h, f] = freqz(b, 1, 128);

figure;
subplot(2,1,1)
plot(f, abs(h));
title('Magnitude Response of FIR HPF');
xlabel('H(f)');
grid on;

subplot(2,1,2)
plot(f,phase(h));
title('Angle Response of FIR HPF');
xlabel('f');
grid on;