
function projektas2
%---------globaliu parametru aprašymas------------------------
global hfig1 haxes
global hedit1 hedit2
global hbut1
global htxt1 htxt2 htxt3 htxt4 htxt5 htxt6 htxt7
%---------sukuriama figura ir ašys----------------------------
hfig1=figure('position',[100 100 600 400],'resize','off');
haxes=axes('Parent', hfig1, 'color', [1 1 1], 'units', 'pixels', 'position', [25 70 300 270], 'fontsize', 10);
%---------sukuriami ?vedimo laukai----------------------------
hedit1=uicontrol(hfig1, 'style', 'edit', 'backgroundcolor', [1 1 1], 'position', [370 230 150 25],'horizontalalignment', 'left');
hedit2=uicontrol(hfig1, 'style', 'edit', 'backgroundcolor', [1 1 1], 'position', [370 170 150 25],'horizontalalignment', 'left');
%---------sukuriamas mygtukas---------------------------------
hbut1=uicontrol(hfig1, 'style', 'pushbutton', 'position', [370 100 150 25], 'string', 'BREŽTI','CallBack', 'balnas2');
%---------sukuriami teksto laukai-----------------------------
htxt1=uicontrol(hfig1, 'style', 'text', 'backgroundcolor', [0.7 0.7 0.7], 'position', [55 348 240 22],'string', 'Balno pavirsius', 'fontsize', 15);
htxt2=uicontrol(hfig1, 'style', 'text', 'backgroundcolor', [0.7 0.7 0.7], 'position', [370 295 200 20],'string', 'Pastaba: a>0 ir b>0 arba a<0, b<0');
htxt3=uicontrol(hfig1, 'style', 'text', 'backgroundcolor', [0.7 0.7 0.7], 'position', [370 260 120 20],'string', 'Koeficientas a');
htxt4=uicontrol(hfig1, 'style', 'text', 'backgroundcolor', [0.7 0.7 0.7], 'position', [370 200 120 20],'string', 'Koeficientas b');
htxt5=uicontrol(hfig1, 'style', 'text', 'backgroundcolor', [0.7 0.7 0.7], 'position', [370 350 200 20],'string', 'Balnas', 'fontsize', 12);
htxt6=uicontrol(hfig1, 'style', 'text', 'backgroundcolor', [0.7 0.7 0.7], 'position', [370 330 200 20],'string', 'z=a*x^2-b*y^2', 'fontsize', 12);
%---------sukuriama vertikali linija-----------------------------
htxt7=uicontrol(hfig1, 'style', 'text', 'backgroundcolor', [0 0 0], 'position', [350 5 1 440]);