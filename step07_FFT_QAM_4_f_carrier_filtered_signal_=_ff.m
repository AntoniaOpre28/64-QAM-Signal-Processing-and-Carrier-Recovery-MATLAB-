% FFT_QAM_4_f_carrier_filtered_signal = fft(QAM_4_f_carrier_filtered_signal, Number_FFT_Points);
subplot(6,2,9);
plot(f, abs(FFT_QAM_4_f_carrier_filtered_signal), 'b');
title('FFT al Semnalului Filtrat la 4 * Frecvența Purtătoarei');
xlabel('Frecvență (Hz)');
ylabel('Amplitudine');
xlim([0 f(end)/2]);
axis padded;
grid on;
FFT al Semnalului Filtrat la 4 * Frecvența Purtătoarei
Scurtă Descriere:  Calcularea FFT a semnalului filtrat pentru a observa componenta frecvenței dominante la 40 Hz, ce provine din semnalul ridicat la puterea a patra.
Observaţii grafic: Componenta clară de frecvență la 40 Hz, care confirmă că semnalul filtrat păstrează frecvența de interes.
Explicaţie: FFT-ul ajută la verificarea că semnalul filtrat conține componenta de frecvență dorită, esențială pentru procesul de recuperare a purtătoarei.
10.  Semnal Limitat la 4 * Frecvența Purtătoarei
% Afisare semnal limitat la 4 * frecventa purtatoarei
figure(signals_figure); 
subplot(6,2,8); 
plot(t_display, limited_display_signal, 'b', 'LineWidth', 1.5); 
title('Semnal Limitat la 4 * Frecventa Purtatoarei'); 
ylabel('Amplitudine'); 
axis tight;
 grid on;
Semnal Limitat la 4 * Frecventa Purtatoarei
Scurtă Descriere:   Limitarea semnalului filtrat pentru a obține un semnal binar clar, reprezentând semnalul purtătoarei.
Observaţii grafic: Semnal dreptunghiular la 40 Hz, rezultat din limitarea semnalului filtrat. Acesta va ajuta la recuperarea purtătoarei. Avem semnal binar (0 și 1) sinusoidal, care reprezintă componenta purtătoarei sincronizată.
Explicaţie: Limitarea ajută la extragerea componentei purtătoare, creând un semnal binar clar care poate fi utilizat în simularea unui PLL.
11. FFT al Semnalului Limitat la 4 * Frecvența Purtătoarei
% Afisare FFT pentru semnalul limitat
FFT_recovered_carrier = fft(limited_carrier_signal, Number_FFT_Points); figure(signals_figure); 
subplot(6,2,10); 
plot(f, abs(FFT_recovered_carrier), 'b'); 
title('FFT al Semnalului Limitat la 4 * Frecventa Purtatoarei'); 
xlabel('Frecventa (Hz)'); 
ylabel('Amplitudine'); y
xlim([0 f(end)/2]);)
axis padded; 
grid on; %
FFT al Semnalului Limitat la 4 * Frecventa Purtatoarei (divizat)
Scurtă Descriere: Calcularea FFT a semnalului limitat pentru a observa componenta de frecvență la 40 Hz. Spectrul semnalului limitat în jurul frecvenței purtătoarei.
Observaţii grafic: Componenta frecvenței la 40 Hz, care ar trebui să fie bine definită după limitare. O componentă la 10 Hz (frecvența purtătoarei originale), care indică că semnalul limitat a păstrat această componentă. Un semnal binar (0 și 1) sinusoidal, care reprezintă componenta purtătoarei sincronizată.
Explicaţie: FFT-ul ne permite să verificăm dacă semnalul limitat păstrează componenta de frecvență corectă, esențială pentru recuperarea purtătoarei.
12. Semnalul de ieșire al PLL (simulare)