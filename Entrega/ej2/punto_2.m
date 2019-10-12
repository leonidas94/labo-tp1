%% Punto 2

%Correr antes de Simulink dc_motor_sim
Tw=0.01     %Ancho de Ventana
ppv=20      %Pulsos por vuelta
Ts=1e-4     %Tiempo de muestreo

%%

order=[ 2,1,1];
data=iddata(out.Data,in.Data,Tw) % Exporto los datos del Simulink
sys=arx(data,order)

x=out.time;
y=out.Data;

step12=stepDataOptions('StepAmplitude',12);

figure(1)
hold on
plot(out.time,out.Data,'r')
legend('respuesta del sistema equivalente', 'respuesta real')
step (sys,t,step12) %Respuesta al escalon para comparar con el Simulink

tf(sys) % Para ver la transferencia
% para llevarla al simulink para hacer el punto 3
[num,dem]=tfdata(sys);
num=num{1};
dem=dem{1};
