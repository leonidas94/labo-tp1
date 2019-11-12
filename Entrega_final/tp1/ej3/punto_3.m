%% Punto 3

% Ejecutar antes de Simulink motor_pid.slx.

Tw=0.01;     %Ancho de Ventana
ppv=20;      %Pulsos por vuelta
Ts=1e-4;     %Tiempo de muestreo

Kp=0.001;
Kd=0.02;
Ki=0.4;
h=Tw;
N=100;


%%
% Ejecutar antes de Simulink motor_pid_model.slx.

% Los valores de num, den se obtienen de punto_2.m
% Fueron hardcodeados por comodidad.

num = [0 0.7770 0];
den = [1.0000 -0.9918 -0.0061];