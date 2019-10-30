A1=rand(1);
A2=rand(1);
T=0.25;
F=1/T;
w=2*pi*F;
t=0:0.002:0.25;
x1=A1*square(w*t);
x2=-A2*square(w*t);
hold on
plot(t,x1)
plot(t-0.25,x2)