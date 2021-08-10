clear all
clc
tic
a=input('enter num: ');
b=input('enter num: ');
c=input('so what?   ');

switch c
    case 'add'
        o=a+b
    case 'devide'
        o=a./b
    otherwise
        disp('Sorry!')
end
toc