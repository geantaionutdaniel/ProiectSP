t1=0:0.002:16; %pasul de 2ms
t2=0:0.02:16; %pasul de 20ms
t3=0:0.2:16; %pasul de 200ms
ampl=1.5; %amplitudinea
T=4; %perioada 4s
F=1/T; %frecventa
w=2*pi*F; %pulsatia
semnal1=abs(ampl*sin(w*t1)); %redresare dubla alternanta pozitiva: partea negativa a semnalului este convertita in pozitiva
semnal2=abs(ampl*sin(w*t2));
semnal3=abs(ampl*sin(w*t3));
subplot(3,1,1)
plot(t1,semnal1),grid,xlabel('t[s]'),ylabel('A[V]'),title('Semnal sinusoidal redresare dubla alternanta - rezolutie 2ms')
axis([0 16 -0.2 1.6]) %marirea domeniului pentru a vizualiza mai bine semnalul
subplot(3,1,2)
plot(t2,semnal2),grid,xlabel('t[s]'),ylabel('A[V]'),title('Semnal sinusoidal redresare dubla alternanta - rezolutie 20ms')
axis([0 16 -0.2 1.6])
subplot(3,1,3)
plot(t3,semnal3),grid,xlabel('t[s]'),ylabel('A[V]'),title('Semnal sinusoidal redresare dubla alternanta - rezolutie 200ms')
axis([0 16 -0.2 1.6])