t1=0:0.002:12; %pasul de 2ms
t2=0:0.02:12; %pasul de 20ms
t3=0:0.2:12; %pasul de 200ms
ampl=0.8; %amplitudinea
T=3; %perioada 3s
F=1/T; %frecventa
w=2*pi*F; %pulsatia
semnal1=ampl*sin(w*t1); %forma semnalului
semnal2=ampl*sin(w*t2);
semnal3=ampl*sin(w*t3);
for i=1:length(semnal1) %redresare mono alternanta: nu se afiseaza partea negativa a semnalului sinusoidal initial
    if semnal1(i)<0
        semnal1(i)=0;
    end
end
subplot(3,1,1)
plot(t1,semnal1),grid,xlabel('t[s]'),ylabel('A[V]'),title('Semnal sinusoidal redresat monoallternanta - rezolutie 2ms')
axis([0 12 -0.2 1]) %marirea domeniului pentru a vizualiza mai bine semnalul
for i=1:length(semnal2)
    if semnal2(i)<0
        semnal2(i)=0;
    end
end
subplot(3,1,2)
plot(t2,semnal2),grid,xlabel('t[s]'),ylabel('A[V]'),title('Semnal sinusoidal redresat monoallternanta - rezolutie 20ms')
axis([0 12 -0.2 1])
for i=1:length(semnal3)
    if semnal3(i)<0
        semnal3(i)=0;
    end
end
subplot(3,1,3)
plot(t3,semnal3),grid,xlabel('t[s]'),ylabel('A[V]'),title('Semnal sinusoidal redresat monoallternanta - rezolutie 200ms')
axis([0 12 -0.2 1])