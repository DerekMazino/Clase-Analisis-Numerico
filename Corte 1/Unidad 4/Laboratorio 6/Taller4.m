
clear all
close all
clc

% x = [0.5 0.8 1.1 1.8 4];
% y = [7.1 4.4 3.2 1.9 0.9];
x = [0.7 0.9 1.1 1.6 3];
y = [8.1 4.9 3.3 1.6 0.5];
M=-1
N=-2
x1=x.^M;
x1y=x1.*y
x1y
x2=x.^(2*M)
x3=x.^N;
x3y=x3.*y
x4=x.^(2*N)
oper1=0;
oper2=0;
oper3=0;
oper4=0;

for i=1:4
    oper1=oper1+((x1(i))*y(i));
    oper1
    oper2=oper2+(x2(i));
    oper2
    oper3=oper3+((x3(i))*y(i));
    oper3
    oper4=oper4+(x4(i));
    oper4
end
final=oper3/oper4
final
