 

%inicjowanie zmiennych:
ms = [5,10,15,30,50,70,100,200]; 
size = length(ms);

err_table = zeros(1,size);
times = zeros(1,size);


%aproksymacja dla roznych wartosci m podanych w wektorze ms
for i = 1 : size
    
%interpolacja
[S, mean_square_error, time] = run(ms(i));


%tablicowanie
err_table(i) =  mean_square_error;
times(i) = time;

%szkicowanie aproksymacji oraz rzeczywistego przebiegu funkcji
plot_function(S,ms(i),@fun,i);


end

%szkicowanie wykresu bledu sredniokwadratowego oraz czasu dla danego m
Lgnd = legend('real', 'approx');
Lgnd.Position(1) = 0.01;
Lgnd.Position(2) = 0.4;
plot_err_time(ms,err_table,times);

%wyniki tablicowania:
disp('Tablicowanie: [real/approx/err]');
display(S);

disp('B³¹d œredniokwadratowy:');
display(mean_square_error);