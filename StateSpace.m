clc
clear all

A = [0 1.2; 0 1.1];
B=[0;1];
C=[1 0];
D=0;
X0=[1;1]
syms s;

%(SI-A)
(s*eye(size(A,1))-A)


%(SI-A)^-1
(s*eye(size(A,1))-A)^(-1)

%for det(SI-A)=0
det(s*eye(size(A,1))-A)


%exp(At)
ilaplace((s*eye(size(A,1))-A)^(-1))

%X(t)
ilaplace((s*eye(size(A,1))-A)^(-1))*X0

%G(s)
C*((s*eye(size(A,1))-A)^(-1))*B