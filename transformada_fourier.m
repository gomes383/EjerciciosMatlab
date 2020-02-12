clc 
clear global 
close all

%------- INPUT -------
f=10e3;
cant_periodos=2;
resolucion=200;
rep=13;

%------- PROCESS------

t=linspace(0,cant_periodos/f,resolucion);

cuadrada = 0;

for n = 1.0:+2.0:rep
    comp = (1/n)*sin(2*pi*n*f*t);
    if n == 1
    cuadrada = comp;
    else
     cuadrada   = cuadrada + comp;
    end

end




ft_cuadrada = abs (fftshift(fft(cuadrada)));

%------- OUTPUT ------

figure (1)
subplot(1,2,1)
plot(t,cuadrada)
title('Funcion tiempo')
grid on

subplot(1,2,2)
plot(ft_cuadrada)
grid on
title('Funcion frecuencia')





