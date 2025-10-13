% Legge una colonna di numeri da un file di testo e la salva in un array

% Nome del file (modifica con il tuo)
filename = 'resultsc.txt';

% Controlla che il file esista
if ~isfile(filename)
    error('Il file "%s" non esiste nella cartella corrente.', filename);
end

% Legge il contenuto del file
% (readmatrix è la scelta moderna e automatica per file numerici)
yC = readmatrix(filename);
TotalHarmonicDistortio = thd(yC)
yTOT = [yC';yq;yC'-yq];

% FinalError = mean((yC'-yq)./2);
FinalError = rmse(yC',yq);
plot(yC')
hold on
plot(yq)

% per il confronto va benissimo il plot prodotto da questo codice, magari
% si può aggiungere una qualche metrica della differenza massima tra i 2