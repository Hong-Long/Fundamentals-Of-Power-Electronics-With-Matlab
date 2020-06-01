%
% R = 144Ohm
% V(t) = 120*sqrt(2)*cos(120*pi*t)
% Question: How much energy is absorbed by the bulb in 1 hour
clear all,close all;
% R =144 ohm
R = 144;    
% Define the symbol variable t
syms t
% Define voltage symbol expression
V_t = 120 * sqrt(2) * cos(120*pi*t)
% calculate the current by the ohm's law
I_t = V_t ./ R;
% calculate the instantaneous power 
P_t = (V_t.*I_t)
% Find the energy consumed, unit J W = 3600J
W = int(P_t,t,0,3600)

%% Drawing
t =0:0.0001:0.1;
% Define voltage symbol expression
V_t = 120 * sqrt(2) * cos(120*pi*t);
% calculate the current by the ohm's law
I_t = V_t ./ R;
% calculate the instantaneous power 
P_t = (V_t.*I_t);

figure('Name','Example1_1 Calculate file','NumberTitle','off')
subplot(1,3,1)
plot(t,V_t)
grid on
title('Voltage for Resistance')
axis([0,0.1,-200,200])
ylabel('Voltage(V)')
xlabel('Time (t)')

subplot(1,3,2)
plot(t,I_t)
grid on
title('Current for Resistance')
axis([0,0.1,-2,2])
ylabel('Current(A)')
xlabel('Time (t)')


subplot(1,3,3)
plot(t,P_t)
grid on
title('Power for Resistance')
axis([0,0.1,-50,250])
ylabel('Power(W)')
xlabel('Time (t)')



