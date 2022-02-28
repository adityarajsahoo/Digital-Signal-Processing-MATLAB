% Frequency analysis experiment
% section a
clc;
close all;
clear all;
f1=1/128;
f2=5/128;
n=0:255;
fc=50/128;
x=cos(2*pi*f1*n)+cos(2*pi*f2*n);
xa=cos(2*pi*fc*n);
xamp=x.*xa;
subplot(2,2,1);plot(n,x);title('x(n)');
xlabel('n -->');ylabel('amplitude');
subplot(2,2,2);plot(n,xa);title('xa(n)');
xlabel('n -->');ylabel('amplitude');
subplot(2,2,3);plot(n,xamp);title('xamp');
xlabel('n -->');ylabel('amplitude');