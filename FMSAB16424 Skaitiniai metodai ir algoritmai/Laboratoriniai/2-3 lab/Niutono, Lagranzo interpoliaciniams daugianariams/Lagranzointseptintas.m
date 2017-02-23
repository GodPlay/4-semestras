clear all
X=[0 1 3 4];
Y=[3 2 1 0];
N=length(X);
disp('Reiksmiu lentele yra')
fprintf('**********************************\n')
fprintf('|i |             x|             y|\n')
fprintf('**********************************\n')
for i=1:N
fprintf('|%2G|%14G|%14G|\n',i-1,X(i),Y(i)) 
end
fprintf('**********************************\n')
figure,
plot(X,Y,'bo','MarkerFaceColor','b'),
syms x 


%imu cikla for m ..., kad tolimesniam cikle naudociau pirmiausia du taskus, paskui 3 ir t.t
%jei m cikla panaikinsiu ir imsiu tik nuo i, tai rankiniu budu tektu vis
%nustatineti N. T.y. as noriu gauti visu eiliu daugianarius vienu paspaudimu
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
pretty(L)
%Grafiskai 
figure,
ezplot(L,[X(1)-1,X(N)+2]), hold on, plot(X,Y,'bo','MarkerFaceColor','b'), hold off, 
xlabel(' x '), ylabel('y'), title(' ')
end


tikrinu=subs(L,X);
if tikrinu==Y
     disp('Interpoliavimo salygos tenkinamos')
 else
     disp('Interpoliavimo salygos netenkinamos, tikrinkite skaiciavimus')
 end