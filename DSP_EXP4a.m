% Program for linear convolution of the sequence x=[1,2] and h=[1,2,4]
clc;
clear all;
close all;
x=input('enter the 1st sequence: ');
h=input('enter the 2nd sequence: ');
y=conv(x,h);
figure;

subplot(3,1,1);
stem(x);ylabel('Amplitude -->');
xlabel('a(n) n-->');

subplot(3,1,2);
stem(h);ylabel('Amplitude -->');
xlabel('b(n) n-->');

subplot(3,1,3);
stem(y);ylabel('Amplitude -->');
xlabel('c(n) n-->');

disp('The resultant signal is');y
