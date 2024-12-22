clc;
t = linspace(-pi,pi,1000);
y=(1+0.9.*cos(8.*t))+sin(5.*t+10.*t.^2);
subplot(221); plot(t,y); grid on; 
title('(1+0.9.*cos(8.*t))+sin(5.*t+10.*t.^2)');

y1=y;
for i =2: length(y)
    y1(i) = 0;
end;

y1(1)= y(1);
subplot(222);plot(t,y1, '*-') ; grid on; title('First sample');

y2=y;
for i =1: length(y)
    y2(i) = 0;
end;

y2(500)= y(500);
subplot(223);plot(t,y2, '*-') ; grid on; title('Second sample');

y3=y;
for i =1: length(y)
    y3(i) = 0;
end;

y3(1000)= y(1000);
subplot(224);plot(t,y3, '*-') ; grid on; title('Third sample');

%Step response
figure
t = linspace(0,10,50);
y=(1+0.9.*sin(8.*t))+cos(5.*t+10.*t.^2)+exp(-2);
subplot(221); plot(t,y); grid on; 
title('(1+0.9.*sin(8.*t))+cos(5.*t+10.*t.^2)+exp(-2)');
y1=y;
for i=1: 9 % 10th sample in this for loop
    y1(i)=0;
end;
y1(10:length(y)) = y(10)- y(9);
subplot(222);plot(t,y1, '*-') ; grid on; title('10th step');

y2=y;
for i=1: 14 % 10th sample in this for loop
    y2(i)=0;
end;
y2(15:length(y)) = y(15)- y(14);
subplot(223);plot(t,y2, '*-') ; grid on; title('15th step');

y3=y;
for i=1: 29 % 10th sample in this for loop
    y3(i)=0;
end;
y3(30:length(y)) = y(30)- y(29);
subplot(224);plot(t,y3, '*-') ; grid on; title('30th step');

figure
t = linspace(-2*pi,2*pi,1000);
y= 3.*cos(7.*pi.*t)+ exp(-10) - sin(t.*pi.*t.^2);
subplot(311); plot(t,y); grid on; 
title('3.*cos(7.*pi.*t)+ exp(-10) - sin(t.*pi.*t.^2)');

y1=y;
for i =1: length(y)-1
    y1(i)= (y(i)+y(length(y)-i))/2;
end
y1(length(y))= y1(1);
subplot(312);plot(t,y1) ; grid on; 
title('Even decompositon');
    
y2=y;
for i =1: length(y)-1
    y2(i)= (y(i)-y(length(y)-i))/2;
end
y2(length(y))= y2(1);
subplot(313);plot(t,y2) ; grid on; 
title('Odd decompositon');