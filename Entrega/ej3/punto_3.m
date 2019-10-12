%% Punto 3

%Correr antes de Simulink dc_motor_pid
Tw=0.01;     %Ancho de Ventana
ppv=20;      %Pulsos por vuelta
Ts=1e-4;     %Tiempo de muestreo

Kp=0.001;
Kd=0.02;
Ki=0.4;
h=Tw;
N=100;