clear all,close all;
% Define the symbol variable  Vn,n,theta and fin_n
syms Vm theta Pi
% Define output voltage symbol expression
V_theta = Vm*sin(theta)
% Calculate the definite integral of Vo between 0 and pi
% Vo = 2Vm/Pi
Vo = 1/Pi * int(V_theta,theta,0,pi)

