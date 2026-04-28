clc
clear all
close all
a=imread('images.jpg')
figure
subplot(2,2,1);
imshow(a);
title('original image');
[m,n]=size(a);
H=zeros(1,256);
for k=1:255
    H(1,k)=numel(find(a==k));
end
subplot(2,2,2)
stem(H);
title('Histogram of image');
c=cumsum(H);
d=c/(m*n);
r=d*255;
v=round(r);
for k=1:255
    for i=1:m
        for j=1:n
            if(a(i,j)==k)
                new(i,j)=v(1,k);
            end
        end
    end
end
subplot(2,2,3)
imshow(uint8(new));
title('histogram equalized image');
subplot(2,2,4)
imhist(uint8(new))
title('histogram equalized distribution')