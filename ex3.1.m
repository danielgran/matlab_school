clear;close;clc
T1=1
T2=4
PeriodenDauer=5
Amplitude=4;

AnzahlPerioden=3
AbtastZeit=0.1;

x=[]
y=[]
x=linspace(0, PeriodenDauer*AnzahlPerioden, 
(PeriodenDauer*AnzahlPerioden)/AbtastZeit)
% Erster Abschnitt
y=linspace(0, Amplitude, T1/AbtastZeit)

% Zweiter Abschnitt
toadd=zeros(1, (T2-T1)/AbtastZeit)
toadd=toadd+Amplitude
y=horzcat(y, toadd)

% Dritter Abschnitt
toadd=[]
toadd=zeros(1, (PeriodenDauer-T2)/AbtastZeit)
y=horzcat(y, toadd)

% Abschnitte wiederholen
y=repmat(y,AnzahlPerioden)

plot(x,y, 'b-o')
