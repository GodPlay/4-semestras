function lentele
%---------globali? parametr? aprašymas------------------------
global hfig1 haxes
global hedit1 hedit2
%---------nuskaitoma informacija iš Edit lauk?----------------
str1=get(hedit1, 'String');
str2=get(hedit2, 'String');
%---------Eilut? paver?ia skai?iumi---------------------------
a=str2num(str1);
b=str2num(str2);
%---------grafinis atvaizdavimas------------------------------
axes(haxes);
%Duomeny grafiko braizymui
x=a;
y=b; 
y1=[min(y)-60,max(y)+60]
x1=0*y1
plot(x,y,'bo','MarkerFaceColor','b'), hold on
syms X
xasis=ezplot(X*0,[min(x),max(x)]);
plot(x1,y1,'black')
hold off
set(xasis,'color','black'),

