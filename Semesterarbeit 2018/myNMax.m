function [M] = myNMax(A,N) %N gr�sster Element von A

m=inf;

for i=1:N 
    A=A(find(A~=m));
    m=max(A);
    M(i)=m;
    
    
end
end