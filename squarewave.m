clear all
close all
t1=0:.01:1;
t2=1.01:.01:2;
x1=ones(size(t1));
x2=-ones(size(t2));
x=[x1 x2];
xp=repmat(x,1,15);
t=linspace(0,20,length(xp));
plot(t,xp,'b')
axis([0 20 -2 2])