clear, close all ;
% Define the symbol variable theta Im C T
syms Vm theta C T
% Define Voltage expression in the capacitor
V_theta = Vm * sin(theta)
% Calculate the current in the capacitorctor
I_theta = C * diff(V_theta,theta)
% Calculate the instance power absorbed in the capacitorctor
P_theta = V_theta * I_theta
% Calculate the average voltage absorbed in the capacitorctor
Vo = 1/ T * int(P_theta, theta,0,2*pi)
