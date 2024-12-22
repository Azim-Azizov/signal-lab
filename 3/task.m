clc;
clear;
fs1=500e3;
f=10e3;
cycles=5;
t1=0:1/fs1:cycles/f;
x1=cos(2*pi*t1*f);
subplot(411); plot(t1, x1, 'linewidth', 3);
title('Continious Signal'); xlabel('Time'); ylabel('Amplitude');

fs2=30e3;
t2=0:1/fs2:cycles/f;
x2=cos(2*pi*t2*f);
subplot(412); plot(t1, x1,'linewidth', 3);
title(sprintf('Sampled Continious Signal at %dkhz', fs2/1e3)); xlabel('Time'); ylabel('Amplitude');
hold on; plot(t2, x2, 'r', 'linewidth', 3);

fs3=70e3;
t3=0:1/fs3:cycles/f;
x3=cos(2*pi*t3*f);
subplot(413); plot(t1, x1, 'linewidth', 3);
title(sprintf('Sampled Continious Signal at %dkhz', fs3/1e3)); xlabel('Time'); ylabel('Amplitude');
hold on; plot(t3, x3, 'r', 'linewidth', 3);

fs4=15e3;
t4=0:1/fs4:cycles/f;
x4=cos(2*pi*t4*f);
subplot(414); plot(t1, x1, 'linewidth', 3);
title(sprintf('Improper Sampled Continious Signal at %dkhz', fs4/1e3)); xlabel('Time'); ylabel('Amplitude');
hold on; plot(t4, x4, 'r', 'linewidth', 3);