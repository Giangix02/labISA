clear 
close all
clc

matlab = readmatrix('resultsm.txt');
C = readmatrix('resultsc.txt');
hdl = readmatrix('results_vhd.txt');

plot(matlab)
hold on
plot(C)
plot(hdl)
legend("Matlab","C","Vhdl")
xlim([0,200])
grid on
    