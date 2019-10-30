
T=2; %perioada 2s
duty=25; %factor de umplere 25%
maxim=0.5; %nivel maxim
minim=-1; %nivel minim
F=1/T; %frecventa
w=2*pi*F; %pulsatia
t1=0:0.002:8; %pasul de 2 ms (8/2 = 4 perioade pe ecran)
t2=0:0.02:8; %pasul de 20 ms
t3=0:0.2:8; %pasul de 200 ms
ampl=(maxim+abs(minim))/2; %amplitudinea semnalului
Ucc=-0.25; %componenta continua calculata pentru ampl=0.75
semnal1=(ampl*square(w*t1,duty))+Ucc; %forma semnalului
semnal2=(ampl*square(w*t2,duty))+Ucc;
semnal3=(ampl*square(w*t3,duty))+Ucc;
subplot(3,1,1) 
plot(t1,semnal1),grid,xlabel('t[s]'),ylabel('A[V]'), title('Semnal dreptunghiular - rezolutie 2ms')
axis([0 8 -1.1 0.6]) %marirea domeniului pentru a vizualiza mai bine semnalul
subplot(3,1,2)
plot(t2,semnal2),grid,xlabel('t[s]'), ylabel('A[V]'), title ('Semnal dreptunghiular - rezolutie 20ms')
axis([0 8 -1.1 0.6])
subplot(3,1,3)
plot(t3,semnal3),grid,xlabel('t[s]'), ylabel('A[V]'), title ('Semnal dreptunghiular - rezolutie 200ms')
axis([0 8 -1.1 0.6])


