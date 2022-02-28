%Triangular Signal%
a=2;
x1=1-abs(t)/a;
x2=0;
x=x1.*(abs(t)<=a)+ x2.*(abs(t)>a);
plot(x);
xlabel('Time');
ylabel('Amplitude');
title('Triangular Signal');