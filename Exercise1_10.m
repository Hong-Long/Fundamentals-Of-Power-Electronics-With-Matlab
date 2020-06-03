close all, clear all
% Define the period T
T = 2*pi;
% Define the symbol t
syms t
% Define the experssion about the V_t_T
V_t_T = 100*t /T
% Calculate the RMS
Vrms = sqrt(int(V_t_T^2,t,0,T) / T)
