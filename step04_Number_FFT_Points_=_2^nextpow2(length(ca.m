% Number_FFT_Points = 2^nextpow2(length(carrier_QAM_signal));
f = sampling_frequency * linspace(0, 1, Number_FFT_Points);
FFT_carrier_QAM_signal = fft(carrier_QAM_signal, Number_FFT_Points);
subplot(6,2,5);
plot(f, abs(FFT_carrier_QAM_signal), 'b');
title('FFT al Semnalului QAM');
xlabel('Frecvență (Hz)');
ylabel('Amplitudine');
axis padded;
xlim([0 f(end)/2]);
grid on;
FFT al Semnalului QAM
Scurtă Descriere: Calcularea FFT a semnalului QAM pentru a vizualiza componentele de frecvență ale semnalului modulat.
Observaţii grafic: În domeniul frecvenței, semnalul QAM va avea o componentă concentrată în jurul frecvenței purtătoarei de 10 Hz, care reprezintă componenta dominantă.
Explicaţie: FFT-ul ne ajută să identificăm distribuția spectrală a semnalului QAM, permițându-ne să înțelegem cum se distribuie energia pe diferite frecvențe.
6. Semnalul QAM ridicat la puterea a patra