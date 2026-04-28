clc
clear all
close all
t= 0:0.01:1;
f=5;
s=sin(2*pi*f*t);
c= cos(2*pi*f*t);
n=length(s)+length(c)-1;
orig=conv(s,c);
subplot(3,2,1);
plot(orig);
title('conv by formula');
ffts=fft(s,n);
fftc=fft(c,n);
mult=ifft(fftc.*ffts);
subplot(3,2,2);
plot(mult);