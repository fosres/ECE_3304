% Tanveer Salim; Rafael Perales
% ECE 3304
% May 2, 2020
Omega = linspace(-pi,pi,400);
H = tf([1],[1 -0.5],-1);
H_Omega = squeeze(freqresp(H,Omega));
subplot(2,1,1);
plot(Omega,abs(H_Omega),'k');
axis tight;
xlabel('\Omega');
ylabel('H[e^{j \Omega}]|');
subplot(2,1,2);
plot(Omega,angle(H_Omega)*180/pi,'k');
axis tight;
xlabel('\Omega');
ylabel('\angle H{e^{j \Omega}] [deg]');
