clear all,close all;
% Calculate the voltage absorbed in the series resistance
Vin = 12;
Vbattery = 3;
Vres = Vin - Vbattery;
% Calculate the series resistance  Res = 225ohm
Ires = 0.04;
Res = Vres / Ires
% Calculate the power dissipated by the resistance Wres = 0.36W
Wres = Ires*Ires * Res
