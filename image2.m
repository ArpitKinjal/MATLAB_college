clc
clear all
close all
I= imread("OIP.jpg");
[a,h,v,d]=dwt2(I,'haar');
subplot(3,2,1);
imshow(I);
title('original image');
subplot(3,2,2);
imshow(uint8(a));
title('This is approximate image');
subplot(3,2,3);
imshow(uint8(h));
title('This is horizontal image');
subplot(3,2,4);
imshow(uint8(v));
title('This is vcertical image');
subplot(3,2,5);
imshow(uint8(d));
title("This is diagonal image");
subplot(3,2,6);
t=idwt2(a,v,h,d,'haar');
imshow(uint8(t));
title('Regained image');