
function projektas3
%---------globaliu parametru apra�ymas------------------------
global hfig1 haxes
%---------sukuriama figura ir a�ys----------------------------
hfig1=figure('position',[200 100 800 600],'resize','off');
haxes=axes('Parent', hfig1, 'color', [1 1 1], 'units', 'pixels', 'position', [25 70 700 500], 'fontsize', 10);
%Sukuriamas mygtukas, kurio funkcija yra faile isosurface3.m
hbut1=uicontrol(hfig1, 'style', 'pushbutton', 'position', [500 100 150 25], 'string', 'BRE�TI','CallBack', 'isosurface3');
