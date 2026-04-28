
t = linspace(-5, 5, 1000); 
x_t = double(t >= 0);


f = linspace(-10, 10, 1000);
X_f = 1 ./ (1j * 2 * pi * f) + pi * (f == 0); 

x_t_reconstructed = zeros(1, length(t));


for i = 1:length(t)
   
    integrand = X_f .* exp(1j * 2 * pi * f * t(i));
    x_t_reconstructed(i) = trapz(f, integrand); 
end

figure;
subplot(2, 1, 1);
plot(t, x_t);
title('Original Time-Domain Signal x(t) = u(t) (Unit Step Function)');
xlabel('Time (t)');
ylabel('Amplitude');
grid on;

subplot(2, 1, 2);
plot(t, real(x_t_reconstructed)); 
title('Reconstructed Time-Domain Signal from Inverse Fourier Transform');
xlabel('Time (t)');
ylabel('Amplitude');
grid on;


disp('Duality Property Check:');
disp('If the reconstructed signal matches the original signal, the duality property holds.');
