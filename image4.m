clc
clear all
close all
I= imread("ai-generated-7923883_640.jpg");
h= zeros(1,256);
for i =0:255
    h(i+1) = numel(find(I == i));
end
stem(h);
c = cumsum(h);
[l,w] = size(I);
normalized_value = c/(l*w);
equalized_value = round(normalized_value * 255);
new_i = zeros(sizeof(I));
for j = 0:255
    h(j+1) = find(equalized_value);
end