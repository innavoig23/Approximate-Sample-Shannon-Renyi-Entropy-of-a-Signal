clear all, close all, clc

sawtooth = 61:65;
x = repmat(sawtooth,1,10); x = x(:);

d = 5; r = 2;

ManualValue = 10/46*log(10/46)+36/46*log(9/46) - 45/45*log(9/45)
Function = ApproximateSampleEntropy(x,d,r)

ManualValue - Function
