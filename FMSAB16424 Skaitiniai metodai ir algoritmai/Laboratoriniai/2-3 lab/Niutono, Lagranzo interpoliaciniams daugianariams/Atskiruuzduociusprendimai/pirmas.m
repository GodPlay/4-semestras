clear all
x=[0,1,2,4];
y=[0,1,4,16];
M=length(x);
disp('Reiksmiu lentele yra')
fprintf('*********************************\n')
fprintf('|i |             x|             y|\n')
fprintf('*********************************\n')
for i=1:M
fprintf('|%2G|%14f|%14f|\n',i-1,x(i),y(i)) 
end
disp('Grafiskai')
figure,
plot(x,y,'bo','MarkerFaceColor','b'),

N=M-1;  
for k=1:M
   f(k,1)=y(k); 
end 
for j=1:N
    for i=j:N
        f(i+1,j+1)=(f(i,j)-f(i+1,j))/(x(i+1-j)-x(i+1));  
    end
end
%Sukurkime skirtuminiu santykiu lentele
 fprintf('****************************************************\n')
 fprintf('|x|y|            f1|            f2|              f3|\n') 
 fprintf('****************************************************\n')
for i=1:M
    for j=i:N
f(i,j+1)='-'; 
    end
  fprintf('|%i|%3i|%14i|%14i|%14i|\n',x(i),y(i),f(i,2),f(i,3),f(i,4)) 
end
 fprintf('****************************************************\n')
 syms X

% Pirmos ir antros eiles daugianariu sudarymas:
L=y(1); 
     p=1;   
 for i=1:N-1
  p=p*(X-x(i));  
  L=expand(L+f(i+1,i+1)*p)
  pretty(L)
  figure,
  ezplot(L,[x(1),x(N)]), hold on, plot(x,y,'bo','MarkerFaceColor','b'), hold off, 
xlabel(' x '), ylabel('y'), title(' ')
 end          

 %Daugianariai tarpiniame taske ir paklaida
 taske=0.5; %Tarpinis taskas
%Skirtuminiai santykiai
for k=1:M
   f(k,1)=y(k); 
end 
for j=1:N
    for i=j:N
        f(i+1,j+1)=(f(i,j)-f(i+1,j))/(x(i+1-j)-x(i+1));  
    end
end

% Artiniai ir paklaidu iverciai:
fprintf('********************************************************\n')
 fprintf('|N |   Daugianario reiksme|Paklaida absoliutiniu didumu| \n') 
 fprintf('********************************************************\n')
 L1(1)=y(1); 
     p(1)=1; 
     w(1)=(taske-x(1)); 
 for i=1:N-1
  p(i+1)=p(i)*(taske-x(i));  
  L1(i+1)=L1(i)+f(i+1,i+1)*p(i+1); 
  %paklaidai
  w(i+1)=w(i)*(taske-x(i+1));  
  pakl(i+1)=abs(w(i+1)*f(i+2,i+2)) ;
   fprintf('|%2G|%22f|%28f|\n',i,L1(i+1),pakl(i+1))
 end    
  fprintf('********************************************************\n')
  
  