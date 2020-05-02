% Project 2 
%Rafael Perales



%coefficeints
b=[0 1];
a=[1 -0.5];
figure(1);

w=-pi:pi/1000:pi;
H=freqz(b,a,w);%using builtin command

subplot(211)

plot(w/pi,abs(H));grid;%plotting the amplitude response
title('Amplitude Response');
xlabel('Frequency (rad/s)');ylabel('Amplitude(dB)')

subplot(212)

plot(w/pi,angle(H));grid;%plotting phase response
title('Phase Response');
xlabel('Frequency (rad/s)');ylabel('Phase')

