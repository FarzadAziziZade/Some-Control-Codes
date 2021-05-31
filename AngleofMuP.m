clear all
clc
mp=input('zita and beta1 are the outputs of the mp=');
a0=(log(mp))^2;
a1=0;
a2=-(log(mp))^2-pi^2;
p=[a2 a1 a0];
zita=roots(p);
beta=acos(zita);


zita2=input('beta2 angle is the output of  the zita2=');
beta2=acosd(zita2);


disp('zita')
zita
disp('beta')
beta
disp('beta2')
beta2