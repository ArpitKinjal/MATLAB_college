clc;
clear all;
close all;
a=10;
f=100;
t=linspace(0,1,100);
x=a*sin(2*pi*f*t);
n=rand(size(t));
f=x+n;
IFFT=ifft(f)
figure();
subplot(3,1,1)
plot(t,x);
subplot(3,1,2)
plot(t,n);
subplot(3,1,3)
plot(t,f);
figure();
subplot(3,1,2)
plot(abs(IFFT));
subplot(3,1,3);
plot(phase(IFFT);