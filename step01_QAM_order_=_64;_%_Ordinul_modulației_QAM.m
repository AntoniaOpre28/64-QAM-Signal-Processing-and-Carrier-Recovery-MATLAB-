% QAM_order = 64; % Ordinul modulației QAM
bits_per_symbol = log2(QAM_order); % Numărul de biți pe simbol
bits_nr = bits_per_symbol * 80; % Numărul total de biți generați
rng default; % Setare generator de numere aleatoare la valori implicite
generated_bits_array = randi([0 1], bits_nr, 1); % Generare vector de biți aleatori

% Afișare biți
subplot(6,2,1);
stem(0:min(100, bits_nr)-1, generated_bits_array(1:min(100, bits_nr)), 'b');
title('Biți Aleatori (Limitat la 100)');
xlabel('Index Bit');
ylabel('Valoare Binara');
axis padded;
Biţi Aleatori (Random)
Scurtă Descriere: Generarea unui vector de biți aleatori, necesari pentru modulația QAM. Acești biți sunt convertiți ulterior în simboluri QAM.
Observaţii grafic: O distribuție aleatoare de biți, cu valori care alternează între 0 și 1, reprezentând secvența de biți folosită pentru modulație.
Explicaţie: Generarea biților aleatori este esențială pentru a reprezenta datele ce vor fi modulate și transmise. Fiecare simbol QAM va codifica un set de biți, iar generarea aleatorie asigură o distribuție variată a simbolurilor în constelația QAM.
3. Generarea simbolurilor și constelația QAM (64-QAM) cu etichete de biți