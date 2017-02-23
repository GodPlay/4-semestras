clear all
X=[-2 0 1 2 3];
Y=[3 1 -3 -1 13];
N=length(X);

syms x %Reikalinga simboliniu kintamuju modeliavimui (cia tik teorijai - per kontrolinius neprireiks)

for m=1:N-1
for i=1:m
L=0; %Sudeciai
for k=1:i+1
    c=1; %Sandaugai
   for j=1:i+1
       	% ~= NELYGU
      if k~=j %Jei i nelygu j
         c=c*((x-X(j))/(X(k)-X(j))); %Daugianariai c, sudaryti is sandaugu 
      end 
   end
  L=expand(L+c*Y(k)); %Daugianario L galutinis realizavimas.
end
end
fprintf('%G eiles daugianaris',m)
pretty(L) %Atvaizduoja rasytiniu matematiniu budu
%Grafiskai 
figure,
ezplot(L,[X(1)-1,X(N)+2]), hold on, plot(X,Y,'bo','MarkerFaceColor','b'), hold off, 
xlabel(' x '), ylabel('y'), title(' ')
end