clc
clear all 
close all
%GH
Tface=[1];
Tbottem=[1];
% exp(-Ts)
% T= ;
% Tface=[-T 2];
% Tbottem=[T 2];
A=[1 2];
B=[1];
C=[1];
D=[1];

E=[1];
F=[1];
G=[1];
H=[1];
f=conv(conv(conv(conv(A,B),C),D),Tface);
b=conv(conv(conv(conv(E,F),G),H),Tbottem);
GH = tf(f,b);
sys=feedback(GH,1);
rlocus(GH)
figure
step(sys);
ss=stepinfo(sys);
figure
impulse(sys);
controlSystemDesigner('rlocus',GH)
ss=input('desired point = ');
k=-polyval(b,ss)/polyval(f,ss)