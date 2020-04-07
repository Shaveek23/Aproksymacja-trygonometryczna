function [y] = fun(x)
%x - wektor liczb rzeczywistych
%   Funkcja aproksymowana; zwraca wartosc funkcji

%Dobre dzialanie:
%y = cos(x).*cos(x).*cos(x).*cos(x) - sin(x).*sin(x).*sin(x).*sin(x);
%y = 0.25 + 1.5*cos(x)+2*sin(x) - 0.75*cos(2*x);
%y = exp(sin(x) + cos(x));
%y = sin(x);


%Niepoprawne dzia³anie:
%y = 0.5*tan(pi/2*x); % asymptoty
%y = exp(tan(x));
y=x.^2 + 2*x+ 4; %funkcja nieokresowa
%y = cos(2*x) + 2*sin(x).*sin(x); %funkcja stale równa 1





end

