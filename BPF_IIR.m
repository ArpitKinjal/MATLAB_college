

Fs = 1000;     
Fc1 = 100;    
Fc2 = 300;      
N = 4;         


Wn = [Fc1, Fc2] / (Fs / 2); 
[b, a] = butter(N, Wn, 'bandpass');


[H, f] = freqz(b, a, 1024, Fs);


figure;
plot(f, abs(H));
title('Frequency Response of Butterworth Band-Pass Filter');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;


t = 0:1/Fs:1;                        
signal = sin(2*pi*50*t) + sin(2*pi*150*t) + sin(2*pi*350*t);  

filtered_signal = filter(b, a, signal);


figure;
subplot(2,1,1);
plot(t, signal);
title('Original Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,1,2);
plot(t, filtered_signal);
title('Filtered Signal (Band-Pass Filter Applied)');
xlabel('Time (s)');
ylabel('Amplitude');
