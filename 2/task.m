clc;
clear;
N=128000;
mean=30;
sigma=2;
X=rand(1, N);
figure;
subplot(211); plot(X(1:100)); grid on;
title("Random Uniform Signal");
subplot(212); histogram(X, 100); grid on;
title("Histogram of Random Uniform Signal");

figure;
figure;
X_s=0;
for i = (1:12)
    if i == 1
        X_s=X;
    else
        X_s=X_s+rand(1, N);
    end
    figure(2);
    subplot(6, 2, i); plot(X_s(1:100)); grid on;
    title(sprintf("Random Uniform Signal (%d/12)", i))
    figure(3);
    subplot(6, 2, i); histogram(X_s, 100); grid on;
    title(sprintf("Histogram of Random Uniform Signal (%d/12)", i))
end

figure;
X_r=(X_s-6)*sigma+mean;
subplot(211); plot(X_r(1:100)); grid on;
title("Random Normalized Signal from previous figure");
subplot(212); histogram(X_r, 100); grid on;
title("Histogram of above signal");

%second method
figure;
X2=rand(1,N);
x_r2=sqrt(-2*log(X)).*cos(2*pi*X2);
x_r2=x_r2*sigma+mean;
subplot(211); plot(x_r2(1:100)); grid on;
title('Normal distributed function2');
subplot(212); hist(x_r2, 100); grid on;
title('Histogram of the signal2');