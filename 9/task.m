clear;
clc;
t=0:0.1:20;
x=cos(t);
noise=randn(size(t));
y=x+noise;
figure;
subplot(211); plot(t, x); title('Origional Signal'); grid on;
subplot(212); plot(t, y); title("Noisy Signal"); grid on;

X=fft(x);
Y=fft(y);
N=length(X);
figure;
subplot(211); stem(0:N-1, abs(X)); grid on; legend('X_k');
subplot(212); stem(0:N-1, abs(Y)); grid on; legend('Y_k');

Yclean=Y;
for i=1:length(Yclean)
    if abs(Yclean(i))<50
        Yclean(i)=0;
    end
end

yclean=ifft(Yclean);
figure;
subplot(211); stem(0:N-1, abs(Yclean)); legend('Y_k_noiseless'); grid on;
subplot(212); plot(t, yclean); legend('Y(t) noiseless'); grid on;