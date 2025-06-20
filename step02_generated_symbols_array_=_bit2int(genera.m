% generated_symbols_array = bit2int(generated_bits_array, bits_per_symbol); % Generare simboluri
QAM_modulated_symbols = qammod(generated_symbols_array, QAM_order, 'gray'); % Modulare QAM

Afișare simboluri
subplot(6,2,2);
stem(0:min(100, length(generated_symbols_array))-1, generated_symbols_array(1:min(100, length(generated_symbols_array))), 'b');
title('Simboluri Aleatoare');
xlabel('Index Simbol');
ylabel('Valoare Întreagă');
axis padded;

% Afișare constelație QAM cu etichete de biți
scatterplot(QAM_modulated_symbols, 1, 0, 'y.');
title('Constelație QAM 64 cu Etichete de Biți');
xlabel('In-Phase');
ylabel('Quadrature');
hold on;

for i = 1:length(QAM_modulated_symbols)
    x = real(QAM_modulated_symbols(i));
    y = imag(QAM_modulated_symbols(i));
    symbol_index = generated_symbols_array(i);
    bits_label = dec2bin(symbol_index, bits_per_symbol);
    text(x, y - 0.3, bits_label, 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center', 'FontSize', 8, 'Color', 'w');
end
hold off;
Simboluri Aleatorii (Random)
Constelație QAM
Scurtă Descriere: Conversia biților în simboluri QAM și reprezentarea acestora într-o constelație de puncte pe un grafic. Fiecare punct din constelație corespunde unui simbol 64-QAM, și este etichetat cu valoarea sa binară. Afișează primele simboluri obținute prin gruparea biților generați.
Observaţii grafic: Distribuția uniformă a punctelor în constelația QAM cu etichete de biți. Fiecare punct reprezintă un simbol 64-QAM, care poate lua una dintre cele 64 de valori întregi, respectiv fiecare punct reprezentând o combinație unică de 6 biți.
Explicaţie: Constelația QAM vizualizează codificarea digitală într-un spațiu bidimensional. Etichetele binare ajută la identificarea valorii fiecărui simbol și verificarea codării Gray.
4. Modulația pe purtătoare / Semnalul QAM în domeniul timpului