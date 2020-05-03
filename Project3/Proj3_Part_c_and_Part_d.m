% Tanveer Salim; Rafael Perales

% Project 3 Part(c)

n = 0:99;

x1 = exp(2i*pi*n*30/100)+ exp(2i*pi*n*33/100);
x1_of_n=fft(x1);
figure(2);
subplot(2,1,1);
fra=(0:length(x1_of_n)-1)/length(x1_of_n);
x=abs(x1_of_n);
stem(0:99,x,'k','filled');grid on;
xlabel('f [Hz]'); ylabel('|Y {zp} (f) |');
title('100 samples DFT');grid on;

% Project 3 Part(d)

x1n = [x1 zeros(1,500-length(x1))];

% DFT

x = (fft(x1n));

% plot of DFT

figure(1);

subplot(2,1,2);
stem(0:499,abs(x),'filled');
grid on;
title('Y (f)| using 500 data points.');
xlabel ('f [Hz]');
ylabel('|Y {zp} {f} |');