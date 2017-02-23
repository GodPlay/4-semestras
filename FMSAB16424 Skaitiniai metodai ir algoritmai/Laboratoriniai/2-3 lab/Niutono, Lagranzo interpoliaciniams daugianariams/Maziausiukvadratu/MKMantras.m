%2 pavyzdys is Interpoliavimo irasu
clear all %Isvalo atminti
x=[258.30,343.10,425,467.50,482.90,487.70,496.50,519.40,543.30,548.70,564.60,588.30,591.30,607.30,611.20,631,659.60,664,704.20,704.80,719.80,720.00,722.30,722.30,734.40,742.50,747.70,763.30,810.20,818.50,852.60,833.30,834,918.10,918.10,929.60,951.70,1014,1141.30,1154.60]
y=[52.5,58.32,81.79,119.90,125.80,100.46,121.51,100.08,127.75,104.94,107.48,98.48,181.21,122.23,129.57,92.84,117.92,82.13,182.28,139.13,98.14,123.94,126.31,146.47,115.98,207.23,119.80,151.33,169.51,108.03,168.90,227.11,84.94,98.70,141.06,215.40,112.89,166.25,115.43,269.03] 
%Jei turite x ir y duomenis kokiam nors faile, tai juos galite isikelti i
%workspace. Tai labai patogu, jei atlikto eksperimento duomenu kiekis
%pakankamai didelis.
plot(x,y,'bo','MarkerFaceColor','b')
syms a b 
S=sum((y-a*x-b).^2) %Nuokrypiu kvadratu suma
%Ieskosime minimumo
Sa=diff(S,a)
Sb=diff(S,b)
[aivertis,bivertis]=solve(Sa,Sb)
Saa=diff(Sa,a)
Sab=diff(Sa,b)
Sbb=diff(Sb,b)
A=subs(Saa,[aivertis,bivertis])
B=subs(Sab,[aivertis,bivertis])
C=subs(Sbb,[aivertis,bivertis])
delta=A*C-B.^2
if (delta>0) && (A>0)
    disp('Gautas minimumo taskas, vadinasi')
syms X
Y=aivertis*X+bivertis
a1=double(aivertis)
b1=double(bivertis)
ezplot(Y,[x(1),x(40)]), hold on,
plot(x,y,'bo','MarkerFaceColor','b'), hold off, 
xlabel(' x '), ylabel('y'), title(' ')
else 
    disp('Minimumas nerastas, reikia papildomo tyrimo')
end

%Kokios bus islaidos maistui, jei pajamos per savaite yra 259 
disp('Apytiksliai maziausiu kvadratu metodu islados maistui')
disp('kai pajamos 259 per savaite yra')
subs(Y,X,259)
%Be abejo, tai tik prognoze. Nereikia visko vertinti paraidziui. 