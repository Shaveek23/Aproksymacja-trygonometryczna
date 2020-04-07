function [S, mean_square_error,time] = run(m)
% m - liczba punktów w przedziale, S - tablicowanie, macierz 3xm, mean_square_error -
% blad sredniokwadratowy, time = czas trwania programu
%   Funckja tworz¹ca tablicowanie wartoœci funkcji, aproksymacji oraz b³êdu,
%oblicza tak¿e b³¹d œrednokwadratowy

%inicjacja zmiennych
n = 100000; % liczba podzia³ów  w kwadraturze trapezów
x = linspace(0,2*pi,m)'; %% wektor m rownoodleglych punktow na przedziale [0, 2pi]
tic
a0 = (1/(2*pi))*trapezy(@fun,0,2*pi,n);

a = zeros(m,1);
b = zeros(m,1);

%obliczanie wspo³czynników a i b
for j = 1 : m
   a(j,1) = trapezy_a(j,@fun,0,2*pi,n);
   b(j,1) = trapezy_b(j,@fun,0,2*pi,n);
end

f_approx = zeros(m,1);
err = zeros(m,1);
f_approx = f_approx + a0;


f_real = fun(x);

%aproksymowanie
for i = 1 : m
    for j = 1 : m  
         f_approx(i,1) = f_approx(i,1) + a(j,1)*cos(j*x(i)) + b(j,1)*sin(j*x(i)); 
    end   
    err(i,1) = abs(f_approx(i,1) - f_real(i,1));
end

%obliczanie b³êdu œredniokwadratowego
mean_square_error = err.^2;
mean_square_error = sqrt( sum(mean_square_error)./m);

%tablicowanie
S = [f_real f_approx err];
time = toc;
end

