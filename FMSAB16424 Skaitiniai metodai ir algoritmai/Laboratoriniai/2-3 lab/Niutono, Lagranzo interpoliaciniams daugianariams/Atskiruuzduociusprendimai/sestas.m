clear all
% x=[2050,2100,2150,2200,2250];
% y=[107,110,108,70,53];
x=[2100,2150,2200];
y=[110, 108,70];
M=length(x);
disp('Reiksmiu lentele yra')
fprintf('*********************************\n')
fprintf('|i |             x|             y|\n')
fprintf('*********************************\n')
for i=1:M
fprintf('|%2G|%14f|%14f|\n',i-1,x(i),y(i)) 
end
disp('Grafiskai')
figure,
plot(x,y,'bo','MarkerFaceColor','b'),

N=M-1;  
for k=1:M
   f(k,1)=y(k); 
end 
for j=1:N
    for i=j:N
        f(i+1,j+1)=(f(i,j)-f(i+1,j))/(x(i+1-j)-x(i+1));  
    end
end
 syms X     
 taske=2130; 
for k=1:M
   f(k,1)=y(k); 
end 
for j=1:N
    for i=j:N
        f(i+1,j+1)=(f(i,j)-f(i+1,j))/(x(i+1-j)-x(i+1))  
    end
end

% Artiniai ir paklaidu iverciai:
fprintf('********************************************************\n')
 fprintf('|N |   Daugianario reiksme|Paklaida absoliutiniu didumu| \n') 
 fprintf('********************************************************\n')
 L1(1)=y(1); 
     p(1)=1; 
     w(1)=(taske-x(1)); 
 for i=1:N-1
  p(i+1)=p(i)*(taske-x(i));  
  L1(i+1)=L1(i)+f(i+1,i+1)*p(i+1); 
  %paklaidai
  w(i+1)=w(i)*(taske-x(i+1));  
  pakl(i+1)=abs(w(i+1)*f(i+2,i+2)) ; 
  skaicius1(i+1)=L1(i+1)+pakl(i+1);
     skaicius2(i+1)=L1(i+1)-pakl(i+1);
   fprintf('|%2G|%22f|%28f|\n',i,L1(i+1),pakl(i+1))
   fprintf('Apytiksliai klausytoju skaicius, kai kaina %i, yra %c arba %c.\n',taske, skaicius1(i+1), skaicius2(i+1))

 end    
% x=[2050,2100,2150,2200,2250];
% y=[107,110,108,70,53];
clear all,
x=[2050,2100,2150,2200];
y=[107, 110, 108,70];
M=length(x);
disp('Reiksmiu lentele yra')
fprintf('*********************************\n')
fprintf('|i |             x|             y|\n')
fprintf('*********************************\n')
for i=1:M
fprintf('|%2G|%14f|%14f|\n',i-1,x(i),y(i)) 
end
disp('Grafiskai')
figure,
plot(x,y,'bo','MarkerFaceColor','b'),

N=M-1;  
for k=1:M
   f(k,1)=y(k); 
end 
for j=1:N
    for i=j:N
        f(i+1,j+1)=(f(i,j)-f(i+1,j))/(x(i+1-j)-x(i+1));  
    end
end
 syms X     
 taske=2130; 
for k=1:M
   f(k,1)=y(k); 
end 
for j=1:N
    for i=j:N
        f(i+1,j+1)=(f(i,j)-f(i+1,j))/(x(i+1-j)-x(i+1))  
    end
end

% Artiniai ir paklaidu iverciai:
fprintf('********************************************************\n')
 fprintf('|N |   Daugianario reiksme|Paklaida absoliutiniu didumu| \n') 
 fprintf('********************************************************\n')
 L1(1)=y(1); 
     p(1)=1; 
     w(1)=(taske-x(1)); 
 for i=1:N-1
  p(i+1)=p(i)*(taske-x(i));  
  L1(i+1)=L1(i)+f(i+1,i+1)*p(i+1); 
  %paklaidai
  w(i+1)=w(i)*(taske-x(i+1));  
  pakl(i+1)=abs(w(i+1)*f(i+2,i+2)) ;
  skaicius1(i+1)=L1(i+1)+pakl(i+1);
  skaicius2(i+1)=L1(i+1)-pakl(i+1);
   fprintf('|%2G|%22f|%28f|\n',i,L1(i+1),pakl(i+1))
   fprintf('Apytiksliai klausytoju skaicius, kai kaina %i, yra %c arba %c.\n',taske, skaicius1(i+1), skaicius2(i+1))
 end    



