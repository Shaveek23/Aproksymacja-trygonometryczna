function [i] = trapezy(f,a,b,n)
%f - funkcja ca³kowana, [a,b] - przedzia³ ca³kowania, n- liczba podzia³ów
%   Ca³kowanie z³o¿on¹ formu³¹ trapezów; zwraca i - wartosc ca³ki
x = linspace(a,b,n+1);
H = x(2) - x(1);
y = f(x);
y = cumsum(y);
y=y(end);
y=2*y - f(x(1)) - f(x(end));
i = y*H/2;
end