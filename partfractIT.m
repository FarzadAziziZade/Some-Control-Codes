clc
clear all
a0=0;
a1=2;
a2=3;
a3=0;
a4=0;
a5=0;
a6=0;
a7=0;
a8=0;
b0=0;
b1=2;
b2=2;
b3=0;
b4=0;
b5=0;
b6=0;
b7=0;
b8=0;
syms s
partfrac((a8*s^8+a7*s^7+a6*s^6+a5*s^5+a4*s^4+a3*s^3+a2*s^2+a1*s+a0)/(b8*s^8+b7*s^7+b6*s^6+b5*s^5+b4*s^4+b3*s^3+b2*s^2+b1*s+b0))

% syms s
% partfrac((k*(s+a1)*(aa3*s^3+aa2*s^2+aa1*s+aa0)))/((s+b1)*(bb4*s^4+bb3*s^3+bb2*s^2+bb1*s+bb0)))

