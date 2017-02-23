% 14 pavyzdys is Interpoliavimo (is irasu)
%2metodas
clear all
X=[4, 9, 36];
Y=[2, 3, 6];
taskasy=4;
 syms x 
N=length(Y);
for i=1:N-1
L=0; 
for k=1:i+1
    c=1; 
   for j=1:i+1
      if k~=j 
         c=c*((taskasy-Y(j))/(Y(k)-Y(j)));  
   end 
   end
  L=L+c*X(k); 
end
end
L