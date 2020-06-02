clear all,close all;
Vin = 12;
Vbattery = 3;
Vres = Vin - Vbattery;

% Define the standard resistance values
Rstandard = 220;
% Considerable the tolerance of the resistance, calculate the range of the
% resistance
Rmin = Rstandard * (1-0.05);
Rmax = Rstandard * (1+0.05);

% Calculate the range of the load current
% The load current is between 39mA and 43.1mA 
% The answer is a little different with the book answer
Ires_min = Vres / Rmax
Iref_max = Vres / Rmin
