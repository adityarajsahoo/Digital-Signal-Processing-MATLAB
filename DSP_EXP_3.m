% 3rd experiment: Spectral analysis of the signals.
clc;
close all;
clear all;
t = 0:200;
fs = 150;

s1 = sin(2*pi*10*t/fs); % signal of 10 hz
subplot(4,1,1);
plot(s1);
title('10hz signal');
xlabel('time');
ylabel('amplitude');

s2 = sin(2*pi*20*t/fs); % signal of 20 hz
subplot(4,1,2);
plot(s2);
title('20hz signal');
xlabel('time');
ylabel('amplitude');

s3 = sin(2*pi*30*t/fs); % signal of 30 hz
subplot(4,1,3);
plot(s3);
title('30hz signal');
xlabel('time');
ylabel('amplitude');

s = s1 + s2 + s3;
subplot(4,1,4);
plot(s);
title('addition of 3 signals');
xlabel('time');
ylabel('power spectral density');

n = 256;
f = fft(s,n);
d = abs(f);
figure(2);
h = 0:fs/n:fs - (fs/n);
plot(h,d);
title('spectrum of signals');
xlabel('time');
ylabel('amplitude');

sn = awgn(s,0.5);
figure(3);
subplot(2,1,1);
plot(sn);
fn = fft(sn,n);
title('spectrum of signals with noise');
xlabel('time');
ylabel('power spectral density');

dn = abs(fn);
subplot(2,1,2);
plot(h,dn);
xlabel('frequency');
ylabel('power spectral density');

