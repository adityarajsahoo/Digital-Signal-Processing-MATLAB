% Frequency analysis experiment
% section a
clc;
close all;
clear all;
f1=1/128;f2=5/128;n=0:255;fc=50/128;
x=cos(2*pi*f1*n)+cos(2*pi*f2*n);
xa=cos(2*pi*fc*n);
xamp=x.*xa;
subplot(2,2,1);plot(n,x);title('x(n)');
xlabel('n -->');ylabel('amplitude');
subplot(2,2,2);plot(n,xa);title('xa(n)');
xlabel('n -->');ylabel('amplitude');
subplot(2,2,3);plot(n,xamp);
xlabel('n -->');ylabel('amplitude');

% section b: 128 point DFT computation
 n=0:127;figure;n1=128;
 f1=1/128;f2=5/128;fc=50/128;
 x=cos(2*pi*f1*n)+cos(2*pi*f2*n);
 xc=cos(2*pi*fc*n);
 xa=cos(2*pi*fc*n);
 xamp=x.*xa;xam=fft(xamp,n1);
 stem(n,xam);title('xamp(n)');xlabel('n -->');
 ylabel('amplitude')

% section c: 128 point DFT computation
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
stem(n2,xam);title('xamp(n)');xlabel('n -->');ylabel('amplitude');