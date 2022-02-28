% Program for computing circular convolution 
clc;
clear all;
close all;
a = input('enter the sequence x(n) = ');
b= input('enter the sequence h(n) = ');
F4 = [1 1 1 1; 1 -j -1 j; 1 -1 1 -1; 1 j -1 -j];
x = [a zeros(1, (N-n1))];
for i= 1:N
    k=i;
    for j = 1:n2
        H(i,j)=x(k)*b(j);
        k = k-1;
        if (k == 0)
            k = N;
        end
    end
end
y=zeros(1,N);
M=H';
for j = 1:N
    for i= 1:n2
        y(j)=M(i,j)+y(j);
    end
end
