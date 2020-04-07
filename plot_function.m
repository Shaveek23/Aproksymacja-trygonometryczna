function [] = plot_function(S, m, fun,i)
%S - macierz 3xm zawiera wartosci funkcji, aproksymacje oraz blad, m liczba
%punktow, fun - funkcja aproksymowana, i - numer iteracji po liczbie
%punktow m
%   Funkcja tworz¹ca wykres funkcji oraz aproksymacji na przedziale [0,2pi]

x = linspace(0,2*pi,m)'; %% wektor m rownoodleglych punktow na przedziale [0, 2pi]
y = linspace(0,2*pi,10000);


subplot(2,4,i);
plot(y,fun(y),'blue',x,S(:,2),'red');
axis([0 2*pi min(fun(y)) max(fun(y))]);
title(['Podzia³ przedzia³u na ' ,num2str(m), ' punktow']);

end

