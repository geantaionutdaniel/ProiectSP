%a)
z=[0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0]
n=0:20
m=-5:15
subplot(1,2,1) %doua "miniferestre"
plot(n,z),grid %z in functie de n
subplot(1,2,2)
plot(m,z),grid %z in functie de m
%b)
t=abs(10-n) 
figure(2) %grafic nou
plot(n,t),grid
%c)
n=-15:25
x1=sin(pi/17*n)
figure(3)
plot(n,x1),grid
hold on %pentru reprezentarea pe acelasi grafic
figure(4)
subplot(2,1,1)
plot(n,x1),grid
hold on
stem(n,x1),grid
hold off
n=0:50
x2=cos(pi/sqrt(23)*n)
figure(3)
plot(n,x2),grid
hold off
figure(4)
subplot(2,1,2)
plot(n,x2),grid
hold on
stem(n,x2),grid
hold off




