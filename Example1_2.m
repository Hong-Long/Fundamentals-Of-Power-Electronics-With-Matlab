clear all,close all;
% Define the symbol variable  Vn,n,theta and fin_n
syms Vn n theta fin_n
% Define output voltage symbol expression
V_theta = Vn*cos(n*theta-fin_n)
% Calculate the definite integral of Vo between 0 and 2*pi/n
% Vo = 0
Vo = n / (2*pi)*int(V_theta,theta,0,2*pi/n)
% Conclusion
% Any sinusoid of any frequency and phase has an average value of zero over
% one period or any integral number of periods

