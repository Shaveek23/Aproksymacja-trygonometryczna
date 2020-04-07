function [] = plot_err_time(ms,err_table,times)
%ms -wektor wartosci m, err_table -wektor bledow sredniokwadratoweych,
%times - wektor czasow trwania programu
%   Funkcja tworz¹ca wykres b³êdu œredniokwadratowego i czasu w zaleznosci
%   od liczby punktow m
hold on
figure
semilogy(ms,err_table,'blue',ms,times,'red');
legend('error','time');
xlabel('Wartosci m');
ylabel('Rzad wielkosci');

hold off
end

