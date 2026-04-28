clc;
close all;
clear all;
file=strcat("/MATLAB Drive/lab.jpg");
im=imread(file);
%imshow(uint8(im))

[A,V,H,D]=dwt2(im,'haar')
subplot(4,1,1)
imshow(uint8(A))
subplot(4,1,2)
imshow(uint8(V))
subplot(4,1,3)
imshow(uint8(H))
subplot(4,1,4)
imshow(uint8(D))