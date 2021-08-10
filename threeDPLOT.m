xx=-2*pi:.5:2*pi;
[x,y]=meshgrid(xx);
z=sin(x)+cos(y);
figure
surf(x,y,z)
colorbar