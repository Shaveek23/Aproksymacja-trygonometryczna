function [i] = trapezy_a(j,f,a,b,n)
%Funkcja obliczaj�ca warto�� ca�ki oznaczonej f(x)*cos(jx) na przedziale [a,b]
%   za pomoc� z�o�onej kwadratury trapez�w z podzia�em na n przedzia��w
x = linspace(a,b,n+1);
H = x(2) - x(1);
y = f(x).*cos(j*x);
y = cumsum(y);
y=y(end);
y=2*y - f(x(1)).*cos(j*x(1)) - f(x(end)).*cos(j*x(end));
i = y*H/2;
i=i*(1/pi);
end

