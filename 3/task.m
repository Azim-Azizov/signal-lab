clc;
fs=500e3;
f=10e3;
nCyl = 5;
t=0:1/fs:nCyl/f;
x=cos(2*pi*t*f);
subplot(411);plot(t,x,'linewidth',3);title('Continious signal');
xlabel('Time');ylabel('Amplitude');

fs1=30e3;
t1=0:1/fs1:nCyl/f;
x1=cos(2*pi*t1*f);
subplot(412);plot(t,x,'linewidth',3);title('Sampled Continious signal');
xlabel('Time');ylabel('Amplitude');
hold on;stem(t1,x1,'r','linewidth',3);

fs2=70e3;
t2=0:1/fs2:nCyl/f;
x2=cos(2*pi*t2*f);
subplot(413);plot(t,x,'linewidth',3);title('Sampled Continious signal at 70HS');
xlabel('Time');ylabel('Amplitude');
hold on;stem(t2,x2,'r','linewidth',3);

fs3=15e3;
t3=0:1/fs3:nCyl/f;
x3=cos(2*pi*t3*f);
subplot(414);plot(t,x,'linewidth',3);title('Continious signal');
plot(t3,x3,'r','linewidth',3);