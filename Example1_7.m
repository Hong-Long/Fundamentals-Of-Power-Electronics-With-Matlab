close all, clear all, clc
% Define Vm = 170V
Vm = 170;
% Define period T = 2*pi
T = 2*pi;
% Divded 1024 points between 0 and 2*pi
theta = linspace(0,T,1024);
% Define the experssion about the V_t
V_t = Vm*sin(theta);
% Calculate the trapezoidal integral to calculate the output voltage
Vo = 1 / T * trapz(theta,V_t)