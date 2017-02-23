%4 pavyzdys is Interpoliavimo (is irasu)
clear all
x=[-2,0,1];
y=[0,-2,0];
N=3;
figure,
plot(x,y,'bo','MarkerFaceColor','b'),
syms a b c
L=a*x.^2+b*x+c;
[a1,b1,c1]=solve(L-y)
syms X
Lgalutinis=a1*X^2+b1*X+c1
figure,
ezplot(Lgalutinis,[x(1),x(N)]), hold on,
plot(x,y,'bo','MarkerFaceColor','b'), hold off, 
xlabel(' x '), ylabel('y'), title(' ')

ary=subs(Lgalutinis,x);
if ary==y
     disp('Interpoliavimo salygos tenkinamos')
 else
     disp('Interpoliavimo salygos netenkinamos, tikrinkite skaiciavimus')
 end