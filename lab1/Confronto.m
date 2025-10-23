%% Matlab filter vs C filter
clear 
close all
clc

fs=10000;
matlab = readmatrix('resultsm.txt');
C = readmatrix('resultsc.txt');
T=1/500; %% maximum period
tt=0:1/fs:10*T; %% time samples

plot(tt,matlab', 'LineWidth', 1.5);
title("Results comparison", "FontSize", 15);
hold on;
plot(tt,C, 'm', 'LineWidth', 1.5);
xlabel("time[s]");
legend("Matlab","C");
grid on;

%% VS HDL filter 
hdl = readmatrix('results_vhd.txt');
plot(tt,hdl,"k--s");
lgd = legend("MATLAB","C","VHDL", 'Orientation','horizontal');
lgd.FontSize = 12;
xlabel("time [s]");
grid on;
    