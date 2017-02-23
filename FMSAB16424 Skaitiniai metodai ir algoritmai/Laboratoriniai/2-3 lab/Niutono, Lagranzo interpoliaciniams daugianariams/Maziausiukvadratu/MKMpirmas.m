%1 pavyzdzio (is irasu) sprendimas
x=[-3,-1]
y=[0,12]
%Taskai koordinaciu plokstumoje
plot(x,y,'bo','MarkerFaceColor','b')
syms a b
S=sum((y-a*x-b).^2)%nuokrypiu kvadratu suma
%dalines isvestine
a1=diff(S,a)
b1=diff(S,b)
%lygciu sistemos a1=0, b1=0 sprendimas
[aiv,biv]=solve(a1,b1)
%Ar minimumas
%Antros eiles isvestines
aa=diff(a1,a)
ab=diff(a1,b)
bb=diff(b1,b)
%Antros eiles isvestiniu reiksmes kritiniam taske
A=subs(aa,[aiv,biv])
B=subs(ab,[aiv,biv])
C=subs(bb,[aiv,biv])
delta=A*C-B.^2%Diskriminantas
if (delta>0) && (A>0)
    disp('Gautas minimumo taskas, vadinasi')
syms X
Y=aiv*X+biv %Empirine funkcija
%Braizome grafikus
ezplot(Y,[x(1)-1,x(2)+1]), hold on,
plot(x,y,'bo','MarkerFaceColor','b'), hold off, 
xlabel(' x '), ylabel('y'), title(' Empirine funkcija') 
else 
    disp('Minimumas nerastas, reikia papildomo tyrimo')
end