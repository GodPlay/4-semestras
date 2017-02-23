function balnas2
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
[x,y]=meshgrid([-2:0.1:2],[-2:0.1:2]);
z=a.*x.^2-b.*y.^2;
surfc(x,y,z);