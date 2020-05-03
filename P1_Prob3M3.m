%Rafael Perales

%function x[n] = u[n ? 5] ? u[n ? 10] 

nx=(0:20);
x=(nx>=5)-(nx>=10);

%function y[n] = u[?n ? 15] ? u[?n ? 10] + ?[n ? 2] 
ny=(-20:10);
y=(ny<=-15)-(ny<=-10)+(ny==2);

%using correlate function created
[rxy,k]=correlate(x,y,nx,ny);

%plot of xn from range (0 to 20)
subplot(3,1,1);
stem(0:20,x);

%plot of yn from (-20 to 10)
subplot(3,1,2);
stem(-20:10,y);

%plotting rxy using created correlate function
subplot(3,1,3);
stem(k,rxy);
r=xcorr(x,y);

xlabel('k');
ylabel('r(XY)');



