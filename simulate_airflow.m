% Basic engine air intake model

clc; clear; close all;

%% Parameters
RPM = linspace(1000, 7000, 100);   % Engine speed in RPM
VE = 0.85;                         % Volumetric efficiency (assumed constant)
V_d = 0.002;                       % Displacement volume (2.0L in m³)
rho_air = 1.184;                   % Air density at 25°C and 1 atm (kg/m³)

%% Air mass flow calculation
% ṁ_air = ρ_air × V_d × RPM × VE / 2
m_dot_air = rho_air * V_d * RPM * VE / 2;

%% Plotting
figure;
plot(RPM, m_dot_air, 'LineWidth', 2);
xlabel('Engine Speed (RPM)');
ylabel('Air Mass Flow (kg/s)');
title('Airflow vs RPM');
grid on;
