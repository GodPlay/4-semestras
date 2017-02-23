clear all
h=1;
a=2;
b=9;
N=(b-a)/h;
disp('Reiksmiu lentele yra')
fprintf('**********************************\n')
fprintf('|i |             x|             y|\n')
fprintf('**********************************\n')
for i=1:N+1
x(i)=a+(i-1)*h;
y(i)=1/(x(i).^5);
fprintf('|%2G|%14f|%14f|\n',i-1,x(i),y(i)) 
end
fprintf('**********************************\n')


N=length(x);
taske=2.1;
fprintf('****************************************\n')
 fprintf('|N |Daugianario reiksme|Reali paklaida | \n') 
 fprintf('****************************************\n')
for i=1:N-1
L(i)=0; 
for k=1:i+1
    c=1; 
   for j=1:i+1
      if k~=j 
         c=c*((taske-x(j))/(x(k)-x(j)));  
   end 
   end
  L(i)=L(i)+c*y(k); 
  pakl(i)=abs(1/(taske.^5)-L(i));
end
fprintf('|%2G|%19f|%15f|\n',i,L(i),pakl(i))
end
 fprintf('****************************************\n')