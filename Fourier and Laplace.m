clear all
clc

syms t x
f = x^2;
fourier(f)

syms x t
f = x^2;
laplace(f)