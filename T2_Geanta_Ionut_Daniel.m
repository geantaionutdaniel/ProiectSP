P=40; %perioada semnalului
D=11; %durata unui impuls
N=50; %numarul de coeficienti
n=N/2; %pentru ca suma este de la -n la n
w0=2*pi/P; %pulsatia
t=0:0.002:160; %pasul de 2 ms (160/40 = 4 perioade pe ecran)
duty=(D/P)*100; %factorul de umplere (durata unui impuls / perioada)
semnal=(1*square(w0*t,duty)+abs(1*square(w0*t,duty)))/2; %semnal dreptunghiular cu amplitudinea A=1
x=zeros(1,N+1); %vector initializat cu zero de marime N care va fi populat cu coeficientii calculati dupa formula standard
for k=-n:n
    fct=@(t)((1*square(w0*t,duty)+abs(1*square(w0*t,duty)))/2.*exp(-1j*k*w0*t)); %functia dupa care se calculeaza integrala
    x(k+n+1)=1/P*integral(fct,0,P); %calculul fiecarui coeficient indexat astfel incat pozitia 1 din vector sa corespunda primului coeficient. 
    %n=25, deci, daca avem k=-25, atunci x+n+1=1
end
figure(1)
subplot(3,1,1)
plot(t,semnal), grid, title('Semnal dreptunghiular - rezolutie 2ms')
axis ([0 160 -0.2 1.2]) %marirea domeniului pentru a vizualiza mai bine semnalul
subplot(3,1,2)
hold on
plot((-n:n),2*abs(x),':r')
stem((-n:n),2*abs(x)), grid, title('Spectrul de amplitudini') %afisarea spectrului de amplitudini (amplitudinea este egala cu 2 inmultit cu modulul fiecarui coeficient)
hold off
axis ([-26 26 -0.05 0.6]) %marirea domeniului pentru a vizualiza mai bine semnalul
semnal2=0; %initializarea semnalului reconstruit
for k=-n:n
    semnal2=semnal2+x(k+n+1)*exp(1j*k*w0*t); %reconstruirea semnalului dupa formula (suma din fiecare coeficient inmultit cu exponentiala)
end
subplot(3,1,3)
hold on %pentru a afisa atat semnalul initial, cat si cel reconstruit
plot(t,semnal), grid, title('x(t) - linie solida | reconstructia folosind N coeficienti - linie punctata')
plot(t,real(semnal2),':m',t,imag(semnal2),':m')
hold off

% Semnal dreptunghiular
% Numar de ordine: 11
% Seriile Fourier sunt folosite in matematica pentru a analiza functiile
% periodice, descompunandu-le intr-o suma ponderata de functii sinusoidale.
% Se poate observa faptul ca semnalul reconstruit are aceeasi forma ca
% semnalul original. Cu cat numarul coeficientilor este mai mare, cu atat
% diferenta dintre cele doua semnale este mai mica. Astfel, semnalul
% initial poate fi aproximat printr-o suma de sinusuri.


