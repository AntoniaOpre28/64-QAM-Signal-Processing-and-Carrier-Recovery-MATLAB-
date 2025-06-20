% PLL_output = lowpass(limited_carrier_signal, 0.05, sampling_frequency);
subplot(6,2,11.5);
plot(t(1:2000), PLL_output(1:2000), 'r');
title('Semnalul de Iesire al PLL');
xlabel('Timp (s)');
ylabel('Amplitudine');
axis tight;
grid on;
Semnalul de Iesire al PLL(Loop de sincronizare pe fază)
Scurtă Descriere:  Simularea ieșirii unui PLL aplicat asupra semnalului limitat pentru a obține o undă sinusoidală la frecvența purtătoarei inițiale. (Semnalul de ieșire al PLL este obținut prin aplicarea unui filtru low-pass pentru a simula funcționarea unui PLL)
Observaţii grafic: Semnalul sincronizat cu purtătoarea, care are forma unei unde sinusoidale și frecvența apropiată de 10 Hz, sugerând sincronizarea cu frecvența purtătoarei.
Explicaţie: Simularea PLL este esențială pentru recuperarea frecvenței purtătoarei, ajutând la extragerea semnalului purtător din semnalul modulat.
13.Concluzie
Codul utilizează diverse etape de procesare a semnalului, incluzând modulația QAM, ridicarea la puterea a patra, filtrarea, limitarea și simularea PLL-ului. Fiecare grafic vizualizează un pas specific al procesării semnalului și confirmă faptul că operațiile aplicate conduc la extragerea și recuperarea purtătoarei. Observațiile din grafice indică succesul recuperării purtătoarei prin extragerea componentei la frecvența purtătoarei originale în final.