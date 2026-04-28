clc 
clear all 
close all 
Am=1; 
fm=25; 
fc=200; 
A=10; 
b=4; 
t=0:0.00001:0.25; 
m=Am*cos(2*pi*fm*t); 
subplot(3,1,1); 
plot(t,m); 
title('message signal wave'); 
xlabel('time'); 
ylabel('amplitude'); 
legend(' message wave'); 
grid on;
c=A*cos(2*pi*fc*t); 
subplot(3,1,2); 
plot(t,c); 
title('carrier signal wave'); 
xlabel('time'); 
ylabel('amplitude'); 
legend('carrier wave'); 
grid on; 
s= A*cos((2*pi*fc*t)+b*sin(2*pi*fm*t)); 
subplot(3,1,3); 
plot(t,s); 
title('Frequency Modulated signal wave'); 
xlabel('time'); 
ylabel('amplitude'); 
legend('wave'); 
grid on;
