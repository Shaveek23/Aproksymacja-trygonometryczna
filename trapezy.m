function [i] = trapezy(f,a,b,n)
%f - funkcja ca�kowana, [a,b] - przedzia� ca�kowania, n- liczba podzia��w
%   Ca�kowanie z�o�on� formu�� trapez�w; zwraca i - wartosc ca�ki
x = linspace(a,b,n+1);
H = x(2) - x(1);
y = f(x);
y = cumsum(y);
y=y(end);
y=2*y - f(x(1)) - f(x(end));
i = y*H/2;
end