
X=[1, 4, 8];
Y=[0.106,0.100,0.097];
taske=2
 syms x 
N=length(X);
fprintf('***********************************\n')
 fprintf('|N |   Daugianario reiksme taske 2| \n') 
 fprintf('***********************************\n')
for i=1:N-1
L(i)=0; 
for k=1:i+1
    c=1; 
   for j=1:i+1
      if k~=j 
         c=c*((taske-X(j))/(X(k)-X(j)));  
   end 
   end
  L(i)=L(i)+c*Y(k); 
end
fprintf('|%2G|%30f|\n',i,L(i))
end
 fprintf('***********************************\n')
for i=1:N-2
    pakl(i)=abs(L(i+1)-L(i));
    euribor1(i)=L(i)+pakl(i);
     euribor2(i)=L(i)-pakl(i);
end
fprintf('Paklaidos ivertis |L2-L1|= %c.\n', pakl)
fprintf('Apytiksliai dvieju dienu Euribor yra %c arba %c.\n',euribor1, euribor2)
