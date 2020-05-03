%Rafael Perales

% creating function using cross correlation
function [rxy,k]=correlate(x,y,nx,ny)
n=[-ny(2) -ny(1)];
%reverse y and cpute using convulution
y=flip(y);
rxy=conv(x,y);
%Compute shifts
k=0:length(rxy)-1;
k=k-min(n(1),nx(1));
end



