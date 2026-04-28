clc 
clear all 
close all 
fm=10; 
fc=100;              
t=-0.2:0.001:0.2; 
%To generate DSB-SC Modulated signal 
Am=20; 
m=Am*cos(2*pi*fm*t);   
subplot(3,2,1); 
plot(t,m,'k'); 
title('message signal'); 
xlabel('time---->'); 
ylabel('amplitude---->'); 
x=fft(m); 
subplot(3,2,2); 
plot(abs(x)); 
title('message signal'); 
xlabel('frequency----->'); 
ylabel('amplitude----->'); 
Ac=10; 
c=Ac*cos(2*pi*fc*t); 
subplot(3,2,3); 
plot(t,c,'r'); 
title('carrier signal'); 
xlabel('time ----->'); 
ylabel('amplitude ----->'); 
y=fft(c); 
subplot(3,2,4); 
plot(abs(y)); 
title('carrier signal'); 
xlabel('frequency ----->'); 
ylabel('amplitude ----->'); 
s=m.*c; 
z=fft(s); 
subplot(3,2,5); 
plot(t,s,'r'); 
title('modulated signal'); 
xlabel('time---->'); 
ylabel('amplitude---->'); 
subplot(3,2,6); 
plot(abs(z)); 
title('modulated signal'); 
xlabel('frequency----->'); 
ylabel('amplitude----->');
