% 6 pavyzdys is Interpoliavimo (is irasu)
clear all
x=[0 1 3 4];
y=[3 2 1 0];
M=length(x); %x(i) kiekis.  Zinoma galima ir tiesiogiai nurodyti.
N=M-1;  %Daugianario eile.
disp('Reiksmiu lentele yra')
fprintf('**********************************\n')
fprintf('|i |             x|             y|\n')
fprintf('**********************************\n')
for i=1:M
fprintf('|%2G|%14G|%14G|\n',i-1,x(i),y(i)) 
end
fprintf('**********************************\n')
%Taskai koordinaciu plokstumoje
figure,
plot(x,y,'bo','MarkerFaceColor','b'),
% Pirmiausia apskaiciuojami skirtuminiai santykiai, kur visi isreiskiami 
% per y(k): f(i+1,2)=>f(x(i),x(i+1))=(y(i)-y(i+1))/(x(i)-x(i+1)), kai i>=1, 
%yra pirmos eiles, 
%f(i+1,3)=>f(x(i),x(i+1),x(i+2))=(f(x(i),x(i+1))-f(x(i+1),x(i+2)))/(x(i)-x(i+1))
%yra antros eiles ir t.t.

for k=1:M
   f(k,1)=y(k); 
end 
for j=1:N
    for i=j:N
        f(i+1,j+1)=(f(i,j)-f(i+1,j))/(x(i+1-j)-x(i+1));  
    end
end
%Sukurkime skirtuminiu santykiu lentele lentele, pvz.:
 fprintf('**************************************************\n')
 fprintf('|x|y|            f1|            f2|            f3|\n') 
 fprintf('**************************************************\n')
for i=1:M
    for j=i:N
f(i,j+1)='-'; 
    end %rezultatams isvesti naudoju c, kad lenteleje butu panaudoti 
%ir simboliniai kintamieji. Pakeiskite, pavyzdziui, c i G. 
  fprintf('|%i|%i|%14c|%14c|%14c|\n',x(i),y(i),f(i,2),f(i,3),f(i,4)) 
end
 fprintf('**************************************************\n')
 syms X
% Visu eiliu Daugianariu sudarymas:
L=y(1); %Sumavimui
     p=1;  %Daugybai     
 for i=1:N
  p=p*(X-x(i));%Niutono formuleje esancios sandaugos (x-x[1])...(x-x[N])   
   fprintf('%G eiles daugianaris',i)
  L=expand(L+f(i+1,i+1)*p);
  %Vaizdingiau
  pretty(L)
  figure,
  ezplot(L,[x(1),x(N)+2]), hold on, plot(x,y,'bo','MarkerFaceColor','b'), hold off, 
xlabel(' x '), ylabel('y'), title(' ')
 end   
 tikrinu=subs(L,x);
if tikrinu==y
     disp('Interpoliavimo salygos tenkinamos')
 else
     disp('Interpoliavimo salygos netenkinamos, tikrinkite skaiciavimus')
 end