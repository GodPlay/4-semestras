clear all
x=[-2,-1,0,1,2,3];
y=[-62,-10,-10,-8,2,98];
N=length(x);
%for i=1:N
%f(i)=x(i).^5-2*x(i).^4+3*x(i).^2-10;

%end
f=x.^5-2*x.^4+3*x.^2-10;
if y==f 
    disp('Yra interpoliacinis daugianaris')
else 
    disp('Nera')
end