% x=[2050,2100,2150,2200,2250];
% y=[107,110,108,70,53];
% clear all,
% x=[2100,2150,2200,2250];
% y=[110, 108,70,53];
% M=length(x);
% disp('Reiksmiu lentele yra')
% fprintf('*********************************\n')
% fprintf('|i |             x|             y|\n')
% fprintf('*********************************\n')
% for i=1:M
% fprintf('|%2G|%14f|%14f|\n',i-1,x(i),y(i)) 
% end
% disp('Grafiskai')
% figure,
% plot(x,y,'bo','MarkerFaceColor','b'),

% % N=M-1;  
% % for k=1:M
% %    f(k,1)=y(k); 
% % end 
% % for j=1:N
% %     for i=j:N
% %         f(i+1,j+1)=(f(i,j)-f(i+1,j))/(x(i+1-j)-x(i+1));  
% %     end
% % end
% %  syms X     
% %  taske=2130; 
% % for k=1:M
% %    f(k,1)=y(k); 
% % end 
% % for j=1:N
% %     for i=j:N
% %         f(i+1,j+1)=(f(i,j)-f(i+1,j))/(x(i+1-j)-x(i+1))  
% %     end
% % end
% % 
% % % Artiniai ir paklaidu iverciai:
% % fprintf('********************************************************\n')
% %  fprintf('|N |   Daugianario reiksme|Paklaida absoliutiniu didumu| \n') 
% %  fprintf('********************************************************\n')
% %  L1(1)=y(1); 
% %      p(1)=1; 
% %      w(1)=(taske-x(1)); 
% %  for i=1:N-1
% %   p(i+1)=p(i)*(taske-x(i));  
% %   L1(i+1)=L1(i)+f(i+1,i+1)*p(i+1); 
% %   %paklaidai
% %   w(i+1)=w(i)*(taske-x(i+1));  
% %   pakl(i+1)=abs(w(i+1)*f(i+2,i+2)) ;
% %    fprintf('|%2G|%22f|%28f|\n',i,L1(i+1),pakl(i+1))
% %  end    
% %   fprintf('********************************************************\n')
% %   for i=1:N-1
% %     skaicius1(i)=L1(i+1)+pakl(i+1);
% %      skaicius2(i)=L1(i+1)-pakl(i+1);
% %   end
% % fprintf('Apytiksliai klausytoju skaicius, kai kaina %i, yra %c arba %c.\n',taske, skaicius1, skaicius2)

clear all,
x=[2050,2100,2150,2200,2250];
y=[107,110,108,70,53];
M=length(x);
disp('Reiksmiu lentele yra')
fprintf('*********************************\n')
fprintf('|i |             x|             y|\n')
fprintf('*********************************\n')
for i=1:M
fprintf('|%2G|%14f|%14f|\n',i-1,x(i),y(i)) 
end
disp('Grafiskai')
figure,
plot(x,y,'bo','MarkerFaceColor','b'),

N=M-1;  
for k=1:M
   f(k,1)=y(k); 
end 
for j=1:N
    for i=j:N
        f(i+1,j+1)=(f(i,j)-f(i+1,j))/(x(i+1-j)-x(i+1));  
    end
end
 syms X     
 taske=2130; 
for k=1:M
   f(k,1)=y(k); 
end 
for j=1:N
    for i=j:N
        f(i+1,j+1)=(f(i,j)-f(i+1,j))/(x(i+1-j)-x(i+1))  
    end
end

% Artiniai ir paklaidu iverciai:
fprintf('********************************************************\n')
 fprintf('|N |   Daugianario reiksme|Paklaida absoliutiniu didumu| \n') 
 fprintf('********************************************************\n')
 L1(1)=y(1); 
     p(1)=1; 
     w(1)=(taske-x(1)); 
 for i=1:N-1
  p(i+1)=p(i)*(taske-x(i));  
  L1(i+1)=L1(i)+f(i+1,i+1)*p(i+1); 
  %paklaidai
  w(i+1)=w(i)*(taske-x(i+1));  
  pakl(i+1)=abs(w(i+1)*f(i+2,i+2)) ;
  skaicius1(i+1)=L1(i+1)+pakl(i+1);
  skaicius2(i+1)=L1(i+1)-pakl(i+1);
   fprintf('|%2G|%22f|%28f|\n',i,L1(i+1),pakl(i+1))
   fprintf('Apytiksliai klausytoju skaicius, kai kaina %i, yra %c arba %c.\n',taske, skaicius1(i+1), skaicius2(i+1))
 end 
 
 %2dalis
 clear all
X=[2100,2150];
Y=[110, 108];
taskasy=109;
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
L

clear all
X=[2150,2100];
Y=[108, 110];
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
[xspr]=solve(L-109)
double(xspr)