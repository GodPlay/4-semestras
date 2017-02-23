% 13 pavyzdys is Interpoliavimo (is irasu)
%Isvestines
clear all
syms x
f=sqrt(abs(x));
for i=1:10
isv(i)=diff(f,x,i)
end 
clear all
h=2.5;
a=-5;
b=5;
N=(b-a)/h;
disp('Reiksmiu lentele yra')
fprintf('*********************************\n')
fprintf('|i |             x|             y|\n')
fprintf('*********************************\n')
for i=1:N+1
x(i)=a+(i-1)*h;
y(i)=(abs(x(i))).^(1/2);
fprintf('|%2G|%14f|%14f|\n',i-1,x(i),y(i)) 
end


syms X
fX=sqrt(abs(X));
N=length(x);
for i=1:N-1
L=0; 
for k=1:i+1
    c=1; 
   for j=1:i+1
      if k~=j 
         c=c*((X-x(j))/(x(k)-x(j)));  
   end 
   end
  L=L+c*y(k);
end
end
figure,
hold on
%mus domina paskutines eiles daugianaris (paskutinis brezinys), todel
%asiu reziai parinkti tik siam grafikui
 grafikas1=ezplot(L,[a,b]), grafikas2=ezplot(fX,[a,b]), plot(x,y,'bo','MarkerFaceColor','b'), hold off, 
 set(grafikas1,'color','m','LineWidth',2),
set(grafikas2,'color','g','LineWidth',2),
xlabel(' x '), ylabel('y'), title(' '),legend('Daugianaris','Funkcija')
axis([a,b,0,3])
   


clear all
h=0.625;
a=-5;
b=5;
N=(b-a)/h;
disp('Reiksmiu lentele yra')
fprintf('*********************************\n')
fprintf('|i |             x|             y|\n')
fprintf('*********************************\n')
for i=1:N+1
x(i)=a+(i-1)*h;
y(i)=(abs(x(i))).^(1/2);
fprintf('|%2G|%14f|%14f|\n',i-1,x(i),y(i)) 
end

 syms X
fX=sqrt(abs(X));
N=length(x);
for i=1:N-1
L=0; 
for k=1:i+1
    c=1; 
   for j=1:i+1
      if k~=j 
         c=c*((X-x(j))/(x(k)-x(j)));  
   end 
   end
  L=L+c*y(k);
end
end
figure,
hold on
%mus domina paskutines eiles daugianaris (paskutinis brezinys), todel
%asiu reziai parinkti tik siam grafikui
 grafikas1=ezplot(L,[a,b]), grafikas2=ezplot(fX,[a,b]), plot(x,y,'bo','MarkerFaceColor','b'), hold off, 
 set(grafikas1,'color','m','LineWidth',2),
set(grafikas2,'color','g','LineWidth',2),
xlabel(' x '), ylabel('y'), title(' '),legend('Daugianaris','Funkcija')
axis([a,b,-10,110])