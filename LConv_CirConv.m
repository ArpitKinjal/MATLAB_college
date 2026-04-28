clc 
close all
clear all
x = [1,2,3,4,5,6];
y = [1,1,1,1,1];
l1 = length(x);
l2 = length(y);
n = l1+l2-1;
X = [x, zeros(1,n-l1)];
h = [n, zeros(1,n-l2)];
Y = zeros(1,n);
for i=1:n
    for k=1:i;
        Y(i) = Y(i)+x(k)^h(i-k+1);
    end
end
subplot(4,1,1)
stem(x);
xlabel('x');
ylabel('x');
subplot(4,1,4)
stem(h);