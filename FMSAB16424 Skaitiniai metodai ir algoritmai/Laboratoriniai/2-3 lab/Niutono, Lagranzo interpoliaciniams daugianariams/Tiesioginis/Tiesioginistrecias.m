%3 pavyzdys is interpoliavimo (is irasu)
x=[1,2];
y=[-1,0];
N=2; %Daugianario eile
figure,
plot(x,y,'bo','MarkerFaceColor','b'),
syms a b 
L=a*x+b; %tiesinio daugianario reiksmes taskuose x. 
%a ir b nezinomi koeficientai
[a1,b1]=solve(L-y) %Sprendziame lygciu sistema 
%sudaryta is lygciu y(1)=ax(1)+b, y(2)=ax(2)+b
syms X
Lgalutinis=a1*X+b1%Galutine tiesinio daugianario israiska
%Braizome grafikus simbolines funkcijos Lgalutinis (ezplot) ir toje pacioje
%koordinaciu plokstumoje atidedame taskus (x,y). 
figure,
ezplot(Lgalutinis,[x(1),x(N)]), hold on,
plot(x,y,'bo','MarkerFaceColor','b'), hold off, 
xlabel(' x '), ylabel('y'), title(' ')

%Galime atlikti ir tikrinima, naudodami pagrindines interpoliavimo salygas
ary=subs(Lgalutinis,x);
if ary==y
     disp('Interpoliavimo salygos tenkinamos')
 else
     disp('Interpoliavimo salygos netenkinamos, tikrinkite skaiciavimus')
 end
% for i = 1:N
% ary(i)=subs(Lgalutinis,x(i));
% if ary(i)==y(i)
%     disp('Interpoliavimo salygos tenkinamos')
% else
%     disp('Interpoliavimo salygos netenkinamos, tikrinkite skaiciavimus')
% end
% end