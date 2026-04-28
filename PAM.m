close all 
clear all 
clc 
t = 0: 1/1e3: 5;  
d = 0: 1/5: 10; 
x = 1+sin(2*pi*t);  
subplot(3,1,1); 
plot(x); 
title('message'); 
xlabel('time'); 
ylabel('amplitude'); 
y = pulstran(t, d,'rectpuls',0.1);  
subplot (3,1,2) 
plot(y); 
title ('Pulse Input '); 
xlabel('time'); 
ylabel('amplitude'); 
z=x.*y; % PAM output 
subplot (3,1,3) 
plot(z); 
title('PAM modulation '); 
xlabel('time'); 
ylabel('amplitude'); 