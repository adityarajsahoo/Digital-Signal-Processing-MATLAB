% section c: 128 point DFT computation
clc;
clear all;
close all;
n1=128;
n=0:99;figure;n2=0;n1-1;
f1=1/128;f2=5/128;fc=50/128;
x=cos(2*pi*f1*n)+cos(2*pi*f2*n);
xc=cos(2*pi*fc*n);
xa=cos(2*pi*fc*n);
xamp=x.*xa;
for i = 1:100,
   xamp1(i)=xamp(i);
end
xam=fft(xamp1,n1);
stem(n2,xam);
title('xamp(n)');
xlabel('n -->');
ylabel('amplitude');