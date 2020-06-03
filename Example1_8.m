clear all,close all;
% Define the symbol variable  Vn,n,theta and fin_n
syms Vn n theta fin_n n
% Define output voltage symbol expression
V_theta = Vn*cos(n*theta-fin_n)
% Calculate the RMS
Vrms = sqrt(n/ (2*pi) * int(V_theta*V_theta,theta,0,2*pi/n))
