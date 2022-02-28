 n=0:127;figure;n1=128;
 f1=1/128;f2=5/128;fc=50/128;
 x=cos(2*pi*f1*n)+cos(2*pi*f2*n);
 xc=cos(2*pi*fc*n);
 xa=cos(2*pi*fc*n);
 xamp=x.*xa;xam=fft(xamp,n1);
 stem(n,xam);title('xamp(n)');xlabel('n -->');
 ylabel('amplitude')