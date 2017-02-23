%Pradiniai duomenys
clear all
X1=[0.2,0.5,1];
Y1=[125,8,1];
Y2=[1.22,1.65,2.72];
Y3=Y1-Y2;
%1metodas
%Matau, kad tiesiniui interpoliaciniui daugianariui sudaryti rinksimes du paskutinius
%taskus
X=[0.5, 1];
Y=[6.35,-1.72];
 syms x 
N=length(X);
for i=1:N-1
L=0; 
for k=1:i+1
    c=1; 
   for j=1:i+1
      if k~=j 
         c=c*((x-X(j))/(X(k)-X(j)));  
   end 
   end
  L=L+c*Y(k); 
end
end
expand(L)
[xspr]=solve(L)
disp('Rinkos pusiausvyros kaina')
double(xspr)

%Papildomai
%Antros eiles
syms x 
N=length(X1);
for i=1:N-1
L=0; 
for k=1:i+1
    c=1; 
   for j=1:i+1
      if k~=j 
         c=c*((x-X1(j))/(X1(k)-X1(j)));  
   end 
   end
  L=L+c*Y3(k); 
end
end
expand(L)
[xspr]=solve(L)
disp('Rinkos pusiausvyros kaina, su antros eiles interpoliaciniu daugianariu')
double(xspr)

%2metodas
clear all
X=[ 0.5,1];
Y=[-1.72,6.35];
taskasy=0;
 syms x 
N=length(Y);
for i=1:N-1
L=0; 
for k=1:i+1
    c=1; 
   for j=1:i+1
      if k~=j 
         c=c*((taskasy-Y(j))/(Y(k)-Y(j)));  
   end 
   end
  L=L+c*X(k); 
end
end
disp('Antruoju metodu')
L

%Tikslesnis sprendinys
syms x
y1=1/x^3;y2=exp(x);y=y1-y2;
grafikas1=ezplot(y1,[0.2,1]), hold on,grafikas2=ezplot(y2,[0.2,1]), hold off,
axis([0.2,1,0,20])
set(grafikas1,'color','m','LineWidth',2),
set(grafikas2,'color','g','LineWidth',2),
xlabel(' x '), ylabel('y'), title(' '),legend('Paklausa','Pasiula')

figure
grafikas1=ezplot(y1,[0.2,1]), hold on,grafikas2=ezplot(y2,[0.2,1]), hold off,
axis([0.7,0.8,0,4])
set(grafikas1,'color','m','LineWidth',2),
set(grafikas2,'color','g','LineWidth',2),
xlabel(' x '), ylabel('y'), title(' '),legend('Paklausa','Pasiula')
