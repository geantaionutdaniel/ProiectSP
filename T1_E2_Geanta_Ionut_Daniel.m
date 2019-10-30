a=randn(1,8)
n= length(a); 
for i=1:n
    if a(i)<0
        disp(a(i))
    end
end