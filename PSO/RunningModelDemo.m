clear all; close all;
InitializeShipModelParameters;
P = 1;  I = 0.001; D = 0.0001;
%P = 0.4276; I = 0.1312; D = 8.0101;
%P = 1.2243; I = 0.3828; D = 0.7374;
%P =  1.4821;I = 0.1599; D = 0.0863;
KP = 1.7499; KI =   0.0983; KD =  2.5108;
Tp=10.7;
%StopTime = 10000;
simResult = sim('ShipCoureControlModel3.slx');

figure;
plot(simResult.tout, simResult.psi);
hold on,
plot([simResult.tout(1), simResult.tout(end)], [requiredPsi, requiredPsi]);
grid;