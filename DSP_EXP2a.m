clc;
clear all;
close all;

%a.increasing signal%
n=0:10;
a=2;
x=a.^n;
subplot(2,1,1);
stem(n,x);
xlabel('Time index n');
ylabel('Amplitude');
title('Increasing signal');

%b.dereasing signal%
n=0:10;
a=0.5;
x=a.^n;
subplot(2,1,2);
stem(n,x);
xlabel('Time index n');
ylabel('Amplitude');
title('Decreasing signal');


