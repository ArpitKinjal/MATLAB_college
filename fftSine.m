clc
clear all
close all
t= 0:0.01:1;
f=10;
x=sin(2*pi*f*t);
f=fft(x);
l=length(x);
y=linspace(-l/2, l/2, l);
subplot(7,1,1);
plot(x);
subplot(7,1,2);
plot(abs(f));
subplot(7,1,3);
plot(phase(f));
subplot(7,1,4);
plot(y, abs(fftshift(f)));
subplot(7,1,5);
plot(y, phase(fftshift(f)));