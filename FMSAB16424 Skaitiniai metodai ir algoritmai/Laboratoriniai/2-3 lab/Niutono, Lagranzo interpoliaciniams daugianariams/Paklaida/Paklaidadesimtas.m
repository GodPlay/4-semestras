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
X(i)=a+(i-1)*h;
Y(i)=(1+25*X(i).^2).^(-1);
fprintf('|%2G|%14f|%14f|\n',i-1,X(i),Y(i)) 
end

%Daugianariu reiksmes ir realios absoliutines paklaidos
fprintf('********************************************************\n')
 fprintf('|N |   Daugianario reiksme|Paklaida absoliutiniu didumu| \n') 
 fprintf('********************************************************\n')
N=length(X);
taske=-0.9;
%Cia naudoju Lagranzo interpoliacine formule
for i=1:N-1
L(i)=0; %Sumavimui
for k=1:i+1
    c(k)=1; %Daugybai
   for j=1:i+1
      if k~=j %jei k nelygu i
         c(k)=c(k)*((taske-X(j))/(X(k)-X(j)));  %Daugianariu c(taske) reiksmes 
   end 
   end

  L(i)=L(i)+c(k)*Y(k); 
end
   pakl(i)=abs((1+25*taske.^2).^(-1)-L(i)) ;
   fprintf('|%2G|%22f|%28f|\n',i,L(i),pakl(i));
end
  fprintf('********************************************************\n')





syms x
f=1/(1+25*x^2);
for i=1:3
    fisv(i)=diff(f,x,i);
end
figure
hold on,
grafikas1=ezplot(fisv(1),[-1,1]);
grafikas2=ezplot(fisv(2),[-1,1]);
grafikas3=ezplot(fisv(3),[-1,1]);
hold off,
set(grafikas1,'color','m','LineWidth',2),
set(grafikas2,'color','g','LineWidth',2),
set(grafikas3,'color','y','LineWidth',2),
xlabel(' x '), ylabel('y'), title(' '), legend('Pirma eile','Antra eile','Trecia eile'),
axis([-1,1,-584,584])