close all; clear all; clc;
x0=input('x0=');
xf=input('xf=');
y0=input('y0=');
z0=input('z0=');
h=input('Pasul este=');
n=0;
y=y0;
z=z0;
f1=@(x,y,z) z+1;
f2=@(x,y,z) y-x;
for x=x0:h:xf
    k0=h*f1(x,y,z);
    l0=h*f2(x,y,z);
    k1=h*f1(x+h,y+k0,z+l0);
    l1=h*f2(x+h,y+k0,z+l0);
    y=y+(k0+k1)/2;
    z=z+(l0+l1)/2;
    disp(['x' num2str(n) '    ' num2str(x) '   k0 ' num2str(k0) '   k1 ' num2str(k1) '   l0 ' num2str(l0) '   l1 ' num2str(l1) '   y' num2str(n) '    ' num2str(y) '   z' num2str(n) '    ' num2str(z)])
    n=n+1;
end