%
% R = 144Ohm
% V(t) = 120*sqrt(2)*cos(120*pi*t)
% Question: How much energy is absorbed by the bulb in 1 hour
clear all,close all;
% R =144 ohm
R = 144;    
% Define the symbol variable t
syms t
% Define voltage symbol expression
V_t = 120 * sqrt(2) * cos(120*pi*t)
% calculate the current by the ohm's law
I_t = V_t ./ R;
% calculate the instantaneous power 
P_t = (V_t.*I_t)
% Find the energy consumed, unit J W = 3600J
Energy = int(P_t,t,0,3600)
% Find the energy consumed in one day, unit J Energy_For_OneDay = 2880000
Energy_For_OneDay = Energy .* 8
% Find the energy consumed in one month, unit J Energy_For_OneDay = 86400000 = 86400kJ
Energy_For_OneMonth = Energy_For_OneDay .* 30
% Calculate the required cost Cost = 2.88
Cost = double( [Energy_For_OneMonth /3600000 * 0.12 * 1.0])