%for low pass filter 
R2=1e+3; 
c2=1e-8; 
fh=1/(2*pi*R2*c2); 
f=0:1e+6; 
g2=1./(1+j*f./fh); 
subplot(3,1,1); 
semilogx(f,g2); 
title('Low-pass filter') 
grid on; 
xlabel('Frequency'); 
ylabel('Gain'); 
%for high pass filter 
R1=1e+4; 
c1=1e-6; 
fh=1/(2*pi*R1*c1); 
f=0:1e+6; 
g1=1./(1-1j.*fh./f); 
subplot(3,1,2); 
semilogx(f,g1); 
title('High-pass filter') 
grid on; 
xlabel('Frequency'); 
ylabel('Gain'); 
% for Band pass filter 
g3 =g1.*g2; 
subplot(3,1,3); 
semilogx(f,g3); 
title('Band-pass filter') 
grid on; 
xlabel('Frequency'); 
ylabel('Gain'); 