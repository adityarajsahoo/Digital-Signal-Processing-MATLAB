clc
clear all
x=[1,8,5,2];
y=[1,4,3,2];
N=max(length(x),length(y));
xpad = [x zeros(1,N-length(x))];
ypad = [y zeros(1,N-length(y))];
ccirc = ifft(fft(xpad).*fft(ypad))
stem(ccirc,'filled')