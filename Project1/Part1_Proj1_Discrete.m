%  Project 1: Part 1- This is basically a program that uses a discrete time signal
% and represents it with a few different operations
% Part 3- Using a convolution operation on a on two systems.
% Made by Rafael Perales; Tanveer Salim




%Part 1
n = -10:10;% sets the range
f = @(n) exp(-n/5) .* cos(pi*n/5) .* (n>=0);%function f[n](substitution of inline since it didnt work)
tiledlayout(3,1)% This is so all three graphs are displayed at the same time

nexttile%This is the first stem graph of (f[n]) and its labels
stem(n,f(n),'k');
xlabel('n');
ylabel('f[n]');

nexttile%This is the second stem graph(-2f[n]) and its labels
stem(n,(f(-2*n)),'k');
xlabel('n');
ylabel('f[-2*n]');

nexttile%This is the second stem graph(-2f[n]+1) and its labels
stem(n,f(-2*n+1),'k');
xlabel('n');
ylabel('f[-2*n+1]');

