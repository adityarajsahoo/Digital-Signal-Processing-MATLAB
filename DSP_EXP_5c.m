% Analog IIR butter worth bandstop filter

clc;
clear all;
close all;

%Design of analog butterworth filter
alphap=2;
alphas=20;
fp1=0.2;
fp2=0.4;
fs1=0.1;
fs2=0.5;
f=2000;
omegap=[0.2*pi,0.4*pi];
omegas=[0.1*pi,0.5*pi];

%Design of butter LPF
[n wn]=buttord(omegap/pi,omegas/pi,alphap,alphas);
%Computing order of filter
[b a]=butter(n,wn,'stop');
w=0:0.01:pi;
[h w]=freqz(b,a,w);
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
