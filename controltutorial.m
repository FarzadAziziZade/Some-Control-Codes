clc;
clear all;
close all;
tf = zpk([],[-1 -2 -2],2); % zero % pole % coeffiecient
%%
clc ;
clear all;
close all;
tf([3],[1 2 5 0])
%%
clc ;
clear all;
close all;

syms s
tf = 3 / (s*(s^2 + 2*s + 5))
f=ilaplace(tf) 
pretty(f)
%%
clc ;
clear all;
close all;

syms s
tf = 3 / (s*(s+2))
f=ilaplace(tf)
pretty(f)
 %%
 
 t= 0 : 0.01 : 2 ;
 plot(t,1/2-exp(-2*t)/2,'linewidth',2,'color','red')

 
 %%
 num = [1 7 2 ] ; 
 den = [ 1 9 26 24] ; 
 [A,B,C,D]=tf2ss(num,den)

 p=[0 0 1;0 1 0;1 0 0]

 
 A=inv(p)*A*p
 B=inv(p)*B
 C=C*p
 
 %%

 clc;
 clear all;
 close all;
 
 A=[-4 -1 ; 4 0];
 B=[2 0]';
 C=[1.5 0.625];
 D=0;
 T=ss(A,B,C,D)
 T=tf(T)
 %%
 
 numg=[361];
 deng=[1 16 361];

 step(numg,deng) 

 omegan=sqrt(deng(3)/deng(1)) % sqrt(d/b)  
 zeta=deng(2)/(2*omegan*deng(1))
 Ts=4/(zeta*omegan)
 Tp=pi/(omegan*sqrt(1-zeta^2))
 %%

 clc;
 clear all;
 close all;
 
 for zeta = 0.1 : 0.3 : 1
     hold on 
     num = [10]
     den = [1 2*zeta*10 100] 
     step(num,den)
 end
 
 %%

 a=100
 numa = [100*a];
 dena = conv ([1 a],[1 4 100])

 Ta=tf(numa,dena) 
 numb = [ 100];  
 denb = [ 1 4 100] ;
 Tb = tf(numb,denb)

 step(Ta,'.',Tb,'--')
 
 %%

 clc;
 clear all;
 close all
 deng=[1 2 9]
 Ta=tf([1 3]*9/3 ,deng)
 Tb=tf([1 5]*9/5 ,deng)
 Tc=tf([1 10]*9/10 ,deng)
T=tf(9,deng)
step(T,Ta,Tb,Tc)

text(0.5,0.6,'no zero')
text(0.4,0.7,'zero at -10')
text(0.35,0.8,'zero at -5')