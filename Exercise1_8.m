close all, clear all
clear all,close all;
% Define the symbol variable  Vn,n,theta and fin_n
syms Vm theta Pi
% Define output voltage symbol expression
V_theta = Vm*sin(theta)
% Calculate the RMS
VRMS = sqrt( int(V_theta^2,theta,0,pi) * 1 / pi)