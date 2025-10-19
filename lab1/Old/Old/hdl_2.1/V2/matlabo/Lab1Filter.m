clear 
close all
clc

x = 9; %Garbarino
y = 9; %Romanisio

N = 2*(mod(x,2))+8; %number of poles
nb = mod(y,7)+9; %number of bits

[bi, bq] = myfir_design(N,nb);