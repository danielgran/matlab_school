clear;close;clc;
hold on % Wie im Oszi, Bildspeicher nicht löschen

% Variableninitialsierung
dt=0.01
t=-1:dt:1;
f=1

% Funktionsdefinition
x=cos(2*pi*f*t)
dxdt=(x(2:end)-x(1:end-1))/dt % Numerische Differentation durch VWD

% Zeichnen der Funktionen
plot(t, x, 'k-o')
plot(t(2:end), dxdt, 'r-*')



