function [i] = trapezy_b(j,f,a,b,n)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
x = linspace(a,b,n+1);
H = x(2) - x(1);
y = f(x).*sin(j*x);
y = cumsum(y);
y=y(end);
y=2*y - f(x(1)).*sin(j*x(1)) - f(x(end)).*sin(j*x(end));
i = y*H/2;
i=i*(1/pi);
end

