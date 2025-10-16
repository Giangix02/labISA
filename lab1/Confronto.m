%% Matlab filter vs C filter
clear 
close all
clc

fs=10000;
matlab = readmatrix('resultsm.txt');
C = readmatrix('resultsc.txt');
T=1/500; %% maximum period
tt=0:1/fs:10*T; %% time samples

plot(tt,matlab')
hold on
plot(tt,C)
xlabel("time[s]")
legend("Matlab","C")
grid on

%% VS HDL filter 
hdl = readmatrix('.\Fir\Mod1\resultsvhd.txt');
plot(tt,hdl,"--s")
legend("Matlab","C","Vhdl")
xlabel("time[s]")
grid on
    