%Parabolic Signal%
a=0.4;
x1=(a*(t.^2))/2;
x2=0;
x=x1.*(t>=0)+ x2.*(t<0);
plot(x);
xlabel('Time');
ylabel('Amplitude');
title('Parabolic Signal');