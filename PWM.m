clc; 
close all; 
clear all; 
t=0:0.0001:1; 
s=sawtooth(2*pi*10*t+pi); 
plot(s); 
m=0.75*sin(2*pi*1*t); 
n=length(s);
for i=1:n 
if (m(i)>=s(i)) pwm(i)=1; 
elseif (m(i)<=s(i)) pwm(i)=0; 
end 
end 
plot(t,pwm,'g',t,m,'r',t,s,'b'); 
xlabel('time index'); 
ylabel('amplitide'); 
grid on; 
axis([0 1 -1.5 1.5]); 
title('PWM Wave')