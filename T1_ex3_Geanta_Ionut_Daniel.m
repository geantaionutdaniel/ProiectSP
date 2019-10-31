nivel1=[-1 1]
t1=0:0.002:5; %pasul de 2ms
t2=0:0.02:5; %pasul de 20ms
t3=0:0.2:5; %pasul de 200ms
%- functia datasample(nivel,1) returneaza o valoare aleatoare din vectorul
%nivel respectiv
% - hold on este folosit pentru a stoca pe grafic toate semnalele
% din bucla repetitiva, rezultand astfel imaginea finala
%functia rectpuls(t-i,0.25) returneaza un puls de latime 0.25(durata unui
%semnal), centrat in punctul t-i
figure (1)
subplot(3,1,1),title('Semnal multinivel aleator - rezolutie 2ms')
hold on 
for i=0:0.25:10
    s=datasample(nivel1,1);
    plot(t1, s*rectpuls(t1-i,0.25))
end
hold off
subplot(3,1,2),title('Semnal multinivel aleator - rezolutie 20ms')
hold on
for i=0:0.25:10
    s=datasample(nivel1,1);
    plot(t2, s*rectpuls(t2-i,0.25))
end
hold off
subplot(3,1,3),title('Semnal multinivel aleator - rezolutie 200ms')
hold on
for i=0:0.25:10
    s=datasample(nivel1,1);
    plot(t3, s*rectpuls(t3-i,0.25))
end
hold off

nivel2=[-3 -1 1 3]

figure(2)
subplot(3,1,1),title('Semnal multinivel aleator - rezolutie 2ms')
hold on
for i=0:0.25:10
    s=datasample(nivel2,1);
    plot(t1, s*rectpuls(t1-i,0.25))
end
hold off
subplot(3,1,2),title('Semnal multinivel aleator - rezolutie 20ms')
hold on
for i=0:0.25:10
    s=datasample(nivel2,1);
    plot(t2, s*rectpuls(t2-i,0.25))
end
hold off
subplot(3,1,3),title('Semnal multinivel aleator - rezolutie 200ms')
hold on
for i=0:0.25:10
    s=datasample(nivel2,1);
    plot(t3, s*rectpuls(t3-i,0.25))
end
hold off

nivel3=[-5 -3 -1 1 3 5]
figure(3)
subplot(3,1,1),title('Semnal multinivel aleator - rezolutie 2ms')
hold on
for i=0:0.25:10
    s=datasample(nivel3,1);
    plot(t1, s*rectpuls(t1-i,0.25))
end
hold off
subplot(3,1,2),title('Semnal multinivel aleator - rezolutie 20ms')
hold on
for i=0:0.25:10
    s=datasample(nivel3,1);
    plot(t2, s*rectpuls(t2-i,0.25))
end
hold off
subplot(3,1,3),title('Semnal multinivel aleator - rezolutie 200ms')
hold on
for i=0:0.25:10
    s=datasample(nivel3,1);
    plot(t3, s*rectpuls(t3-i,0.25))
end
hold off

nivel4=[-7 -5 -3 -1 1 3 5 7]
figure(4)
subplot(3,1,1),title('Semnal multinivel aleator - rezolutie 2ms')
hold on
for i=0:0.25:10
    s=datasample(nivel4,1);
    plot(t1, s*rectpuls(t1-i,0.25))
end
hold off
subplot(3,1,2),title('Semnal multinivel aleator - rezolutie 20ms')
hold on
for i=0:0.25:10
    s=datasample(nivel4,1);
    plot(t2, s*rectpuls(t2-i,0.25))
end
hold off
subplot(3,1,3),title('Semnal multinivel aleator - rezolutie 200ms')
hold on
for i=0:0.25:10
    s=datasample(nivel4,1);
    plot(t3, s*rectpuls(t3-i,0.25))
end
hold off