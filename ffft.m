clc
clear all
close all
t= 0:0.01:1;
f=10;
x=sin(2*pi*f*t);
subplot(3,1,1);
plot(x);
subplot(3,1,2);
plot(abs(fft(x)));
subplot(3,1,3);
plot(phase(fft(x)));
