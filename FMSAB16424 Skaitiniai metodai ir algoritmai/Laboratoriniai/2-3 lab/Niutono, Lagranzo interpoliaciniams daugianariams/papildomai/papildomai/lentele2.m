function lentele2
%---------globali? parametr? aprašymas------------------------
global f
global hedit1 hedit2
%---------nuskaitoma informacija iš Edit lauk?----------------
str1=get(hedit1, 'String');
str2=get(hedit2, 'String');
%---------Eilut? paver?ia skai?iumi---------------------------
a=str2num(str1);
b=str2num(str2);
%Duomenys
x=a;
y=b; 
d = [x; y];
rnames = {'X','Y'};
% Create the uitable

t = uitable(f,'Data',d,'RowName',rnames,'Position', [10 400 1000 100]);
