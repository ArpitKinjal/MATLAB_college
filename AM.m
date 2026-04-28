clc 
clear all 
close all  
fm=5;     
fc=100;   
Am=5;      
t=-0.20:0.001:0.20; 
%To generate message signal 
m=Am*cos(2*pi*fm*t); 
subplot (3,1,1); 
plot(t,m); 
title ('message signal wave'); 
xlabel('time'); 
ylabel('amplitude'); 
legend (' message wave'); 
grid on; 
%To generate carrier signal 
Ac=10; 
c=Ac*cos(2*pi*fc*t); 
subplot(3,1,2); 
plot(t,c,'r'); 
title('carrier signal wave'); 
xlabel('time'); 
ylabel('amplitude'); 
legend('carrier wave'); 
grid on;  
%To generate Modulated signal 
s=(Ac+m).*cos(2*pi*fc*t)   %u=Am/Ac; 
subplot(3,1,3); 
plot(t,s,'k'); 
title('Amplitude Modulated signal wave'); 
xlabel('time'); 
ylabel('amplitude'); 
legend('signal wave'); 
grid on;
nfft=length(s3);
n=2^(nextpow2(nfft)) 
f=(0:n -1)*(1000/n) 
C=abs(fft(s3,n)); 
plot(C);
