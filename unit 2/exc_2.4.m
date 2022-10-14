clear;close;clc;
grid on

x=-10:0.01:10;
y=1./(x.^2+5*x+7);

[y_max, x_max]=max(y);
x_max=x(x_max);

plot(x,y)