%% Project 1: Part 2- In this part we will investigate system response using the
%%filter command

%%Made by Rafael Perales; Tanveer Salim
%Part 2
b = [1 0 0];% setting the system for x[n] values
a = [1,-1,1];% setting the system for y[n] values
n = 0:30;% range of system and following reponses
tiledlayout(4,1)% way to show all graphs at once

nexttile% making the h[n] impulse response 
x =@(n) n==0;% making the x[n] to use for the impulse
h=filter(b,a,x(n));% filter function is used make the impulse response h[n]
stem(n,h,'k');% using stem to make a stem graph
axis([-0.5 30.5 -1.1 1.1]);%setting the max y and x values to show on the plot
xlabel('n');%labels for x and y
ylabel('h[n]');

nexttile
x1 =@(n) cos(2*pi*n/6).*(n>=0);% x1 is used to make the zero state response
y = filter(b,a,x1(n));% making the zero state response y[n]
stem(n,y,'k');% stem graph of y[n]
xlabel('n');
ylabel('y[n]');

nexttile
z_i = filtic(b,a,[1,2]);% zero input for the zero input response
y_0 = filter (b,a,zeros(size(n)),z_i);% filter function used to create zero input response
stem(n,y_0,'k'); % stem graph for y_0[n]
xlabel('n');
ylabel('y_0[n]');
axis([-0.5 30.5 -2.1 2.1]);%setting the max y and x values to show on the plot

%Part 3
nexttile
h = @(n) cos(pi*n/3)+sin(pi*n/3)/sqrt(3).*(n>=0);% function of h[n]
x = @(n) cos(2*pi*n/6).*(n>=0);% function of x[n]
y = conv(h(n), x(n)); % using the convolution operation to make y[n]
stem(0:60,y,'k');% plotting the convolution of y[n]
axis([0 30 -20 20])%setting the range from 0 to 30
xlabel('n')% x and y labels
ylabel('y[n]')
