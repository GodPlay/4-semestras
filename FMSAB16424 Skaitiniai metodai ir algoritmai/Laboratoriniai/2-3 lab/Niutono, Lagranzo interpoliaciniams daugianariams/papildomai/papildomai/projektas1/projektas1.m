%Pavyzdyz is: Kristina �e�kute. MATLAB vaizdinio programavimo
%galimybes. Magistro diplominis darbas, Vilniaus pedagoginis universitetas, 2005.

function projektas1
%---------globali? parametr? apra�ymas------------------------
global hfig1 haxes
global hedit1 hedit2
global hbut1
global htxt1 htxt2 htxt3 htxt4 htxt5 htxt6
%---------sukuriama figura ir a�ys----------------------------
hfig1=figure('position',[100 100 600 400],'resize','off');
haxes=axes('Parent', hfig1, 'color', [1 1 1], 'units', 'pixels', 'position', [25 70 300 270], 'fontsize', 10);
%---------sukuriami ?vedimo laukai----------------------------
hedit1=uicontrol(hfig1, 'style', 'edit', 'backgroundcolor', [1 1 1], 'position', [370 265 150 25],'horizontalalignment', 'left');
hedit2=uicontrol(hfig1, 'style', 'edit', 'backgroundcolor', [1 1 1], 'position', [370 200 150 25],'horizontalalignment', 'left');
%---------sukuriamas mygtukas---------------------------------
hbut1=uicontrol(hfig1, 'style', 'pushbutton', 'position', [370 100 150 25], 'string', 'BRE�TI','CallBack', 'funkcija1');
%---------sukuriami teksto laukai-----------------------------
htxt1=uicontrol(hfig1, 'style', 'text', 'backgroundcolor', [0.7 0.7 0.7], 'position', [55 348 240 22],'string', 'Sukinio karkasas', 'fontsize', 15);
htxt2=uicontrol(hfig1, 'style', 'text', 'backgroundcolor', [0.7 0.7 0.7], 'position', [370 295 120 20],'string', 'koeficientas a');
htxt3=uicontrol(hfig1, 'style', 'text', 'backgroundcolor', [0.7 0.7 0.7], 'position', [370 230 120 20],'string', 'koeficientas b');
htxt4=uicontrol(hfig1, 'style', 'text', 'backgroundcolor', [0.7 0.7 0.7], 'position', [370 350 200 20],'string', 'Sukinio sudaromoji kreive', 'fontsize', 12);
htxt5=uicontrol(hfig1, 'style', 'text', 'backgroundcolor', [0.7 0.7 0.7], 'position', [370 330 200 20],'string', 'y=a*x^2+b*ln(3+|tg(x)|)', 'fontsize', 12);
%---------sukuriama vertikali linija-----------------------------
htxt6=uicontrol(hfig1, 'style', 'text', 'backgroundcolor', [0 0 0], 'position', [350 5 1 440]);

