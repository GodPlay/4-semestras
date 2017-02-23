% 14 pavyzdzio funkcija is Interpoliavimo (is irasu) taikomi atvirkstinio
% interpoliavimo abu metodai
%1 metodas

%Aukstesnes eiles, ir kituose intervaluose

clear all
h=9;
a=0;
b=81;
N=(b-a)/h;
disp('Reiksmiu lentele yra')
fprintf('*********************************\n')
fprintf('|i |             x|             y|\n')
fprintf('*********************************\n')
for i=1:N+1
X(i)=a+(i-1)*h;
Y(i)=(X(i)).^(1/2);
fprintf('|%2G|%14f|%14f|\n',i-1,X(i),Y(i)) 
end
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
 grafikas1=ezplot(L,[a,b]);
 grafikas2=ezplot(fx,[a,b]); plot(X,Y,'bo','MarkerFaceColor','b'), hold off, 
 set(grafikas1,'color','m','LineWidth',2),
set(grafikas2,'color','g','LineWidth',2)
xlabel(' x '), ylabel('y'), title(' '),legend('Daugianaris','Funkcija')
axis([a,b,0,9])

clear all
h=27;
a=0;
b=81;
N=(b-a)/h;
disp('Reiksmiu lentele yra')
fprintf('*********************************\n')
fprintf('|i |             x|             y|\n')
fprintf('*********************************\n')
for i=1:N+1
X(i)=a+(i-1)*h;
Y(i)=(X(i)).^(1/2);
fprintf('|%2G|%14f|%14f|\n',i-1,X(i),Y(i)) 
end
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
 grafikas1=ezplot(L,[a,b]);
 grafikas2=ezplot(fx,[a,b]); plot(X,Y,'bo','MarkerFaceColor','b'), hold off, 
 set(grafikas1,'color','m','LineWidth',2),
set(grafikas2,'color','g','LineWidth',2)
xlabel(' x '), ylabel('y'), title(' '),legend('Daugianaris','Funkcija')
axis([a,b,0,9])

%2metodas
%Aukstesnei eiliai ir kitam intervalui
clear all
h=9;
a=0;
b=81;
N=(b-a)/h;
disp('Reiksmiu lentele yra')
fprintf('*********************************\n')
fprintf('|i |             x|             y|\n')
fprintf('*********************************\n')
for i=1:N+1
X(i)=a+(i-1)*h;
Y(i)=(X(i)).^(1/2);
fprintf('|%2G|%14f|%14f|\n',i-1,X(i),Y(i)) 
end
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