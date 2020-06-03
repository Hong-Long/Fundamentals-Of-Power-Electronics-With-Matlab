clear, close all;
% Define the symbol variable theta Vm L T
syms theta Im L T
% Define current expression in the inductor
I_theta = Im*sin(theta);
% Calculate the voltage in the inductor
V_theta = L * diff(I_theta,theta)
% Calculate the instance power absorbed in the inductor
P_theta = V_theta * I_theta
% Calculate the average voltage absorbed in the inductor
Vo = 1 / T * int(P_theta,theta,0,2*pi)







