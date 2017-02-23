% 12 pavyzdys is Interpoliavimo (is irasu)
clear all
h=0.4;
a=-1;
b=1;
N=(b-a)/h;
disp('Reiksmiu lentele yra')
fprintf('*********************************\n')
fprintf('|i |             x|             y|\n')
fprintf('*********************************\n')
for i=1:N+1
x(i)=a+(i-1)*h;
y(i)=1/(1+25*(x(i)).^2);
fprintf('|%2G|%14f|%14f|\n',i-1,x(i),y(i)) 
end


for k=1:N+1
   f(k,1)=y(k); 
end 
for j=1:N
    for i=j:N
        f(i+1,j+1)=(f(i,j)-f(i+1,j))/(x(i+1-j)-x(i+1));  
    end
end

 syms X
fX=1/(1+25*X^2);
  L=y(1); %Sumavimui
     p=1;  %Daugybai     
 for i=1:N
  p=p*(X-x(i));%Niutono formuleje esancios sandaugos (x-x[1])...(x-x[N])   
  L=expand(L+f(i+1,i+1)*p);
 end  
figure,
hold on
%mus domina paskutines eiles daugianaris (paskutinis brezinys), todel
%asiu reziai parinkti tik siam grafikui
 grafikas1=ezplot(L,[a,b]), grafikas2=ezplot(fX,[a,b]), plot(x,y,'bo','MarkerFaceColor','b'), hold off, 
 set(grafikas1,'color','m','LineWidth',2),
set(grafikas2,'color','g','LineWidth',2),
xlabel(' x '), ylabel('y'), title(' '),legend('Daugianaris','Funkcija')
axis([a,b,-0.4,1])
   

clear all
h=0.125;
a=-1;
b=1;
N=(b-a)/h;
disp('Reiksmiu lentele yra')
fprintf('*********************************\n')
fprintf('|i |             x|             y|\n')
fprintf('*********************************\n')
for i=1:N+1
x(i)=a+(i-1)*h;
y(i)=1/(1+25*(x(i)).^2);
fprintf('|%2G|%14f|%14f|\n',i-1,x(i),y(i)) 
end

for k=1:N+1
   f(k,1)=y(k); 
end 
for j=1:N
    for i=j:N
        f(i+1,j+1)=(f(i,j)-f(i+1,j))/(x(i+1-j)-x(i+1));  
    end
end
 syms X
fX=1/(1+25*X^2);
  L=y(1); %Sumavimui
     p=1;  %Daugybai     
 for i=1:N
  p=p*(X-x(i));%Niutono formuleje esancios sandaugos (x-x[1])...(x-x[N])   
  L=expand(L+f(i+1,i+1)*p);
 end  
figure,
hold on
%mus domina paskutines eiles daugianaris (paskutinis brezinys), todel
%asiu reziai parinkti tik siam grafikui
 grafikas1=ezplot(L,[a,b]), grafikas2=ezplot(fX,[a,b]), plot(x,y,'bo','MarkerFaceColor','b'), hold off, 
 set(grafikas1,'color','m','LineWidth',2),
set(grafikas2,'color','g','LineWidth',2),
xlabel(' x '), ylabel('y'), title(' '),legend('Daugianaris','Funkcija')
axis([a,b,-15,2])

