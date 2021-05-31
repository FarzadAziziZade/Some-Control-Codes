clc
clear all
close all
nump=input('number of poles=');
numz=input('number of zeros=');
x2=input(' X of the intended pole=');
y2=input('Y of the intended pole=');
L1=1;
L2=1;
zigmatetp=0;
zigmatetz=0;
if nump~=0
    for i=1:nump
    x1(i)=input('X pole=');
    y1(i)=input('Y pole=');
    if y1(i)<=y2
        if x1(i)<=x2
            tetpol(i)=atand(abs((y2-y1(i))/(x2-x1(i))));
        end
        if x1(i)>=x2
            tetpol(i)=180-atand(abs((y2-y1(i))/(x2-x1(i))));            
        end
    end
    if y1(i)>=y2
        if x1(i)>=x2
            tetpol(i)=atand(abs((y2-y1(i))/(x2-x1(i))));
        end
        if x1(i)<=x2
            tetpol(i)=180-atand(abs((y2-y1(i))/(x2-x1(i))));            
        end
    end
    if x1(i)==x2 & y1(i)==y2
        tetpol(i)=0;
    end
    len1(i)=sqrt((x2-x1(i))^2+(y2-y1(i))^2);
    L1=L1*len1(i);
    zigmatetp=zigmatetp+tetpol(i);
end
    elseif nump==0
        L1=1;
        len1=1;
end
if numz~=0
    for i=1:numz
    x1(i)=input('X zero=');
    y1(i)=input('Y zero=');
    if y1(i)<=y2
        if x1(i)<=x2
            tetzer(i)=atand(abs((y2-y1(i))/(x2-x1(i))));
        end
        if x1(i)>=x2
            tetzer(i)=180-atand(abs((y2-y1(i))/(x2-x1(i))));            
        end
    end
    if y1(i)>=y2
        if x1(i)>=x2
            tetzer(i)=atand(abs((y2-y1(i))/(x2-x1(i))));
        end
        if x1(i)<=x2
            tetzer(i)=180-atand(abs((y2-y1(i))/(x2-x1(i))));            
        end
    end   
    if x1(i)==x2 & y1(i)==y2
        tetzer(i)=0;
    end
    len2(i)=sqrt((x2-x1(i))^2+(y2-y1(i))^2);
    L2=L2*len2(i);
    zigmatetz=zigmatetz+tetzer(i);
end
    elseif numz==0
        L2=1;
        len2=1;
end
len1;
len2;
bbb=zigmatetp-zigmatetz;
out=180-bbb;
in=180+bbb;
k=L1/L2;