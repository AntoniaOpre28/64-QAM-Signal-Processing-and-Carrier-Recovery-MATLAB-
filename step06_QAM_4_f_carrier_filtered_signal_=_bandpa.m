% QAM_4_f_carrier_filtered_signal = bandpass(carrier_QAM_signal_pow_4, ...
    [carrier_frequency*4 - bandwidth, carrier_frequency*4 + bandwidth], sampling_frequency);

% Afișare semnal filtrat
subplot(6,2,7);
plot(t, QAM_4_f_carrier_filtered_signal, 'b');
title('Semnal Filtrat la 4 * Frecvența Purtătoarei');
xlabel('Timp (s)');
ylabel('Amplitudine');
axis padded;
grid on;
Semnal Filtrat la 4 * Frecvența Purtătoarei
Scurtă Descriere:  Filtrarea semnalului ridicat la puterea a patra pentru a izola componenta de frecvență la 4 * frecvența purtătoare. (Semnalul obținut după aplicarea unui filtru de bandă la 4 * frecvența purtătoarei (40 Hz))
Observaţii grafic: Semnal sinusoidal cu o frecvență de 40 Hz (4 * frecvența purtătoarei), după aplicarea filtrului de bandă, eliminând componentele de zgomot și alte frecvențe.
Explicaţie:  De ce facem acest lucru: Filtrarea bandă este utilizată pentru a extrage componenta de frecvență de 4 ori mai mare decât frecvența purtătoarei, facilitând continuarea procesului de recuperare.
9. FFT al semnalului filtrat la 4 * frecvența purtătoarei