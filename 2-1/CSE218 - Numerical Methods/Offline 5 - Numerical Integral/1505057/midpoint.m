function y=midpoint(f,df,a,b,h,xi,yi)
y(1)=yi;
n=(b-a)/h+1;
x=a+h;
fprintf('      x        True     Midpoint    Error  \n');
fprintf('  %f   %f   %f   %f  \n',a,yi,yi,0);
for i=2:n
    y(i)=y(i-1)+df(x-h+h/2)*h;
    error=(f(x)-y(i))/f(x)*100;
    fprintf('  %f   %f   %f   %f  \n',x,f(x),y(i),error);
    x=x+h;
end
end
    