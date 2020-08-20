close all
clear all
clc
% X = [0 1 2 3 4];
% Y = [0 0.75 2.25 3 2.25];
X = [8.1 8.3 8.6 8.7];
Y = [16.94410 17.56492 18.50515 18.82091];
[M] = my_LagrangePolynomial_Camilo_Marin(X,Y);

% fun = @(x) M(1)*x.^4+M(2)*x.^3+M(3)*x.^2 + M(4)*x + M(5);
% X= 0:0.01:7;
%       
% plot(X,y);
% hold on
% plot(0, fun(0), '*');
% plot(1, fun(1), '*');
% plot(2, fun(2), '*');
% plot(3, fun(3), '*');
% plot(4, fun(4), '*');