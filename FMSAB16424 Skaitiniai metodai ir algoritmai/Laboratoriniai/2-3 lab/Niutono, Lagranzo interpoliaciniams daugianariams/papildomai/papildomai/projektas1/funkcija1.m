function funkcija1
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
x=0:0.01:5;
y=a.*x.*x+b.*log(3+abs(tan(x)));
[x,y,z]=cylinder(y,24);
mesh(x,y,z);