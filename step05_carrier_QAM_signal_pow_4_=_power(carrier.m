% carrier_QAM_signal_pow_4 = power(carrier_QAM_signal, 4);
subplot(6,2,6);
plot(t, carrier_QAM_signal_pow_4, 'g');
title('Semnal QAM^4');
xlabel('Timp (s)');
ylabel('Amplitudine');
grid on;
axis padded;
Semnal QAM Ridicat la a 4
Scurtă Descriere: Ridicarea semnalului QAM la puterea a patra pentru a modifica forma semnalului și a îl pregăti pentru filtrare. (ajută la extragerea purtătoarei prin alinierea fazelor)
Observaţii grafic:  Semnalul este  amplificat neregulat, cu o componentă majoritară la 4 * frecvența purtătoare (40 Hz),avand  variații mai mari de amplitudine datorită ridicării la puterea a patra, acesta va fi extras prin filtrare.
Explicaţie: Ridicarea la puterea a patra ajută la amplificarea semnalului și la pregătirea acestuia pentru etapele de filtrare și recuperare.
7. FFT al semnalului QAM ridicat la puterea a patra
FFT_carrier_QAM_signal_pow_4 = fft(carrier_QAM_signal_pow_4, Number_FFT_Points);
subplot(6,2,7);
plot(f, abs(FFT_carrier_QAM_signal_pow_4), 'b');
title('FFT al Semnalului QAM^4');
xlabel('Frecvență (Hz)');
ylabel('Amplitudine');
xlim([0 f(end)/2]);
axis padded;
grid on;
FFT al Semnalului QAM Ridicat la a 4 a
Scurtă Descriere: Calcularea FFT a semnalului ridicat la puterea a patra pentru a observa impactul modificării semnalului asupra distribuției frecvenței.
Observaţii grafic: Variațiile spectrale se vor extinde pe o gamă mai largă de frecvențe datorită amplificării semnalului la puterea a patra. O componentă puternică în jurul valorii de 40 Hz, indicând frecvența de patru ori mai mare decât purtătoarea originală.
Explicaţie: FFT-ul semnalului ridicat la puterea a patra ne permite să vedem efectele modificării semnalului și să înțelegem impactul acestuia asupra spectrului.
8. Filtrarea semnalului ridicat la 4 * frecvența purtătoarei