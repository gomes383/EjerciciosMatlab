clc 
clear global
close all



%--------INPUT--------

A=10;
f=10e3;
theta=pi;
cant_periodos=1;

%--------PROCESS------

t=linspace(0,cant_periodos/f,500);
sinusoidal = A*sin(2*pi*f*t + theta);

sinusoidal_0 = A*sin(2*pi*f*t + 0);%---sen--
sinusoidal_90 = A*sin(2*pi*f*t + pi/2);%---cos--
sinusoidal_180 = A*sin(2*pi*f*t + pi);%----(-sen)---
sinusoidal_270 = A*sin(2*pi*f*t + 3*pi/2)%----(-cos)--


%--------OUTPUT-------
figure (1)
subplot(2,2,1)
plot(t,sinusoidal_0)
subplot(2,2,2)
plot(t,sinusoidal_90)
subplot(2,2,3)
plot(t,sinusoidal_180)
subplot(2,2,4)
plot(t,sinusoidal_270)

