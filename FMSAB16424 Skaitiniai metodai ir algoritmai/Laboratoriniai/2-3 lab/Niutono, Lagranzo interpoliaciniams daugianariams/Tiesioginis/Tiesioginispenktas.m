%5 pavyzdys is interpoliavimo (is irasu)
clear all
x=[-3,-1,0,2];
y=[0,12,12,30];
N=3;
figure,
plot(x,y,'bo','MarkerFaceColor','b')
syms a b c d
L=a*x.^3+b*x.^2+c*x+d;
[a1,b1,c1,d1]=solve(L-y),
syms X
Lgalutinis=a1*X^3+b1*X^2+c1*X+d1,
figure,
ezplot(Lgalutinis,[x(1),x(N)+2]), hold on,
plot(x,y,'bo','MarkerFaceColor','b'), hold off, 
xlabel(' x '), ylabel('y'), title(' ')

ary=subs(Lgalutinis,x);
if ary==y
     disp('Interpoliavimo salygos tenkinamos')
 else
     disp('Interpoliavimo salygos netenkinamos, tikrinkite skaiciavimus')
 end