% Analog IIR butterworth high pass filter

clc;
clear all;
close all;

%Design of analog butterworth filter
alphap=0.4;
alphas=30;
fp=400;
fs=800;
f=2000;
omegap=2*fp/f;
omegas=2*fs/f;

%Design of butter LPF
[n wn]=buttord(omegap,omegas,alphap,alphas);
%Computing order of filter
[b a]=butter(n,wn,'high');
w=0:0.01:pi;
[h w]=freqz(b,a,w,'whole');
m=abs(h); %To compute magnitude response.
an=angle(h); %To compute phase response.
subplot(2,1,1);

%Plotting magnitude response
plot(w/pi,20*log(m));
grid;
xlabel('Normalised Frequency');
ylabel('Gain in dB');
subplot(2,1,2);

%Plotting phase response
plot(w/pi,an);
grid;
xlabel('Normalised Frequency');
ylabel('Gain in radians');
