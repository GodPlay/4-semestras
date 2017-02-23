function projektaslentele2
%---------globali? parametr? apra?ymas------------------------
global f 
global hedit1 hedit2
global hbut1
global htxt1 htxt2 htxt3 htxt4 
%---------sukuriama figura ir a?ys----------------------------
f = figure('Position',[50 1 1000 1000]);% grafinis langas lentelei
%---------sukuriami ?vedimo laukai----------------------------
hedit1=uicontrol(f, 'style', 'edit', 'backgroundcolor', [1 1 1], 'position', [10 520 300 25],'horizontalalignment', 'left');
hedit2=uicontrol(f, 'style', 'edit', 'backgroundcolor', [1 1 1], 'position', [350 520 300 25],'horizontalalignment', 'left');
%---------sukuriamas mygtukas---------------------------------
hbut1=uicontrol(f, 'style', 'pushbutton', 'backgroundcolor', [0.2 0.9 0.2], 'position', [700 520 200 40], 'string', 'Pateikti lentele','CallBack', 'lentele2');
%---------sukuriami teksto laukai-----------------------------
htxt1=uicontrol(f, 'style', 'text', 'backgroundcolor', [0.2 0.9 0.2], 'position', [400 650 240 22],'string', 'Reiksmiu lenteles taskai', 'fontsize', 15);
htxt2=uicontrol(f, 'style', 'text', 'backgroundcolor', [0.7 0.7 0.7], 'position', [300 600 400 22],'string', 'Iveskite x ir y reiksmes, atskirdami jas tarpais', 'fontsize', 12);
htxt3=uicontrol(f, 'style', 'text', 'backgroundcolor', [0.7 0.7 0.7], 'position', [10 550 120 20],'string', 'x reiksmes');
htxt4=uicontrol(f, 'style', 'text', 'backgroundcolor', [0.7 0.7 0.7], 'position', [350 550 120 20],'string', 'y reiksmes');

