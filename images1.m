clc
clear all
close all
I=imread("OIF.jpg");
J=fftshift(I);
K=double(I);
L=fft2(K);
M=fftshift(L);
O= ifft2(uint8(L));
subplot(2,2,1);
imshow(I);
title('original image');
subplot(2,2,2);
imshow(L);
title('Fourier transformed');
subplot(2,2,3);
imshow(M);
title('fft shift');
subplot(2,2,4);
imshow(O);
title('recovered image')



