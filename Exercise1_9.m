close all, clear all
% Peak current is 10A
Ipeak = 10;
% Resistance is 10ohm
R = 10;
syms theta
% The current experssion follow through the resistance
Iin = Ipeak*sin(theta)
% Calculate the RMS about the current
Irms = sqrt(int(Iin^2,theta,0,pi)/pi)
% Calculate the power absorbed by the resistance
Power = Irms^2 * R