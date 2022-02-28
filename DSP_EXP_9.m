clc
clear all
A=load("C:\Users\PAPUN\Downloads\Z001.txt");
figure(1);
subplot(3,1,1)
plot(A,'r')
title('Normal Rhythm')
xlabel('Samples')
ylabel('Amplitude (mV)')
B=load("C:\Users\PAPUN\Downloads\S001.txt");
subplot(3,1,2)
plot(B,'r')
title('Abnormal Rhythm')
xlabel('Samples')
ylabel('Amplitude (mV)')
C=A+B;
% subplot(3,1,3)
% plot(A,'r');
% hold on
% plot(B,'b');
% hold on
% plot(C,'g')
% title('Added Rhythm')
% xlabel('Samples')
% ylabel('Amplitude (mV)')



n=512;
f=fft(C,n);
d=abs(f);
subplot(3,1,3)
fs=80;
h=0:fs/n:fs-(fs/n);
plot(h,d,'m');
title('spectrum of signals');
xlabel('frequency');
ylabel('amplitude');



% IIR BANDPASS FILTER(ELLIPTICAL FILTER)
figure(3);
[b,a]=ellip(4,0.1,40,[3 30]*2/fs);
[h,w]=freqz(b,a,1024);
figure(3);
subplot(3,1,1);
plot(w*fs/(2*pi),abs(h));
xlabel('Frequency in hz');
ylabel('Gain in dB');
title('Response of normal rhythm in filter IIR');
sf=filter(b,a,A);
figure(3);
subplot(3,1,2);
plot(sf);
title('Filtered output IIR');
y=fft(A,1024);
y1=fft(sf,1024);
p=((0:255)/512*fs/2);
subplot(3,1,3);
plot(p,abs([y(1:512)',y1(1:512)']));
title('Frequency spectrum of normal rhythm signal');
xlabel('Frequency in Hz');
ylabel('Amplitude');



figure(4);
subplot(3,1,1);
plot(w*fs/(2*pi),abs(h));
xlabel('Frequency in hz');
ylabel('Gain in dB');
title('Response of abnormal rhythm in filter IIR');
sf1=filter(b,a,B);
figure(4);
subplot(3,1,2);
plot(sf1);
title('Filtered output IIR');
y=fft(B,1024);
y1=fft(sf1,1024);
p=((0:255)/512*fs/2);
subplot(3,1,3);
plot(p,abs([y(1:512)',y1(1:512)']));
title('Frequency spectrum of abnormal rhythm signal');
xlabel('Frequency in Hz');
ylabel('Amplitude');