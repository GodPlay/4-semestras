% 8 pavyzdys is Interpoliavimo (is irasu), naudojant Lagranzo int
%daugianari.
clear all
h=0.2;
a=-1;
b=1;
N=(b-a)/h;
disp('Reiksmiu lentele yra')
fprintf('*********************************\n')
fprintf('|i |             x|             y|\n')
fprintf('*********************************\n')
for i=1:N+1
x(i)=a+(i-1)*h;
y(i)=exp(x(i).^2);
fprintf('|%2G|%14f|%14f|\n',i-1,x(i),y(i)) 
end

figure,
plot(x,y,'bo','MarkerFaceColor','b')

taske=-0.9; %Tarpinis taskas.
fprintf('********************************************************\n')
 fprintf('|N |   Daugianario reiksme|Paklaida absoliutiniu didumu| \n') 
 fprintf('********************************************************\n')
N=length(x);
%Cia naudoju Lagranzo interpoliacine formule
for i=1:N-1
L(i)=0; %Sumavimui
for k=1:i+1
    c(k)=1; %Daugybai
   for j=1:i+1
      if k~=j %jei k nelygu i
         c(k)=c(k)*((taske-x(j))/(x(k)-x(j)));  %Daugianariu c(taske) reiksmes 
   end 
   end
  
  L(i)=L(i)+c(k)*y(k); 
end
   pakl(i)=abs(exp(taske^2)-L(i)) ;
   fprintf('|%2G|%22f|%28f|\n',i,L(i),pakl(i));
end
  fprintf('********************************************************\n')


% 8 pavyzdys is Interpoliavimo (is irasu), naudojant Niutono int
%daugianari. 
%Sudarome funkcijos reiksmiu lentele 
clear all
format long
h=0.2;
a=-1;
b=1;
N=(b-a)/h;
disp('Reiksmiu lentele yra')
fprintf('*********************************\n')
fprintf('|i |             x|             y|\n')
fprintf('*********************************\n')
for i=1:N+1
x(i)=a+(i-1)*h;
y(i)=exp(x(i).^2);
fprintf('|%2G|%14f|%14f|\n',i-1,x(i),y(i)) 
end
taske=-0.9; %Tarpinis taskas
%Skirtuminiai santykiai
for k=1:N+1
   f(k,1)=y(k); 
end 
for j=1:N
    for i=j:N
        f(i+1,j+1)=(f(i,j)-f(i+1,j))/(x(i+1-j)-x(i+1));  
    end
end
% Visu eiliu Daugianariu tarpiniame taske sudarymas:
fprintf('********************************************************\n')
 fprintf('|N |   Daugianario reiksme|Paklaida absoliutiniu didumu| \n') 
 fprintf('********************************************************\n')
 L(1)=y(1); %Sumavimui
     p(1)=1;  %Daugybai     
 for i=1:N
  p(i+1)=p(i)*(taske-x(i));%Niutono formuleje esancios sandaugos (x-x[1])...(x-x[N])   
  L(i+1)=L(i)+f(i+1,i+1)*p(i+1); %Kai i=2 bus pirmos eiles daugianaris  
  pakl(i+1)=abs(exp(taske^2)-L(i+1)) ;
   fprintf('|%2G|%22f|%28f|\n',i,L(i+1),pakl(i+1))
 end    
  fprintf('********************************************************\n')

  %Papildomai. I pavyzdi neieina.
%Grafikas funkcijos ir daugianariu palyginimui, bet kokiam tarpiniui
%taskui 
M=N-1;  
for k=1:M
   f(k,1)=y(k); 
end 
for j=1:N
    for i=j:N
        f(i+1,j+1)=(f(i,j)-f(i+1,j))/(x(i+1-j)-x(i+1));  
    end
end
 syms X
%Funkcijos f ir daugianariu kreives viename grafiniame lange
figure,
Lx=y(1); 
     p=1;      
 for i=1:N
  p=p*(X-x(i));   
  Lx=expand(Lx+f(i+1,i+1)*p);
 hold on, grafikas=ezplot(Lx,[x(1),x(N)]); set(grafikas,'color','b','LineWidth',i/2),
 end   
exponente=ezplot(exp(X^2),[a,b]); hold off, set(exponente,'color','r','LineWidth',2),
xlabel(' x '), ylabel('y'), title(' '), 
%Neinformatyvu, geriau nurodyti skirtingas kreivems spalvas, ta galima
%atlikti su set komanda. Pavyzdys, jau pateikiamas paklaidu kreivems, kad
%butu lengviau, iskyriau tik atvejus N=1,3,5,10. 

%Realios absoliutines paklaidos Kai N=1,3,5,10
Lx=y(1);N=1;p=1;
for i=1:N
p=p*(X-x(i));
Lx=expand(Lx+f(i+1,i+1)*p);
paklx1=abs(exp(X^2)-Lx);
end


Lx=y(1);N=3;p=1;
for i=1:N
p=p*(X-x(i));
Lx=expand(Lx+f(i+1,i+1)*p);
paklx3=abs(exp(X^2)-Lx);
end

Lx=y(1);N=5;p=1;
for i=1:N
p=p*(X-x(i));
Lx=expand(Lx+f(i+1,i+1)*p);
paklx5=abs(exp(X^2)-Lx);
end

Lx=y(1);N=10;p=1;
for i=1:N
p=p*(X-x(i));
Lx=expand(Lx+f(i+1,i+1)*p);
paklx10=abs(exp(X^2)-Lx);
end

figure, hold on,
grafikas1=ezplot(paklx1,[-1,x(2)]);
grafikas3=ezplot(paklx3,[-1,x(4)]);
grafikas5=ezplot(paklx5,[-1,x(6)]);
grafikas10=ezplot(paklx10,[-1,x(11)]);
hold off
set(grafikas1,'color','m','LineWidth',2),
set(grafikas3,'color','g','LineWidth',2),
set(grafikas5,'color','y','LineWidth',2),
set(grafikas10,'color','b','LineWidth',2),
xlabel(' x '), ylabel('y'), title(' '), legend('Kai N=1','Kai N=3','Kai N=5','Kai N=10'),

axis([-1,1,0,0.06]) %Nurodome kokios x ir y asiu didziausios ir maziausios reiksmes