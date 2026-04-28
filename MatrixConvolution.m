clc 
clear all
close all
x1 = [5 4 21 9 12 3];
xlen = length(x1);
y1 = [2 5 55 6 9];
ylen = length(y1);
convlen = xlen + ylen-1;
x = [x1,zeros(1,convlen-xlen)];
y = [y1,zeros(1,convlen-ylen)];
res = zeros(1,convlen);
for i=1:convlen
    for j= 1:i
        res(i)=res(i)+x(j).*y(i-j+1)
    end
end
subplot(4,1,1)
stem(x1);
xlabel('x');
title('input signal');
subplot(4,1,2)
stem(y1);
xlabel('y');
title('response signal');
subplot(4,1,3)
stem(res)
axis([0 10.7 0 2000])
xlabel('conv')
title('convoluted signal')
subplot(4,1,4)
stem(conv(x,y));
xlabel('x')
title('original convulated signal')