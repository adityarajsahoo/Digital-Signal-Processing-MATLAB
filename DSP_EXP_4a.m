% exp 4 IIR band pass elliptical Filter

clc;
close all;
clear all;
t=0:200;
fs = 150;
N = 256;
s1 = sin(2*pi*10*t/fs);
subplot(4,1,1);
plot(s1);
title('10Hz signal');
xlabel('Time');
ylabel('Amplitude');

s2=sin(2*pi*20*t/fs);
subplot(4,1,2);
plot(s2);
title('20Hz signal');
xlabel('Time');
ylabel('Amplitude');

s3=sin(2*pi*30*t/fs);
subplot(4,1,3);
plot(s3);
title('30Hz signal');
xlabel('Time');
ylabel('Amplitude');

s4 = s1+s2+s3;
subplot(4,1,4);
plot(s3);
title('Added signal');
xlabel('Time');
ylabel('Amplitude');

%IIR Bandpass Filter(Elliptical Filter)
[b,a]=ellip(4,0.1,40,[15 45]*2/fs);
[h,w]=freqz(b,a,512);
figure(2);
plot(w*fs/(2*pi),abs(h));
xlabel('Frequency in hz');
ylabel('Gain in dB');
title('Response of filter');
sf = filter(b,a,s4);
figure(3);
subplot(2,1,1);
plot(sf);
title('Filtered output');
y = fft(s4,512);
y1 = fft(sf,512);
p=((0:255)/256*fs/2);
subplot(2,1,2);
plot(p,abs([y(1:256)',y1(1:256)']));
title('Frequency spectrum of sampled signal');
xlabel('Frequency in Hz');
ylabel('Amplitude');