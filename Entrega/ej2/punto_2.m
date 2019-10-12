%% Punto 2

%Correr antes de Simulink dc_motor_sim
Tw=0.01;     %Ancho de Ventana
ppv=20;      %Pulsos por vuelta
Ts=1e-4;     %Tiempo de muestreo

%%

order=[2,1,1];
data=iddata(out.Data,in.Data,Ts); % Exporto los datos del Simulink
sys=arx(data,order);

x=out.time;
y=out.Data;

step12=stepDataOptions('StepAmplitude',12);

figure(1)
hold on
plot(out.time,out.Data,'r')
step (sys,step12) %Respuesta al escalon de 12V del sistema
legend('Simulink', 'Modelo','location','southeast');


tf(sys) % Separo transferencia en num y den para utilizar transferencia en Simulink
[num,den]=tfdata(sys);
num=num{1};
den=den{1};
