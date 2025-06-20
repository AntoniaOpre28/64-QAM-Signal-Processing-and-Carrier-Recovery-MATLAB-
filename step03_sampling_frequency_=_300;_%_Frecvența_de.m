% sampling_frequency = 300; % Frecvența de eșantionare
carrier_frequency = 10; % Frecvența purtătoare
t = 0:1/sampling_frequency:length(generated_symbols_array)-1/sampling_frequency; % Vector de timp

imag_QAM_modulated_samples = repelem(imag(QAM_modulated_symbols), sampling_frequency);
real_QAM_modulated_samples = repelem(real(QAM_modulated_symbols), sampling_frequency);
carrier_QAM_signal = imag_QAM_modulated_samples' .* cos(2*pi*carrier_frequency*t) - ...
    real_QAM_modulated_samples' .* sin(2*pi*carrier_frequency*t);

% Afișare semnal QAM în domeniul timpului
subplot(6,2,3);
plot(t, carrier_QAM_signal, 'b');
title('Reprezentarea Semnalului QAM în Domeniul Timpului');
xlabel('Timp (s)');
ylabel('Amplitudine');
axis padded;
grid on;
Semnalului QAM în Domeniul Timpului
Scurtă Descriere: Modularea semnalului QAM pe o frecvență purtătoare sinusoidală. Această etapă permite transmiterea simbolurilor QAM printr-o frecvență purtătoare specifică. Afisarea semnalului QAM în domeniul timpului, pentru a observa forma semnalului modulat înainte de aplicarea frecvenței purtătoare.

Observaţii grafic: Semnalul modulat, cu amplitudine și fază variabilă. Este semnal complex care conține informația de amplitudine și fază a simbolurilor modulate.( Semnalul QAM este modulat pe frecvența purtătoare de 10 Hz, iar amplitudinea semnalului variază pe intervalul de timp.)

Explicaţie: Modulația pe purtătoare permite transmisia semnalului la o frecvență specifică, astfel încât să putem trimite mai multe semnale pe frecvențe diferite prin același canal fără interferențe. Vizualizarea semnalului în domeniul timpului ne ajută să înțelegem modul în care semnalul evoluează în timp, ceea ce este esențial pentru procesarea ulterioară.
5. FFT al semnalului QAM