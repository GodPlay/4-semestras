function isosurface3
%---------globali? parametr? aprašymas------------------------
global hfig1 haxes
%---------grafinis atvaizdavimas------------------------------
[x,y,z,v] = flow;
p = patch(isosurface(x,y,z,v,-6));
isonormals(x,y,z,v,p)
set(p,'FaceColor','green','EdgeColor','none');
daspect([1 1 1])
view(30,-15); axis tight
camlight 
lighting gouraud