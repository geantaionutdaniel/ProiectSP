%a)
T=5; %perioada 5s
maxim=1; %nivelul maxim
minim=-2; %nivelul minim
F=1/T; %frecventa
w=2*pi*F; %pulsatia
t1=0:0.002:20; %pasul de 2ms (20/5 = 4 perioade pe ecran)
t2=0:0.02:20; %pasul de 20ms
t3=0:0.2:20; %pasul de 200 ms
ampl=(maxim+abs(minim))/2; %amplitudinea semnalului
Ucc=-0.5; %componenta continua calculata pentru ampl=1.5
semnal1=ampl*sawtooth(w*t1,0.6)+Ucc;%forma semnalului - sawtooth(t,tmax) tmax = 0.6 pentru a obtine panta de 1V/s
semnal2=ampl*sawtooth(w*t2,0.6)+Ucc;
semnal3=ampl*sawtooth(w*t3,0.6)+Ucc;

A=maxim+abs(minim) %amplitudinea varf la varf
m=max(semnal1);
f=min(t1(semnal1==m));
panta=A/f

subplot(3,1,1)
plot(t1,semnal1),grid,xlabel('t[s]'),ylabel('A[V]'),title('Semnal triunghiular - rezolutie 2ms')
axis([0 20 -2.2 1.2]) %marirea domeniului pentru a vizualiza mai bine semnalul
subplot(3,1,2)
plot(t2,semnal2),grid,xlabel('t[s]'),ylabel('A[V]'),title('Semnal triunghiular - rezolutie 20ms')
axis([0 20 -2.2 1.2]) 
subplot(3,1,3)
plot(t3,semnal3),grid,xlabel('t[s]'),ylabel('A[V]'),title('Semnal triunghiular - rezolutie 200ms')
axis([0 20 -2.2 1.2]) 
