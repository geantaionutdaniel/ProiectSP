function[med,v,mat]=ex3fct(a)
med=mean(real(a)) %media aritmetica a partilor reale
v=a.*a %elementele vectorului initial ridicate la patrat
mat=a*a.' %vectorul initial inmultit cu transpusul sau
end