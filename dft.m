clc
clear all
clear all
x=[1 2 3 10 9 8 12];
N=length(x);
X=zeros(1,N);
for k=0:N-1
    for n= 0:N-1
        X(k+1)= X(k+1)+x(n+1)*exp((-1i*2*pi*k*n)/N);
    end
end

subplot(3,1,1);
stem(x);
title('input function');
subplot(3,1,2);
stem(X);
title('manual dft');
subplot(3,1,3);
stem(fft(x));
title('fft using function');

figure;
subplot(2,1,1);
stem(abs(X));
title("magnitude of fft");
subplot(2,1,2);
stem(phase(X));
title('phase spectrum');