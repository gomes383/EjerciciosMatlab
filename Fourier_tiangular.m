clc 
clear global
close all

%------- INPUT -------
f=10e3;
cant_periodos=5;
amplitud=10;
componente_frecuencia=5;
resolucion=500;

%------- PROCESS------
t=linspace(0,cant_periodos/f,resolucion);
triangular = 0;
for n=1:2:(componente_frecuencia*2-1)

    triangular = triangular + (1/(n^2))*cos(2*pi*n*f*t);
end
triangular_ft = pi/2 - (4/pi)*triangular;

%------- OUTPUT ------

figure (1)
subplot(2,1,1)
plot(t,triangular)
grid on
title('fourier trianular')
subplot(2,1,2)
plot(t,triangular_ft)
grid on
