clc 
clear global
close all



%--------INPUT--------

amplitud=10;
f=10e3;
cant_periodos=4;


theta=pi;
resolucion=1000;
repeticiones=13;
componente_frecuencia=20;


%--------PROCESS------

t=linspace(0,cant_periodos/f,500);
sinusoidal = amplitud*sin(2*pi*f*t + theta);

sinusoidal_0 = amplitud*sin(2*pi*f*t + 0);%---sen--

cuadrada = 0;

for n = 1.0:+2.0:repeticiones
    comp = (1/n)*sin(2*pi*n*f*t);
    if n == 1
    cuadrada = comp;
    else
     cuadrada   = cuadrada + comp;
    end

end

triangular = 0;
for n=1:2:(componente_frecuencia*2-1)

    triangular = triangular + (1/(n^2))*cos(2*pi*n*f*t);
end
triangular_ft = pi/2 - (4/pi)*triangular;


diente = 0;
for n=1:componente_frecuencia

    diente = diente + ((-1)^(n+1))*(1/n)*sin(2*pi*n*f*t);
end
diente_ft =((2*amplitud/pi))*diente;





%--------OUTPUT-------
figure (1)
subplot(2,2,1)
plot(t,sinusoidal_0)
title('Sinusoidal')
grid on
subplot(2,2,2)
plot(t,cuadrada)
grid on
title('Cuadrada')
subplot(2,2,3)
plot(t,triangular_ft)
grid on
title('Triangular')
subplot(2,2,4)
plot(t,diente_ft)
grid on
title('Diente sierra')


