% 14 pavyzdys is Interpoliavimo (is irasu)
clear all
X=[4, 9, 36];
Y=[2, 3, 6];
 syms x 
N=length(X);
for i=1:N-1
L=0; 
for k=1:i+1
    c=1; 
   for j=1:i+1
      if k~=j 
         c=c*((x-X(j))/(X(k)-X(j)));  
   end 
   end
  L=L+c*Y(k); 
end
end
expand(L)
[xspr]=solve(L-4)
double(xspr)

fx=sqrt(x);
figure,
hold on
 grafikas1=ezplot(L,[X(1),X(3)]);
 grafikas2=ezplot(fx,[X(1),X(3)]); plot(X,Y,'bo','MarkerFaceColor','b'), hold off, 
 set(grafikas1,'color','m','LineWidth',2),
set(grafikas2,'color','g','LineWidth',2),
xlabel(' x '), ylabel('y'), title(' '),legend('Daugianaris','Funkcija')
axis([X(1),X(3),0,6])
