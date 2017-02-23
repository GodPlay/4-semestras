
clear all
h=1;
a=1;
b=5;
N=(b-a)/h;
for i=1:N+1
X(i)=a+(i-1)*h;
end
taske=1.5; 
syms x 
f=1/x^5;
disp('Isvestines')
for i=1:N
    fisv(i)=diff(f,x,i)  
end

fprintf('********************************\n')
 fprintf('|N ||M|    |w       |Paklaida  | \n') 
 fprintf('********************************\n')
w(1)=(taske-X(1));
for i=1:N
    fisv(i+1)=diff(f,x,i+1);
    M(i+1)=abs(subs(fisv(i+1),x,a)); 
    w(i+1)=abs(w(i)*(taske-X(i+1)));
    paklaida(i)=M(i+1)*w(i+1)/factorial(i+1);
 fprintf('|%2G|%7G|%3f|%10f|\n',i,M(i+1),w(i+1),paklaida(i))
end
 fprintf('********************************\n')


%Grafiskai paklaidos bet kokiam tarpiniui taskui
%N=1,2,3,4
w1=(x-X(1));
N=1;
 for i=1:N
  w1=w1*(x-X(i+1));   
  paklaida1=abs(M(i+1)*w1/factorial(i+1));
 end   
w2=(x-X(1));
N=2;
 for i=1:N
  w2=w2*(x-X(i+1));   
  paklaida2=abs(M(i+1)*w2/factorial(i+1));
 end
 w3=(x-X(1));
 N=3;
 for i=1:N
  w3=w3*(x-X(i+1));   
  paklaida3=abs(M(i+1)*w3/factorial(i+1));
 end
 w4=(x-X(1));
 N=4;
 for i=1:N
  w4=w4*(x-X(i+1));   
  paklaida4=abs(M(i+1)*w4/factorial(i+1));
 end
 figure
 hold on,
grafikas1=ezplot(paklaida1,[1,X(2)]);
grafikas2=ezplot(paklaida2,[1,X(3)]);
 grafikas3=ezplot(paklaida3,[1,X(4)]);
 grafikas4=ezplot(paklaida4,[1,X(5)]); hold off,
 set(grafikas1,'color','m','LineWidth',2),
 set(grafikas2,'color','g','LineWidth',2),
 set(grafikas3,'color','y','LineWidth',2),
 set(grafikas4,'color','b','LineWidth',2),
 xlabel(' x '), ylabel('Paklaida'), title(' '), legend('Kai N=1','Kai N=2','Kai N=3','Kai N=4'),
 axis([1,5,3,500])
