clear;
clc;
fs1=500e3;
f=10e3;
cycles=5;
t1=0:1/fs1:cycles/f;
x1=cos(2*pi*t1*f);
subplot(311); plot(t1, x1, 'linewidth', 3);
title('Continious Signal'); xlabel('Time'); ylabel('Amplitude');

fs2=30e3;
t2=0:1/fs2:cycles/f;
x2=cos(2*pi*t2*f);
subplot(312); plot(t, x, 'linewidth', 3);
title(sprintf('Sampled Continious Signal at %dkhz', fs2/1e3)); xlabel('Time'); ylabel('Amplitude');
hold on; stem(t2, x2, 'r', 'linewidth', 3);

fs3=13e3;
t3=0:1/fs3:cycles/f;
x3=cos(2*pi*t3*f);
subplot(313); plot(t, x, 'linewidth', 3);
title(sprintf('Improper Sampled Continious Signal at %dkhz', fs3/1e3)); xlabel('Time'); ylabel('Amplitude');
hold on; plot(t3, x3, 'r', 'linewidth', 3);