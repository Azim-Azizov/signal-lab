clc;
f1 = 50;
f2 = 100;
f3 = 120;
f = max([f1,f2,f3]);
fs = 3* f;
Ts = 1/fs;
t= 0:Ts:1;
x = sin(2*pi*f1*t)+ 0.7*sin(2*pi*f2*t)+0.5*sin(2*pi*f3*t);
subplot(2,1,1);
plot(t,x); grid on;title('original signal');

N=length(t);
for m=1:N
    X(m) = 0;
    for n = 1:N
        X(m) = X(m)+ x(n) *(cos(2*pi*n*m/N)-1i*sin(2*pi*n*m/N));
    end
end

fp= fs*(0:N/2-1)/N;
subplot(2,1,2);
plot(fp, abs(X(1:N/2))); grid on; title('FFT of original signal with equation');