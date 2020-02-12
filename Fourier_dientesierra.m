clc 
clear global
close all

%------- INPUT -------
f=10e3;
cant_periodos=2;
amplitud=10;
componente_frecuencia=50;
resolucion=500;

%------- PROCESS------
t=linspace(0,cant_periodos/f,resolucion);
diente = 0;
for n=1:componente_frecuencia

    diente = diente + ((-1)^(n+1))*(1/n)*sin(2*pi*n*f*t);
end
diente_ft =((2*amplitud/pi))*diente;

%------- OUTPUT ------

figure (1)
subplot(2,1,1)
plot(t,diente)
grid on
title('fourier diente sierra')
subplot(2,1,2)
plot(t,diente_ft)
grid on
