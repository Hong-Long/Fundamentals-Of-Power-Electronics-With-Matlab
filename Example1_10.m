close all, clear all
Vm = 170
% Define the symbol variable  Vn,n,theta and fin_n
syms  theta Pi
% Define output voltage symbol expression
V_theta = Vm*sin(theta)
% Calculate the RMS  120.2081528
VRMS = sqrt( int(V_theta^2,theta,0,pi) * 1 / pi)

% Using trapz to calculate the RMS

theta = linspace(0,pi,1024);

V_theta = Vm*sin(theta);
% 120.2082
Vrms = sqrt(trapz(theta,V_theta.^2) / pi)

