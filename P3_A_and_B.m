%Rafael Perales
%Discrete Time Signals
% May 2,2020

%Project Description:Consider a complex signal composed of two closely
%spaced complex exponentials: x_1 [n]= e^(j2?n 30?100)+ e^(j2?n 33?100). 
%For each of the following cases, plot the length-N 
%DFT magnitude as a function of frequency fr, where fr = r/N. 


%Part A:Compute and plot the DFT of x1[n] using 10 samples (0 <= n <= 9).


%defining samples
samples=0:9;

%x1[n]
x1=exp(2i*pi*samples*30/100) + exp(2i*pi*samples*33/100);

%DFT
x1_of_n=fft(x1);

%plot of DFT
figure(1);
subplot (211);
fra=(0:length(x1n)-1)/length(x1n);
x=abs(x1_of_n);
stem(0:9,x,'k','filled');grid on;
xlabel ('f [Hz]'); ylabel ('|Y {zp} (f) |');
title('10 samples DTF');grid on;



%Part B:Zero – pad the signal from part (a) with 490 zeros and then 
%compute and plot the 500-point DFT. 

%zeropad of x1[n]
x1n = [x1 zeros(1,500-length(x1))];

%DFT
x = (fft(x1n));

%plot of DFT
figure(1);
subplot(212);
stem(0:499,abs(x),'filled');grid on;
title('|Y (f)| using 500 data points.');
xlabel ('f [Hz]'); ylabel ('|Y {zp} (f) |');
 