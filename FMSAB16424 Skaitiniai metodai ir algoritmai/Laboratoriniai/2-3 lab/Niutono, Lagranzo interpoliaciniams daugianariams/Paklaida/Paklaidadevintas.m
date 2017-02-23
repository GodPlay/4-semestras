clear all
h=0.2;
a=-1;
b=1;
N=(b-a)/h;
for i=1:N+1
X(i)=a+(i-1)*h; %Paklaidos iverciu nereikia y reiksmiu
end
taske=-0.9; 
syms x 
f=exp(x^2);
w(1)=(taske-X(1));
fprintf('**********************\n')
fprintf('|i |Paklaidos ivertis|\n')
fprintf('**********************\n')
for i=1:N
    f(i+1)=diff(f,x,i+1);
    %Is isvestiniu israisku (galima grafiskai) seka, kad didziausios
    %isvestiniu reiksmes moduliu yra taske 1. Su programiniu
    %paketu Maple galima naudoti maximumo apskaiciavimui maximize komanda.
    %Apytiksliai maximumus galima ivertinti is grafiku arba naudojant
    %specialius metodus, kurie aptariami Optimizavimo temoje.
    M(i+1)=subs(f(i+1),x,1);
    w(i+1)=w(i)*(taske-X(i+1));
    paklaida(i)=abs(M(i+1)*w(i+1)/factorial(i+1));
  fprintf('|%2G|%18G|\n',i,paklaida(i)) 
end
fprintf('**********************\n')

% Papildomai. I sprendima neieina
%Grafiskai paklaidos bet kokiam tarpiniui taskui
w=(x-X(1));
 for i=1:N
  w=w*(x-X(i+1));   
  paklaida=abs(M(i+1)*w/factorial(i+1));
hold on, grafikas=ezplot(paklaida,[X(1),X(i+1)]); set(grafikas,'color','b','LineWidth',i/2),
 end   
hold off
xlabel(' x '), ylabel('y'), title(' '), 

%N=1,3,5,10
w1=(x-X(1));
N=1;
 for i=1:N
  w1=w1*(x-X(i+1));   
  paklaida1=abs(M(i+1)*w1/factorial(i+1));
 end   
w3=(x-X(1));
N=3;
 for i=1:N
 w3=w3*(x-X(i+1));   
  paklaida3=abs(M(i+1)*w3/factorial(i+1));
 end
 w5=(x-X(1));
 N=5;
 for i=1:N
  w5=w5*(x-X(i+1));   
  paklaida5=abs(M(i+1)*w5/factorial(i+1));
 end
 w10=(x-X(1));
 N=10;
 for i=1:N
  w10=w10*(x-X(i+1));   
  paklaida10=abs(M(i+1)*w10/factorial(i+1));
 end
 figure
 hold on,
grafikas10=ezplot(paklaida10,[-1,X(11)]);
grafikas5=ezplot(paklaida5,[-1,X(6)]);
 grafikas3=ezplot(paklaida3,[-1,X(4)]);
 grafikas1=ezplot(paklaida1,[-1,X(2)]); hold off,
 set(grafikas1,'color','m','LineWidth',2),
 set(grafikas3,'color','g','LineWidth',2),
 set(grafikas5,'color','y','LineWidth',2),
 set(grafikas10,'color','b','LineWidth',2),
 xlabel(' x '), ylabel('Paklaida'), title(' '), legend('Kai N=10','Kai N=5','Kai N=3','Kai N=1'),
 axis([-1,1,0,0.082])