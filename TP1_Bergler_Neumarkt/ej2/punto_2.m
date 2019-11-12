%% Punto 2

% Este archivo se realiz� para obtener la transferencia del modelo. 

% Ejecutar despues de dc_motor_sim.slx.
% Aclaraci�n: Para correr esta parte del c�digo se deber� haber seteado en
% dc_motor_sim.slx que el escal�n empiece en t=0s. 

order=[2,1,1];
data=iddata(out.Data,in.Data,Ts); % Exporto los datos del Simulink.
sys=arx(data,order);

step12=stepDataOptions('StepAmplitude',12); % Defino un escal�n de 12V.


% La siguiente figura es equivalente a lo obtenido con
% dc_motor_sim_model.slx.

figure(1)
hold on
plot(out.time,out.Data,'r')
step (sys,step12) % Respuesta al escal�n de 12V del sistema.
grid on
legend('Simulink', 'Modelo','location','southeast');


tf(sys) % Separo transferencia en num y den para utilizar transferencia en Simulink.
[num,den]=tfdata(tf1) % Obtengo numerador y denominador de la funci�n transferencia.
num=num{1};
den=den{1};
