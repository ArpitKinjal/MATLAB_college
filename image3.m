clc
close all
clear all
I=imread("FlD8mRUWQAIAzkX.jpg");
h=zeros(1,256);
for k=1:256
    h(k)=numel(find(I==k));
end
subplot(1,1,1);
plot(h);
xlabel('Intensity');
ylabel('Frequency');