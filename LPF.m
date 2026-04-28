clc; 
clear all; 
close all; 
R2=1e+3; 
c2=1e-8; 
fh=1/(2*pi*R2*c2);%for low pass filter 
f=0:1e+6; 
g1=1./(1+1j*f./fh); 
semilogx(f,g1); 
title('Low-pass filter') 
grid on; 
xlabel('Frequency'); 
ylabel('Gain'); 
