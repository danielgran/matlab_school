
% Dieses Script stellt eine Sinus-Funktion in einem Plot-Fenster dar.
% Parametereinstellungen
AnzahlPerioden=3;
AnzahlStuetzstellen=1000;
Amplitude=5;
Frequenz=50;
% Zeitvektor und Sinus-Vektor aufstellen
t=linspace(0, AnzahlPerioden/Frequenz, AnzahlStuetzstellen);
y=Amplitude*sin(2*pi*Frequenz*t);
% Ausgabe im Plot-Fenster
plot(t,y);

