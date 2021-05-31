clc
clear all
A=[1 0.5];
B=[1];
C=[1];
D=[1];

E=[1 2];
F=[1];
G=[1];
H=[1];
f=conv(conv(conv(A,B),C),D);
b=conv(conv(conv(E,F),G),H);
df=polyder(f);
db=polyder(b);
c1=conv(b,df);
c2=conv(f,db);
sys = tf(f,b);
step(sys)
S = stepinfo(sys)