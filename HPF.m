clc; 
clear all; 
close all; 
R1=1e+4; 
c1=1e-6; 
fh=1/(2*pi*R1*c1);%for high pass filter 
f=0:1e+6; 
g1=1./(1-1j.*fh./f); 
semilogx(f,g1); 
title('High-pass filter') 
grid on; 
xlabel('Frequency'); 
ylabel('Gain');