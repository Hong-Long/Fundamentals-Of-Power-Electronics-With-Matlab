clear all,close all;

% In the function of DC operation, the inductor is replaced by a short
% circuit while the capacitors is replaced by an open circuit.
% The equivalent circuits is R3, R4 is connected in parallel, and then
% connected in series with R1 and Vdc

Vin = 48;
R1 = 2;
R2 = 5;
R3 = 15;
R4 = 10;
% Calculate the equivalent resistance of the R1, R2, and R3
% Rr2_r3 = 6 Ohm
Rr2_r3 = 1 / (1/R3+1/R4)
% Calculate the total equivalent resistance
% Rtotal = 8 Ohm
Rtotal = R1 + Rr2_r3
% Calculate the voltage in the Rr2_r3
% V_Rr2_r3 = 36
V_Rr2_r3 = (Rr2_r3 / Rtotal) * Vin
% Calculate the voltage in the R1
% V_R1 = 12
V_R1 = (R1 / Rtotal) * Vin
% Calculate the power in the R1
% PR1 = 70W
PR1 = V_R1 * V_R1 / R1
% Calculate the power in the R3
% PR3 = 86.4W
PR3 = V_Rr2_r3 * V_Rr2_r3 /R3
% Calculate the power in the R4
% PR4 = 129.6W
PR4 = V_Rr2_r3 * V_Rr2_r3 /R4

% Calculate the power in the supply
% Ppower = 288W
I = Vin / Rtotal;
Ppower = Vin * I

% PR2 = PL1 = PL2 = PC = 0
% Inductor is replaced with short circuit ,
% Capacitor is replaced with open circuit while the R2 is also open 