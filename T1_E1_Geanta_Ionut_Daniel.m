a=0:0.1:2;
x=length(a); %pentru a afla lungimea lui b astfel incat inmultirea sa aiba sens
b=ones(x,1);
c=a*b
d=b*a
e=a.*b
f=b.*a
%Se obtin rezultate identice cu cel de la inmultirea b*a deoarece la a*b,
%avand o linie si o coloana, elementele se aduna, rezultatul fiind un singur
%numar