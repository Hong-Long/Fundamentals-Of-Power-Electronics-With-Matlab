clear all,close all;
% In the function of DC operation, the inductor is replaced by a short
% circuit while the capacitors is replaced by an open circuit.
% The equivalent circuits is R1, R2 and Vdc connected in series.
Vin = 36;  %36V
R1 = 10;    %R1=10Ohm
R2 = 20;    %R2 = 20Ohm
% Calculate the current in this circuit
% I = 1.2A
I = Vin / (R1 + R2)
% Calculate the voltage in the R1
% Vr1 = 12V
Vr1 = I * R1
% Calculate the power in the R1
% Power = 14.4W
Power1 = I * I * R1
% Calculate the voltage in the R2
% Vr2 = 24V
Vr2 = I *R2
% Calculate the power in the R2
% Power2 = 28.8W
Power2 = I * I *R2

% Calculate the total power
% Power = 43.2W
Power = Power1 + Power2
