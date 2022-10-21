clear all; close all; clc;
% Frei programmierbares Dreieck-Signal
% Parameter des Dreiecksignals:
PeriodenDauer =3;
T1 =1; AnzahlPerioden = 3; Amplitude =7; AbtastZeit = 0.25;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1. Lösungsidee: suche eine Funktion, mit der das Signal
%    möglichst direkt erzeugt wird, ggf. mit Anpassungen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lookfor triangle
% ... sucht in allen Hilfetexten nach dem Begriff "triangle" (Dreieck).
% Wir werden fündig bei der Funktion "sawtooth". Nach dem Lesen der
% Hilfe ("doc sawtooth") wissen wir Bescheid und können programmieren:
% Zeitvektor mit der gegebenen Abtastzeit als Schrittweite
Zeit = 0:AbtastZeit:(AnzahlPerioden*PeriodenDauer);
% 2. Parameter der sawtooth-Funktion macht aus dem Sägezahn ein Dreieck
width = T1/PeriodenDauer;
% Aufruf der Sawtooth-Funktion mit zwei Übergabeparametern
y1    = sawtooth(Zeit*2*pi/PeriodenDauer,width);
% Achtung! Der sawtooth-Befehl erzeugt ein Signal zwischen -1 und 1.
% Das muss noch angepasst werden! In unserem Fall kann das geschehen durch
y1 = (y1+1)/2 * Amplitude;
% Plotten des Signals. Für Details des plot-Befehls: s. Kapitel 4!
plot(Zeit, y1,'-o'); grid on; hold on;
