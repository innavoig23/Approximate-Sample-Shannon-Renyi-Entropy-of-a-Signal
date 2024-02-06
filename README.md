# Approximate and Sample Entropy

This repository contains a simple MATLAB function designed to compute the Approximate Entropy (ApEn) and the Sample Entropy (SpEn). The implementation is inspired by the algorithm described on the PhysioNet website (https://archive.physionet.org/physiotools/ApEn/).


## Usage
To use this function, simply add the MATLAB file to your project and call it with your time series data as follows:

```matlab
x = % your time series data;
d = % embedding dimension;
r = % tolerance threshold;
[ApEn, SpEn] = ApproximateEntropy(x, d, r);
