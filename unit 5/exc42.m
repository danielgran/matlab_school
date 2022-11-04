clear;close;clc;
t=0:0.1:50;

D=0.1
w0=0.8
PHI=atan(sqrt(1-D^2)/D);

a=1-1/sqrt(1-D^2)*exp(-D*w0*t).*sin(w0*sqrt(1-D^2)*t+PHI);
einh_o=1+1/sqrt(1-D^2)*exp(-D*w0*t)
einh_u=1-1/sqrt(1-D^2)*exp(-D*w0*t)

[amax,xmax]=max(a)
xmax = t(xmax)

plot(t,a,'k',t,einh_o,'k--', t, einh_u, 'k--')
plot(xmax,amax, "Maximalwert")
ylim([-0.3,2.3])
xlabel("t\rightarrow")
ylabel("a(t)\rightarrow")



grid on